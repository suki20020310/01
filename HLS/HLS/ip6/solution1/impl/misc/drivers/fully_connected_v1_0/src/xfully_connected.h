// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFULLY_CONNECTED_H
#define XFULLY_CONNECTED_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfully_connected_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XFully_connected_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFully_connected;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFully_connected_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFully_connected_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFully_connected_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFully_connected_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFully_connected_Initialize(XFully_connected *InstancePtr, u16 DeviceId);
XFully_connected_Config* XFully_connected_LookupConfig(u16 DeviceId);
int XFully_connected_CfgInitialize(XFully_connected *InstancePtr, XFully_connected_Config *ConfigPtr);
#else
int XFully_connected_Initialize(XFully_connected *InstancePtr, const char* InstanceName);
int XFully_connected_Release(XFully_connected *InstancePtr);
#endif

void XFully_connected_Start(XFully_connected *InstancePtr);
u32 XFully_connected_IsDone(XFully_connected *InstancePtr);
u32 XFully_connected_IsIdle(XFully_connected *InstancePtr);
u32 XFully_connected_IsReady(XFully_connected *InstancePtr);
void XFully_connected_EnableAutoRestart(XFully_connected *InstancePtr);
void XFully_connected_DisableAutoRestart(XFully_connected *InstancePtr);

void XFully_connected_Set_in_features(XFully_connected *InstancePtr, u32 Data);
u32 XFully_connected_Get_in_features(XFully_connected *InstancePtr);
void XFully_connected_Set_out_features(XFully_connected *InstancePtr, u32 Data);
u32 XFully_connected_Get_out_features(XFully_connected *InstancePtr);
void XFully_connected_Set_input_r(XFully_connected *InstancePtr, u64 Data);
u64 XFully_connected_Get_input_r(XFully_connected *InstancePtr);
void XFully_connected_Set_weights(XFully_connected *InstancePtr, u64 Data);
u64 XFully_connected_Get_weights(XFully_connected *InstancePtr);
void XFully_connected_Set_biases(XFully_connected *InstancePtr, u64 Data);
u64 XFully_connected_Get_biases(XFully_connected *InstancePtr);
void XFully_connected_Set_output_r(XFully_connected *InstancePtr, u64 Data);
u64 XFully_connected_Get_output_r(XFully_connected *InstancePtr);

void XFully_connected_InterruptGlobalEnable(XFully_connected *InstancePtr);
void XFully_connected_InterruptGlobalDisable(XFully_connected *InstancePtr);
void XFully_connected_InterruptEnable(XFully_connected *InstancePtr, u32 Mask);
void XFully_connected_InterruptDisable(XFully_connected *InstancePtr, u32 Mask);
void XFully_connected_InterruptClear(XFully_connected *InstancePtr, u32 Mask);
u32 XFully_connected_InterruptGetEnabled(XFully_connected *InstancePtr);
u32 XFully_connected_InterruptGetStatus(XFully_connected *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
