// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1__HH__
#define __downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1__HH__
#include "downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14 downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U;

    SC_CTOR(downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1):  downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U ("downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U") {
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.clk(clk);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.rst(reset);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.ce(ce);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.in0(din0);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.in1(din1);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.in2(din2);
        downsample_block_mac_muladd_16ns_16ns_16ns_32_4_1_DSP48_14_U.dout(dout);

    }

};

#endif //
