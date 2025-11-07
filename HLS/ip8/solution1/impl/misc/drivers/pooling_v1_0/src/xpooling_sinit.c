// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpooling.h"

extern XPooling_Config XPooling_ConfigTable[];

XPooling_Config *XPooling_LookupConfig(u16 DeviceId) {
	XPooling_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPOOLING_NUM_INSTANCES; Index++) {
		if (XPooling_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPooling_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPooling_Initialize(XPooling *InstancePtr, u16 DeviceId) {
	XPooling_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPooling_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPooling_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

