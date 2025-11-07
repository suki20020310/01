// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xshufflenet_block.h"

extern XShufflenet_block_Config XShufflenet_block_ConfigTable[];

XShufflenet_block_Config *XShufflenet_block_LookupConfig(u16 DeviceId) {
	XShufflenet_block_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHUFFLENET_BLOCK_NUM_INSTANCES; Index++) {
		if (XShufflenet_block_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XShufflenet_block_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XShufflenet_block_Initialize(XShufflenet_block *InstancePtr, u16 DeviceId) {
	XShufflenet_block_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XShufflenet_block_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XShufflenet_block_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

