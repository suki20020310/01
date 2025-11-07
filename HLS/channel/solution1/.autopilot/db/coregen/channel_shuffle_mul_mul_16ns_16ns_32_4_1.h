// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __channel_shuffle_mul_mul_16ns_16ns_32_4_1__HH__
#define __channel_shuffle_mul_mul_16ns_16ns_32_4_1__HH__
#include "channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(channel_shuffle_mul_mul_16ns_16ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2 channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U;

    SC_CTOR(channel_shuffle_mul_mul_16ns_16ns_32_4_1):  channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U ("channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U") {
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.clk(clk);
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.rst(reset);
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.ce(ce);
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.a(din0);
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.b(din1);
        channel_shuffle_mul_mul_16ns_16ns_32_4_1_DSP48_2_U.p(dout);

    }

};

#endif //
