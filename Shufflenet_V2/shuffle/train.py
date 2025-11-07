import os
import math
import argparse
import shutil
import matplotlib.pyplot as plt
import numpy as np

import torch
import torch.optim as optim
from torch.utils.tensorboard import SummaryWriter
from torchvision import transforms
import torch.optim.lr_scheduler as lr_scheduler

from model import shufflenet_v2_x0_5
from my_dataset import MyDataSet
from utils import read_split_data, train_one_epoch, evaluate


def main(args):
    # 程序开始时删除已有的 runs 文件夹
    if os.path.exists("runs"):
        try:
            shutil.rmtree("runs")  # 递归删除文件夹及内部所有内容
            print("已删除旧的 runs 文件夹")
        except Exception as e:
            print(f"删除 runs 文件夹失败：{e}")

    device = torch.device(args.device if torch.cuda.is_available() else "cpu")

    print(args)
    print('Start Tensorboard with "tensorboard --logdir=runs", view at http://localhost:6006/')
    tb_writer = SummaryWriter()
    if os.path.exists("./weights") is False:
        os.makedirs("./weights")

    train_images_path, train_images_label, val_images_path, val_images_label = read_split_data(args.data_path)

    data_transform = {
        "train": transforms.Compose([transforms.RandomResizedCrop(128),
                                     transforms.RandomHorizontalFlip(),
                                     transforms.ToTensor(),
                                     transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])]),
        "val": transforms.Compose([transforms.Resize(256),
                                   transforms.CenterCrop(128),
                                   transforms.ToTensor(),
                                   transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])])}

    # 实例化训练数据集
    train_dataset = MyDataSet(images_path=train_images_path,
                              images_class=train_images_label,
                              transform=data_transform["train"])

    # 实例化验证数据集
    val_dataset = MyDataSet(images_path=val_images_path,
                            images_class=val_images_label,
                            transform=data_transform["val"])

    batch_size = args.batch_size
    nw = min([os.cpu_count(), batch_size if batch_size > 1 else 0, 8])  # number of workers
    print('Using {} dataloader workers every process'.format(nw))
    train_loader = torch.utils.data.DataLoader(train_dataset,
                                               batch_size=batch_size,
                                               shuffle=True,
                                               pin_memory=True,
                                               num_workers=nw,
                                               collate_fn=train_dataset.collate_fn)

    val_loader = torch.utils.data.DataLoader(val_dataset,
                                             batch_size=batch_size,
                                             shuffle=False,
                                             pin_memory=True,
                                             num_workers=nw,
                                             collate_fn=val_dataset.collate_fn)

    # 如果存在预训练权重则载入
    model = shufflenet_v2_x0_5(num_classes=args.num_classes).to(device)
    if args.weights != "":
        if os.path.exists(args.weights):
            weights_dict = torch.load(args.weights, map_location=device)
            load_weights_dict = {k: v for k, v in weights_dict.items()
                                 if model.state_dict()[k].numel() == v.numel()}
            print(model.load_state_dict(load_weights_dict, strict=False))
        else:
            raise FileNotFoundError("not found weights file: {}".format(args.weights))

    # 是否冻结权重
    if args.freeze_layers:
        for name, para in model.named_parameters():
            # 除最后的全连接层外，其他权重全部冻结
            if "fc" not in name:
                para.requires_grad_(False)

    pg = [p for p in model.parameters() if p.requires_grad]
    optimizer = optim.SGD(pg, lr=args.lr, momentum=0.9, weight_decay=4E-5)
    # Scheduler https://arxiv.org/pdf/1812.01187.pdf
    lf = lambda x: ((1 + math.cos(x * math.pi / args.epochs)) / 2) * (1 - args.lrf) + args.lrf  # cosine
    scheduler = lr_scheduler.LambdaLR(optimizer, lr_lambda=lf)

    with open("training_metrics4.txt", "w") as f:
        f.write("epoch,mean_loss,accuracy,learning_rate\n")  # 写入表头

    losses = []
    accs = []
    lrs = []
    epochs_list = []

    for epoch in range(args.epochs):
        # train
        mean_loss = train_one_epoch(model=model,
                                    optimizer=optimizer,
                                    data_loader=train_loader,
                                    device=device,
                                    epoch=epoch)

        scheduler.step()

        # validate
        acc = evaluate(model=model,
                       data_loader=val_loader,
                       device=device)

        print("[epoch {}] accuracy: {}".format(epoch, round(acc, 3)))

        tags = ["loss", "accuracy", "learning_rate"]
        tb_writer.add_scalar(tags[0], mean_loss, epoch)
        tb_writer.add_scalar(tags[1], acc, epoch)
        tb_writer.add_scalar(tags[2], optimizer.param_groups[0]["lr"], epoch)

        torch.save(model.state_dict(), "./weights/model-{}.pth".format(epoch))

        # 获取当前学习率
        current_lr = optimizer.param_groups[0]["lr"]
         # 保存指标到文件（追加模式）
        with open("training_metrics4.txt", "a") as f:
            f.write(f"{epoch},{mean_loss:.6f},{acc:.6f},{current_lr:.6f}\n")
        #
        epochs_list.append(epoch)
        losses.append(mean_loss)
        accs.append(acc)
        lrs.append(current_lr)

    # 训练结束后绘图
    plt.figure(figsize=(15, 5))  # 画布大小

    # 第1个子图：损失曲线
    plt.subplot(1, 3, 1)  # 1行3列，第1个图
    plt.plot(epochs_list, losses, 'b-', label='Loss')
    plt.title('Training Loss')
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.legend()

    # 第2个子图：准确率曲线
    plt.subplot(1, 3, 2)  # 1行3列，第2个图
    plt.plot(epochs_list, accs, 'g-', label='Accuracy')
    plt.title('Validation Accuracy')
    plt.xlabel('Epoch')
    plt.ylabel('Accuracy')
    plt.legend()

    # 第3个子图：学习率曲线
    plt.subplot(1, 3, 3)  # 1行3列，第3个图
    plt.plot(epochs_list, lrs, 'r-', label='Learning Rate')
    plt.title('Learning Rate')
    plt.xlabel('Epoch')
    plt.ylabel('LR')
    plt.legend()

    # 调整布局，避免重叠
    plt.tight_layout()

    # 保存图片（支持png、jpg等格式）
    plt.savefig('training_metrics4.png', dpi=300, bbox_inches='tight')
    print("指标曲线已保存为 training_metrics4.png")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--num_classes', type=int, default=3)
    parser.add_argument('--epochs', type=int, default=50)
    parser.add_argument('--batch-size', type=int, default=16)
    parser.add_argument('--lr', type=float, default=0.01)
    parser.add_argument('--lrf', type=float, default=0.1)

    # 数据集所在根目录
    # https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz
    parser.add_argument('--data-path', type=str,
                        default="../dataset")

    # shufflenetv2_x1.0 官方权重下载地址
    # https://download.pytorch.org/models/shufflenetv2_x1-5666bf0f80.pth
    # https://download.pytorch.org/models/shufflenetv2_x0.5-f707e7126e.pth
    parser.add_argument('--weights', type=str, default='./shufflenetv2_x0.5-f707e7126e.pth',
                        help='initial weights path')
    parser.add_argument('--freeze-layers', type=bool, default=False)
    parser.add_argument('--device', default='cuda:0', help='device id (i.e. 0 or 0,1 or cpu)')

    opt = parser.parse_args()

    main(opt)