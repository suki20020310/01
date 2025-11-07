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
// 0x10 : Data signal of in_features
//        bit 15~0 - in_features[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of out_features
//        bit 15~0 - out_features[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x24 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of weights
//        bit 31~0 - weights[31:0] (Read/Write)
// 0x30 : Data signal of weights
//        bit 31~0 - weights[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of biases
//        bit 31~0 - biases[31:0] (Read/Write)
// 0x3c : Data signal of biases
//        bit 31~0 - biases[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x48 : Data signal of output_r
//        bit 31~0 - output_r[63:32] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL           0x00
#define CONTROL_ADDR_GIE               0x04
#define CONTROL_ADDR_IER               0x08
#define CONTROL_ADDR_ISR               0x0c
#define CONTROL_ADDR_IN_FEATURES_DATA  0x10
#define CONTROL_BITS_IN_FEATURES_DATA  16
#define CONTROL_ADDR_OUT_FEATURES_DATA 0x18
#define CONTROL_BITS_OUT_FEATURES_DATA 16
#define CONTROL_ADDR_INPUT_R_DATA      0x20
#define CONTROL_BITS_INPUT_R_DATA      64
#define CONTROL_ADDR_WEIGHTS_DATA      0x2c
#define CONTROL_BITS_WEIGHTS_DATA      64
#define CONTROL_ADDR_BIASES_DATA       0x38
#define CONTROL_BITS_BIASES_DATA       64
#define CONTROL_ADDR_OUTPUT_R_DATA     0x44
#define CONTROL_BITS_OUTPUT_R_DATA     64
