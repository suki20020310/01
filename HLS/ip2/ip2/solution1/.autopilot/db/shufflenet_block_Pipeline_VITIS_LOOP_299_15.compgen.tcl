# This script segment is generated automatically by AutoPilot

set name shufflenet_block_mul_15ns_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 16 \
    name gmem_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_out \
    op interface \
    ports { m_axi_gmem_out_AWVALID { O 1 bit } m_axi_gmem_out_AWREADY { I 1 bit } m_axi_gmem_out_AWADDR { O 64 vector } m_axi_gmem_out_AWID { O 1 vector } m_axi_gmem_out_AWLEN { O 32 vector } m_axi_gmem_out_AWSIZE { O 3 vector } m_axi_gmem_out_AWBURST { O 2 vector } m_axi_gmem_out_AWLOCK { O 2 vector } m_axi_gmem_out_AWCACHE { O 4 vector } m_axi_gmem_out_AWPROT { O 3 vector } m_axi_gmem_out_AWQOS { O 4 vector } m_axi_gmem_out_AWREGION { O 4 vector } m_axi_gmem_out_AWUSER { O 1 vector } m_axi_gmem_out_WVALID { O 1 bit } m_axi_gmem_out_WREADY { I 1 bit } m_axi_gmem_out_WDATA { O 8 vector } m_axi_gmem_out_WSTRB { O 1 vector } m_axi_gmem_out_WLAST { O 1 bit } m_axi_gmem_out_WID { O 1 vector } m_axi_gmem_out_WUSER { O 1 vector } m_axi_gmem_out_ARVALID { O 1 bit } m_axi_gmem_out_ARREADY { I 1 bit } m_axi_gmem_out_ARADDR { O 64 vector } m_axi_gmem_out_ARID { O 1 vector } m_axi_gmem_out_ARLEN { O 32 vector } m_axi_gmem_out_ARSIZE { O 3 vector } m_axi_gmem_out_ARBURST { O 2 vector } m_axi_gmem_out_ARLOCK { O 2 vector } m_axi_gmem_out_ARCACHE { O 4 vector } m_axi_gmem_out_ARPROT { O 3 vector } m_axi_gmem_out_ARQOS { O 4 vector } m_axi_gmem_out_ARREGION { O 4 vector } m_axi_gmem_out_ARUSER { O 1 vector } m_axi_gmem_out_RVALID { I 1 bit } m_axi_gmem_out_RREADY { O 1 bit } m_axi_gmem_out_RDATA { I 8 vector } m_axi_gmem_out_RLAST { I 1 bit } m_axi_gmem_out_RID { I 1 vector } m_axi_gmem_out_RFIFONUM { I 11 vector } m_axi_gmem_out_RUSER { I 1 vector } m_axi_gmem_out_RRESP { I 2 vector } m_axi_gmem_out_BVALID { I 1 bit } m_axi_gmem_out_BREADY { O 1 bit } m_axi_gmem_out_BRESP { I 2 vector } m_axi_gmem_out_BID { I 1 vector } m_axi_gmem_out_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name bound73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound73 \
    op interface \
    ports { bound73 { I 47 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name h_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h_w \
    op interface \
    ports { h_w { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name ret_V_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_9 \
    op interface \
    ports { ret_V_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name icmp_ln298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln298 \
    op interface \
    ports { icmp_ln298 { I 1 vector } } \
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
set InstName shufflenet_block_flow_control_loop_pipe_sequential_init_U
set CompName shufflenet_block_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix shufflenet_block_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


