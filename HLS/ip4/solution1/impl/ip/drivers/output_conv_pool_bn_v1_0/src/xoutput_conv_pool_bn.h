// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XOUTPUT_CONV_POOL_BN_H
#define XOUTPUT_CONV_POOL_BN_H

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
#include "xoutput_conv_pool_bn_hw.h"

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
} XOutput_conv_pool_bn_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XOutput_conv_pool_bn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XOutput_conv_pool_bn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XOutput_conv_pool_bn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XOutput_conv_pool_bn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XOutput_conv_pool_bn_ReadReg(BaseAddress, RegOffset) \
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
int XOutput_conv_pool_bn_Initialize(XOutput_conv_pool_bn *InstancePtr, u16 DeviceId);
XOutput_conv_pool_bn_Config* XOutput_conv_pool_bn_LookupConfig(u16 DeviceId);
int XOutput_conv_pool_bn_CfgInitialize(XOutput_conv_pool_bn *InstancePtr, XOutput_conv_pool_bn_Config *ConfigPtr);
#else
int XOutput_conv_pool_bn_Initialize(XOutput_conv_pool_bn *InstancePtr, const char* InstanceName);
int XOutput_conv_pool_bn_Release(XOutput_conv_pool_bn *InstancePtr);
#endif

void XOutput_conv_pool_bn_Start(XOutput_conv_pool_bn *InstancePtr);
u32 XOutput_conv_pool_bn_IsDone(XOutput_conv_pool_bn *InstancePtr);
u32 XOutput_conv_pool_bn_IsIdle(XOutput_conv_pool_bn *InstancePtr);
u32 XOutput_conv_pool_bn_IsReady(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_EnableAutoRestart(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_DisableAutoRestart(XOutput_conv_pool_bn *InstancePtr);

void XOutput_conv_pool_bn_Set_c_in(XOutput_conv_pool_bn *InstancePtr, u32 Data);
u32 XOutput_conv_pool_bn_Get_c_in(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_h_w(XOutput_conv_pool_bn *InstancePtr, u32 Data);
u32 XOutput_conv_pool_bn_Get_h_w(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_in_r(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_in_r(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_conv_kernel(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_conv_kernel(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_bn_mean(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_bn_mean(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_bn_var(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_bn_var(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_bn_gamma(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_bn_gamma(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_bn_beta(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_bn_beta(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_fc_weights(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_fc_weights(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_fc_biases(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_fc_biases(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_out_r(XOutput_conv_pool_bn *InstancePtr, u64 Data);
u64 XOutput_conv_pool_bn_Get_out_r(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_c_out(XOutput_conv_pool_bn *InstancePtr, u32 Data);
u32 XOutput_conv_pool_bn_Get_c_out(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_Set_num_classes(XOutput_conv_pool_bn *InstancePtr, u32 Data);
u32 XOutput_conv_pool_bn_Get_num_classes(XOutput_conv_pool_bn *InstancePtr);

void XOutput_conv_pool_bn_InterruptGlobalEnable(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_InterruptGlobalDisable(XOutput_conv_pool_bn *InstancePtr);
void XOutput_conv_pool_bn_InterruptEnable(XOutput_conv_pool_bn *InstancePtr, u32 Mask);
void XOutput_conv_pool_bn_InterruptDisable(XOutput_conv_pool_bn *InstancePtr, u32 Mask);
void XOutput_conv_pool_bn_InterruptClear(XOutput_conv_pool_bn *InstancePtr, u32 Mask);
u32 XOutput_conv_pool_bn_InterruptGetEnabled(XOutput_conv_pool_bn *InstancePtr);
u32 XOutput_conv_pool_bn_InterruptGetStatus(XOutput_conv_pool_bn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
