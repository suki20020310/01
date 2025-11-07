set moduleName Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7
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
set C_modelName {Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_i_i1015 int 32 regular  }
	{ conv_i_i961 int 16 regular  }
	{ bound int 80 regular  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ local_feature_in_blk_1 float 32 regular {array 144 { 0 0 } 0 1 }  }
	{ local_feature_in_blk float 32 regular {array 144 { 0 0 } 0 1 }  }
	{ C_in int 16 regular  }
	{ tmp22 int 1 regular  }
	{ zext_ln87_2 int 16 regular  }
	{ phi_mul594 int 32 regular  }
	{ mul_ln105_1 int 32 regular  }
	{ add_ln116 int 32 regular  }
	{ feature_in int 64 regular  }
	{ sub_ln131 int 62 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add_i_i1015", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_i_i961", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "feature_in","offset": { "type": "dynamic","port_name": "feature_in","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "local_feature_in_blk_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_feature_in_blk", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_in", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln87_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phi_mul594", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln105_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln116", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feature_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln131", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 3 } 
	{ add_i_i1015 sc_in sc_lv 32 signal 0 } 
	{ conv_i_i961 sc_in sc_lv 16 signal 1 } 
	{ bound sc_in sc_lv 80 signal 2 } 
	{ local_feature_in_blk_1_address0 sc_out sc_lv 8 signal 4 } 
	{ local_feature_in_blk_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_feature_in_blk_1_we0 sc_out sc_logic 1 signal 4 } 
	{ local_feature_in_blk_1_d0 sc_out sc_lv 32 signal 4 } 
	{ local_feature_in_blk_1_address1 sc_out sc_lv 8 signal 4 } 
	{ local_feature_in_blk_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ local_feature_in_blk_1_we1 sc_out sc_logic 1 signal 4 } 
	{ local_feature_in_blk_1_d1 sc_out sc_lv 32 signal 4 } 
	{ local_feature_in_blk_address0 sc_out sc_lv 8 signal 5 } 
	{ local_feature_in_blk_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_feature_in_blk_we0 sc_out sc_logic 1 signal 5 } 
	{ local_feature_in_blk_d0 sc_out sc_lv 32 signal 5 } 
	{ local_feature_in_blk_address1 sc_out sc_lv 8 signal 5 } 
	{ local_feature_in_blk_ce1 sc_out sc_logic 1 signal 5 } 
	{ local_feature_in_blk_we1 sc_out sc_logic 1 signal 5 } 
	{ local_feature_in_blk_d1 sc_out sc_lv 32 signal 5 } 
	{ C_in sc_in sc_lv 16 signal 6 } 
	{ tmp22 sc_in sc_lv 1 signal 7 } 
	{ zext_ln87_2 sc_in sc_lv 16 signal 8 } 
	{ phi_mul594 sc_in sc_lv 32 signal 9 } 
	{ mul_ln105_1 sc_in sc_lv 32 signal 10 } 
	{ add_ln116 sc_in sc_lv 32 signal 11 } 
	{ feature_in sc_in sc_lv 64 signal 12 } 
	{ sub_ln131 sc_in sc_lv 62 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "add_i_i1015", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_i_i1015", "role": "default" }} , 
 	{ "name": "conv_i_i961", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_i_i961", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "local_feature_in_blk_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "address0" }} , 
 	{ "name": "local_feature_in_blk_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "ce0" }} , 
 	{ "name": "local_feature_in_blk_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "we0" }} , 
 	{ "name": "local_feature_in_blk_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "d0" }} , 
 	{ "name": "local_feature_in_blk_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "address1" }} , 
 	{ "name": "local_feature_in_blk_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "ce1" }} , 
 	{ "name": "local_feature_in_blk_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "we1" }} , 
 	{ "name": "local_feature_in_blk_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_feature_in_blk_1", "role": "d1" }} , 
 	{ "name": "local_feature_in_blk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "address0" }} , 
 	{ "name": "local_feature_in_blk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "ce0" }} , 
 	{ "name": "local_feature_in_blk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "we0" }} , 
 	{ "name": "local_feature_in_blk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "d0" }} , 
 	{ "name": "local_feature_in_blk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "address1" }} , 
 	{ "name": "local_feature_in_blk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "ce1" }} , 
 	{ "name": "local_feature_in_blk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "we1" }} , 
 	{ "name": "local_feature_in_blk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_feature_in_blk", "role": "d1" }} , 
 	{ "name": "C_in", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_in", "role": "default" }} , 
 	{ "name": "tmp22", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp22", "role": "default" }} , 
 	{ "name": "zext_ln87_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln87_2", "role": "default" }} , 
 	{ "name": "phi_mul594", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_mul594", "role": "default" }} , 
 	{ "name": "mul_ln105_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln105_1", "role": "default" }} , 
 	{ "name": "add_ln116", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln116", "role": "default" }} , 
 	{ "name": "feature_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_in", "role": "default" }} , 
 	{ "name": "sub_ln131", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sub_ln131", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_i_i1015", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i961", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "local_feature_in_blk_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_feature_in_blk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp22", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln87_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_mul594", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln105_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln116", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln131", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_116_6_VITIS_LOOP_117_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7 {
		add_i_i1015 {Type I LastRead 0 FirstWrite -1}
		conv_i_i961 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 12 FirstWrite -1}
		local_feature_in_blk_1 {Type O LastRead -1 FirstWrite 2}
		local_feature_in_blk {Type O LastRead -1 FirstWrite 2}
		C_in {Type I LastRead 0 FirstWrite -1}
		tmp22 {Type I LastRead 0 FirstWrite -1}
		zext_ln87_2 {Type I LastRead 0 FirstWrite -1}
		phi_mul594 {Type I LastRead 0 FirstWrite -1}
		mul_ln105_1 {Type I LastRead 0 FirstWrite -1}
		add_ln116 {Type I LastRead 0 FirstWrite -1}
		feature_in {Type I LastRead 0 FirstWrite -1}
		sub_ln131 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_i_i1015 { ap_none {  { add_i_i1015 in_data 0 32 } } }
	conv_i_i961 { ap_none {  { conv_i_i961 in_data 0 16 } } }
	bound { ap_none {  { bound in_data 0 80 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 9 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	local_feature_in_blk_1 { ap_memory {  { local_feature_in_blk_1_address0 mem_address 1 8 }  { local_feature_in_blk_1_ce0 mem_ce 1 1 }  { local_feature_in_blk_1_we0 mem_we 1 1 }  { local_feature_in_blk_1_d0 mem_din 1 32 }  { local_feature_in_blk_1_address1 MemPortADDR2 1 8 }  { local_feature_in_blk_1_ce1 MemPortCE2 1 1 }  { local_feature_in_blk_1_we1 MemPortWE2 1 1 }  { local_feature_in_blk_1_d1 MemPortDIN2 1 32 } } }
	local_feature_in_blk { ap_memory {  { local_feature_in_blk_address0 mem_address 1 8 }  { local_feature_in_blk_ce0 mem_ce 1 1 }  { local_feature_in_blk_we0 mem_we 1 1 }  { local_feature_in_blk_d0 mem_din 1 32 }  { local_feature_in_blk_address1 MemPortADDR2 1 8 }  { local_feature_in_blk_ce1 MemPortCE2 1 1 }  { local_feature_in_blk_we1 MemPortWE2 1 1 }  { local_feature_in_blk_d1 MemPortDIN2 1 32 } } }
	C_in { ap_none {  { C_in in_data 0 16 } } }
	tmp22 { ap_none {  { tmp22 in_data 0 1 } } }
	zext_ln87_2 { ap_none {  { zext_ln87_2 in_data 0 16 } } }
	phi_mul594 { ap_none {  { phi_mul594 in_data 0 32 } } }
	mul_ln105_1 { ap_none {  { mul_ln105_1 in_data 0 32 } } }
	add_ln116 { ap_none {  { add_ln116 in_data 0 32 } } }
	feature_in { ap_none {  { feature_in in_data 0 64 } } }
	sub_ln131 { ap_none {  { sub_ln131 in_data 0 62 } } }
}
