// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of c_in
//        bit 15~0 - c_in[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of groups
//        bit 7~0 - groups[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of h_w
//        bit 15~0 - h_w[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCHANNEL_SHUFFLE_CONTROL_ADDR_AP_CTRL     0x00
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_GIE         0x04
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_IER         0x08
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_ISR         0x0c
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_C_IN_DATA   0x10
#define XCHANNEL_SHUFFLE_CONTROL_BITS_C_IN_DATA   16
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_GROUPS_DATA 0x18
#define XCHANNEL_SHUFFLE_CONTROL_BITS_GROUPS_DATA 8
#define XCHANNEL_SHUFFLE_CONTROL_ADDR_H_W_DATA    0x20
#define XCHANNEL_SHUFFLE_CONTROL_BITS_H_W_DATA    16

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of in_r
//        bit 31~0 - in_r[31:0] (Read/Write)
// 0x14 : Data signal of in_r
//        bit 31~0 - in_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x20 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCHANNEL_SHUFFLE_CONTROL_R_ADDR_IN_R_DATA  0x10
#define XCHANNEL_SHUFFLE_CONTROL_R_BITS_IN_R_DATA  64
#define XCHANNEL_SHUFFLE_CONTROL_R_ADDR_OUT_R_DATA 0x1c
#define XCHANNEL_SHUFFLE_CONTROL_R_BITS_OUT_R_DATA 64

