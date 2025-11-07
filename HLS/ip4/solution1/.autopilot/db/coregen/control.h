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
// 0x18 : Data signal of h_w
//        bit 15~0 - h_w[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of in_r
//        bit 31~0 - in_r[31:0] (Read/Write)
// 0x24 : Data signal of in_r
//        bit 31~0 - in_r[63:32] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of conv_kernel
//        bit 31~0 - conv_kernel[31:0] (Read/Write)
// 0x30 : Data signal of conv_kernel
//        bit 31~0 - conv_kernel[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of bn_mean
//        bit 31~0 - bn_mean[31:0] (Read/Write)
// 0x3c : Data signal of bn_mean
//        bit 31~0 - bn_mean[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of bn_var
//        bit 31~0 - bn_var[31:0] (Read/Write)
// 0x48 : Data signal of bn_var
//        bit 31~0 - bn_var[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of bn_gamma
//        bit 31~0 - bn_gamma[31:0] (Read/Write)
// 0x54 : Data signal of bn_gamma
//        bit 31~0 - bn_gamma[63:32] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of bn_beta
//        bit 31~0 - bn_beta[31:0] (Read/Write)
// 0x60 : Data signal of bn_beta
//        bit 31~0 - bn_beta[63:32] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of fc_weights
//        bit 31~0 - fc_weights[31:0] (Read/Write)
// 0x6c : Data signal of fc_weights
//        bit 31~0 - fc_weights[63:32] (Read/Write)
// 0x70 : reserved
// 0x74 : Data signal of fc_biases
//        bit 31~0 - fc_biases[31:0] (Read/Write)
// 0x78 : Data signal of fc_biases
//        bit 31~0 - fc_biases[63:32] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x84 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x88 : reserved
// 0x8c : Data signal of c_out
//        bit 15~0 - c_out[15:0] (Read/Write)
//        others   - reserved
// 0x90 : reserved
// 0x94 : Data signal of num_classes
//        bit 15~0 - num_classes[15:0] (Read/Write)
//        others   - reserved
// 0x98 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_C_IN_DATA        0x10
#define CONTROL_BITS_C_IN_DATA        16
#define CONTROL_ADDR_H_W_DATA         0x18
#define CONTROL_BITS_H_W_DATA         16
#define CONTROL_ADDR_IN_R_DATA        0x20
#define CONTROL_BITS_IN_R_DATA        64
#define CONTROL_ADDR_CONV_KERNEL_DATA 0x2c
#define CONTROL_BITS_CONV_KERNEL_DATA 64
#define CONTROL_ADDR_BN_MEAN_DATA     0x38
#define CONTROL_BITS_BN_MEAN_DATA     64
#define CONTROL_ADDR_BN_VAR_DATA      0x44
#define CONTROL_BITS_BN_VAR_DATA      64
#define CONTROL_ADDR_BN_GAMMA_DATA    0x50
#define CONTROL_BITS_BN_GAMMA_DATA    64
#define CONTROL_ADDR_BN_BETA_DATA     0x5c
#define CONTROL_BITS_BN_BETA_DATA     64
#define CONTROL_ADDR_FC_WEIGHTS_DATA  0x68
#define CONTROL_BITS_FC_WEIGHTS_DATA  64
#define CONTROL_ADDR_FC_BIASES_DATA   0x74
#define CONTROL_BITS_FC_BIASES_DATA   64
#define CONTROL_ADDR_OUT_R_DATA       0x80
#define CONTROL_BITS_OUT_R_DATA       64
#define CONTROL_ADDR_C_OUT_DATA       0x8c
#define CONTROL_BITS_C_OUT_DATA       16
#define CONTROL_ADDR_NUM_CLASSES_DATA 0x94
#define CONTROL_BITS_NUM_CLASSES_DATA 16
