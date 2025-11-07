// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xoutput_conv_pool_bn.h"

extern XOutput_conv_pool_bn_Config XOutput_conv_pool_bn_ConfigTable[];

XOutput_conv_pool_bn_Config *XOutput_conv_pool_bn_LookupConfig(u16 DeviceId) {
	XOutput_conv_pool_bn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XOUTPUT_CONV_POOL_BN_NUM_INSTANCES; Index++) {
		if (XOutput_conv_pool_bn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XOutput_conv_pool_bn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XOutput_conv_pool_bn_Initialize(XOutput_conv_pool_bn *InstancePtr, u16 DeviceId) {
	XOutput_conv_pool_bn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XOutput_conv_pool_bn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XOutput_conv_pool_bn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

