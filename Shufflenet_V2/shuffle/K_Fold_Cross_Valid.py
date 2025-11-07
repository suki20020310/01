import os
import json
import math
import argparse
import shutil
from pathlib import Path
import numpy as np
import copy

import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader, SubsetRandomSampler
from torch.utils.tensorboard import SummaryWriter
import torch.optim.lr_scheduler as lr_scheduler
from torchvision import transforms
from sklearn.model_selection import KFold
from PIL import Image
from tqdm import tqdm

from model import shufflenet_v2_x0_5

# ==================== 新增导入 ====================
import matplotlib
matplotlib.use('Agg')  # 使用非GUI后端
import matplotlib.pyplot as plt
import pandas as pd
from datetime import datetime

# 设置中文字体
plt.rcParams['font.sans-serif'] = ['SimHei', 'DejaVu Sans']
plt.rcParams['axes.unicode_minus'] = False
# ================================================

"""
python K_Fold_Cross_Valid.py --data-path /home/dell/yolo/shu_big/shuffle/dataset128 --export-path /home/dell/yolo/shu_big/shuffle/databest2 --k-folds 10 --epochs 10 --batch-size 16 --lr 0.01
python K_Fold_Cross_Valid.py --data-path /home/dell/yolo/shu_big/shuffle/dataset128 --export-path /home/dell/yolo/shu_big/shuffle/databest --k-folds 10 --epochs 20 --batch-size 16 --lr 0.01
"""

class SimpleImageDataset(Dataset):
    """简单的图像数据集类"""
    def __init__(self, root_dir, transform=None):
        """
        Args:
            root_dir: 数据集根目录，包含fire, ice, thunder三个文件夹
            transform: 数据转换
        """
        self.root_dir = root_dir
        self.transform = transform
        self.images = []
        self.labels = []
        self.class_to_idx = {}
        self.idx_to_class = {}
        
        # 扫描目录并构建数据集
        self._load_dataset()
    
    def _load_dataset(self):
        """加载数据集"""
        # 获取所有类别文件夹
        class_dirs = [d for d in os.listdir(self.root_dir) 
                     if os.path.isdir(os.path.join(self.root_dir, d))]
        class_dirs.sort()  # 排序以保证顺序一致
        
        # 创建类别到索引的映射
        self.class_to_idx = {class_name: idx for idx, class_name in enumerate(class_dirs)}
        self.idx_to_class = {idx: class_name for class_name, idx in self.class_to_idx.items()}
        
        print(f"\nFound {len(class_dirs)} classes: {class_dirs}")
        print(f"Class to index mapping: {self.class_to_idx}")
        
        # 遍历每个类别文件夹
        for class_name in class_dirs:
            class_dir = os.path.join(self.root_dir, class_name)
            class_idx = self.class_to_idx[class_name]
            
            # 获取该类别下的所有图片
            image_files = [f for f in os.listdir(class_dir) 
                          if f.lower().endswith(('.png', '.jpg', '.jpeg', '.bmp'))]
            
            print(f"Class '{class_name}': {len(image_files)} images")
            
            for img_file in image_files:
                img_path = os.path.join(class_dir, img_file)
                self.images.append(img_path)
                self.labels.append(class_idx)
        
        print(f"\nTotal images loaded: {len(self.images)}\n")
    
    def __len__(self):
        return len(self.images)
    
    def __getitem__(self, idx):
        img_path = self.images[idx]
        label = self.labels[idx]
        
        # 读取图片
        image = Image.open(img_path).convert('RGB')
        
        # 应用转换
        if self.transform:
            image = self.transform(image)
        
        return image, label
    
    def get_image_path(self, idx):
        """获取图片路径"""
        return self.images[idx]


def train_one_epoch(model, optimizer, data_loader, device, epoch):
    """训练一个epoch - 修改为返回更多指标"""
    model.train()
    loss_function = nn.CrossEntropyLoss()
    
    running_loss = 0.0
    correct = 0
    total = 0
    
    data_loader = tqdm(data_loader, desc=f"Epoch {epoch+1} [Train]")
    
    for step, (images, labels) in enumerate(data_loader):
        images, labels = images.to(device), labels.to(device)
        
        optimizer.zero_grad()
        outputs = model(images)
        loss = loss_function(outputs, labels)
        loss.backward()
        optimizer.step()
        
        # 统计
        running_loss += loss.item()
        _, predicted = outputs.max(1)
        total += labels.size(0)
        correct += predicted.eq(labels).sum().item()
        
        # 更新进度条
        data_loader.set_postfix({
            'loss': f'{running_loss/(step+1):.4f}',
            'acc': f'{100.*correct/total:.2f}%'
        })
    
    avg_loss = running_loss / len(data_loader)
    accuracy = 100. * correct / total
    
    return avg_loss, accuracy


