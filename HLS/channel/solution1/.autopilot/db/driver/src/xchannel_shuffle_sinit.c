// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xchannel_shuffle.h"

extern XChannel_shuffle_Config XChannel_shuffle_ConfigTable[];

XChannel_shuffle_Config *XChannel_shuffle_LookupConfig(u16 DeviceId) {
	XChannel_shuffle_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCHANNEL_SHUFFLE_NUM_INSTANCES; Index++) {
		if (XChannel_shuffle_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XChannel_shuffle_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XChannel_shuffle_Initialize(XChannel_shuffle *InstancePtr, u16 DeviceId) {
	XChannel_shuffle_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XChannel_shuffle_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XChannel_shuffle_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

