// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xchannel_shuffle.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XChannel_shuffle_CfgInitialize(XChannel_shuffle *InstancePtr, XChannel_shuffle_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XChannel_shuffle_Start(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XChannel_shuffle_IsDone(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XChannel_shuffle_IsIdle(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XChannel_shuffle_IsReady(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XChannel_shuffle_EnableAutoRestart(XChannel_shuffle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XChannel_shuffle_DisableAutoRestart(XChannel_shuffle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL, 0);
}

void XChannel_shuffle_Set_c_in(XChannel_shuffle *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XChannel_shuffle_Get_c_in(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XChannel_shuffle_Set_groups(XChannel_shuffle *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_GROUPS_DATA, Data);
}

u32 XChannel_shuffle_Get_groups(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_GROUPS_DATA);
    return Data;
}

void XChannel_shuffle_Set_h_w(XChannel_shuffle *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_H_W_DATA, Data);
}

u32 XChannel_shuffle_Get_h_w(XChannel_shuffle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_H_W_DATA);
    return Data;
}

void XChannel_shuffle_Set_data_in(XChannel_shuffle *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_IN_DATA, (u32)(Data));
    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XChannel_shuffle_Get_data_in(XChannel_shuffle *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_IN_DATA);
    Data += (u64)XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_IN_DATA + 4) << 32;
    return Data;
}

void XChannel_shuffle_Set_data_out(XChannel_shuffle *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_OUT_DATA, (u32)(Data));
    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XChannel_shuffle_Get_data_out(XChannel_shuffle *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_OUT_DATA);
    Data += (u64)XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_DATA_OUT_DATA + 4) << 32;
    return Data;
}

void XChannel_shuffle_InterruptGlobalEnable(XChannel_shuffle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_GIE, 1);
}

void XChannel_shuffle_InterruptGlobalDisable(XChannel_shuffle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_GIE, 0);
}

void XChannel_shuffle_InterruptEnable(XChannel_shuffle *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_IER);
    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_IER, Register | Mask);
}

void XChannel_shuffle_InterruptDisable(XChannel_shuffle *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_IER);
    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XChannel_shuffle_InterruptClear(XChannel_shuffle *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XChannel_shuffle_WriteReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_ISR, Mask);
}

u32 XChannel_shuffle_InterruptGetEnabled(XChannel_shuffle *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_IER);
}

u32 XChannel_shuffle_InterruptGetStatus(XChannel_shuffle *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XChannel_shuffle_ReadReg(InstancePtr->Control_BaseAddress, XCHANNEL_SHUFFLE_CONTROL_ADDR_ISR);
}

