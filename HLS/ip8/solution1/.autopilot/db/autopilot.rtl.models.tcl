set SynModuleInfo {
  {SRCNAME pooling_Pipeline_VITIS_LOOP_57_4_VITIS_LOOP_58_5 MODELNAME pooling_Pipeline_VITIS_LOOP_57_4_VITIS_LOOP_58_5 RTLNAME pooling_pooling_Pipeline_VITIS_LOOP_57_4_VITIS_LOOP_58_5
    SUBMODULES {
      {MODELNAME pooling_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME pooling_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_32s_16ns_32_1_1 RTLNAME pooling_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_mul_25s_16ns_32_4_1 RTLNAME pooling_mul_mul_25s_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pooling_flow_control_loop_pipe_sequential_init RTLNAME pooling_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pooling_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pooling_Pipeline_VITIS_LOOP_85_6_VITIS_LOOP_86_7 MODELNAME pooling_Pipeline_VITIS_LOOP_85_6_VITIS_LOOP_86_7 RTLNAME pooling_pooling_Pipeline_VITIS_LOOP_85_6_VITIS_LOOP_86_7
    SUBMODULES {
      {MODELNAME pooling_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME pooling_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling MODELNAME pooling RTLNAME pooling IS_TOP 1
    SUBMODULES {
      {MODELNAME pooling_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME pooling_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME pooling_sitofp_32ns_32_5_no_dsp_1 RTLNAME pooling_sitofp_32ns_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME pooling_sdiv_18ns_9ns_16_22_seq_1 RTLNAME pooling_sdiv_18ns_9ns_16_22_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_8ns_8ns_16_1_1 RTLNAME pooling_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_16ns_32ns_48_1_1 RTLNAME pooling_mul_16ns_32ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_mul_16ns_16ns_32_4_1 RTLNAME pooling_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mul_mul_16ns_8ns_24_4_1 RTLNAME pooling_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pooling_mac_mul_sub_16ns_8ns_8ns_25_4_1 RTLNAME pooling_mac_mul_sub_16ns_8ns_8ns_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pooling_gmem0_m_axi RTLNAME pooling_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pooling_control_s_axi RTLNAME pooling_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
