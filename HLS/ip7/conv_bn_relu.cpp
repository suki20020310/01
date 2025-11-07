#include "conv_bn_relu.h"
#include <cmath>

// 控制寄存器地址偏移（供PS通过AXI4-Lite访问）
#define CONV_TYPE_OFFSET 0x10  // 卷积类型寄存器地址
#define C_IN_OFFSET     0x14   // 输入通道数寄存器地址
#define H_IN_OFFSET     0x18   // 输入高度寄存器地址
#define W_IN_OFFSET     0x1C   // 输入宽度寄存器地址
#define C_OUT_OFFSET    0x20   // 输出通道数寄存器地址
#define KERNEL_SIZE_OFFSET 0x24  // 卷积核大小寄存器地址
#define STRIDE_OFFSET   0x28   // 卷积步长寄存器地址
#define PADDING_OFFSET  0x2C   // 卷积填充寄存器地址

/**
 * @brief 多功能卷积 + BN + ReLU 模块实现
 */
void conv_bn_relu(
    // 配置参数
    ConvType conv_type,       // 卷积类型
    ap_uint<16> C_in,         // 输入通道数
    ap_uint<16> H_in,         // 输入高度
    ap_uint<16> W_in,         // 输入宽度
    ap_uint<16> C_out,        // 输出通道数
    ap_uint<8> kernel_size,   // 卷积核大小
    ap_uint<8> stride,        // 卷积步长
    ap_uint<8> padding,       // 卷积填充
    
    // 数据接口
    Dtype_f* feature_in,      // 输入特征图
    Dtype_w* conv_kernel,     // 卷积核
    Dtype_w* bn_mean,         // BN均值
    Dtype_w* bn_var,          // BN方差
    Dtype_w* bn_gamma,        // BN缩放
    Dtype_w* bn_beta,         // BN偏置
    Dtype_f* feature_out      // 输出特征图
) {
    // 计算输出尺寸
    ap_uint<16> H_out = (H_in + 2 * padding - kernel_size) / stride + 1;
    ap_uint<16> W_out = (W_in + 2 * padding - kernel_size) / stride + 1;
    
    // 数据接口声明：所有数据共�?1个m_axi接口
#pragma HLS INTERFACE m_axi depth=2147483647 port=feature_out bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=bn_beta bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=bn_gamma bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=bn_var bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=bn_mean bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=conv_kernel bundle=gmem0 offset=slave
#pragma HLS INTERFACE m_axi depth=2147483647 port=feature_in bundle=gmem0 offset=slave

    // 控制接口：整合为1个AXI4-Lite接口
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=conv_type offset=CONV_TYPE_OFFSET
#pragma HLS INTERFACE s_axilite register port=C_in offset=C_IN_OFFSET
#pragma HLS INTERFACE s_axilite register port=H_in offset=H_IN_OFFSET
#pragma HLS INTERFACE s_axilite register port=W_in offset=W_IN_OFFSET
#pragma HLS INTERFACE s_axilite register port=C_out offset=C_OUT_OFFSET
#pragma HLS INTERFACE s_axilite register port=kernel_size offset=KERNEL_SIZE_OFFSET
#pragma HLS INTERFACE s_axilite register port=stride offset=STRIDE_OFFSET
#pragma HLS INTERFACE s_axilite register port=padding offset=PADDING_OFFSET

    if (conv_type == NORMAL_CONV) {
        // 普通卷积实现（支持1×1、3×3等）
        for (int h_out = 0; h_out < H_out; ++h_out) {
            for (int w_out = 0; w_out < W_out; ++w_out) {
                for (int c_out = 0; c_out < C_out; ++c_out) {
                    // 初始化累加器
                    Dtype_acc sum = 0;
                    
                    // 遍历卷积核和输入通道
                    for (int c_in = 0; c_in < C_in; ++c_in) {
                        for (int kh = 0; kh < kernel_size; ++kh) {
                            for (int kw = 0; kw < kernel_size; ++kw) {
                                // 计算输入坐标
                                int h_in = h_out * stride + kh - padding;
                                int w_in = w_out * stride + kw - padding;
                                
                                // 边界检查
                                if (h_in >= 0 && h_in < H_in && w_in >= 0 && w_in < W_in) {
                                    // 计算输入特征图索引
                                    int in_offset = (h_in * W_in + w_in) * C_in + c_in;
                                    // 计算卷积核索引（输出通道优先，然后是输入通道，最后是空间维度）
                                    int w_offset = c_out * C_in * kernel_size * kernel_size + 
                                                  c_in * kernel_size * kernel_size + 
                                                  kh * kernel_size + kw;
                                    
                                    // 累加卷积结果
                                    sum += (Dtype_acc)feature_in[in_offset] * (Dtype_acc)conv_kernel[w_offset];
                                }
                            }
                        }
                    }
                    
                    // Batch Normalization计算 - 标准BN公式（ShuffleNet规范中深度卷积后只有BN，没有ReLU）
                    Dtype_acc val = sum - (Dtype_acc)bn_mean[c_out];
                    // 添加epsilon避免除零错误，假设bn_var存储的是方差
                    Dtype_acc eps = 1e-5;
                    // 先转换为浮点类型再调用sqrt函数
                    val = val * (Dtype_acc)bn_gamma[c_out] / (Dtype_acc)sqrt((float)((Dtype_acc)bn_var[c_out] + eps));
                    val += (Dtype_acc)bn_beta[c_out];
                    
                    // 量化（没有ReLU激活，直接量化）
                    Dtype_f bn_val = (Dtype_f)(val / 256);
                    
                    // 存储结果
                    int out_offset = (h_out * W_out + w_out) * C_out + c_out;
                    feature_out[out_offset] = bn_val;
                }
            }
        }
    } else if (conv_type == DEPTHWISE_CONV) {
        // 深度卷积实现
        for (int h_out = 0; h_out < H_out; ++h_out) {
            for (int w_out = 0; w_out < W_out; ++w_out) {
                for (int c_out = 0; c_out < C_out; ++c_out) {
                    // 初始化累加器
                    Dtype_acc sum = 0;
                    
                    // 深度卷积：每个通道独立处理（假设C_in = C_out）
                    int c_in = c_out; // 深度卷积中输入通道和输出通道一一对应
                    
                    // 遍历卷积核
                    for (int kh = 0; kh < kernel_size; ++kh) {
                        for (int kw = 0; kw < kernel_size; ++kw) {
                            // 计算输入坐标
                            int h_in = h_out * stride + kh - padding;
                            int w_in = w_out * stride + kw - padding;
                            
                            // 边界检查
                            if (h_in >= 0 && h_in < H_in && w_in >= 0 && w_in < W_in) {
                                // 计算输入特征图索引
                                int in_offset = (h_in * W_in + w_in) * C_in + c_in;
                                // 计算深度卷积核索引
                                int w_offset = c_in * kernel_size * kernel_size + kh * kernel_size + kw;
                                
                                // 累加卷积结果
                                sum += (Dtype_acc)feature_in[in_offset] * (Dtype_acc)conv_kernel[w_offset];
                            }
                        }
                    }
                    
                    // Batch Normalization计算 - 标准BN公式（ShuffleNet规范中深度卷积后只有BN，没有ReLU）
                    Dtype_acc val = sum - (Dtype_acc)bn_mean[c_out];
                    // 添加epsilon避免除零错误，假设bn_var存储的是方差
                    Dtype_acc eps = 1e-5;
                    // 先转换为浮点类型再调用sqrt函数
                    val = val * (Dtype_acc)bn_gamma[c_out] / (Dtype_acc)sqrt((float)((Dtype_acc)bn_var[c_out] + eps));
                    val += (Dtype_acc)bn_beta[c_out];
                    
                    // 量化（没有ReLU激活，直接量化）
                    Dtype_f bn_val = (Dtype_f)(val / 256);
                    
                    // 存储结果
                    int out_offset = (h_out * W_out + w_out) * C_out + c_out;
                    feature_out[out_offset] = bn_val;
                }
            }
        }
    }
}