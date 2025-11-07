# This script segment is generated automatically by AutoPilot

set name pooling_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name pooling_mul_32s_16ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 3
set name pooling_mul_mul_25s_16ns_32_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 25
set in0_signed 1
set in1_width 16
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {25 1 +} i1 {16 0 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name gmem0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_AWVALID { O 1 bit } m_axi_gmem0_AWREADY { I 1 bit } m_axi_gmem0_AWADDR { O 64 vector } m_axi_gmem0_AWID { O 1 vector } m_axi_gmem0_AWLEN { O 32 vector } m_axi_gmem0_AWSIZE { O 3 vector } m_axi_gmem0_AWBURST { O 2 vector } m_axi_gmem0_AWLOCK { O 2 vector } m_axi_gmem0_AWCACHE { O 4 vector } m_axi_gmem0_AWPROT { O 3 vector } m_axi_gmem0_AWQOS { O 4 vector } m_axi_gmem0_AWREGION { O 4 vector } m_axi_gmem0_AWUSER { O 1 vector } m_axi_gmem0_WVALID { O 1 bit } m_axi_gmem0_WREADY { I 1 bit } m_axi_gmem0_WDATA { O 32 vector } m_axi_gmem0_WSTRB { O 4 vector } m_axi_gmem0_WLAST { O 1 bit } m_axi_gmem0_WID { O 1 vector } m_axi_gmem0_WUSER { O 1 vector } m_axi_gmem0_ARVALID { O 1 bit } m_axi_gmem0_ARREADY { I 1 bit } m_axi_gmem0_ARADDR { O 64 vector } m_axi_gmem0_ARID { O 1 vector } m_axi_gmem0_ARLEN { O 32 vector } m_axi_gmem0_ARSIZE { O 3 vector } m_axi_gmem0_ARBURST { O 2 vector } m_axi_gmem0_ARLOCK { O 2 vector } m_axi_gmem0_ARCACHE { O 4 vector } m_axi_gmem0_ARPROT { O 3 vector } m_axi_gmem0_ARQOS { O 4 vector } m_axi_gmem0_ARREGION { O 4 vector } m_axi_gmem0_ARUSER { O 1 vector } m_axi_gmem0_RVALID { I 1 bit } m_axi_gmem0_RREADY { O 1 bit } m_axi_gmem0_RDATA { I 32 vector } m_axi_gmem0_RLAST { I 1 bit } m_axi_gmem0_RID { I 1 vector } m_axi_gmem0_RFIFONUM { I 9 vector } m_axi_gmem0_RUSER { I 1 vector } m_axi_gmem0_RRESP { I 2 vector } m_axi_gmem0_BVALID { I 1 bit } m_axi_gmem0_BREADY { O 1 bit } m_axi_gmem0_BRESP { I 2 vector } m_axi_gmem0_BID { I 1 vector } m_axi_gmem0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name sub_ln1027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_ln1027 \
    op interface \
    ports { sub_ln1027 { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name H_in_cast4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_in_cast4 \
    op interface \
    ports { H_in_cast4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name mul_ln15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln15 \
    op interface \
    ports { mul_ln15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name kernel_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_size \
    op interface \
    ports { kernel_size { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name conv_i_i530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i530 \
    op interface \
    ports { conv_i_i530 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name sub_ln1496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_ln1496 \
    op interface \
    ports { sub_ln1496 { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name W_in_cast5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_in_cast5 \
    op interface \
    ports { W_in_cast5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name conv_i_i721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i721 \
    op interface \
    ports { conv_i_i721 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name zext_ln1633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1633 \
    op interface \
    ports { zext_ln1633 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name feature_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_feature_in \
    op interface \
    ports { feature_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 32 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName pooling_flow_control_loop_pipe_sequential_init_U
set CompName pooling_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix pooling_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


