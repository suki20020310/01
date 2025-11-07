set SynModuleInfo {
  {SRCNAME fully_connected MODELNAME fully_connected RTLNAME fully_connected IS_TOP 1
    SUBMODULES {
      {MODELNAME fully_connected_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME fully_connected_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fully_connected_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_gmem0_m_axi RTLNAME fully_connected_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fully_connected_control_s_axi RTLNAME fully_connected_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
