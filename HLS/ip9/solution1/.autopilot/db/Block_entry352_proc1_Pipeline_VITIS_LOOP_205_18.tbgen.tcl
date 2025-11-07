set moduleName Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18}
set C_modelType { void 0 }
set C_modelArgList {
	{ bn_params_4 double 64 regular {array 128 { 0 3 } 0 1 }  }
	{ bn_params_5 double 64 regular {array 128 { 0 3 } 0 1 }  }
	{ bn_params_6 double 64 regular {array 128 { 0 3 } 0 1 }  }
	{ bn_params_7 double 64 regular {array 128 { 0 3 } 0 1 }  }
	{ C_out int 16 regular  }
	{ sext_ln205 int 62 regular  }
	{ gmem3 int 32 regular {axi_master 0}  }
	{ sext_ln205_1 int 62 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bn_params_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bn_params_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bn_params_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bn_params_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln205", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bn_mean","offset": { "type": "dynamic","port_name": "bn_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn_var","offset": { "type": "dynamic","port_name": "bn_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn_gamma","offset": { "type": "dynamic","port_name": "bn_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn_beta","offset": { "type": "dynamic","port_name": "bn_beta","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln205_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 91
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 6 } 
	{ bn_params_4_address0 sc_out sc_lv 7 signal 0 } 
	{ bn_params_4_ce0 sc_out sc_logic 1 signal 0 } 
	{ bn_params_4_we0 sc_out sc_logic 1 signal 0 } 
	{ bn_params_4_d0 sc_out sc_lv 64 signal 0 } 
	{ bn_params_5_address0 sc_out sc_lv 7 signal 1 } 
	{ bn_params_5_ce0 sc_out sc_logic 1 signal 1 } 
	{ bn_params_5_we0 sc_out sc_logic 1 signal 1 } 
	{ bn_params_5_d0 sc_out sc_lv 64 signal 1 } 
	{ bn_params_6_address0 sc_out sc_lv 7 signal 2 } 
	{ bn_params_6_ce0 sc_out sc_logic 1 signal 2 } 
	{ bn_params_6_we0 sc_out sc_logic 1 signal 2 } 
	{ bn_params_6_d0 sc_out sc_lv 64 signal 2 } 
	{ bn_params_7_address0 sc_out sc_lv 7 signal 3 } 
	{ bn_params_7_ce0 sc_out sc_logic 1 signal 3 } 
	{ bn_params_7_we0 sc_out sc_logic 1 signal 3 } 
	{ bn_params_7_d0 sc_out sc_lv 64 signal 3 } 
	{ C_out sc_in sc_lv 16 signal 4 } 
	{ sext_ln205 sc_in sc_lv 62 signal 5 } 
	{ sext_ln205_1 sc_in sc_lv 62 signal 7 } 
	{ grp_fu_5141_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5141_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5141_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_5141_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_5141_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1433_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1433_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1433_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1452_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1452_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1452_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1452_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_5145_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_5145_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_5145_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_5145_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_5149_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_5149_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_5149_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_5149_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "bn_params_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bn_params_4", "role": "address0" }} , 
 	{ "name": "bn_params_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_4", "role": "ce0" }} , 
 	{ "name": "bn_params_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_4", "role": "we0" }} , 
 	{ "name": "bn_params_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_params_4", "role": "d0" }} , 
 	{ "name": "bn_params_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bn_params_5", "role": "address0" }} , 
 	{ "name": "bn_params_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_5", "role": "ce0" }} , 
 	{ "name": "bn_params_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_5", "role": "we0" }} , 
 	{ "name": "bn_params_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_params_5", "role": "d0" }} , 
 	{ "name": "bn_params_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bn_params_6", "role": "address0" }} , 
 	{ "name": "bn_params_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_6", "role": "ce0" }} , 
 	{ "name": "bn_params_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_6", "role": "we0" }} , 
 	{ "name": "bn_params_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_params_6", "role": "d0" }} , 
 	{ "name": "bn_params_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bn_params_7", "role": "address0" }} , 
 	{ "name": "bn_params_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_7", "role": "ce0" }} , 
 	{ "name": "bn_params_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bn_params_7", "role": "we0" }} , 
 	{ "name": "bn_params_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_params_7", "role": "d0" }} , 
 	{ "name": "C_out", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_out", "role": "default" }} , 
 	{ "name": "sext_ln205", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln205", "role": "default" }} , 
 	{ "name": "sext_ln205_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln205_1", "role": "default" }} , 
 	{ "name": "grp_fu_5141_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5141_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5141_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5141_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5141_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_5141_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_5141_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5141_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5141_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5141_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1433_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1433_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1433_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1452_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1452_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1452_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1452_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_5145_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5145_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5145_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5145_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5145_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5145_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5145_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5145_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_5149_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5149_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5149_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5149_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5149_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_5149_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5149_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5149_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "131153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bn_params_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln205", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln205_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_18", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter41", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter41", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18 {
		bn_params_4 {Type O LastRead -1 FirstWrite 83}
		bn_params_5 {Type O LastRead -1 FirstWrite 83}
		bn_params_6 {Type O LastRead -1 FirstWrite 83}
		bn_params_7 {Type O LastRead -1 FirstWrite 83}
		C_out {Type I LastRead 0 FirstWrite -1}
		sext_ln205 {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}
		sext_ln205_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "131153"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "131153"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bn_params_4 { ap_memory {  { bn_params_4_address0 mem_address 1 7 }  { bn_params_4_ce0 mem_ce 1 1 }  { bn_params_4_we0 mem_we 1 1 }  { bn_params_4_d0 mem_din 1 64 } } }
	bn_params_5 { ap_memory {  { bn_params_5_address0 mem_address 1 7 }  { bn_params_5_ce0 mem_ce 1 1 }  { bn_params_5_we0 mem_we 1 1 }  { bn_params_5_d0 mem_din 1 64 } } }
	bn_params_6 { ap_memory {  { bn_params_6_address0 mem_address 1 7 }  { bn_params_6_ce0 mem_ce 1 1 }  { bn_params_6_we0 mem_we 1 1 }  { bn_params_6_d0 mem_din 1 64 } } }
	bn_params_7 { ap_memory {  { bn_params_7_address0 mem_address 1 7 }  { bn_params_7_ce0 mem_ce 1 1 }  { bn_params_7_we0 mem_we 1 1 }  { bn_params_7_d0 mem_din 1 64 } } }
	C_out { ap_none {  { C_out in_data 0 16 } } }
	sext_ln205 { ap_none {  { sext_ln205 in_data 0 62 } } }
	 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 32 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 32 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RFIFONUM LEN 0 9 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	sext_ln205_1 { ap_none {  { sext_ln205_1 in_data 0 62 } } }
}
