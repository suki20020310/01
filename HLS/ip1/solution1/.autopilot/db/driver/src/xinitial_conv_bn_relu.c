// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xinitial_conv_bn_relu.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInitial_conv_bn_relu_CfgInitialize(XInitial_conv_bn_relu *InstancePtr, XInitial_conv_bn_relu_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInitial_conv_bn_relu_Start(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XInitial_conv_bn_relu_IsDone(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XInitial_conv_bn_relu_IsIdle(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XInitial_conv_bn_relu_IsReady(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XInitial_conv_bn_relu_EnableAutoRestart(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XInitial_conv_bn_relu_DisableAutoRestart(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_AP_CTRL, 0);
}

void XInitial_conv_bn_relu_Set_C_in(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_C_in(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_W_in(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_W_IN_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_W_in(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_W_IN_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_K(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_K_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_K(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_K_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_padding(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_PADDING_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_padding(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_PADDING_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_pool_stride(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_STRIDE_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_pool_stride(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_STRIDE_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_H_in(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_H_IN_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_H_in(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_H_IN_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_C_out(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_C_out(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_stride(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_STRIDE_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_stride(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_STRIDE_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_pool_kernel(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_KERNEL_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_pool_kernel(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_KERNEL_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_pool_padding(XInitial_conv_bn_relu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_PADDING_DATA, Data);
}

u32 XInitial_conv_bn_relu_Get_pool_padding(XInitial_conv_bn_relu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_POOL_PADDING_DATA);
    return Data;
}

void XInitial_conv_bn_relu_Set_feature_in(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_feature_in(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_conv_kernel(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_conv_kernel(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_CONV_KERNEL_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_bn_mean(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_bn_mean(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_MEAN_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_bn_var(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_bn_var(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_VAR_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_bn_gamma(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_bn_gamma(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_GAMMA_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_bn_beta(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_bn_beta(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_BN_BETA_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_Set_feature_out(XInitial_conv_bn_relu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA, (u32)(Data));
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XInitial_conv_bn_relu_Get_feature_out(XInitial_conv_bn_relu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA);
    Data += (u64)XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_FEATURE_OUT_DATA + 4) << 32;
    return Data;
}

void XInitial_conv_bn_relu_InterruptGlobalEnable(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_GIE, 1);
}

void XInitial_conv_bn_relu_InterruptGlobalDisable(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_GIE, 0);
}

void XInitial_conv_bn_relu_InterruptEnable(XInitial_conv_bn_relu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER);
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER, Register | Mask);
}

void XInitial_conv_bn_relu_InterruptDisable(XInitial_conv_bn_relu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER);
    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER, Register & (~Mask));
}

void XInitial_conv_bn_relu_InterruptClear(XInitial_conv_bn_relu *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInitial_conv_bn_relu_WriteReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_ISR, Mask);
}

u32 XInitial_conv_bn_relu_InterruptGetEnabled(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_IER);
}

u32 XInitial_conv_bn_relu_InterruptGetStatus(XInitial_conv_bn_relu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInitial_conv_bn_relu_ReadReg(InstancePtr->Control_BaseAddress, XINITIAL_CONV_BN_RELU_CONTROL_ADDR_ISR);
}

