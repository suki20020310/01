// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOWNSAMPLE_BLOCK_H
#define XDOWNSAMPLE_BLOCK_H

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
#include "xdownsample_block_hw.h"

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
} XDownsample_block_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDownsample_block;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDownsample_block_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDownsample_block_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDownsample_block_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDownsample_block_ReadReg(BaseAddress, RegOffset) \
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
int XDownsample_block_Initialize(XDownsample_block *InstancePtr, u16 DeviceId);
XDownsample_block_Config* XDownsample_block_LookupConfig(u16 DeviceId);
int XDownsample_block_CfgInitialize(XDownsample_block *InstancePtr, XDownsample_block_Config *ConfigPtr);
#else
int XDownsample_block_Initialize(XDownsample_block *InstancePtr, const char* InstanceName);
int XDownsample_block_Release(XDownsample_block *InstancePtr);
#endif

void XDownsample_block_Start(XDownsample_block *InstancePtr);
u32 XDownsample_block_IsDone(XDownsample_block *InstancePtr);
u32 XDownsample_block_IsIdle(XDownsample_block *InstancePtr);
u32 XDownsample_block_IsReady(XDownsample_block *InstancePtr);
void XDownsample_block_EnableAutoRestart(XDownsample_block *InstancePtr);
void XDownsample_block_DisableAutoRestart(XDownsample_block *InstancePtr);

void XDownsample_block_Set_c_in(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_c_in(XDownsample_block *InstancePtr);
void XDownsample_block_Set_h_in(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_h_in(XDownsample_block *InstancePtr);
void XDownsample_block_Set_h_out(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_h_out(XDownsample_block *InstancePtr);
void XDownsample_block_Set_stride(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_stride(XDownsample_block *InstancePtr);
void XDownsample_block_Set_in_r(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_in_r(XDownsample_block *InstancePtr);
void XDownsample_block_Set_dw_kernel(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_dw_kernel(XDownsample_block *InstancePtr);
void XDownsample_block_Set_conv1_kernel(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_conv1_kernel(XDownsample_block *InstancePtr);
void XDownsample_block_Set_conv2_kernel(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_conv2_kernel(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn1_mean(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn1_mean(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn1_var(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn1_var(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn1_gamma(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn1_gamma(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn1_beta(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn1_beta(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn2_mean(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn2_mean(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn2_var(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn2_var(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn2_gamma(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn2_gamma(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn2_beta(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn2_beta(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn3_mean(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn3_mean(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn3_var(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn3_var(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn3_gamma(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn3_gamma(XDownsample_block *InstancePtr);
void XDownsample_block_Set_bn3_beta(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_bn3_beta(XDownsample_block *InstancePtr);
void XDownsample_block_Set_out_r(XDownsample_block *InstancePtr, u64 Data);
u64 XDownsample_block_Get_out_r(XDownsample_block *InstancePtr);
void XDownsample_block_Set_c_out(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_c_out(XDownsample_block *InstancePtr);
void XDownsample_block_Set_w_in(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_w_in(XDownsample_block *InstancePtr);
void XDownsample_block_Set_w_out(XDownsample_block *InstancePtr, u32 Data);
u32 XDownsample_block_Get_w_out(XDownsample_block *InstancePtr);

void XDownsample_block_InterruptGlobalEnable(XDownsample_block *InstancePtr);
void XDownsample_block_InterruptGlobalDisable(XDownsample_block *InstancePtr);
void XDownsample_block_InterruptEnable(XDownsample_block *InstancePtr, u32 Mask);
void XDownsample_block_InterruptDisable(XDownsample_block *InstancePtr, u32 Mask);
void XDownsample_block_InterruptClear(XDownsample_block *InstancePtr, u32 Mask);
u32 XDownsample_block_InterruptGetEnabled(XDownsample_block *InstancePtr);
u32 XDownsample_block_InterruptGetStatus(XDownsample_block *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
