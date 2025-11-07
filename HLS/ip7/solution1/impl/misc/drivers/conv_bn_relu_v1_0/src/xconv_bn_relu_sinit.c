// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconv_bn_relu.h"

extern XConv_bn_relu_Config XConv_bn_relu_ConfigTable[];

XConv_bn_relu_Config *XConv_bn_relu_LookupConfig(u16 DeviceId) {
	XConv_bn_relu_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONV_BN_RELU_NUM_INSTANCES; Index++) {
		if (XConv_bn_relu_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConv_bn_relu_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConv_bn_relu_Initialize(XConv_bn_relu *InstancePtr, u16 DeviceId) {
	XConv_bn_relu_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConv_bn_relu_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConv_bn_relu_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

