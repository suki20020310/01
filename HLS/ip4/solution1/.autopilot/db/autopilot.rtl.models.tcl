set SynModuleInfo {
  {SRCNAME output_conv_pool_bn MODELNAME output_conv_pool_bn RTLNAME output_conv_pool_bn IS_TOP 1
    SUBMODULES {
      {MODELNAME output_conv_pool_bn_sdiv_32ns_32ns_32_36_1 RTLNAME output_conv_pool_bn_sdiv_32ns_32ns_32_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mul_32ns_16ns_48_1_1 RTLNAME output_conv_pool_bn_mul_32ns_16ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_udiv_17s_8ns_17_21_1 RTLNAME output_conv_pool_bn_udiv_17s_8ns_17_21_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mul_32s_8s_32_1_1 RTLNAME output_conv_pool_bn_mul_32s_8s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mul_32s_17ns_48_1_1 RTLNAME output_conv_pool_bn_mul_32s_17ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mul_mul_16ns_16ns_24_4_1 RTLNAME output_conv_pool_bn_mul_mul_16ns_16ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mac_muladd_8s_8s_32s_32_4_1 RTLNAME output_conv_pool_bn_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1 RTLNAME output_conv_pool_bn_mac_muladd_8s_8s_25s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_conv_features_V_RAM_AUTO_1R1W RTLNAME output_conv_pool_bn_conv_features_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME output_conv_pool_bn_gmem0_m_axi RTLNAME output_conv_pool_bn_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME output_conv_pool_bn_control_s_axi RTLNAME output_conv_pool_bn_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
