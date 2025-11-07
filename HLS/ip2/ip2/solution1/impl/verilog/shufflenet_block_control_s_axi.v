// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module shufflenet_block_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [15:0]                   c_in,
    output wire [15:0]                   h_w,
    output wire [7:0]                    stride,
    output wire [63:0]                   in_r,
    output wire [63:0]                   conv1_kernel,
    output wire [63:0]                   dw_kernel,
    output wire [63:0]                   conv2_kernel,
    output wire [63:0]                   bn1_mean,
    output wire [63:0]                   bn1_var,
    output wire [63:0]                   bn1_gamma,
    output wire [63:0]                   bn1_beta,
    output wire [63:0]                   bn2_mean,
    output wire [63:0]                   bn2_var,
    output wire [63:0]                   bn2_gamma,
    output wire [63:0]                   bn2_beta,
    output wire [63:0]                   bn3_mean,
    output wire [63:0]                   bn3_var,
    output wire [63:0]                   bn3_gamma,
    output wire [63:0]                   bn3_beta,
    output wire [63:0]                   out_r,
    output wire [15:0]                   c_out,
    output wire [15:0]                   c_reduce,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL             = 9'h000,
    ADDR_GIE                 = 9'h004,
    ADDR_IER                 = 9'h008,
    ADDR_ISR                 = 9'h00c,
    ADDR_C_IN_DATA_0         = 9'h010,
    ADDR_C_IN_CTRL           = 9'h014,
    ADDR_H_W_DATA_0          = 9'h018,
    ADDR_H_W_CTRL            = 9'h01c,
    ADDR_STRIDE_DATA_0       = 9'h020,
    ADDR_STRIDE_CTRL         = 9'h024,
    ADDR_IN_R_DATA_0         = 9'h028,
    ADDR_IN_R_DATA_1         = 9'h02c,
    ADDR_IN_R_CTRL           = 9'h030,
    ADDR_CONV1_KERNEL_DATA_0 = 9'h034,
    ADDR_CONV1_KERNEL_DATA_1 = 9'h038,
    ADDR_CONV1_KERNEL_CTRL   = 9'h03c,
    ADDR_DW_KERNEL_DATA_0    = 9'h040,
    ADDR_DW_KERNEL_DATA_1    = 9'h044,
    ADDR_DW_KERNEL_CTRL      = 9'h048,
    ADDR_CONV2_KERNEL_DATA_0 = 9'h04c,
    ADDR_CONV2_KERNEL_DATA_1 = 9'h050,
    ADDR_CONV2_KERNEL_CTRL   = 9'h054,
    ADDR_BN1_MEAN_DATA_0     = 9'h058,
    ADDR_BN1_MEAN_DATA_1     = 9'h05c,
    ADDR_BN1_MEAN_CTRL       = 9'h060,
    ADDR_BN1_VAR_DATA_0      = 9'h064,
    ADDR_BN1_VAR_DATA_1      = 9'h068,
    ADDR_BN1_VAR_CTRL        = 9'h06c,
    ADDR_BN1_GAMMA_DATA_0    = 9'h070,
    ADDR_BN1_GAMMA_DATA_1    = 9'h074,
    ADDR_BN1_GAMMA_CTRL      = 9'h078,
    ADDR_BN1_BETA_DATA_0     = 9'h07c,
    ADDR_BN1_BETA_DATA_1     = 9'h080,
    ADDR_BN1_BETA_CTRL       = 9'h084,
    ADDR_BN2_MEAN_DATA_0     = 9'h088,
    ADDR_BN2_MEAN_DATA_1     = 9'h08c,
    ADDR_BN2_MEAN_CTRL       = 9'h090,
    ADDR_BN2_VAR_DATA_0      = 9'h094,
    ADDR_BN2_VAR_DATA_1      = 9'h098,
    ADDR_BN2_VAR_CTRL        = 9'h09c,
    ADDR_BN2_GAMMA_DATA_0    = 9'h0a0,
    ADDR_BN2_GAMMA_DATA_1    = 9'h0a4,
    ADDR_BN2_GAMMA_CTRL      = 9'h0a8,
    ADDR_BN2_BETA_DATA_0     = 9'h0ac,
    ADDR_BN2_BETA_DATA_1     = 9'h0b0,
    ADDR_BN2_BETA_CTRL       = 9'h0b4,
    ADDR_BN3_MEAN_DATA_0     = 9'h0b8,
    ADDR_BN3_MEAN_DATA_1     = 9'h0bc,
    ADDR_BN3_MEAN_CTRL       = 9'h0c0,
    ADDR_BN3_VAR_DATA_0      = 9'h0c4,
    ADDR_BN3_VAR_DATA_1      = 9'h0c8,
    ADDR_BN3_VAR_CTRL        = 9'h0cc,
    ADDR_BN3_GAMMA_DATA_0    = 9'h0d0,
    ADDR_BN3_GAMMA_DATA_1    = 9'h0d4,
    ADDR_BN3_GAMMA_CTRL      = 9'h0d8,
    ADDR_BN3_BETA_DATA_0     = 9'h0dc,
    ADDR_BN3_BETA_DATA_1     = 9'h0e0,
    ADDR_BN3_BETA_CTRL       = 9'h0e4,
    ADDR_OUT_R_DATA_0        = 9'h0e8,
    ADDR_OUT_R_DATA_1        = 9'h0ec,
    ADDR_OUT_R_CTRL          = 9'h0f0,
    ADDR_C_OUT_DATA_0        = 9'h0f4,
    ADDR_C_OUT_CTRL          = 9'h0f8,
    ADDR_C_REDUCE_DATA_0     = 9'h0fc,
    ADDR_C_REDUCE_CTRL       = 9'h100,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS                = 9;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [15:0]                   int_c_in = 'b0;
    reg  [15:0]                   int_h_w = 'b0;
    reg  [7:0]                    int_stride = 'b0;
    reg  [63:0]                   int_in_r = 'b0;
    reg  [63:0]                   int_conv1_kernel = 'b0;
    reg  [63:0]                   int_dw_kernel = 'b0;
    reg  [63:0]                   int_conv2_kernel = 'b0;
    reg  [63:0]                   int_bn1_mean = 'b0;
    reg  [63:0]                   int_bn1_var = 'b0;
    reg  [63:0]                   int_bn1_gamma = 'b0;
    reg  [63:0]                   int_bn1_beta = 'b0;
    reg  [63:0]                   int_bn2_mean = 'b0;
    reg  [63:0]                   int_bn2_var = 'b0;
    reg  [63:0]                   int_bn2_gamma = 'b0;
    reg  [63:0]                   int_bn2_beta = 'b0;
    reg  [63:0]                   int_bn3_mean = 'b0;
    reg  [63:0]                   int_bn3_var = 'b0;
    reg  [63:0]                   int_bn3_gamma = 'b0;
    reg  [63:0]                   int_bn3_beta = 'b0;
    reg  [63:0]                   int_out_r = 'b0;
    reg  [15:0]                   int_c_out = 'b0;
    reg  [15:0]                   int_c_reduce = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_C_IN_DATA_0: begin
                    rdata <= int_c_in[15:0];
                end
                ADDR_H_W_DATA_0: begin
                    rdata <= int_h_w[15:0];
                end
                ADDR_STRIDE_DATA_0: begin
                    rdata <= int_stride[7:0];
                end
                ADDR_IN_R_DATA_0: begin
                    rdata <= int_in_r[31:0];
                end
                ADDR_IN_R_DATA_1: begin
                    rdata <= int_in_r[63:32];
                end
                ADDR_CONV1_KERNEL_DATA_0: begin
                    rdata <= int_conv1_kernel[31:0];
                end
                ADDR_CONV1_KERNEL_DATA_1: begin
                    rdata <= int_conv1_kernel[63:32];
                end
                ADDR_DW_KERNEL_DATA_0: begin
                    rdata <= int_dw_kernel[31:0];
                end
                ADDR_DW_KERNEL_DATA_1: begin
                    rdata <= int_dw_kernel[63:32];
                end
                ADDR_CONV2_KERNEL_DATA_0: begin
                    rdata <= int_conv2_kernel[31:0];
                end
                ADDR_CONV2_KERNEL_DATA_1: begin
                    rdata <= int_conv2_kernel[63:32];
                end
                ADDR_BN1_MEAN_DATA_0: begin
                    rdata <= int_bn1_mean[31:0];
                end
                ADDR_BN1_MEAN_DATA_1: begin
                    rdata <= int_bn1_mean[63:32];
                end
                ADDR_BN1_VAR_DATA_0: begin
                    rdata <= int_bn1_var[31:0];
                end
                ADDR_BN1_VAR_DATA_1: begin
                    rdata <= int_bn1_var[63:32];
                end
                ADDR_BN1_GAMMA_DATA_0: begin
                    rdata <= int_bn1_gamma[31:0];
                end
                ADDR_BN1_GAMMA_DATA_1: begin
                    rdata <= int_bn1_gamma[63:32];
                end
                ADDR_BN1_BETA_DATA_0: begin
                    rdata <= int_bn1_beta[31:0];
                end
                ADDR_BN1_BETA_DATA_1: begin
                    rdata <= int_bn1_beta[63:32];
                end
                ADDR_BN2_MEAN_DATA_0: begin
                    rdata <= int_bn2_mean[31:0];
                end
                ADDR_BN2_MEAN_DATA_1: begin
                    rdata <= int_bn2_mean[63:32];
                end
                ADDR_BN2_VAR_DATA_0: begin
                    rdata <= int_bn2_var[31:0];
                end
                ADDR_BN2_VAR_DATA_1: begin
                    rdata <= int_bn2_var[63:32];
                end
                ADDR_BN2_GAMMA_DATA_0: begin
                    rdata <= int_bn2_gamma[31:0];
                end
                ADDR_BN2_GAMMA_DATA_1: begin
                    rdata <= int_bn2_gamma[63:32];
                end
                ADDR_BN2_BETA_DATA_0: begin
                    rdata <= int_bn2_beta[31:0];
                end
                ADDR_BN2_BETA_DATA_1: begin
                    rdata <= int_bn2_beta[63:32];
                end
                ADDR_BN3_MEAN_DATA_0: begin
                    rdata <= int_bn3_mean[31:0];
                end
                ADDR_BN3_MEAN_DATA_1: begin
                    rdata <= int_bn3_mean[63:32];
                end
                ADDR_BN3_VAR_DATA_0: begin
                    rdata <= int_bn3_var[31:0];
                end
                ADDR_BN3_VAR_DATA_1: begin
                    rdata <= int_bn3_var[63:32];
                end
                ADDR_BN3_GAMMA_DATA_0: begin
                    rdata <= int_bn3_gamma[31:0];
                end
                ADDR_BN3_GAMMA_DATA_1: begin
                    rdata <= int_bn3_gamma[63:32];
                end
                ADDR_BN3_BETA_DATA_0: begin
                    rdata <= int_bn3_beta[31:0];
                end
                ADDR_BN3_BETA_DATA_1: begin
                    rdata <= int_bn3_beta[63:32];
                end
                ADDR_OUT_R_DATA_0: begin
                    rdata <= int_out_r[31:0];
                end
                ADDR_OUT_R_DATA_1: begin
                    rdata <= int_out_r[63:32];
                end
                ADDR_C_OUT_DATA_0: begin
                    rdata <= int_c_out[15:0];
                end
                ADDR_C_REDUCE_DATA_0: begin
                    rdata <= int_c_reduce[15:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign c_in              = int_c_in;
assign h_w               = int_h_w;
assign stride            = int_stride;
assign in_r              = int_in_r;
assign conv1_kernel      = int_conv1_kernel;
assign dw_kernel         = int_dw_kernel;
assign conv2_kernel      = int_conv2_kernel;
assign bn1_mean          = int_bn1_mean;
assign bn1_var           = int_bn1_var;
assign bn1_gamma         = int_bn1_gamma;
assign bn1_beta          = int_bn1_beta;
assign bn2_mean          = int_bn2_mean;
assign bn2_var           = int_bn2_var;
assign bn2_gamma         = int_bn2_gamma;
assign bn2_beta          = int_bn2_beta;
assign bn3_mean          = int_bn3_mean;
assign bn3_var           = int_bn3_var;
assign bn3_gamma         = int_bn3_gamma;
assign bn3_beta          = int_bn3_beta;
assign out_r             = int_out_r;
assign c_out             = int_c_out;
assign c_reduce          = int_c_reduce;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_c_in[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_in[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_IN_DATA_0)
            int_c_in[15:0] <= (WDATA[31:0] & wmask) | (int_c_in[15:0] & ~wmask);
    end
end

// int_h_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_W_DATA_0)
            int_h_w[15:0] <= (WDATA[31:0] & wmask) | (int_h_w[15:0] & ~wmask);
    end
end

// int_stride[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_stride[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRIDE_DATA_0)
            int_stride[7:0] <= (WDATA[31:0] & wmask) | (int_stride[7:0] & ~wmask);
    end
end

// int_in_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_in_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IN_R_DATA_0)
            int_in_r[31:0] <= (WDATA[31:0] & wmask) | (int_in_r[31:0] & ~wmask);
    end
end

// int_in_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_in_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IN_R_DATA_1)
            int_in_r[63:32] <= (WDATA[31:0] & wmask) | (int_in_r[63:32] & ~wmask);
    end
end

// int_conv1_kernel[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_kernel[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_KERNEL_DATA_0)
            int_conv1_kernel[31:0] <= (WDATA[31:0] & wmask) | (int_conv1_kernel[31:0] & ~wmask);
    end
end

// int_conv1_kernel[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_kernel[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_KERNEL_DATA_1)
            int_conv1_kernel[63:32] <= (WDATA[31:0] & wmask) | (int_conv1_kernel[63:32] & ~wmask);
    end
end

// int_dw_kernel[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_kernel[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_KERNEL_DATA_0)
            int_dw_kernel[31:0] <= (WDATA[31:0] & wmask) | (int_dw_kernel[31:0] & ~wmask);
    end
end

// int_dw_kernel[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_kernel[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_KERNEL_DATA_1)
            int_dw_kernel[63:32] <= (WDATA[31:0] & wmask) | (int_dw_kernel[63:32] & ~wmask);
    end
end

// int_conv2_kernel[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_kernel[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_KERNEL_DATA_0)
            int_conv2_kernel[31:0] <= (WDATA[31:0] & wmask) | (int_conv2_kernel[31:0] & ~wmask);
    end
end

// int_conv2_kernel[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_kernel[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_KERNEL_DATA_1)
            int_conv2_kernel[63:32] <= (WDATA[31:0] & wmask) | (int_conv2_kernel[63:32] & ~wmask);
    end
end

// int_bn1_mean[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_mean[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_MEAN_DATA_0)
            int_bn1_mean[31:0] <= (WDATA[31:0] & wmask) | (int_bn1_mean[31:0] & ~wmask);
    end
end

// int_bn1_mean[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_mean[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_MEAN_DATA_1)
            int_bn1_mean[63:32] <= (WDATA[31:0] & wmask) | (int_bn1_mean[63:32] & ~wmask);
    end
end

// int_bn1_var[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_var[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_VAR_DATA_0)
            int_bn1_var[31:0] <= (WDATA[31:0] & wmask) | (int_bn1_var[31:0] & ~wmask);
    end
end

// int_bn1_var[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_var[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_VAR_DATA_1)
            int_bn1_var[63:32] <= (WDATA[31:0] & wmask) | (int_bn1_var[63:32] & ~wmask);
    end
end

// int_bn1_gamma[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_gamma[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_GAMMA_DATA_0)
            int_bn1_gamma[31:0] <= (WDATA[31:0] & wmask) | (int_bn1_gamma[31:0] & ~wmask);
    end
end

// int_bn1_gamma[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_gamma[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_GAMMA_DATA_1)
            int_bn1_gamma[63:32] <= (WDATA[31:0] & wmask) | (int_bn1_gamma[63:32] & ~wmask);
    end
end

// int_bn1_beta[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_beta[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_BETA_DATA_0)
            int_bn1_beta[31:0] <= (WDATA[31:0] & wmask) | (int_bn1_beta[31:0] & ~wmask);
    end
end

// int_bn1_beta[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn1_beta[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN1_BETA_DATA_1)
            int_bn1_beta[63:32] <= (WDATA[31:0] & wmask) | (int_bn1_beta[63:32] & ~wmask);
    end
end

// int_bn2_mean[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_mean[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_MEAN_DATA_0)
            int_bn2_mean[31:0] <= (WDATA[31:0] & wmask) | (int_bn2_mean[31:0] & ~wmask);
    end
end

// int_bn2_mean[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_mean[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_MEAN_DATA_1)
            int_bn2_mean[63:32] <= (WDATA[31:0] & wmask) | (int_bn2_mean[63:32] & ~wmask);
    end
end

// int_bn2_var[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_var[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_VAR_DATA_0)
            int_bn2_var[31:0] <= (WDATA[31:0] & wmask) | (int_bn2_var[31:0] & ~wmask);
    end
end

// int_bn2_var[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_var[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_VAR_DATA_1)
            int_bn2_var[63:32] <= (WDATA[31:0] & wmask) | (int_bn2_var[63:32] & ~wmask);
    end
end

// int_bn2_gamma[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_gamma[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_GAMMA_DATA_0)
            int_bn2_gamma[31:0] <= (WDATA[31:0] & wmask) | (int_bn2_gamma[31:0] & ~wmask);
    end
end

// int_bn2_gamma[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_gamma[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_GAMMA_DATA_1)
            int_bn2_gamma[63:32] <= (WDATA[31:0] & wmask) | (int_bn2_gamma[63:32] & ~wmask);
    end
end

// int_bn2_beta[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_beta[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_BETA_DATA_0)
            int_bn2_beta[31:0] <= (WDATA[31:0] & wmask) | (int_bn2_beta[31:0] & ~wmask);
    end
end

// int_bn2_beta[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn2_beta[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN2_BETA_DATA_1)
            int_bn2_beta[63:32] <= (WDATA[31:0] & wmask) | (int_bn2_beta[63:32] & ~wmask);
    end
end

// int_bn3_mean[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_mean[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_MEAN_DATA_0)
            int_bn3_mean[31:0] <= (WDATA[31:0] & wmask) | (int_bn3_mean[31:0] & ~wmask);
    end
end

// int_bn3_mean[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_mean[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_MEAN_DATA_1)
            int_bn3_mean[63:32] <= (WDATA[31:0] & wmask) | (int_bn3_mean[63:32] & ~wmask);
    end
end

// int_bn3_var[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_var[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_VAR_DATA_0)
            int_bn3_var[31:0] <= (WDATA[31:0] & wmask) | (int_bn3_var[31:0] & ~wmask);
    end
end

// int_bn3_var[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_var[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_VAR_DATA_1)
            int_bn3_var[63:32] <= (WDATA[31:0] & wmask) | (int_bn3_var[63:32] & ~wmask);
    end
end

// int_bn3_gamma[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_gamma[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_GAMMA_DATA_0)
            int_bn3_gamma[31:0] <= (WDATA[31:0] & wmask) | (int_bn3_gamma[31:0] & ~wmask);
    end
end

// int_bn3_gamma[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_gamma[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_GAMMA_DATA_1)
            int_bn3_gamma[63:32] <= (WDATA[31:0] & wmask) | (int_bn3_gamma[63:32] & ~wmask);
    end
end

// int_bn3_beta[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_beta[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_BETA_DATA_0)
            int_bn3_beta[31:0] <= (WDATA[31:0] & wmask) | (int_bn3_beta[31:0] & ~wmask);
    end
end

// int_bn3_beta[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bn3_beta[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BN3_BETA_DATA_1)
            int_bn3_beta[63:32] <= (WDATA[31:0] & wmask) | (int_bn3_beta[63:32] & ~wmask);
    end
end

// int_out_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_R_DATA_0)
            int_out_r[31:0] <= (WDATA[31:0] & wmask) | (int_out_r[31:0] & ~wmask);
    end
end

// int_out_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_R_DATA_1)
            int_out_r[63:32] <= (WDATA[31:0] & wmask) | (int_out_r[63:32] & ~wmask);
    end
end

// int_c_out[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_out[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_OUT_DATA_0)
            int_c_out[15:0] <= (WDATA[31:0] & wmask) | (int_c_out[15:0] & ~wmask);
    end
end

// int_c_reduce[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_reduce[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_REDUCE_DATA_0)
            int_c_reduce[15:0] <= (WDATA[31:0] & wmask) | (int_c_reduce[15:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
