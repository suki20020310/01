// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __downsample_block_mul_mul_17s_16ns_32_4_1__HH__
#define __downsample_block_mul_mul_17s_16ns_32_4_1__HH__
#include "downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(downsample_block_mul_mul_17s_16ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16 downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U;

    SC_CTOR(downsample_block_mul_mul_17s_16ns_32_4_1):  downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U ("downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U") {
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.clk(clk);
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.rst(reset);
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.ce(ce);
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.a(din0);
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.b(din1);
        downsample_block_mul_mul_17s_16ns_32_4_1_DSP48_16_U.p(dout);

    }

};

#endif //