def evaluate(model, data_loader, device):
    """评估模型 - 修改为返回损失和准确度"""
    model.eval()
    loss_function = nn.CrossEntropyLoss()
    
    running_loss = 0.0
    correct = 0
    total = 0
    
    with torch.no_grad():
        for images, labels in tqdm(data_loader, desc="Evaluating"):
            images, labels = images.to(device), labels.to(device)
            outputs = model(images)
            loss = loss_function(outputs, labels)
            
            running_loss += loss.item()
            _, predicted = outputs.max(1)
            total += labels.size(0)
            correct += predicted.eq(labels).sum().item()
    
    avg_loss = running_loss / len(data_loader)
    accuracy = 100. * correct / total
    
    return avg_loss, accuracy


class KFoldCrossValidator:
    """K折交叉验证器"""
    def __init__(self, args):
        self.args = args
        self.device = torch.device(args.device if torch.cuda.is_available() else "cpu")
        self.k_folds = args.k_folds
        
        # 创建保存目录
        self.weights_dir = Path("./weights_kfold")
        self.weights_dir.mkdir(exist_ok=True)
        
        # ==================== 新增：创建可视化目录 ====================
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        self.results_dir = Path(f"./kfold_results_{timestamp}")
        self.results_dir.mkdir(exist_ok=True)
        self.plots_dir = self.results_dir / "plots"
        self.plots_dir.mkdir(exist_ok=True)
        self.tables_dir = self.results_dir / "tables"
        self.tables_dir.mkdir(exist_ok=True)
        # ============================================================
        
        # 数据转换
        self.data_transform = {
            "train": transforms.Compose([
                transforms.RandomHorizontalFlip(p=0.5),
                transforms.RandomRotation(10),
                transforms.ColorJitter(brightness=0.2, contrast=0.2, saturation=0.2),
                transforms.ToTensor(),
                transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
            ]),
            "val": transforms.Compose([
                transforms.ToTensor(),
                transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
            ])
        }
        
        # 加载数据集
        self._load_dataset()
        
        self.fold_results = []
        self.best_fold_info = None
        
        # ==================== 新增：训练历史记录 ====================
        self.all_fold_history = []  # 存储所有fold的训练历史
        # ============================================================
    
    def _load_dataset(self):
        """加载完整数据集"""
        print(f"Loading dataset from: {self.args.data_path}")
        
        # 创建训练和验证用的数据集
        self.train_dataset = SimpleImageDataset(
            root_dir=self.args.data_path,
            transform=self.data_transform["train"]
        )
        
        self.val_dataset = SimpleImageDataset(
            root_dir=self.args.data_path,
            transform=self.data_transform["val"]
        )
        
        # 保存类别信息
        self.class_to_idx = self.train_dataset.class_to_idx
        self.idx_to_class = self.train_dataset.idx_to_class
        self.num_classes = len(self.class_to_idx)
        
        print(f"Number of classes: {self.num_classes}")
        print(f"Classes: {list(self.class_to_idx.keys())}")
        
        # 保存类别索引
        with open('./class_indices.json', 'w') as f:
            json.dump(self.idx_to_class, f, indent=4)
        print("Class indices saved to: ./class_indices.json\n")
    
    def train_one_fold(self, fold, train_indices, val_indices):
        """训练单个fold - 添加详细记录"""
        print(f'\n{"="*80}')
        print(f'Fold {fold + 1}/{self.k_folds}')
        print(f'Train samples: {len(train_indices)}, Val samples: {len(val_indices)}')
        print(f'{"="*80}')
        
        # 创建数据加载器
        train_sampler = SubsetRandomSampler(train_indices)
        val_sampler = SubsetRandomSampler(val_indices)
        
        train_loader = DataLoader(
            self.train_dataset,
            batch_size=self.args.batch_size,
            sampler=train_sampler,
            num_workers=min([os.cpu_count(), 8]),
            pin_memory=True
        )
        
        val_loader = DataLoader(
            self.val_dataset,
            batch_size=self.args.batch_size,
            sampler=val_sampler,
            num_workers=min([os.cpu_count(), 8]),
            pin_memory=True
        )
        
        # 创建TensorBoard writer
        tb_writer = SummaryWriter(log_dir=f'runs/fold_{fold+1}')
        
        # 初始化模型
        model = shufflenet_v2_x0_5(num_classes=self.num_classes).to(self.device)
        
        # 加载预训练权重
        if self.args.weights and os.path.exists(self.args.weights):
            try:
                weights_dict = torch.load(self.args.weights, map_location=self.device)
                # 过滤掉不匹配的权重
                model_dict = model.state_dict()
                pretrained_dict = {k: v for k, v in weights_dict.items() 
                                 if k in model_dict and v.shape == model_dict[k].shape}
                model.load_state_dict(pretrained_dict, strict=False)
                print(f"Loaded pretrained weights from {self.args.weights}")
            except Exception as e:
                print(f"Warning: Failed to load pretrained weights: {e}")
        
        # 冻结层
        if self.args.freeze_layers:
            for name, param in model.named_parameters():
                if "fc" not in name:
                    param.requires_grad_(False)
            print("Frozen all layers except fc")
        
        # 优化器和调度器
        pg = [p for p in model.parameters() if p.requires_grad]
        optimizer = optim.SGD(pg, lr=self.args.lr, momentum=0.9, weight_decay=4E-5)
        
        lf = lambda x: ((1 + math.cos(x * math.pi / self.args.epochs)) / 2) * (1 - self.args.lrf) + self.args.lrf
        scheduler = lr_scheduler.LambdaLR(optimizer, lr_lambda=lf)
        
        # ==================== 新增：训练历史记录 ====================
        fold_history = {
            'fold': fold + 1,
            'epochs': [],
            'train_loss': [],
            'train_acc': [],
            'val_loss': [],
            'val_acc': [],
            'learning_rate': []
        }
        # ============================================================
        
        # 训练记录
        best_val_acc = 0.0
        best_epoch = 0
        best_model_weights = None
        
        # 训练循环
        for epoch in range(self.args.epochs):
            # 训练
            train_loss, train_acc = train_one_epoch(
                model=model,
                optimizer=optimizer,
                data_loader=train_loader,
                device=self.device,
                epoch=epoch
            )
            
            scheduler.step()
            current_lr = optimizer.param_groups[0]["lr"]
            
            # 验证
            val_loss, val_acc = evaluate(model=model, data_loader=val_loader, device=self.device)
            
            # ==================== 新增：记录历史 ====================
            fold_history['epochs'].append(epoch + 1)
            fold_history['train_loss'].append(train_loss)
            fold_history['train_acc'].append(train_acc)
            fold_history['val_loss'].append(val_loss)
            fold_history['val_acc'].append(val_acc)
            fold_history['learning_rate'].append(current_lr)
            # ========================================================
            
            print(f"\n[Fold {fold+1}, Epoch {epoch+1}/{self.args.epochs}] "
                  f"Train Loss: {train_loss:.4f}, Train Acc: {train_acc:.2f}%, "
                  f"Val Loss: {val_loss:.4f}, Val Acc: {val_acc:.2f}%")
            
            # TensorBoard记录
            tb_writer.add_scalar('Loss/train', train_loss, epoch)
            tb_writer.add_scalar('Loss/val', val_loss, epoch)
            tb_writer.add_scalar('Accuracy/train', train_acc, epoch)
            tb_writer.add_scalar('Accuracy/val', val_acc, epoch)
            tb_writer.add_scalar('Learning_rate', current_lr, epoch)
            
            # 保存最佳模型
            if val_acc > best_val_acc:
                best_val_acc = val_acc
                best_epoch = epoch
                best_model_weights = copy.deepcopy(model.state_dict())
                print(f"✓ New best model! Val Acc: {val_acc:.2f}%")
        
        tb_writer.close()
        
        # 保存该fold的最佳模型
        fold_model_path = self.weights_dir / f"fold_{fold+1}_best.pth"
        torch.save(best_model_weights, fold_model_path)
        print(f"\nFold {fold+1} best model saved: {fold_model_path}")
        print(f"Best Val Acc: {best_val_acc:.2f}% at epoch {best_epoch+1}")
        
        # ==================== 新增：保存fold历史并绘图 ====================
        self.all_fold_history.append(fold_history)
        self._plot_fold_curves(fold_history)
        self._save_fold_table(fold_history)
        # ================================================================
        
        return {
            'fold': fold + 1,
            'best_val_acc': best_val_acc,
            'best_epoch': best_epoch,
            'model_weights': best_model_weights,
            'model_path': str(fold_model_path),
            'train_indices': train_indices.tolist(),
            'val_indices': val_indices.tolist(),
            'history': fold_history  # 添加历史记录
        }
    
    # ==================== 新增方法：绘制单个fold的曲线 ====================
    def _plot_fold_curves(self, fold_history):
        """绘制单个fold的训练曲线"""
        fold_num = fold_history['fold']
        epochs = fold_history['epochs']
        
        fig, axes = plt.subplots(2, 2, figsize=(15, 10))
        fig.suptitle(f'Fold {fold_num} Training Curves', fontsize=16, fontweight='bold')
        
        # 1. 训练和验证损失
        axes[0, 0].plot(epochs, fold_history['train_loss'], 'b-', label='Train Loss', linewidth=2)
        axes[0, 0].plot(epochs, fold_history['val_loss'], 'r-', label='Val Loss', linewidth=2)
        axes[0, 0].set_xlabel('Epoch')
        axes[0, 0].set_ylabel('Loss')
        axes[0, 0].set_title('Loss Curves')
        axes[0, 0].legend()
        axes[0, 0].grid(True, alpha=0.3)
        
        # 2. 训练和验证准确度
        axes[0, 1].plot(epochs, fold_history['train_acc'], 'b-', label='Train Acc', linewidth=2)
        axes[0, 1].plot(epochs, fold_history['val_acc'], 'r-', label='Val Acc', linewidth=2)
        axes[0, 1].set_xlabel('Epoch')
        axes[0, 1].set_ylabel('Accuracy (%)')
        axes[0, 1].set_title('Accuracy Curves')
        axes[0, 1].legend()
        axes[0, 1].grid(True, alpha=0.3)
        
        # 3. 学习率变化
        axes[1, 0].plot(epochs, fold_history['learning_rate'], 'g-', linewidth=2)
        axes[1, 0].set_xlabel('Epoch')
        axes[1, 0].set_ylabel('Learning Rate')
        axes[1, 0].set_title('Learning Rate Schedule')
        axes[1, 0].grid(True, alpha=0.3)
        axes[1, 0].set_yscale('log')
        
        # 4. 损失和准确度综合对比
        ax1 = axes[1, 1]
        ax2 = ax1.twinx()
        
        ln1 = ax1.plot(epochs, fold_history['val_loss'], 'r-', label='Val Loss', linewidth=2)
        ln2 = ax2.plot(epochs, fold_history['val_acc'], 'b-', label='Val Acc', linewidth=2)
        
        ax1.set_xlabel('Epoch')
        ax1.set_ylabel('Validation Loss', color='r')
        ax2.set_ylabel('Validation Accuracy (%)', color='b')
        ax1.set_title('Validation Loss vs Accuracy')
        ax1.tick_params(axis='y', labelcolor='r')
        ax2.tick_params(axis='y', labelcolor='b')
        
        # 合并图例
        lns = ln1 + ln2
        labels = [l.get_label() for l in lns]
        ax1.legend(lns, labels, loc='center right')
        ax1.grid(True, alpha=0.3)
        
        plt.tight_layout()
        save_path = self.plots_dir / f'fold_{fold_num}_curves.png'
        plt.savefig(save_path, dpi=300, bbox_inches='tight')
        plt.close()
        
        print(f"Fold {fold_num} curves saved to: {save_path}")
    
    # ==================== 新增方法：保存单个fold的表格 ====================
    def _save_fold_table(self, fold_history):
        """保存单个fold的训练数据为Excel表格"""
        fold_num = fold_history['fold']
        
        # 创建DataFrame
        df = pd.DataFrame({
            'Epoch': fold_history['epochs'],
            'Train Loss': fold_history['train_loss'],
            'Train Acc (%)': fold_history['train_acc'],
            'Val Loss': fold_history['val_loss'],
            'Val Acc (%)': fold_history['val_acc'],
            'Learning Rate': fold_history['learning_rate']
        })
        
        # 添加统计行
        stats_df = pd.DataFrame({
            'Epoch': ['Min', 'Max', 'Mean', 'Std'],
            'Train Loss': [
                df['Train Loss'].min(),
                df['Train Loss'].max(),
                df['Train Loss'].mean(),
                df['Train Loss'].std()
            ],
            'Train Acc (%)': [
                df['Train Acc (%)'].min(),
                df['Train Acc (%)'].max(),
                df['Train Acc (%)'].mean(),
                df['Train Acc (%)'].std()
            ],
            'Val Loss': [
                df['Val Loss'].min(),
                df['Val Loss'].max(),
                df['Val Loss'].mean(),
                df['Val Loss'].std()
            ],
            'Val Acc (%)': [
                df['Val Acc (%)'].min(),
                df['Val Acc (%)'].max(),
                df['Val Acc (%)'].mean(),
                df['Val Acc (%)'].std()
            ],
            'Learning Rate': ['', '', '', '']
        })
        
        # 保存为Excel
        excel_path = self.tables_dir / f'fold_{fold_num}_history.xlsx'
        with pd.ExcelWriter(excel_path, engine='openpyxl') as writer:
            df.to_excel(writer, sheet_name='Training History', index=False)
            stats_df.to_excel(writer, sheet_name='Statistics', index=False)
        
        print(f"Fold {fold_num} table saved to: {excel_path}")
    
    # ==================== 新增方法：绘制所有fold的对比图 ====================
    def _plot_all_folds_comparison(self):
        """绘制所有fold的对比曲线"""
        if not self.all_fold_history:
            return
        
        fig, axes = plt.subplots(2, 2, figsize=(16, 12))
        fig.suptitle(f'{self.k_folds}-Fold Cross Validation Comparison', 
                    fontsize=16, fontweight='bold')
        
        colors = plt.cm.tab10(np.linspace(0, 1, self.k_folds))
        
        # 1. 所有fold的验证损失
        for i, history in enumerate(self.all_fold_history):
            axes[0, 0].plot(history['epochs'], history['val_loss'], 
                          color=colors[i], label=f'Fold {history["fold"]}', 
                          linewidth=1.5, alpha=0.7)
        axes[0, 0].set_xlabel('Epoch')
        axes[0, 0].set_ylabel('Validation Loss')
        axes[0, 0].set_title('Validation Loss Comparison Across Folds')
        axes[0, 0].legend(bbox_to_anchor=(1.05, 1), loc='upper left')
        axes[0, 0].grid(True, alpha=0.3)
        
        # 2. 所有fold的验证准确度
        for i, history in enumerate(self.all_fold_history):
            axes[0, 1].plot(history['epochs'], history['val_acc'], 
                          color=colors[i], label=f'Fold {history["fold"]}', 
                          linewidth=1.5, alpha=0.7)
        axes[0, 1].set_xlabel('Epoch')
        axes[0, 1].set_ylabel('Validation Accuracy (%)')
        axes[0, 1].set_title('Validation Accuracy Comparison Across Folds')
        axes[0, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper left')
        axes[0, 1].grid(True, alpha=0.3)
        
        # 3. 平均验证损失（带标准差阴影）
        max_epochs = max(len(h['epochs']) for h in self.all_fold_history)
        all_val_losses = np.zeros((self.k_folds, max_epochs))
        all_val_accs = np.zeros((self.k_folds, max_epochs))
        
        for i, history in enumerate(self.all_fold_history):
            n_epochs = len(history['val_loss'])
            all_val_losses[i, :n_epochs] = history['val_loss']
            all_val_accs[i, :n_epochs] = history['val_acc']
            # 填充剩余值（如果epoch数不同）
            if n_epochs < max_epochs:
                all_val_losses[i, n_epochs:] = history['val_loss'][-1]
                all_val_accs[i, n_epochs:] = history['val_acc'][-1]
        
        epochs_range = np.arange(1, max_epochs + 1)
        mean_val_loss = all_val_losses.mean(axis=0)
        std_val_loss = all_val_losses.std(axis=0)
        
        axes[1, 0].plot(epochs_range, mean_val_loss, 'b-', linewidth=2, label='Mean')
        axes[1, 0].fill_between(epochs_range, 
                               mean_val_loss - std_val_loss,
                               mean_val_loss + std_val_loss,
                               alpha=0.3, label='±1 Std Dev')
        axes[1, 0].set_xlabel('Epoch')
        axes[1, 0].set_ylabel('Validation Loss')
        axes[1, 0].set_title('Mean Validation Loss (±1 Std Dev)')
        axes[1, 0].legend()
        axes[1, 0].grid(True, alpha=0.3)
        
        # 4. 平均验证准确度（带标准差阴影）
        mean_val_acc = all_val_accs.mean(axis=0)
        std_val_acc = all_val_accs.std(axis=0)
        
        axes[1, 1].plot(epochs_range, mean_val_acc, 'b-', linewidth=2, label='Mean')
        axes[1, 1].fill_between(epochs_range,
                               mean_val_acc - std_val_acc,
                               mean_val_acc + std_val_acc,
                               alpha=0.3, label='±1 Std Dev')
        axes[1, 1].set_xlabel('Epoch')
        axes[1, 1].set_ylabel('Validation Accuracy (%)')
        axes[1, 1].set_title('Mean Validation Accuracy (±1 Std Dev)')
        axes[1, 1].legend()
        axes[1, 1].grid(True, alpha=0.3)
        
        plt.tight_layout()
        save_path = self.plots_dir / 'all_folds_comparison.png'
        plt.savefig(save_path, dpi=300, bbox_inches='tight')
        plt.close()
        
        print(f"\nAll folds comparison plot saved to: {save_path}")
    
    # ==================== 新增方法：绘制fold性能柱状图 ====================
    def _plot_folds_performance_bars(self):
        """绘制各fold的最佳性能柱状图"""
        fold_nums = [r['fold'] for r in self.fold_results]
        best_accs = [r['best_val_acc'] for r in self.fold_results]
        best_epochs = [r['best_epoch'] + 1 for r in self.fold_results]
        
        fig, axes = plt.subplots(1, 2, figsize=(14, 5))
        fig.suptitle('K-Fold Performance Summary', fontsize=16, fontweight='bold')
        
        # 1. 最佳准确度柱状图
        bars1 = axes[0].bar(fold_nums, best_accs, color='steelblue', alpha=0.7)
        axes[0].axhline(y=np.mean(best_accs), color='r', linestyle='--', 
                       linewidth=2, label=f'Mean: {np.mean(best_accs):.2f}%')
        axes[0].set_xlabel('Fold')
        axes[0].set_ylabel('Best Validation Accuracy (%)')
        axes[0].set_title('Best Validation Accuracy per Fold')
        axes[0].set_xticks(fold_nums)
        axes[0].legend()
        axes[0].grid(True, alpha=0.3, axis='y')
        
        # 在柱子上显示数值
        for bar, acc in zip(bars1, best_accs):
            height = bar.get_height()
            axes[0].text(bar.get_x() + bar.get_width()/2., height,
                        f'{acc:.2f}%',
                        ha='center', va='bottom', fontsize=9)
        
        # 2. 达到最佳准确度的epoch柱状图
        bars2 = axes[1].bar(fold_nums, best_epochs, color='coral', alpha=0.7)
        axes[1].axhline(y=np.mean(best_epochs), color='r', linestyle='--',
                       linewidth=2, label=f'Mean: {np.mean(best_epochs):.1f}')
        axes[1].set_xlabel('Fold')
        axes[1].set_ylabel('Best Epoch')
        axes[1].set_title('Epoch of Best Performance per Fold')
        axes[1].set_xticks(fold_nums)
        axes[1].legend()
        axes[1].grid(True, alpha=0.3, axis='y')
        
        # 在柱子上显示数值
        for bar, epoch in zip(bars2, best_epochs):
            height = bar.get_height()
            axes[1].text(bar.get_x() + bar.get_width()/2., height,
                        f'{epoch}',
                        ha='center', va='bottom', fontsize=9)
        
        plt.tight_layout()
        save_path = self.plots_dir / 'folds_performance_bars.png'
        plt.savefig(save_path, dpi=300, bbox_inches='tight')
        plt.close()
        
        print(f"Folds performance bars saved to: {save_path}")
    
    # ==================== 新增方法：保存汇总Excel表格 ====================
    def _save_summary_tables(self):
        """保存所有fold的汇总表格"""
        
        # 1. 每个fold的最佳性能汇总
        summary_data = []
        for result in self.fold_results:
            fold_num = result['fold']
            history = result['history']
            
            summary_data.append({
                'Fold': fold_num,
                'Best Val Acc (%)': result['best_val_acc'],
                'Best Epoch': result['best_epoch'] + 1,
                'Final Train Loss': history['train_loss'][-1],
                'Final Train Acc (%)': history['train_acc'][-1],
                'Final Val Loss': history['val_loss'][-1],
                'Final Val Acc (%)': history['val_acc'][-1],
                'Train Samples': len(result['train_indices']),
                'Val Samples': len(result['val_indices'])
            })
        
        summary_df = pd.DataFrame(summary_data)
        
        # 添加统计行
        stats_row = {
            'Fold': 'Statistics',
            'Best Val Acc (%)': '',
            'Best Epoch': '',
            'Final Train Loss': '',
            'Final Train Acc (%)': '',
            'Final Val Loss': '',
            'Final Val Acc (%)': '',
            'Train Samples': '',
            'Val Samples': ''
        }
        
        mean_row = stats_row.copy()
        mean_row['Fold'] = 'Mean'
        mean_row['Best Val Acc (%)'] = summary_df['Best Val Acc (%)'].mean()
        mean_row['Best Epoch'] = summary_df['Best Epoch'].mean()
        mean_row['Final Train Loss'] = summary_df['Final Train Loss'].mean()
        mean_row['Final Train Acc (%)'] = summary_df['Final Train Acc (%)'].mean()
        mean_row['Final Val Loss'] = summary_df['Final Val Loss'].mean()
        mean_row['Final Val Acc (%)'] = summary_df['Final Val Acc (%)'].mean()
        
        std_row = stats_row.copy()
        std_row['Fold'] = 'Std Dev'
        std_row['Best Val Acc (%)'] = summary_df['Best Val Acc (%)'].std()
        std_row['Best Epoch'] = summary_df['Best Epoch'].std()
        std_row['Final Train Loss'] = summary_df['Final Train Loss'].std()
        std_row['Final Train Acc (%)'] = summary_df['Final Train Acc (%)'].std()
        std_row['Final Val Loss'] = summary_df['Final Val Loss'].std()
        std_row['Final Val Acc (%)'] = summary_df['Final Val Acc (%)'].std()
        
        summary_df = pd.concat([summary_df, 
                               pd.DataFrame([mean_row, std_row])], 
                              ignore_index=True)
        
        # 2. 每个epoch的所有fold平均值
        max_epochs = max(len(h['epochs']) for h in self.all_fold_history)
        epoch_avg_data = []
        
        for epoch in range(max_epochs):
            train_losses = []
            train_accs = []
            val_losses = []
            val_accs = []
            
            for history in self.all_fold_history:
                if epoch < len(history['epochs']):
                    train_losses.append(history['train_loss'][epoch])
                    train_accs.append(history['train_acc'][epoch])
                    val_losses.append(history['val_loss'][epoch])
                    val_accs.append(history['val_acc'][epoch])
            
            epoch_avg_data.append({
                'Epoch': epoch + 1,
                'Mean Train Loss': np.mean(train_losses),
                'Std Train Loss': np.std(train_losses),
                'Mean Train Acc (%)': np.mean(train_accs),
                'Std Train Acc (%)': np.std(train_accs),
                'Mean Val Loss': np.mean(val_losses),
                'Std Val Loss': np.std(val_losses),
                'Mean Val Acc (%)': np.mean(val_accs),
                'Std Val Acc (%)': np.std(val_accs)
            })
        
        epoch_avg_df = pd.DataFrame(epoch_avg_data)
        
        # 保存到Excel
        excel_path = self.tables_dir / 'kfold_summary.xlsx'
        with pd.ExcelWriter(excel_path, engine='openpyxl') as writer:
            summary_df.to_excel(writer, sheet_name='Fold Summary', index=False)
            epoch_avg_df.to_excel(writer, sheet_name='Epoch Averages', index=False)
            
            # 添加一个详细的所有fold数据sheet
            all_data = []
            for history in self.all_fold_history:
                fold_num = history['fold']
                for i, epoch in enumerate(history['epochs']):
                    all_data.append({
                        'Fold': fold_num,
                        'Epoch': epoch,
                        'Train Loss': history['train_loss'][i],
                        'Train Acc (%)': history['train_acc'][i],
                        'Val Loss': history['val_loss'][i],
                        'Val Acc (%)': history['val_acc'][i],
                        'Learning Rate': history['learning_rate'][i]
                    })
            
            all_data_df = pd.DataFrame(all_data)
            all_data_df.to_excel(writer, sheet_name='All Fold Details', index=False)
        
        print(f"\nSummary tables saved to: {excel_path}")
    
    # ================================================================
    
    def run_kfold(self):
        """执行K折交叉验证"""
        print(f'\n{"="*80}')
        print(f'Starting {self.k_folds}-Fold Cross Validation')
        print(f'Total samples: {len(self.train_dataset)}')
        print(f'{"="*80}')
        
        # 初始化KFold
        kfold = KFold(n_splits=self.k_folds, shuffle=True, random_state=42)
        
        # 遍历每个fold
        for fold, (train_idx, val_idx) in enumerate(kfold.split(range(len(self.train_dataset)))):
            fold_result = self.train_one_fold(fold, train_idx, val_idx)
            self.fold_results.append(fold_result)
        
        # 分析结果
        self._analyze_results()
        
        # ==================== 新增：生成所有可视化和表格 ====================
        print(f"\n{'='*80}")
        print("Generating visualization and reports...")
        print(f"{'='*80}\n")
        
        self._plot_all_folds_comparison()
        self._plot_folds_performance_bars()
        self._save_summary_tables()
        # ================================================================
        
        # 保存结果和最佳模型
        self._save_results()
        
        # 导出最佳fold的数据集
        self._export_best_dataset()
        
        # ==================== 新增：打印结果目录信息 ====================
        print(f"\n{'='*80}")
        print("All results saved to:")
        print(f"  Main directory: {self.results_dir}")
        print(f"  Plots: {self.plots_dir}")
        print(f"  Tables: {self.tables_dir}")
        print(f"  Weights: {self.weights_dir}")
        print(f"{'='*80}\n")
        # ================================================================
        
        return self.fold_results
    
    def _analyze_results(self):
        """分析K折结果"""
        print(f'\n{"="*80}')
        print('K-Fold Cross Validation Results Summary')
        print(f'{"="*80}')
        
        accuracies = [result['best_val_acc'] for result in self.fold_results]
        
        for result in self.fold_results:
            print(f"Fold {result['fold']}: "
                  f"Best Val Acc = {result['best_val_acc']:.2f}% "
                  f"(Epoch {result['best_epoch']+1})")
        
        mean_acc = np.mean(accuracies)
        std_acc = np.std(accuracies)
        
        print(f'\n{"="*80}')
        print(f"Mean Validation Accuracy: {mean_acc:.2f}% (±{std_acc:.2f}%)")
        print(f"Min Accuracy: {np.min(accuracies):.2f}%")
        print(f"Max Accuracy: {np.max(accuracies):.2f}%")
        print(f'{"="*80}\n')
        
        # 找到最佳fold
        best_fold_idx = np.argmax(accuracies)
        self.best_fold_info = self.fold_results[best_fold_idx]
        
        print(f"🏆 Best performing fold: Fold {self.best_fold_info['fold']}")
        print(f"🏆 Best accuracy: {self.best_fold_info['best_val_acc']:.2f}%\n")
    
    def _save_results(self):
        """保存结果和最佳模型"""
        # 保存最佳模型
        best_model_path = self.weights_dir / "best_model.pth"
        torch.save(self.best_fold_info['model_weights'], best_model_path)
        
        print(f"{'='*80}")
        print(f"Best model saved to: {best_model_path}")
        print(f"From Fold {self.best_fold_info['fold']} with accuracy {self.best_fold_info['best_val_acc']:.2f}%")
        print(f"{'='*80}\n")
        
        # 保存统计结果
        results_summary = {
            'k_folds': self.k_folds,
            'num_classes': self.num_classes,
            'class_names': list(self.class_to_idx.keys()),
            'total_samples': len(self.train_dataset),
            'best_fold': self.best_fold_info['fold'],
            'best_accuracy': float(self.best_fold_info['best_val_acc']),
            'best_epoch': int(self.best_fold_info['best_epoch']),
            'mean_accuracy': float(np.mean([r['best_val_acc'] for r in self.fold_results])),
            'std_accuracy': float(np.std([r['best_val_acc'] for r in self.fold_results])),
            'all_folds': [
                {
                    'fold': r['fold'],
                    'best_val_acc': float(r['best_val_acc']),
                    'best_epoch': int(r['best_epoch']),
                    'model_path': r['model_path'],
                    'train_samples': len(r['train_indices']),
                    'val_samples': len(r['val_indices'])
                }
                for r in self.fold_results
            ]
        }
        
        # 保存为JSON
        results_path = self.weights_dir / 'kfold_results.json'
        with open(results_path, 'w') as f:
            json.dump(results_summary, f, indent=4)
        print(f"Results summary saved to: {results_path}")
        
        # 保存最佳fold的索引
        indices_path = self.weights_dir / 'best_fold_indices.json'
        with open(indices_path, 'w') as f:
            json.dump({
                'fold': self.best_fold_info['fold'],
                'train_indices': self.best_fold_info['train_indices'],
                'val_indices': self.best_fold_info['val_indices']
            }, f, indent=4)
        print(f"Best fold indices saved to: {indices_path}\n")
    
    def _export_best_dataset(self):
        """导出最佳fold的训练集和验证集到指定目录"""
        if not self.args.export_path:
            print("No export path specified, skipping dataset export.")
            return
        
        export_dir = Path(self.args.export_path)
        train_dir = export_dir / 'train'
        val_dir = export_dir / 'val'
        
        print(f"\n{'='*80}")
        print(f"Exporting best fold dataset to: {export_dir}")
        print(f"{'='*80}\n")
        
        # 创建目录结构
        for class_name in self.class_to_idx.keys():
            (train_dir / class_name).mkdir(parents=True, exist_ok=True)
            (val_dir / class_name).mkdir(parents=True, exist_ok=True)
        
        train_indices = self.best_fold_info['train_indices']
        val_indices = self.best_fold_info['val_indices']
        
        # 复制训练集
        print("Copying training set...")
        for idx in tqdm(train_indices):
            src_path = self.train_dataset.get_image_path(idx)
            label = self.train_dataset.labels[idx]
            class_name = self.idx_to_class[label]
            
            dst_path = train_dir / class_name / Path(src_path).name
            shutil.copy2(src_path, dst_path)
        
        # 复制验证集
        print("Copying validation set...")
        for idx in tqdm(val_indices):
            src_path = self.val_dataset.get_image_path(idx)
            label = self.val_dataset.labels[idx]
            class_name = self.idx_to_class[label]
            
            dst_path = val_dir / class_name / Path(src_path).name
            shutil.copy2(src_path, dst_path)
        
        # 保存数据集信息
        dataset_info = {
            'source_dataset': str(self.args.data_path),
            'best_fold': self.best_fold_info['fold'],
            'best_accuracy': self.best_fold_info['best_val_acc'],
            'classes': list(self.class_to_idx.keys()),
            'train_samples': len(train_indices),
            'val_samples': len(val_indices),
            'train_distribution': {},
            'val_distribution': {}
        }
        
        # 统计每个类别的样本数
        for class_name in self.class_to_idx.keys():
            train_count = len(list((train_dir / class_name).glob('*')))
            val_count = len(list((val_dir / class_name).glob('*')))
            dataset_info['train_distribution'][class_name] = train_count
            dataset_info['val_distribution'][class_name] = val_count
        
        info_path = export_dir / 'dataset_info.json'
        with open(info_path, 'w') as f:
            json.dump(dataset_info, f, indent=4)
        
        print(f"\n{'='*80}")
        print("Dataset export completed!")
        print(f"Train set: {train_dir} ({len(train_indices)} images)")
        print(f"Val set: {val_dir} ({len(val_indices)} images)")
        print(f"\nClass distribution:")
        for class_name in self.class_to_idx.keys():
            train_count = dataset_info['train_distribution'][class_name]
            val_count = dataset_info['val_distribution'][class_name]
            print(f"  {class_name}: Train={train_count}, Val={val_count}")
        print(f"\nDataset info saved to: {info_path}")
        print(f"{'='*80}\n")


def main(args):
    # 创建并运行K折交叉验证
    validator = KFoldCrossValidator(args)
    validator.run_kfold()
    
    print("\n🎉 K-Fold Cross Validation Completed Successfully! 🎉\n")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='K-Fold Cross Validation for ShuffleNet')
    
    # 数据集参数
    parser.add_argument('--data-path', type=str, required=True,
                       help='path to dataset (containing fire, ice, thunder folders)')
    parser.add_argument('--export-path', type=str, default='./best_dataset',
                       help='path to export best fold train/val dataset')
    
    # 训练参数
    parser.add_argument('--k-folds', type=int, default=5,
                       help='number of folds for cross validation')
    parser.add_argument('--epochs', type=int, default=20,
                       help='number of epochs per fold')
    parser.add_argument('--batch-size', type=int, default=16,
                       help='batch size')
    parser.add_argument('--lr', type=float, default=0.01,
                       help='initial learning rate')
    parser.add_argument('--lrf', type=float, default=0.1,
                       help='learning rate final ratio')
    
    # 模型参数
    parser.add_argument('--weights', type=str, default='',
                       help='path to pretrained weights (optional)')
    parser.add_argument('--freeze-layers', action='store_true',
                       help='freeze all layers except fc')
    
    # 设备参数
    parser.add_argument('--device', default='cuda:0',
                       help='device id (i.e. 0 or 0,1 or cpu)')
    
    args = parser.parse_args()
    
    main(args)