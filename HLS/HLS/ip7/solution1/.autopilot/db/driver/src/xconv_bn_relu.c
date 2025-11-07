// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv_bn_relu.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv_bn_relu_CfgInitialize(XConv_bn_relu *InstancePtr, XConv_bn_relu_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv_bn_relu_Start(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL) & 0x80;
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv_bn_relu_IsDone(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv_bn_relu_IsIdle(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv_bn_relu_IsReady(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv_bn_relu_EnableAutoRestart(XConv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XConv_bn_relu_DisableAutoRestart(XConv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_AP_CTRL, 0);
}

void XConv_bn_relu_Set_conv_type(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_TYPE_DATA, Data);
}

u32 XConv_bn_relu_Get_conv_type(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_TYPE_DATA);
    return Data;
}

void XConv_bn_relu_Set_H_in(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_H_IN_DATA, Data);
}

u32 XConv_bn_relu_Get_H_in(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_H_IN_DATA);
    return Data;
}

void XConv_bn_relu_Set_C_out(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XConv_bn_relu_Get_C_out(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XConv_bn_relu_Set_stride(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_STRIDE_DATA, Data);
}

u32 XConv_bn_relu_Get_stride(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_STRIDE_DATA);
    return Data;
}

void XConv_bn_relu_Set_C_in(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XConv_bn_relu_Get_C_in(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XConv_bn_relu_Set_W_in(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_W_IN_DATA, Data);
}

u32 XConv_bn_relu_Get_W_in(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_W_IN_DATA);
    return Data;
}

void XConv_bn_relu_Set_kernel_size(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_KERNEL_SIZE_DATA, Data);
}

u32 XConv_bn_relu_Get_kernel_size(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_KERNEL_SIZE_DATA);
    return Data;
}

void XConv_bn_relu_Set_padding(XConv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_PADDING_DATA, Data);
}

u32 XConv_bn_relu_Get_padding(XConv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_PADDING_DATA);
    return Data;
}

void XConv_bn_relu_Set_feature_in(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_feature_in(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_conv_kernel(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_conv_kernel(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_bn_mean(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_bn_mean(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_bn_var(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_bn_var(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_bn_gamma(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_bn_gamma(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_bn_beta(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_bn_beta(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_Set_feature_out(XConv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA, (u32)(Data));
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XConv_bn_relu_Get_feature_out(XConv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA);
    Data += (u64)XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA + 4) << 32;
    return Data;
}

void XConv_bn_relu_InterruptGlobalEnable(XConv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_GIE, 1);
}

void XConv_bn_relu_InterruptGlobalDisable(XConv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_GIE, 0);
}

void XConv_bn_relu_InterruptEnable(XConv_bn_relu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_IER);
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_IER, Register | Mask);
}

void XConv_bn_relu_InterruptDisable(XConv_bn_relu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_IER);
    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_IER, Register & (~Mask));
}

void XConv_bn_relu_InterruptClear(XConv_bn_relu *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_ISR, Mask);
}

u32 XConv_bn_relu_InterruptGetEnabled(XConv_bn_relu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_IER);
}

u32 XConv_bn_relu_InterruptGetStatus(XConv_bn_relu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XCONV_BN_RELU_CONTROL_ADDR_ISR);
}

