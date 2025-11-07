-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity downsample_block_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 9;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    c_in                  :out  STD_LOGIC_VECTOR(15 downto 0);
    h_in                  :out  STD_LOGIC_VECTOR(15 downto 0);
    h_out                 :out  STD_LOGIC_VECTOR(15 downto 0);
    stride                :out  STD_LOGIC_VECTOR(7 downto 0);
    in_r                  :out  STD_LOGIC_VECTOR(63 downto 0);
    dw_kernel             :out  STD_LOGIC_VECTOR(63 downto 0);
    conv1_kernel          :out  STD_LOGIC_VECTOR(63 downto 0);
    conv2_kernel          :out  STD_LOGIC_VECTOR(63 downto 0);
    bn1_mean              :out  STD_LOGIC_VECTOR(63 downto 0);
    bn1_var               :out  STD_LOGIC_VECTOR(63 downto 0);
    bn1_gamma             :out  STD_LOGIC_VECTOR(63 downto 0);
    bn1_beta              :out  STD_LOGIC_VECTOR(63 downto 0);
    bn2_mean              :out  STD_LOGIC_VECTOR(63 downto 0);
    bn2_var               :out  STD_LOGIC_VECTOR(63 downto 0);
    bn2_gamma             :out  STD_LOGIC_VECTOR(63 downto 0);
    bn2_beta              :out  STD_LOGIC_VECTOR(63 downto 0);
    bn3_mean              :out  STD_LOGIC_VECTOR(63 downto 0);
    bn3_var               :out  STD_LOGIC_VECTOR(63 downto 0);
    bn3_gamma             :out  STD_LOGIC_VECTOR(63 downto 0);
    bn3_beta              :out  STD_LOGIC_VECTOR(63 downto 0);
    out_r                 :out  STD_LOGIC_VECTOR(63 downto 0);
    c_out                 :out  STD_LOGIC_VECTOR(15 downto 0);
    w_in                  :out  STD_LOGIC_VECTOR(15 downto 0);
    w_out                 :out  STD_LOGIC_VECTOR(15 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity downsample_block_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 7  - auto_restart (Read/Write)
--         bit 9  - interrupt (Read)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0 - enable ap_done interrupt (Read/Write)
--         bit 1 - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0 - ap_done (Read/TOW)
--         bit 1 - ap_ready (Read/TOW)
--         others - reserved
-- 0x010 : Data signal of c_in
--         bit 15~0 - c_in[15:0] (Read/Write)
--         others   - reserved
-- 0x014 : reserved
-- 0x018 : Data signal of h_in
--         bit 15~0 - h_in[15:0] (Read/Write)
--         others   - reserved
-- 0x01c : reserved
-- 0x020 : Data signal of h_out
--         bit 15~0 - h_out[15:0] (Read/Write)
--         others   - reserved
-- 0x024 : reserved
-- 0x028 : Data signal of stride
--         bit 7~0 - stride[7:0] (Read/Write)
--         others  - reserved
-- 0x02c : reserved
-- 0x030 : Data signal of in_r
--         bit 31~0 - in_r[31:0] (Read/Write)
-- 0x034 : Data signal of in_r
--         bit 31~0 - in_r[63:32] (Read/Write)
-- 0x038 : reserved
-- 0x03c : Data signal of dw_kernel
--         bit 31~0 - dw_kernel[31:0] (Read/Write)
-- 0x040 : Data signal of dw_kernel
--         bit 31~0 - dw_kernel[63:32] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of conv1_kernel
--         bit 31~0 - conv1_kernel[31:0] (Read/Write)
-- 0x04c : Data signal of conv1_kernel
--         bit 31~0 - conv1_kernel[63:32] (Read/Write)
-- 0x050 : reserved
-- 0x054 : Data signal of conv2_kernel
--         bit 31~0 - conv2_kernel[31:0] (Read/Write)
-- 0x058 : Data signal of conv2_kernel
--         bit 31~0 - conv2_kernel[63:32] (Read/Write)
-- 0x05c : reserved
-- 0x060 : Data signal of bn1_mean
--         bit 31~0 - bn1_mean[31:0] (Read/Write)
-- 0x064 : Data signal of bn1_mean
--         bit 31~0 - bn1_mean[63:32] (Read/Write)
-- 0x068 : reserved
-- 0x06c : Data signal of bn1_var
--         bit 31~0 - bn1_var[31:0] (Read/Write)
-- 0x070 : Data signal of bn1_var
--         bit 31~0 - bn1_var[63:32] (Read/Write)
-- 0x074 : reserved
-- 0x078 : Data signal of bn1_gamma
--         bit 31~0 - bn1_gamma[31:0] (Read/Write)
-- 0x07c : Data signal of bn1_gamma
--         bit 31~0 - bn1_gamma[63:32] (Read/Write)
-- 0x080 : reserved
-- 0x084 : Data signal of bn1_beta
--         bit 31~0 - bn1_beta[31:0] (Read/Write)
-- 0x088 : Data signal of bn1_beta
--         bit 31~0 - bn1_beta[63:32] (Read/Write)
-- 0x08c : reserved
-- 0x090 : Data signal of bn2_mean
--         bit 31~0 - bn2_mean[31:0] (Read/Write)
-- 0x094 : Data signal of bn2_mean
--         bit 31~0 - bn2_mean[63:32] (Read/Write)
-- 0x098 : reserved
-- 0x09c : Data signal of bn2_var
--         bit 31~0 - bn2_var[31:0] (Read/Write)
-- 0x0a0 : Data signal of bn2_var
--         bit 31~0 - bn2_var[63:32] (Read/Write)
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of bn2_gamma
--         bit 31~0 - bn2_gamma[31:0] (Read/Write)
-- 0x0ac : Data signal of bn2_gamma
--         bit 31~0 - bn2_gamma[63:32] (Read/Write)
-- 0x0b0 : reserved
-- 0x0b4 : Data signal of bn2_beta
--         bit 31~0 - bn2_beta[31:0] (Read/Write)
-- 0x0b8 : Data signal of bn2_beta
--         bit 31~0 - bn2_beta[63:32] (Read/Write)
-- 0x0bc : reserved
-- 0x0c0 : Data signal of bn3_mean
--         bit 31~0 - bn3_mean[31:0] (Read/Write)
-- 0x0c4 : Data signal of bn3_mean
--         bit 31~0 - bn3_mean[63:32] (Read/Write)
-- 0x0c8 : reserved
-- 0x0cc : Data signal of bn3_var
--         bit 31~0 - bn3_var[31:0] (Read/Write)
-- 0x0d0 : Data signal of bn3_var
--         bit 31~0 - bn3_var[63:32] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of bn3_gamma
--         bit 31~0 - bn3_gamma[31:0] (Read/Write)
-- 0x0dc : Data signal of bn3_gamma
--         bit 31~0 - bn3_gamma[63:32] (Read/Write)
-- 0x0e0 : reserved
-- 0x0e4 : Data signal of bn3_beta
--         bit 31~0 - bn3_beta[31:0] (Read/Write)
-- 0x0e8 : Data signal of bn3_beta
--         bit 31~0 - bn3_beta[63:32] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of out_r
--         bit 31~0 - out_r[31:0] (Read/Write)
-- 0x0f4 : Data signal of out_r
--         bit 31~0 - out_r[63:32] (Read/Write)
-- 0x0f8 : reserved
-- 0x0fc : Data signal of c_out
--         bit 15~0 - c_out[15:0] (Read/Write)
--         others   - reserved
-- 0x100 : reserved
-- 0x104 : Data signal of w_in
--         bit 15~0 - w_in[15:0] (Read/Write)
--         others   - reserved
-- 0x108 : reserved
-- 0x10c : Data signal of w_out
--         bit 15~0 - w_out[15:0] (Read/Write)
--         others   - reserved
-- 0x110 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of downsample_block_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL             : INTEGER := 16#000#;
    constant ADDR_GIE                 : INTEGER := 16#004#;
    constant ADDR_IER                 : INTEGER := 16#008#;
    constant ADDR_ISR                 : INTEGER := 16#00c#;
    constant ADDR_C_IN_DATA_0         : INTEGER := 16#010#;
    constant ADDR_C_IN_CTRL           : INTEGER := 16#014#;
    constant ADDR_H_IN_DATA_0         : INTEGER := 16#018#;
    constant ADDR_H_IN_CTRL           : INTEGER := 16#01c#;
    constant ADDR_H_OUT_DATA_0        : INTEGER := 16#020#;
    constant ADDR_H_OUT_CTRL          : INTEGER := 16#024#;
    constant ADDR_STRIDE_DATA_0       : INTEGER := 16#028#;
    constant ADDR_STRIDE_CTRL         : INTEGER := 16#02c#;
    constant ADDR_IN_R_DATA_0         : INTEGER := 16#030#;
    constant ADDR_IN_R_DATA_1         : INTEGER := 16#034#;
    constant ADDR_IN_R_CTRL           : INTEGER := 16#038#;
    constant ADDR_DW_KERNEL_DATA_0    : INTEGER := 16#03c#;
    constant ADDR_DW_KERNEL_DATA_1    : INTEGER := 16#040#;
    constant ADDR_DW_KERNEL_CTRL      : INTEGER := 16#044#;
    constant ADDR_CONV1_KERNEL_DATA_0 : INTEGER := 16#048#;
    constant ADDR_CONV1_KERNEL_DATA_1 : INTEGER := 16#04c#;
    constant ADDR_CONV1_KERNEL_CTRL   : INTEGER := 16#050#;
    constant ADDR_CONV2_KERNEL_DATA_0 : INTEGER := 16#054#;
    constant ADDR_CONV2_KERNEL_DATA_1 : INTEGER := 16#058#;
    constant ADDR_CONV2_KERNEL_CTRL   : INTEGER := 16#05c#;
    constant ADDR_BN1_MEAN_DATA_0     : INTEGER := 16#060#;
    constant ADDR_BN1_MEAN_DATA_1     : INTEGER := 16#064#;
    constant ADDR_BN1_MEAN_CTRL       : INTEGER := 16#068#;
    constant ADDR_BN1_VAR_DATA_0      : INTEGER := 16#06c#;
    constant ADDR_BN1_VAR_DATA_1      : INTEGER := 16#070#;
    constant ADDR_BN1_VAR_CTRL        : INTEGER := 16#074#;
    constant ADDR_BN1_GAMMA_DATA_0    : INTEGER := 16#078#;
    constant ADDR_BN1_GAMMA_DATA_1    : INTEGER := 16#07c#;
    constant ADDR_BN1_GAMMA_CTRL      : INTEGER := 16#080#;
    constant ADDR_BN1_BETA_DATA_0     : INTEGER := 16#084#;
    constant ADDR_BN1_BETA_DATA_1     : INTEGER := 16#088#;
    constant ADDR_BN1_BETA_CTRL       : INTEGER := 16#08c#;
    constant ADDR_BN2_MEAN_DATA_0     : INTEGER := 16#090#;
    constant ADDR_BN2_MEAN_DATA_1     : INTEGER := 16#094#;
    constant ADDR_BN2_MEAN_CTRL       : INTEGER := 16#098#;
    constant ADDR_BN2_VAR_DATA_0      : INTEGER := 16#09c#;
    constant ADDR_BN2_VAR_DATA_1      : INTEGER := 16#0a0#;
    constant ADDR_BN2_VAR_CTRL        : INTEGER := 16#0a4#;
    constant ADDR_BN2_GAMMA_DATA_0    : INTEGER := 16#0a8#;
    constant ADDR_BN2_GAMMA_DATA_1    : INTEGER := 16#0ac#;
    constant ADDR_BN2_GAMMA_CTRL      : INTEGER := 16#0b0#;
    constant ADDR_BN2_BETA_DATA_0     : INTEGER := 16#0b4#;
    constant ADDR_BN2_BETA_DATA_1     : INTEGER := 16#0b8#;
    constant ADDR_BN2_BETA_CTRL       : INTEGER := 16#0bc#;
    constant ADDR_BN3_MEAN_DATA_0     : INTEGER := 16#0c0#;
    constant ADDR_BN3_MEAN_DATA_1     : INTEGER := 16#0c4#;
    constant ADDR_BN3_MEAN_CTRL       : INTEGER := 16#0c8#;
    constant ADDR_BN3_VAR_DATA_0      : INTEGER := 16#0cc#;
    constant ADDR_BN3_VAR_DATA_1      : INTEGER := 16#0d0#;
    constant ADDR_BN3_VAR_CTRL        : INTEGER := 16#0d4#;
    constant ADDR_BN3_GAMMA_DATA_0    : INTEGER := 16#0d8#;
    constant ADDR_BN3_GAMMA_DATA_1    : INTEGER := 16#0dc#;
    constant ADDR_BN3_GAMMA_CTRL      : INTEGER := 16#0e0#;
    constant ADDR_BN3_BETA_DATA_0     : INTEGER := 16#0e4#;
    constant ADDR_BN3_BETA_DATA_1     : INTEGER := 16#0e8#;
    constant ADDR_BN3_BETA_CTRL       : INTEGER := 16#0ec#;
    constant ADDR_OUT_R_DATA_0        : INTEGER := 16#0f0#;
    constant ADDR_OUT_R_DATA_1        : INTEGER := 16#0f4#;
    constant ADDR_OUT_R_CTRL          : INTEGER := 16#0f8#;
    constant ADDR_C_OUT_DATA_0        : INTEGER := 16#0fc#;
    constant ADDR_C_OUT_CTRL          : INTEGER := 16#100#;
    constant ADDR_W_IN_DATA_0         : INTEGER := 16#104#;
    constant ADDR_W_IN_CTRL           : INTEGER := 16#108#;
    constant ADDR_W_OUT_DATA_0        : INTEGER := 16#10c#;
    constant ADDR_W_OUT_CTRL          : INTEGER := 16#110#;
    constant ADDR_BITS         : INTEGER := 9;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_c_in            : UNSIGNED(15 downto 0) := (others => '0');
    signal int_h_in            : UNSIGNED(15 downto 0) := (others => '0');
    signal int_h_out           : UNSIGNED(15 downto 0) := (others => '0');
    signal int_stride          : UNSIGNED(7 downto 0) := (others => '0');
    signal int_in_r            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_dw_kernel       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_conv1_kernel    : UNSIGNED(63 downto 0) := (others => '0');
    signal int_conv2_kernel    : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn1_mean        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn1_var         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn1_gamma       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn1_beta        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn2_mean        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn2_var         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn2_gamma       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn2_beta        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn3_mean        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn3_var         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn3_gamma       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bn3_beta        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_out_r           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_c_out           : UNSIGNED(15 downto 0) := (others => '0');
    signal int_w_in            : UNSIGNED(15 downto 0) := (others => '0');
    signal int_w_out           : UNSIGNED(15 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_C_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_c_in(15 downto 0), 32);
                    when ADDR_H_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_h_in(15 downto 0), 32);
                    when ADDR_H_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_h_out(15 downto 0), 32);
                    when ADDR_STRIDE_DATA_0 =>
                        rdata_data <= RESIZE(int_stride(7 downto 0), 32);
                    when ADDR_IN_R_DATA_0 =>
                        rdata_data <= RESIZE(int_in_r(31 downto 0), 32);
                    when ADDR_IN_R_DATA_1 =>
                        rdata_data <= RESIZE(int_in_r(63 downto 32), 32);
                    when ADDR_DW_KERNEL_DATA_0 =>
                        rdata_data <= RESIZE(int_dw_kernel(31 downto 0), 32);
                    when ADDR_DW_KERNEL_DATA_1 =>
                        rdata_data <= RESIZE(int_dw_kernel(63 downto 32), 32);
                    when ADDR_CONV1_KERNEL_DATA_0 =>
                        rdata_data <= RESIZE(int_conv1_kernel(31 downto 0), 32);
                    when ADDR_CONV1_KERNEL_DATA_1 =>
                        rdata_data <= RESIZE(int_conv1_kernel(63 downto 32), 32);
                    when ADDR_CONV2_KERNEL_DATA_0 =>
                        rdata_data <= RESIZE(int_conv2_kernel(31 downto 0), 32);
                    when ADDR_CONV2_KERNEL_DATA_1 =>
                        rdata_data <= RESIZE(int_conv2_kernel(63 downto 32), 32);
                    when ADDR_BN1_MEAN_DATA_0 =>
                        rdata_data <= RESIZE(int_bn1_mean(31 downto 0), 32);
                    when ADDR_BN1_MEAN_DATA_1 =>
                        rdata_data <= RESIZE(int_bn1_mean(63 downto 32), 32);
                    when ADDR_BN1_VAR_DATA_0 =>
                        rdata_data <= RESIZE(int_bn1_var(31 downto 0), 32);
                    when ADDR_BN1_VAR_DATA_1 =>
                        rdata_data <= RESIZE(int_bn1_var(63 downto 32), 32);
                    when ADDR_BN1_GAMMA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn1_gamma(31 downto 0), 32);
                    when ADDR_BN1_GAMMA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn1_gamma(63 downto 32), 32);
                    when ADDR_BN1_BETA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn1_beta(31 downto 0), 32);
                    when ADDR_BN1_BETA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn1_beta(63 downto 32), 32);
                    when ADDR_BN2_MEAN_DATA_0 =>
                        rdata_data <= RESIZE(int_bn2_mean(31 downto 0), 32);
                    when ADDR_BN2_MEAN_DATA_1 =>
                        rdata_data <= RESIZE(int_bn2_mean(63 downto 32), 32);
                    when ADDR_BN2_VAR_DATA_0 =>
                        rdata_data <= RESIZE(int_bn2_var(31 downto 0), 32);
                    when ADDR_BN2_VAR_DATA_1 =>
                        rdata_data <= RESIZE(int_bn2_var(63 downto 32), 32);
                    when ADDR_BN2_GAMMA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn2_gamma(31 downto 0), 32);
                    when ADDR_BN2_GAMMA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn2_gamma(63 downto 32), 32);
                    when ADDR_BN2_BETA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn2_beta(31 downto 0), 32);
                    when ADDR_BN2_BETA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn2_beta(63 downto 32), 32);
                    when ADDR_BN3_MEAN_DATA_0 =>
                        rdata_data <= RESIZE(int_bn3_mean(31 downto 0), 32);
                    when ADDR_BN3_MEAN_DATA_1 =>
                        rdata_data <= RESIZE(int_bn3_mean(63 downto 32), 32);
                    when ADDR_BN3_VAR_DATA_0 =>
                        rdata_data <= RESIZE(int_bn3_var(31 downto 0), 32);
                    when ADDR_BN3_VAR_DATA_1 =>
                        rdata_data <= RESIZE(int_bn3_var(63 downto 32), 32);
                    when ADDR_BN3_GAMMA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn3_gamma(31 downto 0), 32);
                    when ADDR_BN3_GAMMA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn3_gamma(63 downto 32), 32);
                    when ADDR_BN3_BETA_DATA_0 =>
                        rdata_data <= RESIZE(int_bn3_beta(31 downto 0), 32);
                    when ADDR_BN3_BETA_DATA_1 =>
                        rdata_data <= RESIZE(int_bn3_beta(63 downto 32), 32);
                    when ADDR_OUT_R_DATA_0 =>
                        rdata_data <= RESIZE(int_out_r(31 downto 0), 32);
                    when ADDR_OUT_R_DATA_1 =>
                        rdata_data <= RESIZE(int_out_r(63 downto 32), 32);
                    when ADDR_C_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_c_out(15 downto 0), 32);
                    when ADDR_W_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_w_in(15 downto 0), 32);
                    when ADDR_W_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_w_out(15 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    c_in                 <= STD_LOGIC_VECTOR(int_c_in);
    h_in                 <= STD_LOGIC_VECTOR(int_h_in);
    h_out                <= STD_LOGIC_VECTOR(int_h_out);
    stride               <= STD_LOGIC_VECTOR(int_stride);
    in_r                 <= STD_LOGIC_VECTOR(int_in_r);
    dw_kernel            <= STD_LOGIC_VECTOR(int_dw_kernel);
    conv1_kernel         <= STD_LOGIC_VECTOR(int_conv1_kernel);
    conv2_kernel         <= STD_LOGIC_VECTOR(int_conv2_kernel);
    bn1_mean             <= STD_LOGIC_VECTOR(int_bn1_mean);
    bn1_var              <= STD_LOGIC_VECTOR(int_bn1_var);
    bn1_gamma            <= STD_LOGIC_VECTOR(int_bn1_gamma);
    bn1_beta             <= STD_LOGIC_VECTOR(int_bn1_beta);
    bn2_mean             <= STD_LOGIC_VECTOR(int_bn2_mean);
    bn2_var              <= STD_LOGIC_VECTOR(int_bn2_var);
    bn2_gamma            <= STD_LOGIC_VECTOR(int_bn2_gamma);
    bn2_beta             <= STD_LOGIC_VECTOR(int_bn2_beta);
    bn3_mean             <= STD_LOGIC_VECTOR(int_bn3_mean);
    bn3_var              <= STD_LOGIC_VECTOR(int_bn3_var);
    bn3_gamma            <= STD_LOGIC_VECTOR(int_bn3_gamma);
    bn3_beta             <= STD_LOGIC_VECTOR(int_bn3_beta);
    out_r                <= STD_LOGIC_VECTOR(int_out_r);
    c_out                <= STD_LOGIC_VECTOR(int_c_out);
    w_in                 <= STD_LOGIC_VECTOR(int_w_in);
    w_out                <= STD_LOGIC_VECTOR(int_w_out);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_IN_DATA_0) then
                    int_c_in(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_c_in(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_IN_DATA_0) then
                    int_h_in(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_h_in(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_OUT_DATA_0) then
                    int_h_out(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_h_out(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STRIDE_DATA_0) then
                    int_stride(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_stride(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IN_R_DATA_0) then
                    int_in_r(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_in_r(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IN_R_DATA_1) then
                    int_in_r(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_in_r(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DW_KERNEL_DATA_0) then
                    int_dw_kernel(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_dw_kernel(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DW_KERNEL_DATA_1) then
                    int_dw_kernel(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_dw_kernel(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CONV1_KERNEL_DATA_0) then
                    int_conv1_kernel(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_conv1_kernel(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CONV1_KERNEL_DATA_1) then
                    int_conv1_kernel(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_conv1_kernel(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CONV2_KERNEL_DATA_0) then
                    int_conv2_kernel(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_conv2_kernel(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CONV2_KERNEL_DATA_1) then
                    int_conv2_kernel(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_conv2_kernel(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_MEAN_DATA_0) then
                    int_bn1_mean(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_mean(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_MEAN_DATA_1) then
                    int_bn1_mean(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_mean(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_VAR_DATA_0) then
                    int_bn1_var(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_var(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_VAR_DATA_1) then
                    int_bn1_var(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_var(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_GAMMA_DATA_0) then
                    int_bn1_gamma(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_gamma(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_GAMMA_DATA_1) then
                    int_bn1_gamma(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_gamma(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_BETA_DATA_0) then
                    int_bn1_beta(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_beta(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN1_BETA_DATA_1) then
                    int_bn1_beta(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn1_beta(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_MEAN_DATA_0) then
                    int_bn2_mean(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_mean(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_MEAN_DATA_1) then
                    int_bn2_mean(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_mean(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_VAR_DATA_0) then
                    int_bn2_var(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_var(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_VAR_DATA_1) then
                    int_bn2_var(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_var(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_GAMMA_DATA_0) then
                    int_bn2_gamma(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_gamma(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_GAMMA_DATA_1) then
                    int_bn2_gamma(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_gamma(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_BETA_DATA_0) then
                    int_bn2_beta(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_beta(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN2_BETA_DATA_1) then
                    int_bn2_beta(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn2_beta(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_MEAN_DATA_0) then
                    int_bn3_mean(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_mean(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_MEAN_DATA_1) then
                    int_bn3_mean(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_mean(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_VAR_DATA_0) then
                    int_bn3_var(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_var(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_VAR_DATA_1) then
                    int_bn3_var(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_var(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_GAMMA_DATA_0) then
                    int_bn3_gamma(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_gamma(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_GAMMA_DATA_1) then
                    int_bn3_gamma(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_gamma(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_BETA_DATA_0) then
                    int_bn3_beta(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_beta(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BN3_BETA_DATA_1) then
                    int_bn3_beta(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bn3_beta(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUT_R_DATA_0) then
                    int_out_r(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_out_r(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUT_R_DATA_1) then
                    int_out_r(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_out_r(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_OUT_DATA_0) then
                    int_c_out(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_c_out(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_W_IN_DATA_0) then
                    int_w_in(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_w_in(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_W_OUT_DATA_0) then
                    int_w_out(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_w_out(15 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
