// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSHUFFLENET_BLOCK_H
#define XSHUFFLENET_BLOCK_H

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
#include "xshufflenet_block_hw.h"

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
} XShufflenet_block_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XShufflenet_block;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XShufflenet_block_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XShufflenet_block_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XShufflenet_block_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XShufflenet_block_ReadReg(BaseAddress, RegOffset) \
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
int XShufflenet_block_Initialize(XShufflenet_block *InstancePtr, u16 DeviceId);
XShufflenet_block_Config* XShufflenet_block_LookupConfig(u16 DeviceId);
int XShufflenet_block_CfgInitialize(XShufflenet_block *InstancePtr, XShufflenet_block_Config *ConfigPtr);
#else
int XShufflenet_block_Initialize(XShufflenet_block *InstancePtr, const char* InstanceName);
int XShufflenet_block_Release(XShufflenet_block *InstancePtr);
#endif

void XShufflenet_block_Start(XShufflenet_block *InstancePtr);
u32 XShufflenet_block_IsDone(XShufflenet_block *InstancePtr);
u32 XShufflenet_block_IsIdle(XShufflenet_block *InstancePtr);
u32 XShufflenet_block_IsReady(XShufflenet_block *InstancePtr);
void XShufflenet_block_EnableAutoRestart(XShufflenet_block *InstancePtr);
void XShufflenet_block_DisableAutoRestart(XShufflenet_block *InstancePtr);

void XShufflenet_block_Set_c_in(XShufflenet_block *InstancePtr, u32 Data);
u32 XShufflenet_block_Get_c_in(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_h_w(XShufflenet_block *InstancePtr, u32 Data);
u32 XShufflenet_block_Get_h_w(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_stride(XShufflenet_block *InstancePtr, u32 Data);
u32 XShufflenet_block_Get_stride(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_in_r(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_in_r(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_conv1_kernel(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_conv1_kernel(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_dw_kernel(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_dw_kernel(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_conv2_kernel(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_conv2_kernel(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn1_mean(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn1_mean(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn1_var(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn1_var(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn1_gamma(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn1_gamma(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn1_beta(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn1_beta(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn2_mean(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn2_mean(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn2_var(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn2_var(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn2_gamma(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn2_gamma(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn2_beta(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn2_beta(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn3_mean(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn3_mean(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn3_var(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn3_var(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn3_gamma(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn3_gamma(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_bn3_beta(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_bn3_beta(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_out_r(XShufflenet_block *InstancePtr, u64 Data);
u64 XShufflenet_block_Get_out_r(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_c_out(XShufflenet_block *InstancePtr, u32 Data);
u32 XShufflenet_block_Get_c_out(XShufflenet_block *InstancePtr);
void XShufflenet_block_Set_c_reduce(XShufflenet_block *InstancePtr, u32 Data);
u32 XShufflenet_block_Get_c_reduce(XShufflenet_block *InstancePtr);

void XShufflenet_block_InterruptGlobalEnable(XShufflenet_block *InstancePtr);
void XShufflenet_block_InterruptGlobalDisable(XShufflenet_block *InstancePtr);
void XShufflenet_block_InterruptEnable(XShufflenet_block *InstancePtr, u32 Mask);
void XShufflenet_block_InterruptDisable(XShufflenet_block *InstancePtr, u32 Mask);
void XShufflenet_block_InterruptClear(XShufflenet_block *InstancePtr, u32 Mask);
u32 XShufflenet_block_InterruptGetEnabled(XShufflenet_block *InstancePtr);
u32 XShufflenet_block_InterruptGetStatus(XShufflenet_block *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
