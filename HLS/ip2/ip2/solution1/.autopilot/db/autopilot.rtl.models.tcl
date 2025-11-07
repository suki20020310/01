set SynModuleInfo {
  {SRCNAME shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3 MODELNAME shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3 RTLNAME shufflenet_block_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3
    SUBMODULES {
      {MODELNAME shufflenet_block_mul_32s_16ns_32_1_1 RTLNAME shufflenet_block_mul_32s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_flow_control_loop_pipe_sequential_init RTLNAME shufflenet_block_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME shufflenet_block_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME shufflenet_block_Pipeline_VITIS_LOOP_299_15 MODELNAME shufflenet_block_Pipeline_VITIS_LOOP_299_15 RTLNAME shufflenet_block_shufflenet_block_Pipeline_VITIS_LOOP_299_15
    SUBMODULES {
      {MODELNAME shufflenet_block_mul_15ns_32s_32_1_1 RTLNAME shufflenet_block_mul_15ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME shufflenet_block MODELNAME shufflenet_block RTLNAME shufflenet_block IS_TOP 1
    SUBMODULES {
      {MODELNAME shufflenet_block_mul_16ns_32ns_48_1_1 RTLNAME shufflenet_block_mul_16ns_32ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_16ns_48ns_64_2_1 RTLNAME shufflenet_block_mul_16ns_48ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_6s_6s_6_1_1 RTLNAME shufflenet_block_mul_6s_6s_6_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_udiv_17s_8ns_17_21_1 RTLNAME shufflenet_block_udiv_17s_8ns_17_21_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_31s_17ns_47_1_1 RTLNAME shufflenet_block_mul_31s_17ns_47_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_15ns_32ns_47_1_1 RTLNAME shufflenet_block_mul_15ns_32ns_47_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_8s_8s_16_1_1 RTLNAME shufflenet_block_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_32s_32s_32_1_1 RTLNAME shufflenet_block_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_9s_8s_17_1_1 RTLNAME shufflenet_block_mul_9s_8s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_udiv_32s_15ns_1_36_seq_1 RTLNAME shufflenet_block_udiv_32s_15ns_1_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_urem_32s_15ns_16_36_1 RTLNAME shufflenet_block_urem_32s_15ns_16_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_mul_16ns_16ns_32_4_1 RTLNAME shufflenet_block_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_mul_16ns_15ns_31_4_1 RTLNAME shufflenet_block_mul_mul_16ns_15ns_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_ama_submuladd_6ns_6ns_6s_6ns_6_4_1 RTLNAME shufflenet_block_ama_submuladd_6ns_6ns_6s_6ns_6_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_am_submul_22s_8s_8s_31_4_1 RTLNAME shufflenet_block_am_submul_22s_8s_8s_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_30s_30_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_16s_17_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_17s_17_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_17s_18_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_18s_18_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_18s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_18s_19_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_19s_19_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_19s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_am_submul_11s_8s_8s_20_4_1 RTLNAME shufflenet_block_am_submul_11s_8s_8s_20_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_mul_20s_17ns_32_4_1 RTLNAME shufflenet_block_mul_mul_20s_17ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_8s_8s_8ns_8_4_1 RTLNAME shufflenet_block_mac_muladd_8s_8s_8ns_8_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mul_mul_17s_17ns_33_4_1 RTLNAME shufflenet_block_mul_mul_17s_17ns_33_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_mac_muladd_16ns_16ns_16ns_32_4_1 RTLNAME shufflenet_block_mac_muladd_16ns_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_conv_branch_V_RAM_S2P_BRAM_1R1W RTLNAME shufflenet_block_conv_branch_V_RAM_S2P_BRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_shuffle_temp_V_RAM_S2P_BRAM_1R1W RTLNAME shufflenet_block_shuffle_temp_V_RAM_S2P_BRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME shufflenet_block_gmem_in_m_axi RTLNAME shufflenet_block_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_weights1_m_axi RTLNAME shufflenet_block_gmem_weights1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_weights2_m_axi RTLNAME shufflenet_block_gmem_weights2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_weights3_m_axi RTLNAME shufflenet_block_gmem_weights3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_bn1_m_axi RTLNAME shufflenet_block_gmem_bn1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_bn2_m_axi RTLNAME shufflenet_block_gmem_bn2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_bn3_m_axi RTLNAME shufflenet_block_gmem_bn3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_gmem_out_m_axi RTLNAME shufflenet_block_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME shufflenet_block_control_s_axi RTLNAME shufflenet_block_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
