// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_shufflenet_block (
volatile void* in_r,
volatile void* conv1_kernel,
volatile void* dw_kernel,
volatile void* conv2_kernel,
volatile void* bn1_mean,
volatile void* bn1_var,
volatile void* bn1_gamma,
volatile void* bn1_beta,
volatile void* bn2_mean,
volatile void* bn2_var,
volatile void* bn2_gamma,
volatile void* bn2_beta,
volatile void* bn3_mean,
volatile void* bn3_var,
volatile void* bn3_gamma,
volatile void* bn3_beta,
volatile void* out_r,
short c_in,
short c_out,
short h_w,
short c_reduce,
char stride);
