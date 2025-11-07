# This script segment is generated automatically by AutoPilot

set name initial_conv_bn_relu_udiv_32ns_16ns_17_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {udiv} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
}


set name initial_conv_bn_relu_urem_32ns_16ns_32_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
}


set name initial_conv_bn_relu_udiv_16ns_8ns_9_20_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {udiv} IMPL {auto} LATENCY 19 ALLOW_PRAGMA 1
}


set name initial_conv_bn_relu_urem_16ns_8ns_16_20_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 19 ALLOW_PRAGMA 1
}


set name initial_conv_bn_relu_mul_16ns_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name initial_conv_bn_relu_mul_32s_16ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 7
set name initial_conv_bn_relu_mac_muladd_19s_16ns_18ns_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 19
set in0_signed 1
set in1_width 16
set in1_signed 0
set in2_width 18
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {19 1 +} i1 {16 0 +} m {32 1 +} i2 {18 0 +} p {32 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
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
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 8
set name initial_conv_bn_relu_mac_muladd_8s_8s_32s_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {8 1 +} i1 {8 1 +} m {16 1 +} i2 {32 1 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
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
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
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
    id 17 \
    name gmem0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_AWVALID { O 1 bit } m_axi_gmem0_AWREADY { I 1 bit } m_axi_gmem0_AWADDR { O 64 vector } m_axi_gmem0_AWID { O 1 vector } m_axi_gmem0_AWLEN { O 32 vector } m_axi_gmem0_AWSIZE { O 3 vector } m_axi_gmem0_AWBURST { O 2 vector } m_axi_gmem0_AWLOCK { O 2 vector } m_axi_gmem0_AWCACHE { O 4 vector } m_axi_gmem0_AWPROT { O 3 vector } m_axi_gmem0_AWQOS { O 4 vector } m_axi_gmem0_AWREGION { O 4 vector } m_axi_gmem0_AWUSER { O 1 vector } m_axi_gmem0_WVALID { O 1 bit } m_axi_gmem0_WREADY { I 1 bit } m_axi_gmem0_WDATA { O 8 vector } m_axi_gmem0_WSTRB { O 1 vector } m_axi_gmem0_WLAST { O 1 bit } m_axi_gmem0_WID { O 1 vector } m_axi_gmem0_WUSER { O 1 vector } m_axi_gmem0_ARVALID { O 1 bit } m_axi_gmem0_ARREADY { I 1 bit } m_axi_gmem0_ARADDR { O 64 vector } m_axi_gmem0_ARID { O 1 vector } m_axi_gmem0_ARLEN { O 32 vector } m_axi_gmem0_ARSIZE { O 3 vector } m_axi_gmem0_ARBURST { O 2 vector } m_axi_gmem0_ARLOCK { O 2 vector } m_axi_gmem0_ARCACHE { O 4 vector } m_axi_gmem0_ARPROT { O 3 vector } m_axi_gmem0_ARQOS { O 4 vector } m_axi_gmem0_ARREGION { O 4 vector } m_axi_gmem0_ARUSER { O 1 vector } m_axi_gmem0_RVALID { I 1 bit } m_axi_gmem0_RREADY { O 1 bit } m_axi_gmem0_RDATA { I 8 vector } m_axi_gmem0_RLAST { I 1 bit } m_axi_gmem0_RID { I 1 vector } m_axi_gmem0_RFIFONUM { I 11 vector } m_axi_gmem0_RUSER { I 1 vector } m_axi_gmem0_RRESP { I 2 vector } m_axi_gmem0_BVALID { I 1 bit } m_axi_gmem0_BREADY { O 1 bit } m_axi_gmem0_BRESP { I 2 vector } m_axi_gmem0_BID { I 1 vector } m_axi_gmem0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name mul_ln70_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln70_2 \
    op interface \
    ports { mul_ln70_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name conv_i4_i624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i4_i624 \
    op interface \
    ports { conv_i4_i624 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name K_cast6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_cast6 \
    op interface \
    ports { K_cast6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name zext_ln82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln82 \
    op interface \
    ports { zext_ln82 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name zext_ln83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln83 \
    op interface \
    ports { zext_ln83 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name H_in_cast7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_in_cast7 \
    op interface \
    ports { H_in_cast7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name W_in_cast8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_in_cast8 \
    op interface \
    ports { W_in_cast8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name conv_i_i718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i718 \
    op interface \
    ports { conv_i_i718 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name zext_ln102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln102 \
    op interface \
    ports { zext_ln102 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name mul_ln103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln103 \
    op interface \
    ports { mul_ln103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
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
    id 29 \
    name conv_kernel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_kernel \
    op interface \
    ports { conv_kernel { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name sum_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_V_out \
    op interface \
    ports { sum_V_out { O 32 vector } sum_V_out_ap_vld { O 1 bit } } \
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
set InstName initial_conv_bn_relu_flow_control_loop_pipe_sequential_init_U
set CompName initial_conv_bn_relu_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix initial_conv_bn_relu_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


