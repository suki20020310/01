// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __shufflenet_block_mac_muladd_8s_8s_17s_17_4_1__HH__
#define __shufflenet_block_mac_muladd_8s_8s_17s_17_4_1__HH__
#include "shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(shufflenet_block_mac_muladd_8s_8s_17s_17_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6 shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U;

    SC_CTOR(shufflenet_block_mac_muladd_8s_8s_17s_17_4_1):  shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U ("shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U") {
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.clk(clk);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.rst(reset);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.ce(ce);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.in0(din0);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.in1(din1);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.in2(din2);
        shufflenet_block_mac_muladd_8s_8s_17s_17_4_1_DSP48_6_U.dout(dout);

    }

};

#endif //
