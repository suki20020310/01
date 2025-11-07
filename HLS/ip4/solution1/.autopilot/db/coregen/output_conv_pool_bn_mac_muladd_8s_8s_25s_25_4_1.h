// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1__HH__
#define __output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1__HH__
#include "output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2 output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U;

    SC_CTOR(output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1):  output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U ("output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U") {
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.clk(clk);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.rst(reset);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.ce(ce);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.in0(din0);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.in1(din1);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.in2(din2);
        output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
