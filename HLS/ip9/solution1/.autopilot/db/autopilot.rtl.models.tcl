set SynModuleInfo {
  {SRCNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18 MODELNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18
    SUBMODULES {
      {MODELNAME conv_bn_relu_flow_control_loop_pipe_sequential_init RTLNAME conv_bn_relu_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME conv_bn_relu_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1 MODELNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1}
  {SRCNAME Block_entry352_proc1_Pipeline_3 MODELNAME Block_entry352_proc1_Pipeline_3 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_3}
  {SRCNAME Block_entry352_proc1_Pipeline_4 MODELNAME Block_entry352_proc1_Pipeline_4 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_4
    SUBMODULES {
      {MODELNAME conv_bn_relu_mul_7ns_9ns_15_1_1 RTLNAME conv_bn_relu_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_urem_7ns_5ns_4_11_1 RTLNAME conv_bn_relu_urem_7ns_5ns_4_11_1 BINDTYPE op TYPE urem IMPL auto LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_4ns_6ns_9_1_1 RTLNAME conv_bn_relu_mul_4ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7 MODELNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7
    SUBMODULES {
      {MODELNAME conv_bn_relu_mul_32s_16ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11 MODELNAME Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11 RTLNAME conv_bn_relu_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11
    SUBMODULES {
      {MODELNAME conv_bn_relu_mul_32s_32s_32_1_1 RTLNAME conv_bn_relu_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mac_muladd_16ns_16ns_32ns_32_4_1 RTLNAME conv_bn_relu_mac_muladd_16ns_16ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry352_proc1 MODELNAME Block_entry352_proc1 RTLNAME conv_bn_relu_Block_entry352_proc1
    SUBMODULES {
      {MODELNAME conv_bn_relu_fptrunc_64ns_32_2_no_dsp_1 RTLNAME conv_bn_relu_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fpext_32ns_64_2_no_dsp_1 RTLNAME conv_bn_relu_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_dadddsub_64ns_64ns_64_7_full_dsp_1 RTLNAME conv_bn_relu_dadddsub_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_dmul_64ns_64ns_64_6_max_dsp_1 RTLNAME conv_bn_relu_dmul_64ns_64ns_64_6_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_sdiv_18ns_9ns_16_22_seq_1 RTLNAME conv_bn_relu_sdiv_18ns_9ns_16_22_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_8ns_8ns_16_1_1 RTLNAME conv_bn_relu_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_32s_8ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_8ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mux_42_64_1_1 RTLNAME conv_bn_relu_mux_42_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mux_21_32_1_1 RTLNAME conv_bn_relu_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_29s_14ns_29_1_1 RTLNAME conv_bn_relu_mul_29s_14ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_64ns_32ns_96_5_1 RTLNAME conv_bn_relu_mul_64ns_32ns_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_30s_30s_30_1_1 RTLNAME conv_bn_relu_mul_30s_30s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_24ns_30s_30_1_1 RTLNAME conv_bn_relu_mul_24ns_30s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_32s_18ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_18ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_32s_26ns_32_1_1 RTLNAME conv_bn_relu_mul_32s_26ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_64ns_16ns_80_5_1 RTLNAME conv_bn_relu_mul_64ns_16ns_80_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mux_32_32_1_1 RTLNAME conv_bn_relu_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_16ns_8ns_24_4_1 RTLNAME conv_bn_relu_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_16ns_16ns_32_4_1 RTLNAME conv_bn_relu_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_mul_mul_24ns_17s_32_4_1 RTLNAME conv_bn_relu_mul_mul_24ns_17s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME conv_bn_relu_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME conv_bn_relu_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_dsqrt_64ns_64ns_64_30_no_dsp_1 RTLNAME conv_bn_relu_dsqrt_64ns_64ns_64_30_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 29 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_Block_entry352_proc1_bn_params_RAM_AUTO_1R1W RTLNAME conv_bn_relu_Block_entry352_proc1_bn_params_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_Block_entry352_proc1_local_kernel_RAM_AUTO_1R1W RTLNAME conv_bn_relu_Block_entry352_proc1_local_kernel_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_Block_entry352_proc1_local_feature_in_blk_RAM_AUTO_1R1W RTLNAME conv_bn_relu_Block_entry352_proc1_local_feature_in_blk_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME conv_bn_relu_Block_entry352_proc1_local_conv_kernel_blk_RAM_AUTO_1R1W RTLNAME conv_bn_relu_Block_entry352_proc1_local_conv_kernel_blk_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_bn_relu MODELNAME conv_bn_relu RTLNAME conv_bn_relu IS_TOP 1
    SUBMODULES {
      {MODELNAME conv_bn_relu_gmem1_m_axi RTLNAME conv_bn_relu_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME conv_bn_relu_gmem2_m_axi RTLNAME conv_bn_relu_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME conv_bn_relu_gmem3_m_axi RTLNAME conv_bn_relu_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME conv_bn_relu_gmem0_m_axi RTLNAME conv_bn_relu_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME conv_bn_relu_control_s_axi RTLNAME conv_bn_relu_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
