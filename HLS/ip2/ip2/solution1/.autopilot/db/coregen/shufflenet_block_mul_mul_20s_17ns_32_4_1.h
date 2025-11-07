// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __shufflenet_block_mul_mul_20s_17ns_32_4_1__HH__
#define __shufflenet_block_mul_mul_20s_17ns_32_4_1__HH__
#include "shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(shufflenet_block_mul_mul_20s_17ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12 shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U;

    SC_CTOR(shufflenet_block_mul_mul_20s_17ns_32_4_1):  shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U ("shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U") {
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.clk(clk);
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.rst(reset);
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.ce(ce);
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.a(din0);
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.b(din1);
        shufflenet_block_mul_mul_20s_17ns_32_4_1_DSP48_12_U.p(dout);

    }

};

#endif //
