// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdownsample_block.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDownsample_block_CfgInitialize(XDownsample_block *InstancePtr, XDownsample_block_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDownsample_block_Start(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDownsample_block_IsDone(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDownsample_block_IsIdle(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDownsample_block_IsReady(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDownsample_block_EnableAutoRestart(XDownsample_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDownsample_block_DisableAutoRestart(XDownsample_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_AP_CTRL, 0);
}

void XDownsample_block_Set_c_in(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XDownsample_block_Get_c_in(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XDownsample_block_Set_h_in(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_H_IN_DATA, Data);
}

u32 XDownsample_block_Get_h_in(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_H_IN_DATA);
    return Data;
}

void XDownsample_block_Set_h_out(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_H_OUT_DATA, Data);
}

u32 XDownsample_block_Get_h_out(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_H_OUT_DATA);
    return Data;
}

void XDownsample_block_Set_stride(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_STRIDE_DATA, Data);
}

u32 XDownsample_block_Get_stride(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_STRIDE_DATA);
    return Data;
}

void XDownsample_block_Set_in_r(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_in_r(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_dw_kernel(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_dw_kernel(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_conv1_kernel(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_conv1_kernel(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_conv2_kernel(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_conv2_kernel(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn1_mean(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn1_mean(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn1_var(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_VAR_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn1_var(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_VAR_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_VAR_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn1_gamma(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn1_gamma(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn1_beta(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_BETA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn1_beta(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_BETA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN1_BETA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn2_mean(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn2_mean(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn2_var(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_VAR_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn2_var(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_VAR_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_VAR_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn2_gamma(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn2_gamma(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn2_beta(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_BETA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn2_beta(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_BETA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN2_BETA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn3_mean(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn3_mean(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn3_var(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_VAR_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn3_var(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_VAR_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_VAR_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn3_gamma(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn3_gamma(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_bn3_beta(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_BETA_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_bn3_beta(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_BETA_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_BN3_BETA_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_out_r(XDownsample_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDownsample_block_Get_out_r(XDownsample_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XDownsample_block_Set_c_out(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XDownsample_block_Get_c_out(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XDownsample_block_Set_w_in(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_W_IN_DATA, Data);
}

u32 XDownsample_block_Get_w_in(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_W_IN_DATA);
    return Data;
}

void XDownsample_block_Set_w_out(XDownsample_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_W_OUT_DATA, Data);
}

u32 XDownsample_block_Get_w_out(XDownsample_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_W_OUT_DATA);
    return Data;
}

void XDownsample_block_InterruptGlobalEnable(XDownsample_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_GIE, 1);
}

void XDownsample_block_InterruptGlobalDisable(XDownsample_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_GIE, 0);
}

void XDownsample_block_InterruptEnable(XDownsample_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IER);
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IER, Register | Mask);
}

void XDownsample_block_InterruptDisable(XDownsample_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IER);
    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDownsample_block_InterruptClear(XDownsample_block *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDownsample_block_WriteReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_ISR, Mask);
}

u32 XDownsample_block_InterruptGetEnabled(XDownsample_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_IER);
}

u32 XDownsample_block_InterruptGetStatus(XDownsample_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDownsample_block_ReadReg(InstancePtr->Control_BaseAddress, XDOWNSAMPLE_BLOCK_CONTROL_ADDR_ISR);
}

