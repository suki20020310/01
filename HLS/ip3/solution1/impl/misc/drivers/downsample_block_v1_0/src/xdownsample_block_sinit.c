// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdownsample_block.h"

extern XDownsample_block_Config XDownsample_block_ConfigTable[];

XDownsample_block_Config *XDownsample_block_LookupConfig(u16 DeviceId) {
	XDownsample_block_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOWNSAMPLE_BLOCK_NUM_INSTANCES; Index++) {
		if (XDownsample_block_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDownsample_block_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDownsample_block_Initialize(XDownsample_block *InstancePtr, u16 DeviceId) {
	XDownsample_block_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDownsample_block_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDownsample_block_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

