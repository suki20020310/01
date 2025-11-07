// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpooling.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPooling_CfgInitialize(XPooling *InstancePtr, XPooling_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPooling_Start(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPooling_IsDone(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPooling_IsIdle(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPooling_IsReady(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPooling_EnableAutoRestart(XPooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPooling_DisableAutoRestart(XPooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_AP_CTRL, 0);
}

void XPooling_Set_C_in(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XPooling_Get_C_in(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XPooling_Set_W_in(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_W_IN_DATA, Data);
}

u32 XPooling_Get_W_in(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_W_IN_DATA);
    return Data;
}

void XPooling_Set_stride(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_STRIDE_DATA, Data);
}

u32 XPooling_Get_stride(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_STRIDE_DATA);
    return Data;
}

void XPooling_Set_pool_type(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_POOL_TYPE_DATA, Data);
}

u32 XPooling_Get_pool_type(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_POOL_TYPE_DATA);
    return Data;
}

void XPooling_Set_H_in(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_H_IN_DATA, Data);
}

u32 XPooling_Get_H_in(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_H_IN_DATA);
    return Data;
}

void XPooling_Set_kernel_size(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_KERNEL_SIZE_DATA, Data);
}

u32 XPooling_Get_kernel_size(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_KERNEL_SIZE_DATA);
    return Data;
}

void XPooling_Set_padding(XPooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_PADDING_DATA, Data);
}

u32 XPooling_Get_padding(XPooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_PADDING_DATA);
    return Data;
}

void XPooling_Set_feature_in(XPooling *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XPooling_Get_feature_in(XPooling *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XPooling_Set_feature_out(XPooling *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_OUT_DATA, (u32)(Data));
    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XPooling_Get_feature_out(XPooling *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_OUT_DATA);
    Data += (u64)XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_FEATURE_OUT_DATA + 4) << 32;
    return Data;
}

void XPooling_InterruptGlobalEnable(XPooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_GIE, 1);
}

void XPooling_InterruptGlobalDisable(XPooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_GIE, 0);
}

void XPooling_InterruptEnable(XPooling *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_IER);
    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_IER, Register | Mask);
}

void XPooling_InterruptDisable(XPooling *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_IER);
    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPooling_InterruptClear(XPooling *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPooling_WriteReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_ISR, Mask);
}

u32 XPooling_InterruptGetEnabled(XPooling *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_IER);
}

u32 XPooling_InterruptGetStatus(XPooling *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPooling_ReadReg(InstancePtr->Control_BaseAddress, XPOOLING_CONTROL_ADDR_ISR);
}

