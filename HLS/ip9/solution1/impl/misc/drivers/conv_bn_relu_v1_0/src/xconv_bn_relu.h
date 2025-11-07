// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONV_BN_RELU_H
#define XCONV_BN_RELU_H

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
#include "xconv_bn_relu_hw.h"

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
} XConv_bn_relu_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XConv_bn_relu;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv_bn_relu_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv_bn_relu_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv_bn_relu_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv_bn_relu_ReadReg(BaseAddress, RegOffset) \
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
int XConv_bn_relu_Initialize(XConv_bn_relu *InstancePtr, u16 DeviceId);
XConv_bn_relu_Config* XConv_bn_relu_LookupConfig(u16 DeviceId);
int XConv_bn_relu_CfgInitialize(XConv_bn_relu *InstancePtr, XConv_bn_relu_Config *ConfigPtr);
#else
int XConv_bn_relu_Initialize(XConv_bn_relu *InstancePtr, const char* InstanceName);
int XConv_bn_relu_Release(XConv_bn_relu *InstancePtr);
#endif

void XConv_bn_relu_Start(XConv_bn_relu *InstancePtr);
u32 XConv_bn_relu_IsDone(XConv_bn_relu *InstancePtr);
u32 XConv_bn_relu_IsIdle(XConv_bn_relu *InstancePtr);
u32 XConv_bn_relu_IsReady(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_EnableAutoRestart(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_DisableAutoRestart(XConv_bn_relu *InstancePtr);

void XConv_bn_relu_Set_conv_type(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_conv_type(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_H_in(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_H_in(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_C_out(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_C_out(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_stride(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_stride(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_C_in(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_C_in(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_W_in(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_W_in(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_kernel_size(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_kernel_size(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_padding(XConv_bn_relu *InstancePtr, u32 Data);
u32 XConv_bn_relu_Get_padding(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_feature_in(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_feature_in(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_conv_kernel(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_conv_kernel(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_bn_mean(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_bn_mean(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_bn_var(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_bn_var(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_bn_gamma(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_bn_gamma(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_bn_beta(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_bn_beta(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_Set_feature_out(XConv_bn_relu *InstancePtr, u64 Data);
u64 XConv_bn_relu_Get_feature_out(XConv_bn_relu *InstancePtr);

void XConv_bn_relu_InterruptGlobalEnable(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_InterruptGlobalDisable(XConv_bn_relu *InstancePtr);
void XConv_bn_relu_InterruptEnable(XConv_bn_relu *InstancePtr, u32 Mask);
void XConv_bn_relu_InterruptDisable(XConv_bn_relu *InstancePtr, u32 Mask);
void XConv_bn_relu_InterruptClear(XConv_bn_relu *InstancePtr, u32 Mask);
u32 XConv_bn_relu_InterruptGetEnabled(XConv_bn_relu *InstancePtr);
u32 XConv_bn_relu_InterruptGetStatus(XConv_bn_relu *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
