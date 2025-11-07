// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of c_in
//         bit 15~0 - c_in[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of h_w
//         bit 15~0 - h_w[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of stride
//         bit 7~0 - stride[7:0] (Read/Write)
//         others  - reserved
// 0x024 : reserved
// 0x028 : Data signal of in_r
//         bit 31~0 - in_r[31:0] (Read/Write)
// 0x02c : Data signal of in_r
//         bit 31~0 - in_r[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of conv1_kernel
//         bit 31~0 - conv1_kernel[31:0] (Read/Write)
// 0x038 : Data signal of conv1_kernel
//         bit 31~0 - conv1_kernel[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of dw_kernel
//         bit 31~0 - dw_kernel[31:0] (Read/Write)
// 0x044 : Data signal of dw_kernel
//         bit 31~0 - dw_kernel[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of conv2_kernel
//         bit 31~0 - conv2_kernel[31:0] (Read/Write)
// 0x050 : Data signal of conv2_kernel
//         bit 31~0 - conv2_kernel[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of bn1_mean
//         bit 31~0 - bn1_mean[31:0] (Read/Write)
// 0x05c : Data signal of bn1_mean
//         bit 31~0 - bn1_mean[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of bn1_var
//         bit 31~0 - bn1_var[31:0] (Read/Write)
// 0x068 : Data signal of bn1_var
//         bit 31~0 - bn1_var[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of bn1_gamma
//         bit 31~0 - bn1_gamma[31:0] (Read/Write)
// 0x074 : Data signal of bn1_gamma
//         bit 31~0 - bn1_gamma[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of bn1_beta
//         bit 31~0 - bn1_beta[31:0] (Read/Write)
// 0x080 : Data signal of bn1_beta
//         bit 31~0 - bn1_beta[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of bn2_mean
//         bit 31~0 - bn2_mean[31:0] (Read/Write)
// 0x08c : Data signal of bn2_mean
//         bit 31~0 - bn2_mean[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of bn2_var
//         bit 31~0 - bn2_var[31:0] (Read/Write)
// 0x098 : Data signal of bn2_var
//         bit 31~0 - bn2_var[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of bn2_gamma
//         bit 31~0 - bn2_gamma[31:0] (Read/Write)
// 0x0a4 : Data signal of bn2_gamma
//         bit 31~0 - bn2_gamma[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of bn2_beta
//         bit 31~0 - bn2_beta[31:0] (Read/Write)
// 0x0b0 : Data signal of bn2_beta
//         bit 31~0 - bn2_beta[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of bn3_mean
//         bit 31~0 - bn3_mean[31:0] (Read/Write)
// 0x0bc : Data signal of bn3_mean
//         bit 31~0 - bn3_mean[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of bn3_var
//         bit 31~0 - bn3_var[31:0] (Read/Write)
// 0x0c8 : Data signal of bn3_var
//         bit 31~0 - bn3_var[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of bn3_gamma
//         bit 31~0 - bn3_gamma[31:0] (Read/Write)
// 0x0d4 : Data signal of bn3_gamma
//         bit 31~0 - bn3_gamma[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of bn3_beta
//         bit 31~0 - bn3_beta[31:0] (Read/Write)
// 0x0e0 : Data signal of bn3_beta
//         bit 31~0 - bn3_beta[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of out_r
//         bit 31~0 - out_r[31:0] (Read/Write)
// 0x0ec : Data signal of out_r
//         bit 31~0 - out_r[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of c_out
//         bit 15~0 - c_out[15:0] (Read/Write)
//         others   - reserved
// 0x0f8 : reserved
// 0x0fc : Data signal of c_reduce
//         bit 15~0 - c_reduce[15:0] (Read/Write)
//         others   - reserved
// 0x100 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL           0x000
#define CONTROL_ADDR_GIE               0x004
#define CONTROL_ADDR_IER               0x008
#define CONTROL_ADDR_ISR               0x00c
#define CONTROL_ADDR_C_IN_DATA         0x010
#define CONTROL_BITS_C_IN_DATA         16
#define CONTROL_ADDR_H_W_DATA          0x018
#define CONTROL_BITS_H_W_DATA          16
#define CONTROL_ADDR_STRIDE_DATA       0x020
#define CONTROL_BITS_STRIDE_DATA       8
#define CONTROL_ADDR_IN_R_DATA         0x028
#define CONTROL_BITS_IN_R_DATA         64
#define CONTROL_ADDR_CONV1_KERNEL_DATA 0x034
#define CONTROL_BITS_CONV1_KERNEL_DATA 64
#define CONTROL_ADDR_DW_KERNEL_DATA    0x040
#define CONTROL_BITS_DW_KERNEL_DATA    64
#define CONTROL_ADDR_CONV2_KERNEL_DATA 0x04c
#define CONTROL_BITS_CONV2_KERNEL_DATA 64
#define CONTROL_ADDR_BN1_MEAN_DATA     0x058
#define CONTROL_BITS_BN1_MEAN_DATA     64
#define CONTROL_ADDR_BN1_VAR_DATA      0x064
#define CONTROL_BITS_BN1_VAR_DATA      64
#define CONTROL_ADDR_BN1_GAMMA_DATA    0x070
#define CONTROL_BITS_BN1_GAMMA_DATA    64
#define CONTROL_ADDR_BN1_BETA_DATA     0x07c
#define CONTROL_BITS_BN1_BETA_DATA     64
#define CONTROL_ADDR_BN2_MEAN_DATA     0x088
#define CONTROL_BITS_BN2_MEAN_DATA     64
#define CONTROL_ADDR_BN2_VAR_DATA      0x094
#define CONTROL_BITS_BN2_VAR_DATA      64
#define CONTROL_ADDR_BN2_GAMMA_DATA    0x0a0
#define CONTROL_BITS_BN2_GAMMA_DATA    64
#define CONTROL_ADDR_BN2_BETA_DATA     0x0ac
#define CONTROL_BITS_BN2_BETA_DATA     64
#define CONTROL_ADDR_BN3_MEAN_DATA     0x0b8
#define CONTROL_BITS_BN3_MEAN_DATA     64
#define CONTROL_ADDR_BN3_VAR_DATA      0x0c4
#define CONTROL_BITS_BN3_VAR_DATA      64
#define CONTROL_ADDR_BN3_GAMMA_DATA    0x0d0
#define CONTROL_BITS_BN3_GAMMA_DATA    64
#define CONTROL_ADDR_BN3_BETA_DATA     0x0dc
#define CONTROL_BITS_BN3_BETA_DATA     64
#define CONTROL_ADDR_OUT_R_DATA        0x0e8
#define CONTROL_BITS_OUT_R_DATA        64
#define CONTROL_ADDR_C_OUT_DATA        0x0f4
#define CONTROL_BITS_C_OUT_DATA        16
#define CONTROL_ADDR_C_REDUCE_DATA     0x0fc
#define CONTROL_BITS_C_REDUCE_DATA     16
