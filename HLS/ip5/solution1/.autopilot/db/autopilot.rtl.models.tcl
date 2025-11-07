set SynModuleInfo {
  {SRCNAME channel_shuffle_Pipeline_VITIS_LOOP_32_1 MODELNAME channel_shuffle_Pipeline_VITIS_LOOP_32_1 RTLNAME channel_shuffle_channel_shuffle_Pipeline_VITIS_LOOP_32_1
    SUBMODULES {
      {MODELNAME channel_shuffle_flow_control_loop_pipe_sequential_init RTLNAME channel_shuffle_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME channel_shuffle_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME channel_shuffle MODELNAME channel_shuffle RTLNAME channel_shuffle IS_TOP 1
    SUBMODULES {
      {MODELNAME channel_shuffle_urem_16ns_8ns_8_20_seq_1 RTLNAME channel_shuffle_urem_16ns_8ns_8_20_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_udiv_16ns_8ns_16_20_seq_1 RTLNAME channel_shuffle_udiv_16ns_8ns_16_20_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_32ns_16ns_48_1_1 RTLNAME channel_shuffle_mul_32ns_16ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_32s_16ns_32_1_1 RTLNAME channel_shuffle_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_16ns_16ns_32_4_1 RTLNAME channel_shuffle_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_17ns_8ns_25_4_1 RTLNAME channel_shuffle_mul_mul_17ns_8ns_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_17ns_25ns_42_4_1 RTLNAME channel_shuffle_mul_mul_17ns_25ns_42_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_mul_mul_8ns_16ns_16_4_1 RTLNAME channel_shuffle_mul_mul_8ns_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_shuffle_gmem_in_m_axi RTLNAME channel_shuffle_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME channel_shuffle_gmem_out_m_axi RTLNAME channel_shuffle_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME channel_shuffle_control_s_axi RTLNAME channel_shuffle_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME channel_shuffle_control_r_s_axi RTLNAME channel_shuffle_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
