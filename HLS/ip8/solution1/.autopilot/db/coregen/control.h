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
// 0x10 : Data signal of C_in
//        bit 15~0 - C_in[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of W_in
//        bit 15~0 - W_in[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of stride
//        bit 7~0 - stride[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of pool_type
//        bit 0  - pool_type[0] (Read/Write)
//        others - reserved
// 0x2c : reserved
// 0x30 : Data signal of H_in
//        bit 15~0 - H_in[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of kernel_size
//        bit 7~0 - kernel_size[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of padding
//        bit 7~0 - padding[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of feature_in
//        bit 31~0 - feature_in[31:0] (Read/Write)
// 0x4c : Data signal of feature_in
//        bit 31~0 - feature_in[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of feature_out
//        bit 31~0 - feature_out[31:0] (Read/Write)
// 0x58 : Data signal of feature_out
//        bit 31~0 - feature_out[63:32] (Read/Write)
// 0x5c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_C_IN_DATA        0x10
#define CONTROL_BITS_C_IN_DATA        16
#define CONTROL_ADDR_W_IN_DATA        0x18
#define CONTROL_BITS_W_IN_DATA        16
#define CONTROL_ADDR_STRIDE_DATA      0x20
#define CONTROL_BITS_STRIDE_DATA      8
#define CONTROL_ADDR_POOL_TYPE_DATA   0x28
#define CONTROL_BITS_POOL_TYPE_DATA   1
#define CONTROL_ADDR_H_IN_DATA        0x30
#define CONTROL_BITS_H_IN_DATA        16
#define CONTROL_ADDR_KERNEL_SIZE_DATA 0x38
#define CONTROL_BITS_KERNEL_SIZE_DATA 8
#define CONTROL_ADDR_PADDING_DATA     0x40
#define CONTROL_BITS_PADDING_DATA     8
#define CONTROL_ADDR_FEATURE_IN_DATA  0x48
#define CONTROL_BITS_FEATURE_IN_DATA  64
#define CONTROL_ADDR_FEATURE_OUT_DATA 0x54
#define CONTROL_BITS_FEATURE_OUT_DATA 64
