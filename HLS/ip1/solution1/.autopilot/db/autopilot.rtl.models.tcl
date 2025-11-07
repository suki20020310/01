set SynModuleInfo {
  {SRCNAME initial_conv_bn_relu_Pipeline_VITIS_LOOP_90_5 MODELNAME initial_conv_bn_relu_Pipeline_VITIS_LOOP_90_5 RTLNAME initial_conv_bn_relu_initial_conv_bn_relu_Pipeline_VITIS_LOOP_90_5
    SUBMODULES {
      {MODELNAME initial_conv_bn_relu_udiv_32ns_16ns_17_36_1 RTLNAME initial_conv_bn_relu_udiv_32ns_16ns_17_36_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_urem_32ns_16ns_32_36_1 RTLNAME initial_conv_bn_relu_urem_32ns_16ns_32_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_udiv_16ns_8ns_9_20_1 RTLNAME initial_conv_bn_relu_udiv_16ns_8ns_9_20_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_urem_16ns_8ns_16_20_1 RTLNAME initial_conv_bn_relu_urem_16ns_8ns_16_20_1 BINDTYPE op TYPE urem IMPL auto LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_16ns_32s_32_1_1 RTLNAME initial_conv_bn_relu_mul_16ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_32s_16ns_32_1_1 RTLNAME initial_conv_bn_relu_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mac_muladd_19s_16ns_18ns_32_4_1 RTLNAME initial_conv_bn_relu_mac_muladd_19s_16ns_18ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mac_muladd_8s_8s_32s_32_4_1 RTLNAME initial_conv_bn_relu_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_flow_control_loop_pipe_sequential_init RTLNAME initial_conv_bn_relu_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME initial_conv_bn_relu_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME initial_conv_bn_relu MODELNAME initial_conv_bn_relu RTLNAME initial_conv_bn_relu IS_TOP 1
    SUBMODULES {
      {MODELNAME initial_conv_bn_relu_sdiv_18ns_9ns_18_22_seq_1 RTLNAME initial_conv_bn_relu_sdiv_18ns_9ns_18_22_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_sdiv_19ns_9ns_16_23_seq_1 RTLNAME initial_conv_bn_relu_sdiv_19ns_9ns_16_23_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 22 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_8ns_8ns_16_1_1 RTLNAME initial_conv_bn_relu_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_16ns_32ns_48_1_1 RTLNAME initial_conv_bn_relu_mul_16ns_32ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_32s_8s_40_1_1 RTLNAME initial_conv_bn_relu_mul_32s_8s_40_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_sdiv_40ns_8s_32_44_seq_1 RTLNAME initial_conv_bn_relu_sdiv_40ns_8s_32_44_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 43 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1 RTLNAME initial_conv_bn_relu_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_mul_16ns_16ns_32_4_1 RTLNAME initial_conv_bn_relu_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_mul_mul_24ns_8ns_32_4_1 RTLNAME initial_conv_bn_relu_mul_mul_24ns_8ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME initial_conv_bn_relu_gmem0_m_axi RTLNAME initial_conv_bn_relu_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME initial_conv_bn_relu_control_s_axi RTLNAME initial_conv_bn_relu_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
