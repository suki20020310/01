set SynModuleInfo {
  {SRCNAME channel_shuffle MODELNAME channel_shuffle RTLNAME channel_shuffle IS_TOP 1
    SUBMODULES {
      {MODELNAME channel_shuffle_udiv_16ns_8ns_16_20_seq_1 RTLNAME channel_shuffle_udiv_16ns_8ns_16_20_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_32s_24ns_32_1_1 RTLNAME channel_shuffle_mul_32s_24ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_32s_16ns_32_1_1 RTLNAME channel_shuffle_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_16ns_8ns_24_4_1 RTLNAME channel_shuffle_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_16ns_16ns_32_4_1 RTLNAME channel_shuffle_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_16ns_24ns_40_4_1 RTLNAME channel_shuffle_mul_mul_16ns_24ns_40_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_gmem_in_m_axi RTLNAME channel_shuffle_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME channel_shuffle_gmem_out_m_axi RTLNAME channel_shuffle_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME channel_shuffle_control_s_axi RTLNAME channel_shuffle_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
