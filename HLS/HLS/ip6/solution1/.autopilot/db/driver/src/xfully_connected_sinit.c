// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfully_connected.h"

extern XFully_connected_Config XFully_connected_ConfigTable[];

XFully_connected_Config *XFully_connected_LookupConfig(u16 DeviceId) {
	XFully_connected_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFULLY_CONNECTED_NUM_INSTANCES; Index++) {
		if (XFully_connected_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFully_connected_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFully_connected_Initialize(XFully_connected *InstancePtr, u16 DeviceId) {
	XFully_connected_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFully_connected_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFully_connected_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

