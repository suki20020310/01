// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1__HH__
#define __initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1__HH__
#include "initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2 initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U;

    SC_CTOR(initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1):  initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U ("initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U") {
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.clk(clk);
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.rst(reset);
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.ce(ce);
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.a(din0);
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.b(din1);
        initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1_DSP48_2_U.p(dout);

    }

};

#endif //
