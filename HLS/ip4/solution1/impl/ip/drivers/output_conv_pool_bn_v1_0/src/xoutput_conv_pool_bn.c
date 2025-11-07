// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xoutput_conv_pool_bn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XOutput_conv_pool_bn_CfgInitialize(XOutput_conv_pool_bn *InstancePtr, XOutput_conv_pool_bn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XOutput_conv_pool_bn_Start(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XOutput_conv_pool_bn_IsDone(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XOutput_conv_pool_bn_IsIdle(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XOutput_conv_pool_bn_IsReady(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XOutput_conv_pool_bn_EnableAutoRestart(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XOutput_conv_pool_bn_DisableAutoRestart(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_AP_CTRL, 0);
}

void XOutput_conv_pool_bn_Set_c_in(XOutput_conv_pool_bn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XOutput_conv_pool_bn_Get_c_in(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XOutput_conv_pool_bn_Set_h_w(XOutput_conv_pool_bn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_H_W_DATA, Data);
}

u32 XOutput_conv_pool_bn_Get_h_w(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_H_W_DATA);
    return Data;
}

void XOutput_conv_pool_bn_Set_in_r(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_in_r(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_conv_kernel(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_CONV_KERNEL_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_CONV_KERNEL_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_conv_kernel(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_CONV_KERNEL_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_CONV_KERNEL_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_bn_mean(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_MEAN_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_MEAN_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_bn_mean(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_MEAN_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_MEAN_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_bn_var(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_VAR_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_VAR_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_bn_var(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_VAR_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_VAR_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_bn_gamma(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_GAMMA_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_GAMMA_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_bn_gamma(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_GAMMA_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_GAMMA_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_bn_beta(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_BETA_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_bn_beta(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_BETA_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_BN_BETA_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_fc_weights(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_WEIGHTS_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_fc_weights(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_WEIGHTS_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_fc_biases(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_BIASES_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_fc_biases(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_BIASES_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_FC_BIASES_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_out_r(XOutput_conv_pool_bn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XOutput_conv_pool_bn_Get_out_r(XOutput_conv_pool_bn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XOutput_conv_pool_bn_Set_c_out(XOutput_conv_pool_bn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XOutput_conv_pool_bn_Get_c_out(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XOutput_conv_pool_bn_Set_num_classes(XOutput_conv_pool_bn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_NUM_CLASSES_DATA, Data);
}

u32 XOutput_conv_pool_bn_Get_num_classes(XOutput_conv_pool_bn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_NUM_CLASSES_DATA);
    return Data;
}

void XOutput_conv_pool_bn_InterruptGlobalEnable(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_GIE, 1);
}

void XOutput_conv_pool_bn_InterruptGlobalDisable(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_GIE, 0);
}

void XOutput_conv_pool_bn_InterruptEnable(XOutput_conv_pool_bn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IER);
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IER, Register | Mask);
}

void XOutput_conv_pool_bn_InterruptDisable(XOutput_conv_pool_bn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IER);
    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XOutput_conv_pool_bn_InterruptClear(XOutput_conv_pool_bn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOutput_conv_pool_bn_WriteReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_ISR, Mask);
}

u32 XOutput_conv_pool_bn_InterruptGetEnabled(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_IER);
}

u32 XOutput_conv_pool_bn_InterruptGetStatus(XOutput_conv_pool_bn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOutput_conv_pool_bn_ReadReg(InstancePtr->Control_BaseAddress, XOUTPUT_CONV_POOL_BN_CONTROL_ADDR_ISR);
}

