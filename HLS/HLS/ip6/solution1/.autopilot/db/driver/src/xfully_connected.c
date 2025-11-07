// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfully_connected.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFully_connected_CfgInitialize(XFully_connected *InstancePtr, XFully_connected_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFully_connected_Start(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFully_connected_IsDone(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFully_connected_IsIdle(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFully_connected_IsReady(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFully_connected_EnableAutoRestart(XFully_connected *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFully_connected_DisableAutoRestart(XFully_connected *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_AP_CTRL, 0);
}

void XFully_connected_Set_in_features(XFully_connected *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IN_FEATURES_DATA, Data);
}

u32 XFully_connected_Get_in_features(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IN_FEATURES_DATA);
    return Data;
}

void XFully_connected_Set_out_features(XFully_connected *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUT_FEATURES_DATA, Data);
}

u32 XFully_connected_Get_out_features(XFully_connected *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUT_FEATURES_DATA);
    return Data;
}

void XFully_connected_Set_input_r(XFully_connected *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFully_connected_Get_input_r(XFully_connected *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XFully_connected_Set_weights(XFully_connected *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XFully_connected_Get_weights(XFully_connected *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XFully_connected_Set_biases(XFully_connected *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_BIASES_DATA, (u32)(Data));
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XFully_connected_Get_biases(XFully_connected *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_BIASES_DATA);
    Data += (u64)XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_BIASES_DATA + 4) << 32;
    return Data;
}

void XFully_connected_Set_output_r(XFully_connected *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFully_connected_Get_output_r(XFully_connected *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XFully_connected_InterruptGlobalEnable(XFully_connected *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_GIE, 1);
}

void XFully_connected_InterruptGlobalDisable(XFully_connected *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_GIE, 0);
}

void XFully_connected_InterruptEnable(XFully_connected *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IER);
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IER, Register | Mask);
}

void XFully_connected_InterruptDisable(XFully_connected *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IER);
    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFully_connected_InterruptClear(XFully_connected *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFully_connected_WriteReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_ISR, Mask);
}

u32 XFully_connected_InterruptGetEnabled(XFully_connected *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_IER);
}

u32 XFully_connected_InterruptGetStatus(XFully_connected *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFully_connected_ReadReg(InstancePtr->Control_BaseAddress, XFULLY_CONNECTED_CONTROL_ADDR_ISR);
}

