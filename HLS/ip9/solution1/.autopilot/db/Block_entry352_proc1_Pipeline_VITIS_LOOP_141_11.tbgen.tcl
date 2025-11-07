set moduleName Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11
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
set C_modelName {Block_entry352_proc1_Pipeline_VITIS_LOOP_141_11}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln87_21 int 17 regular  }
	{ mul_ln87_5 int 32 regular  }
	{ zext_ln87_13 int 16 regular  }
	{ shl_ln1027_1 int 32 regular  }
	{ bound57 int 96 regular  }
	{ local_conv_kernel_blk_11 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_10 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_9 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_8 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_7 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_6 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_5 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_4 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_3 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ gmem2 int 32 regular {axi_master 0}  }
	{ zext_ln87_19 int 16 regular  }
	{ kernel_size int 8 regular  }
	{ icmp_ln1027_16 int 1 regular  }
	{ mul_ln87_4 int 16 regular  }
	{ icmp_ln1027_17 int 1 regular  }
	{ conv_kernel int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln87_21", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln87_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln87_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln1027_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound57", "interface" : "wire", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "conv_kernel","offset": { "type": "dynamic","port_name": "conv_kernel","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln87_19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_size", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1027_16", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln87_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1027_17", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv_kernel", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 111
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 17 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem2_RFIFONUM sc_in sc_lv 9 signal 17 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 17 } 
	{ zext_ln87_21 sc_in sc_lv 17 signal 0 } 
	{ mul_ln87_5 sc_in sc_lv 32 signal 1 } 
	{ zext_ln87_13 sc_in sc_lv 16 signal 2 } 
	{ shl_ln1027_1 sc_in sc_lv 32 signal 3 } 
	{ bound57 sc_in sc_lv 96 signal 4 } 
	{ local_conv_kernel_blk_11_address0 sc_out sc_lv 6 signal 5 } 
	{ local_conv_kernel_blk_11_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_conv_kernel_blk_11_we0 sc_out sc_logic 1 signal 5 } 
	{ local_conv_kernel_blk_11_d0 sc_out sc_lv 32 signal 5 } 
	{ local_conv_kernel_blk_10_address0 sc_out sc_lv 6 signal 6 } 
	{ local_conv_kernel_blk_10_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_conv_kernel_blk_10_we0 sc_out sc_logic 1 signal 6 } 
	{ local_conv_kernel_blk_10_d0 sc_out sc_lv 32 signal 6 } 
	{ local_conv_kernel_blk_9_address0 sc_out sc_lv 6 signal 7 } 
	{ local_conv_kernel_blk_9_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_conv_kernel_blk_9_we0 sc_out sc_logic 1 signal 7 } 
	{ local_conv_kernel_blk_9_d0 sc_out sc_lv 32 signal 7 } 
	{ local_conv_kernel_blk_8_address0 sc_out sc_lv 6 signal 8 } 
	{ local_conv_kernel_blk_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_conv_kernel_blk_8_we0 sc_out sc_logic 1 signal 8 } 
	{ local_conv_kernel_blk_8_d0 sc_out sc_lv 32 signal 8 } 
	{ local_conv_kernel_blk_7_address0 sc_out sc_lv 6 signal 9 } 
	{ local_conv_kernel_blk_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_conv_kernel_blk_7_we0 sc_out sc_logic 1 signal 9 } 
	{ local_conv_kernel_blk_7_d0 sc_out sc_lv 32 signal 9 } 
	{ local_conv_kernel_blk_6_address0 sc_out sc_lv 6 signal 10 } 
	{ local_conv_kernel_blk_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_conv_kernel_blk_6_we0 sc_out sc_logic 1 signal 10 } 
	{ local_conv_kernel_blk_6_d0 sc_out sc_lv 32 signal 10 } 
	{ local_conv_kernel_blk_5_address0 sc_out sc_lv 6 signal 11 } 
	{ local_conv_kernel_blk_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_conv_kernel_blk_5_we0 sc_out sc_logic 1 signal 11 } 
	{ local_conv_kernel_blk_5_d0 sc_out sc_lv 32 signal 11 } 
	{ local_conv_kernel_blk_4_address0 sc_out sc_lv 6 signal 12 } 
	{ local_conv_kernel_blk_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_conv_kernel_blk_4_we0 sc_out sc_logic 1 signal 12 } 
	{ local_conv_kernel_blk_4_d0 sc_out sc_lv 32 signal 12 } 
	{ local_conv_kernel_blk_3_address0 sc_out sc_lv 6 signal 13 } 
	{ local_conv_kernel_blk_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_conv_kernel_blk_3_we0 sc_out sc_logic 1 signal 13 } 
	{ local_conv_kernel_blk_3_d0 sc_out sc_lv 32 signal 13 } 
	{ local_conv_kernel_blk_2_address0 sc_out sc_lv 6 signal 14 } 
	{ local_conv_kernel_blk_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_conv_kernel_blk_2_we0 sc_out sc_logic 1 signal 14 } 
	{ local_conv_kernel_blk_2_d0 sc_out sc_lv 32 signal 14 } 
	{ local_conv_kernel_blk_1_address0 sc_out sc_lv 6 signal 15 } 
	{ local_conv_kernel_blk_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_conv_kernel_blk_1_we0 sc_out sc_logic 1 signal 15 } 
	{ local_conv_kernel_blk_1_d0 sc_out sc_lv 32 signal 15 } 
	{ local_conv_kernel_blk_address0 sc_out sc_lv 6 signal 16 } 
	{ local_conv_kernel_blk_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_conv_kernel_blk_we0 sc_out sc_logic 1 signal 16 } 
	{ local_conv_kernel_blk_d0 sc_out sc_lv 32 signal 16 } 
	{ zext_ln87_19 sc_in sc_lv 16 signal 18 } 
	{ kernel_size sc_in sc_lv 8 signal 19 } 
	{ icmp_ln1027_16 sc_in sc_lv 1 signal 20 } 
	{ mul_ln87_4 sc_in sc_lv 16 signal 21 } 
	{ icmp_ln1027_17 sc_in sc_lv 1 signal 22 } 
	{ conv_kernel sc_in sc_lv 64 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "zext_ln87_21", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "zext_ln87_21", "role": "default" }} , 
 	{ "name": "mul_ln87_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln87_5", "role": "default" }} , 
 	{ "name": "zext_ln87_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln87_13", "role": "default" }} , 
 	{ "name": "shl_ln1027_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln1027_1", "role": "default" }} , 
 	{ "name": "bound57", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "bound57", "role": "default" }} , 
 	{ "name": "local_conv_kernel_blk_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "d0" }} , 
 	{ "name": "zext_ln87_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln87_19", "role": "default" }} , 
 	{ "name": "kernel_size", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_size", "role": "default" }} , 
 	{ "name": "icmp_ln1027_16", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1027_16", "role": "default" }} , 
 	{ "name": "mul_ln87_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul_ln87_4", "role": "default" }} , 
 	{ "name": "icmp_ln1027_17", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1027_17", "role": "default" }} , 
 	{ "name": "conv_kernel", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_kernel", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U63", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U64", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U65", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U66", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln87_21 { ap_none {  { zext_ln87_21 in_data 0 17 } } }
	mul_ln87_5 { ap_none {  { mul_ln87_5 in_data 0 32 } } }
	zext_ln87_13 { ap_none {  { zext_ln87_13 in_data 0 16 } } }
	shl_ln1027_1 { ap_none {  { shl_ln1027_1 in_data 0 32 } } }
	bound57 { ap_none {  { bound57 in_data 0 96 } } }
	local_conv_kernel_blk_11 { ap_memory {  { local_conv_kernel_blk_11_address0 mem_address 1 6 }  { local_conv_kernel_blk_11_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_11_we0 mem_we 1 1 }  { local_conv_kernel_blk_11_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_10 { ap_memory {  { local_conv_kernel_blk_10_address0 mem_address 1 6 }  { local_conv_kernel_blk_10_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_10_we0 mem_we 1 1 }  { local_conv_kernel_blk_10_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_9 { ap_memory {  { local_conv_kernel_blk_9_address0 mem_address 1 6 }  { local_conv_kernel_blk_9_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_9_we0 mem_we 1 1 }  { local_conv_kernel_blk_9_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_8 { ap_memory {  { local_conv_kernel_blk_8_address0 mem_address 1 6 }  { local_conv_kernel_blk_8_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_8_we0 mem_we 1 1 }  { local_conv_kernel_blk_8_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_7 { ap_memory {  { local_conv_kernel_blk_7_address0 mem_address 1 6 }  { local_conv_kernel_blk_7_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_7_we0 mem_we 1 1 }  { local_conv_kernel_blk_7_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_6 { ap_memory {  { local_conv_kernel_blk_6_address0 mem_address 1 6 }  { local_conv_kernel_blk_6_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_6_we0 mem_we 1 1 }  { local_conv_kernel_blk_6_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_5 { ap_memory {  { local_conv_kernel_blk_5_address0 mem_address 1 6 }  { local_conv_kernel_blk_5_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_5_we0 mem_we 1 1 }  { local_conv_kernel_blk_5_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_4 { ap_memory {  { local_conv_kernel_blk_4_address0 mem_address 1 6 }  { local_conv_kernel_blk_4_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_4_we0 mem_we 1 1 }  { local_conv_kernel_blk_4_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_3 { ap_memory {  { local_conv_kernel_blk_3_address0 mem_address 1 6 }  { local_conv_kernel_blk_3_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_3_we0 mem_we 1 1 }  { local_conv_kernel_blk_3_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_2 { ap_memory {  { local_conv_kernel_blk_2_address0 mem_address 1 6 }  { local_conv_kernel_blk_2_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_2_we0 mem_we 1 1 }  { local_conv_kernel_blk_2_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_1 { ap_memory {  { local_conv_kernel_blk_1_address0 mem_address 1 6 }  { local_conv_kernel_blk_1_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_1_we0 mem_we 1 1 }  { local_conv_kernel_blk_1_d0 mem_din 1 32 } } }
	local_conv_kernel_blk { ap_memory {  { local_conv_kernel_blk_address0 mem_address 1 6 }  { local_conv_kernel_blk_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_we0 mem_we 1 1 }  { local_conv_kernel_blk_d0 mem_din 1 32 } } }
	 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 32 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 32 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RFIFONUM LEN 0 9 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	zext_ln87_19 { ap_none {  { zext_ln87_19 in_data 0 16 } } }
	kernel_size { ap_none {  { kernel_size in_data 0 8 } } }
	icmp_ln1027_16 { ap_none {  { icmp_ln1027_16 in_data 0 1 } } }
	mul_ln87_4 { ap_none {  { mul_ln87_4 in_data 0 16 } } }
	icmp_ln1027_17 { ap_none {  { icmp_ln1027_17 in_data 0 1 } } }
	conv_kernel { ap_none {  { conv_kernel in_data 0 64 } } }
}
