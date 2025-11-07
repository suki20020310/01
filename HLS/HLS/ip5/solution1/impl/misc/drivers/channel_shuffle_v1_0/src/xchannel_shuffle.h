// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCHANNEL_SHUFFLE_H
#define XCHANNEL_SHUFFLE_H

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
#include "xchannel_shuffle_hw.h"

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
} XChannel_shuffle_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XChannel_shuffle;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XChannel_shuffle_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XChannel_shuffle_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XChannel_shuffle_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XChannel_shuffle_ReadReg(BaseAddress, RegOffset) \
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
int XChannel_shuffle_Initialize(XChannel_shuffle *InstancePtr, u16 DeviceId);
XChannel_shuffle_Config* XChannel_shuffle_LookupConfig(u16 DeviceId);
int XChannel_shuffle_CfgInitialize(XChannel_shuffle *InstancePtr, XChannel_shuffle_Config *ConfigPtr);
#else
int XChannel_shuffle_Initialize(XChannel_shuffle *InstancePtr, const char* InstanceName);
int XChannel_shuffle_Release(XChannel_shuffle *InstancePtr);
#endif

void XChannel_shuffle_Start(XChannel_shuffle *InstancePtr);
u32 XChannel_shuffle_IsDone(XChannel_shuffle *InstancePtr);
u32 XChannel_shuffle_IsIdle(XChannel_shuffle *InstancePtr);
u32 XChannel_shuffle_IsReady(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_EnableAutoRestart(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_DisableAutoRestart(XChannel_shuffle *InstancePtr);

void XChannel_shuffle_Set_c_in(XChannel_shuffle *InstancePtr, u32 Data);
u32 XChannel_shuffle_Get_c_in(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_Set_groups(XChannel_shuffle *InstancePtr, u32 Data);
u32 XChannel_shuffle_Get_groups(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_Set_h_w(XChannel_shuffle *InstancePtr, u32 Data);
u32 XChannel_shuffle_Get_h_w(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_Set_in_r(XChannel_shuffle *InstancePtr, u64 Data);
u64 XChannel_shuffle_Get_in_r(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_Set_out_r(XChannel_shuffle *InstancePtr, u64 Data);
u64 XChannel_shuffle_Get_out_r(XChannel_shuffle *InstancePtr);

void XChannel_shuffle_InterruptGlobalEnable(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_InterruptGlobalDisable(XChannel_shuffle *InstancePtr);
void XChannel_shuffle_InterruptEnable(XChannel_shuffle *InstancePtr, u32 Mask);
void XChannel_shuffle_InterruptDisable(XChannel_shuffle *InstancePtr, u32 Mask);
void XChannel_shuffle_InterruptClear(XChannel_shuffle *InstancePtr, u32 Mask);
u32 XChannel_shuffle_InterruptGetEnabled(XChannel_shuffle *InstancePtr);
u32 XChannel_shuffle_InterruptGetStatus(XChannel_shuffle *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
