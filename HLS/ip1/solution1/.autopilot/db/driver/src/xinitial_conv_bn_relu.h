// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XINITIAL_CONV_BN_RELU_H
#define XINITIAL_CONV_BN_RELU_H

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
#include "xinitial_conv_bn_relu_hw.h"

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
} XInitial_conv_bn_relu_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XInitial_conv_bn_relu;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInitial_conv_bn_relu_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInitial_conv_bn_relu_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInitial_conv_bn_relu_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInitial_conv_bn_relu_ReadReg(BaseAddress, RegOffset) \
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
int XInitial_conv_bn_relu_Initialize(XInitial_conv_bn_relu *InstancePtr, u16 DeviceId);
XInitial_conv_bn_relu_Config* XInitial_conv_bn_relu_LookupConfig(u16 DeviceId);
int XInitial_conv_bn_relu_CfgInitialize(XInitial_conv_bn_relu *InstancePtr, XInitial_conv_bn_relu_Config *ConfigPtr);
#else
int XInitial_conv_bn_relu_Initialize(XInitial_conv_bn_relu *InstancePtr, const char* InstanceName);
int XInitial_conv_bn_relu_Release(XInitial_conv_bn_relu *InstancePtr);
#endif

void XInitial_conv_bn_relu_Start(XInitial_conv_bn_relu *InstancePtr);
u32 XInitial_conv_bn_relu_IsDone(XInitial_conv_bn_relu *InstancePtr);
u32 XInitial_conv_bn_relu_IsIdle(XInitial_conv_bn_relu *InstancePtr);
u32 XInitial_conv_bn_relu_IsReady(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_EnableAutoRestart(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_DisableAutoRestart(XInitial_conv_bn_relu *InstancePtr);

void XInitial_conv_bn_relu_Set_C_in(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_C_in(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_W_in(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_W_in(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_K(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_K(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_padding(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_padding(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_pool_stride(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_pool_stride(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_H_in(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_H_in(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_C_out(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_C_out(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_stride(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_stride(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_pool_kernel(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_pool_kernel(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_pool_padding(XInitial_conv_bn_relu *InstancePtr, u32 Data);
u32 XInitial_conv_bn_relu_Get_pool_padding(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_feature_in(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_feature_in(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_conv_kernel(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_conv_kernel(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_bn_mean(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_bn_mean(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_bn_var(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_bn_var(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_bn_gamma(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_bn_gamma(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_bn_beta(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_bn_beta(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_Set_feature_out(XInitial_conv_bn_relu *InstancePtr, u64 Data);
u64 XInitial_conv_bn_relu_Get_feature_out(XInitial_conv_bn_relu *InstancePtr);

void XInitial_conv_bn_relu_InterruptGlobalEnable(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_InterruptGlobalDisable(XInitial_conv_bn_relu *InstancePtr);
void XInitial_conv_bn_relu_InterruptEnable(XInitial_conv_bn_relu *InstancePtr, u32 Mask);
void XInitial_conv_bn_relu_InterruptDisable(XInitial_conv_bn_relu *InstancePtr, u32 Mask);
void XInitial_conv_bn_relu_InterruptClear(XInitial_conv_bn_relu *InstancePtr, u32 Mask);
u32 XInitial_conv_bn_relu_InterruptGetEnabled(XInitial_conv_bn_relu *InstancePtr);
u32 XInitial_conv_bn_relu_InterruptGetStatus(XInitial_conv_bn_relu *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
