// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xshufflenet_block.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XShufflenet_block_CfgInitialize(XShufflenet_block *InstancePtr, XShufflenet_block_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XShufflenet_block_Start(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XShufflenet_block_IsDone(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XShufflenet_block_IsIdle(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XShufflenet_block_IsReady(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XShufflenet_block_EnableAutoRestart(XShufflenet_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XShufflenet_block_DisableAutoRestart(XShufflenet_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_AP_CTRL, 0);
}

void XShufflenet_block_Set_c_in(XShufflenet_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XShufflenet_block_Get_c_in(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XShufflenet_block_Set_h_w(XShufflenet_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_H_W_DATA, Data);
}

u32 XShufflenet_block_Get_h_w(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_H_W_DATA);
    return Data;
}

void XShufflenet_block_Set_stride(XShufflenet_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_STRIDE_DATA, Data);
}

u32 XShufflenet_block_Get_stride(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_STRIDE_DATA);
    return Data;
}

void XShufflenet_block_Set_in_r(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_in_r(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_conv1_kernel(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_conv1_kernel(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV1_KERNEL_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_dw_kernel(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_dw_kernel(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_DW_KERNEL_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_conv2_kernel(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_conv2_kernel(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_CONV2_KERNEL_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn1_mean(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn1_mean(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_MEAN_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn1_var(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_VAR_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn1_var(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_VAR_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_VAR_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn1_gamma(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn1_gamma(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_GAMMA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn1_beta(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_BETA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn1_beta(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_BETA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN1_BETA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn2_mean(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn2_mean(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_MEAN_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn2_var(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_VAR_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn2_var(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_VAR_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_VAR_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn2_gamma(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn2_gamma(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_GAMMA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn2_beta(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_BETA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn2_beta(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_BETA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN2_BETA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn3_mean(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn3_mean(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_MEAN_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn3_var(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_VAR_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn3_var(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_VAR_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_VAR_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn3_gamma(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn3_gamma(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_GAMMA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_bn3_beta(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_BETA_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_bn3_beta(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_BETA_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_BN3_BETA_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_out_r(XShufflenet_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XShufflenet_block_Get_out_r(XShufflenet_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XShufflenet_block_Set_c_out(XShufflenet_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XShufflenet_block_Get_c_out(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XShufflenet_block_Set_c_reduce(XShufflenet_block *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_REDUCE_DATA, Data);
}

u32 XShufflenet_block_Get_c_reduce(XShufflenet_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_C_REDUCE_DATA);
    return Data;
}

void XShufflenet_block_InterruptGlobalEnable(XShufflenet_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_GIE, 1);
}

void XShufflenet_block_InterruptGlobalDisable(XShufflenet_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_GIE, 0);
}

void XShufflenet_block_InterruptEnable(XShufflenet_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IER);
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IER, Register | Mask);
}

void XShufflenet_block_InterruptDisable(XShufflenet_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IER);
    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XShufflenet_block_InterruptClear(XShufflenet_block *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShufflenet_block_WriteReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_ISR, Mask);
}

u32 XShufflenet_block_InterruptGetEnabled(XShufflenet_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_IER);
}

u32 XShufflenet_block_InterruptGetStatus(XShufflenet_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XShufflenet_block_ReadReg(InstancePtr->Control_BaseAddress, XSHUFFLENET_BLOCK_CONTROL_ADDR_ISR);
}

