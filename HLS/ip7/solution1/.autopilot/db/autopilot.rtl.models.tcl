set SynModuleInfo {
  {SRCNAME conv_bn_relu MODELNAME conv_bn_relu RTLNAME conv_bn_relu IS_TOP 1
    SUBMODULES {
      {MODELNAME conv_bn_relu_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME conv_bn_relu_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME conv_bn_relu_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME conv_bn_relu_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fsqrt_32ns_32ns_32_12_no_dsp_1 RTLNAME conv_bn_relu_fsqrt_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_sdiv_18ns_9ns_16_22_seq_1 RTLNAME conv_bn_relu_sdiv_18ns_9ns_16_22_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_16ns_32s_32_1_1 RTLNAME conv_bn_relu_mul_16ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_32s_8ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_8ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_32s_16ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_16ns_16ns_32_4_1 RTLNAME conv_bn_relu_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mac_mul_sub_16ns_8ns_8ns_25_4_1 RTLNAME conv_bn_relu_mac_mul_sub_16ns_8ns_8ns_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_25s_16ns_32_4_1 RTLNAME conv_bn_relu_mul_mul_25s_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_16ns_8ns_24_4_1 RTLNAME conv_bn_relu_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_am_addmul_8ns_24ns_8ns_32_4_1 RTLNAME conv_bn_relu_am_addmul_8ns_24ns_8ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_gmem0_m_axi RTLNAME conv_bn_relu_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME conv_bn_relu_control_s_axi RTLNAME conv_bn_relu_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
