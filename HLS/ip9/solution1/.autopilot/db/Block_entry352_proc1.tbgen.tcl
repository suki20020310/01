set moduleName Block_entry352_proc1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Block_entry352_proc1}
set C_modelType { void 0 }
set C_modelArgList {
	{ padding int 8 regular  }
	{ H_in int 16 regular  }
	{ kernel_size int 8 regular  }
	{ stride int 8 regular  }
	{ W_in int 16 regular  }
	{ conv_type int 2 regular  }
	{ C_out int 16 regular  }
	{ bn_var int 64 regular  }
	{ bn_gamma int 64 regular  }
	{ C_in int 16 regular  }
	{ gmem3 int 32 regular {axi_master 0}  }
	{ bn_beta int 64 regular  }
	{ bn_mean int 64 regular  }
	{ conv_kernel int 64 regular  }
	{ gmem2 int 32 regular {axi_master 0}  }
	{ feature_out int 64 regular  }
	{ gmem0 int 32 regular {axi_master 1}  }
	{ feature_in int 64 regular  }
	{ gmem1 int 32 regular {axi_master 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "H_in", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_size", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "W_in", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_type", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "C_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bn_var", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bn_gamma", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C_in", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bn_mean","offset": { "type": "dynamic","port_name": "bn_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn_var","offset": { "type": "dynamic","port_name": "bn_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn_gamma","offset": { "type": "dynamic","port_name": "bn_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn_beta","offset": { "type": "dynamic","port_name": "bn_beta","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bn_beta", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bn_mean", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv_kernel", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "conv_kernel","offset": { "type": "dynamic","port_name": "conv_kernel","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "feature_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "feature_out","offset": { "type": "dynamic","port_name": "feature_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "feature_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "feature_in","offset": { "type": "dynamic","port_name": "feature_in","bundle": "control"},"direction": "READONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 206
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ padding sc_in sc_lv 8 signal 0 } 
	{ H_in sc_in sc_lv 16 signal 1 } 
	{ kernel_size sc_in sc_lv 8 signal 2 } 
	{ stride sc_in sc_lv 8 signal 3 } 
	{ W_in sc_in sc_lv 16 signal 4 } 
	{ conv_type sc_in sc_lv 2 signal 5 } 
	{ C_out sc_in sc_lv 16 signal 6 } 
	{ bn_var sc_in sc_lv 64 signal 7 } 
	{ bn_gamma sc_in sc_lv 64 signal 8 } 
	{ C_in sc_in sc_lv 16 signal 9 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem3_RFIFONUM sc_in sc_lv 9 signal 10 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 10 } 
	{ bn_beta sc_in sc_lv 64 signal 11 } 
	{ bn_mean sc_in sc_lv 64 signal 12 } 
	{ conv_kernel sc_in sc_lv 64 signal 13 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 14 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 14 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem2_RFIFONUM sc_in sc_lv 9 signal 14 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 14 } 
	{ feature_out sc_in sc_lv 64 signal 15 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 16 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 16 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 16 } 
	{ feature_in sc_in sc_lv 64 signal 17 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 18 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 9 signal 18 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "padding", "role": "default" }} , 
 	{ "name": "H_in", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_in", "role": "default" }} , 
 	{ "name": "kernel_size", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_size", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "W_in", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "W_in", "role": "default" }} , 
 	{ "name": "conv_type", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "conv_type", "role": "default" }} , 
 	{ "name": "C_out", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_out", "role": "default" }} , 
 	{ "name": "bn_var", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_var", "role": "default" }} , 
 	{ "name": "bn_gamma", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_gamma", "role": "default" }} , 
 	{ "name": "C_in", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_in", "role": "default" }} , 
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
 	{ "name": "bn_beta", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_beta", "role": "default" }} , 
 	{ "name": "bn_mean", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bn_mean", "role": "default" }} , 
 	{ "name": "conv_kernel", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_kernel", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "feature_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_out", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "feature_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_in", "role": "default" }} , 
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
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "29", "31", "33", "38", "41", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95"],
		"CDFG" : "Block_entry352_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn_var", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn_gamma", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1_fu_1345", "Port" : "gmem3", "Inst_start_state" : "22", "Inst_end_state" : "110"},
					{"ID" : "27", "SubInstance" : "grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18_fu_1331", "Port" : "gmem3", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "bn_beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn_mean", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401", "Port" : "gmem2", "Inst_start_state" : "132", "Inst_end_state" : "134"}]},
			{"Name" : "feature_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "feature_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7_fu_1381", "Port" : "gmem1", "Inst_start_state" : "132", "Inst_end_state" : "133"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_236_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state34"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_235_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_251_27", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state55", "LastState" : ["ap_ST_fsm_state82"], "QuitState" : ["ap_ST_fsm_state55"], "PreState" : ["ap_ST_fsm_state54"], "PostState" : ["ap_ST_fsm_state53"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_250_26", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state53", "LastState" : ["ap_ST_fsm_state55"], "QuitState" : ["ap_ST_fsm_state53"], "PreState" : ["ap_ST_fsm_state52"], "PostState" : ["ap_ST_fsm_state83"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_244_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state51", "LastState" : ["ap_ST_fsm_state109"], "QuitState" : ["ap_ST_fsm_state51"], "PreState" : ["ap_ST_fsm_state50"], "PostState" : ["ap_ST_fsm_state49"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_243_24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state49", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state49"], "PreState" : ["ap_ST_fsm_state48"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state26", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state26"], "PreState" : ["ap_ST_fsm_state25"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_219_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state25", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state25"], "PreState" : ["ap_ST_fsm_state24"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_213_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state22", "ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state116"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_115_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state132", "LastState" : ["ap_ST_fsm_state133"], "QuitState" : ["ap_ST_fsm_state132"], "PreState" : ["ap_ST_fsm_state126", "ap_ST_fsm_state131"], "PostState" : ["ap_ST_fsm_state134"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_170_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state143", "LastState" : ["ap_ST_fsm_state158"], "QuitState" : ["ap_ST_fsm_state143"], "PreState" : ["ap_ST_fsm_state142"], "PostState" : ["ap_ST_fsm_state141"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state141", "LastState" : ["ap_ST_fsm_state143"], "QuitState" : ["ap_ST_fsm_state141"], "PreState" : ["ap_ST_fsm_state140"], "PostState" : ["ap_ST_fsm_state140"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_168_15", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state140", "LastState" : ["ap_ST_fsm_state141"], "QuitState" : ["ap_ST_fsm_state140"], "PreState" : ["ap_ST_fsm_state139"], "PostState" : ["ap_ST_fsm_state159"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_155_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state139", "LastState" : ["ap_ST_fsm_state193"], "QuitState" : ["ap_ST_fsm_state139"], "PreState" : ["ap_ST_fsm_state138"], "PostState" : ["ap_ST_fsm_state194"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_154_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state136", "LastState" : ["ap_ST_fsm_state198"], "QuitState" : ["ap_ST_fsm_state136"], "PreState" : ["ap_ST_fsm_state135"], "PostState" : ["ap_ST_fsm_state135"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_153_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state135", "LastState" : ["ap_ST_fsm_state136"], "QuitState" : ["ap_ST_fsm_state135"], "PreState" : ["ap_ST_fsm_state134"], "PostState" : ["ap_ST_fsm_state125"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_99_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state125", "LastState" : ["ap_ST_fsm_state135"], "QuitState" : ["ap_ST_fsm_state125"], "PreState" : ["ap_ST_fsm_state124"], "PostState" : ["ap_ST_fsm_state123"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_93_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state123", "LastState" : ["ap_ST_fsm_state125"], "QuitState" : ["ap_ST_fsm_state123"], "PreState" : ["ap_ST_fsm_state116", "ap_ST_fsm_state122"], "PostState" : ["ap_ST_fsm_state116"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state116", "LastState" : ["ap_ST_fsm_state123"], "QuitState" : ["ap_ST_fsm_state116"], "PreState" : ["ap_ST_fsm_state115", "ap_ST_fsm_state24"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_params_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_kernel_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_kernel_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_kernel_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_kernel12_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_feature_in_blk_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_feature_in_blk_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_3_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_4_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_5_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_6_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_7_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_8_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_9_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_10_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_conv_kernel_blk_11_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18_fu_1331", "Parent" : "0", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18_fu_1331.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1_fu_1345", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1",
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
			{"Name" : "bn_params", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bn_params_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln79", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln79_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter41", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter41", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1_fu_1345.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_3_fu_1359", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "Block_entry352_proc1_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290", "EstimateLatencyMax" : "290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_feature_in_blk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_feature_in_blk_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_3_fu_1359.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_4_fu_1365", "Parent" : "0", "Child" : ["34", "35", "36", "37"],
		"CDFG" : "Block_entry352_proc1_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "588", "EstimateLatencyMax" : "588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_conv_kernel_blk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_11", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_4_fu_1365.mul_7ns_9ns_15_1_1_U29", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_4_fu_1365.urem_7ns_5ns_4_11_1_U30", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_4_fu_1365.mul_4ns_6ns_9_1_1_U31", "Parent" : "33"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_4_fu_1365.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7_fu_1381", "Parent" : "0", "Child" : ["39", "40"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7_fu_1381.mul_32s_16ns_32_1_1_U47", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_117_7_fu_1381.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46"],
		"CDFG" : "Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11",
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
			{"Name" : "zext_ln87_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln87_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln87_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln1027_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound57", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_conv_kernel_blk_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_conv_kernel_blk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln87_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1027_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln87_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1027_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_kernel", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_138_8_VITIS_LOOP_140_10_VITIS_LOOP_141_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401.mul_32s_32s_32_1_1_U63", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401.mul_32s_32s_32_1_1_U64", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401.mac_muladd_16ns_16ns_32ns_32_4_1_U65", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401.mac_muladd_16ns_16ns_32ns_32_4_1_U66", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11_fu_1401.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U93", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U94", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U95", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U96", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_7_full_dsp_1_U97", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U98", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_18ns_9ns_16_22_seq_1_U99", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_18ns_9ns_16_22_seq_1_U100", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U101", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U103", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U108", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U109", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U110", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U112", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_29s_14ns_29_1_1_U113", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_5_1_U114", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30s_30s_30_1_1_U115", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24ns_30s_30_1_1_U116", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_18ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_16ns_80_5_1_U121", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U122", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U123", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U124", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U125", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U126", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U127", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U128", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U129", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U130", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U131", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U132", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U133", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_24ns_17s_32_4_1_U134", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U135", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U136", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U137", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U138", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U139", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_31_no_dsp_1_U140", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_30_no_dsp_1_U141", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_entry352_proc1 {
		padding {Type I LastRead 0 FirstWrite -1}
		H_in {Type I LastRead 0 FirstWrite -1}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		W_in {Type I LastRead 0 FirstWrite -1}
		conv_type {Type I LastRead 21 FirstWrite -1}
		C_out {Type I LastRead 21 FirstWrite -1}
		bn_var {Type I LastRead 21 FirstWrite -1}
		bn_gamma {Type I LastRead 21 FirstWrite -1}
		C_in {Type I LastRead 21 FirstWrite -1}
		gmem3 {Type I LastRead 72 FirstWrite -1}
		bn_beta {Type I LastRead 21 FirstWrite -1}
		bn_mean {Type I LastRead 21 FirstWrite -1}
		conv_kernel {Type I LastRead 21 FirstWrite -1}
		gmem2 {Type I LastRead 35 FirstWrite -1}
		feature_out {Type I LastRead 21 FirstWrite -1}
		gmem0 {Type O LastRead 72 FirstWrite 71}
		feature_in {Type I LastRead 21 FirstWrite -1}
		gmem1 {Type I LastRead 61 FirstWrite -1}}
	Block_entry352_proc1_Pipeline_VITIS_LOOP_205_18 {
		bn_params_4 {Type O LastRead -1 FirstWrite 83}
		bn_params_5 {Type O LastRead -1 FirstWrite 83}
		bn_params_6 {Type O LastRead -1 FirstWrite 83}
		bn_params_7 {Type O LastRead -1 FirstWrite 83}
		C_out {Type I LastRead 0 FirstWrite -1}
		sext_ln205 {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}
		sext_ln205_1 {Type I LastRead 0 FirstWrite -1}}
	Block_entry352_proc1_Pipeline_VITIS_LOOP_79_1 {
		bn_params {Type O LastRead -1 FirstWrite 83}
		bn_params_1 {Type O LastRead -1 FirstWrite 83}
		bn_params_2 {Type O LastRead -1 FirstWrite 83}
		bn_params_3 {Type O LastRead -1 FirstWrite 83}
		C_out {Type I LastRead 0 FirstWrite -1}
		sext_ln79 {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}
		sext_ln79_1 {Type I LastRead 0 FirstWrite -1}}
	Block_entry352_proc1_Pipeline_3 {
		local_feature_in_blk {Type O LastRead -1 FirstWrite 1}
		local_feature_in_blk_1 {Type O LastRead -1 FirstWrite 1}}
	Block_entry352_proc1_Pipeline_4 {
		local_conv_kernel_blk {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_1 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_2 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_3 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_4 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_5 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_6 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_7 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_8 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_9 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_10 {Type O LastRead -1 FirstWrite 12}
		local_conv_kernel_blk_11 {Type O LastRead -1 FirstWrite 12}}
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
		sub_ln131 {Type I LastRead 0 FirstWrite -1}}
	Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11 {
		zext_ln87_21 {Type I LastRead 0 FirstWrite -1}
		mul_ln87_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln87_13 {Type I LastRead 0 FirstWrite -1}
		shl_ln1027_1 {Type I LastRead 0 FirstWrite -1}
		bound57 {Type I LastRead 0 FirstWrite -1}
		local_conv_kernel_blk_11 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_10 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_9 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_8 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_7 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_6 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_5 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_4 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_3 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_2 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk_1 {Type O LastRead -1 FirstWrite 13}
		local_conv_kernel_blk {Type O LastRead -1 FirstWrite 13}
		gmem2 {Type I LastRead 12 FirstWrite -1}
		zext_ln87_19 {Type I LastRead 0 FirstWrite -1}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		icmp_ln1027_16 {Type I LastRead 0 FirstWrite -1}
		mul_ln87_4 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1027_17 {Type I LastRead 0 FirstWrite -1}
		conv_kernel {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	padding { ap_none {  { padding in_data 0 8 } } }
	H_in { ap_none {  { H_in in_data 0 16 } } }
	kernel_size { ap_none {  { kernel_size in_data 0 8 } } }
	stride { ap_none {  { stride in_data 0 8 } } }
	W_in { ap_none {  { W_in in_data 0 16 } } }
	conv_type { ap_none {  { conv_type in_data 0 2 } } }
	C_out { ap_none {  { C_out in_data 0 16 } } }
	bn_var { ap_none {  { bn_var in_data 0 64 } } }
	bn_gamma { ap_none {  { bn_gamma in_data 0 64 } } }
	C_in { ap_none {  { C_in in_data 0 16 } } }
	 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 32 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 32 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RFIFONUM LEN 0 9 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	bn_beta { ap_none {  { bn_beta in_data 0 64 } } }
	bn_mean { ap_none {  { bn_mean in_data 0 64 } } }
	conv_kernel { ap_none {  { conv_kernel in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 32 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 32 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RFIFONUM LEN 0 9 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	feature_out { ap_none {  { feature_out in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	feature_in { ap_none {  { feature_in in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 9 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
}
