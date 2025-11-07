// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xinitial_conv_bn_relu.h"

extern XInitial_conv_bn_relu_Config XInitial_conv_bn_relu_ConfigTable[];

XInitial_conv_bn_relu_Config *XInitial_conv_bn_relu_LookupConfig(u16 DeviceId) {
	XInitial_conv_bn_relu_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINITIAL_CONV_BN_RELU_NUM_INSTANCES; Index++) {
		if (XInitial_conv_bn_relu_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XInitial_conv_bn_relu_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XInitial_conv_bn_relu_Initialize(XInitial_conv_bn_relu *InstancePtr, u16 DeviceId) {
	XInitial_conv_bn_relu_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XInitial_conv_bn_relu_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XInitial_conv_bn_relu_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

