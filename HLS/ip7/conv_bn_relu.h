#ifndef CONV_BN_RELU_H
#define CONV_BN_RELU_H

#include <ap_int.h>

// 数据类型定义
typedef ap_int<8> Dtype_f;  // 特征图数据类型（定点8位）
typedef ap_int<8> Dtype_w;  // 权重数据类型（定点8位）
typedef ap_int<32> Dtype_acc;  // 累加器数据类型（定点32位）

// 卷积类型枚举
enum ConvType {
    NORMAL_CONV,    // 普通卷积
    DEPTHWISE_CONV  // 深度卷积
};

/**
 * @brief 多功能卷积 + BN + ReLU 模块
 * 
 * 该模块支持普通卷积和深度卷积，包含Batch Normalization和ReLU激活功能。
 * 适用于ShuffleNet等轻量级神经网络的关键计算模块。
 * 
 * @param conv_type 卷积类型（普通卷积或深度卷积）
 * @param C_in 输入通道数
 * @param H_in 输入高度
 * @param W_in 输入宽度
 * @param C_out 输出通道数
 * @param kernel_size 卷积核大小
 * @param stride 卷积步长
 * @param padding 卷积填充
 * @param feature_in 输入特征图
 * @param conv_kernel 卷积核权重
 * @param bn_mean 批归一化均值
 * @param bn_var 批归一化方差
 * @param bn_gamma 批归一化缩放系数
 * @param bn_beta 批归一化偏置
 * @param feature_out 输出特征图
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
);

#endif // CONV_BN_RELU_H