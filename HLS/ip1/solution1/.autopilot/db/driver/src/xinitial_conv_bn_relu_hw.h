// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of C_in
//        bit 15~0 - C_in[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of W_in
//        bit 15~0 - W_in[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of K
//        bit 7~0 - K[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of padding
//        bit 7~0 - padding[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of pool_stride
//        bit 7~0 - pool_stride[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of H_in
//        bit 15~0 - H_in[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of C_out
//        bit 15~0 - C_out[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of stride
//        bit 7~0 - stride[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of pool_kernel
//        bit 7~0 - pool_kernel[7:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// 0x58 : Data signal of pool_padding
//        bit 7~0 - pool_padding[7:0] (Read/Write)
//        others  - reserved
// 0x5c : reserved
// 0x60 : Data signal of feature_in
//        bit 31~0 - feature_in[31:0] (Read/Write)
// 0x64 : Data signal of feature_in
//        bit 31~0 - feature_in[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of conv_kernel
//        bit 31~0 - conv_kernel[31:0] (Read/Write)
// 0x70 : Data signal of conv_kernel
//        bit 31~0 - conv_kernel[63:32] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of bn_mean
//        bit 31~0 - bn_mean[31:0] (Read/Write)
// 0x7c : Data signal of bn_mean
//        bit 31~0 - bn_mean[63:32] (Read/Write)
// 0x80 : reserved
// 0x84 : Data signal of bn_var
//        bit 31~0 - bn_var[31:0] (Read/Write)
// 0x88 : Data signal of bn_var
//        bit 31~0 - bn_var[63:32] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of bn_gamma
//        bit 31~0 - bn_gamma[31:0] (Read/Write)
// 0x94 : Data signal of bn_gamma
//        bit 31~0 - bn_gamma[63:32] (Read/Write)
// 0x98 : reserved
// 0x9c : Data signal of bn_beta
//        bit 31~0 - bn_beta[31:0] (Read/Write)
// 0xa0 : Data signal of bn_beta
//        bit 31~0 - bn_beta[63:32] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of feature_out
//        bit 31~0 - feature_out[31:0] (Read/Write)
// 0xac : Data signal of feature_out
//        bit 31~0 - feature_out[63:32] (Read/Write)
// 0xb0 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL           0x00
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_GIE               0x04
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER               0x08
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_ISR               0x0c
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_IN_DATA         0x10
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_C_IN_DATA         16
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_W_IN_DATA         0x18
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_W_IN_DATA         16
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_K_DATA            0x20
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_K_DATA            8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_PADDING_DATA      0x28
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_PADDING_DATA      8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_STRIDE_DATA  0x30
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_POOL_STRIDE_DATA  8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_H_IN_DATA         0x38
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_H_IN_DATA         16
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_OUT_DATA        0x40
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_C_OUT_DATA        16
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_STRIDE_DATA       0x48
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_STRIDE_DATA       8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_KERNEL_DATA  0x50
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_POOL_KERNEL_DATA  8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_PADDING_DATA 0x58
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_POOL_PADDING_DATA 8
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA   0x60
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_FEATURE_IN_DATA   64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA  0x6c
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_CONV_KERNEL_DATA  64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA      0x78
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_BN_MEAN_DATA      64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA       0x84
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_BN_VAR_DATA       64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA     0x90
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_BN_GAMMA_DATA     64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA      0x9c
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_BN_BETA_DATA      64
#define XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA  0xa8
#define XINITIAL_CONV_BN_RELU_CONTROL_BITS_FEATURE_OUT_DATA  64

