set moduleName shufflenet_block
set isTopModule 1
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
set C_modelName {shufflenet_block}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_in int 8 regular {axi_master 0}  }
	{ gmem_weights1 int 8 regular {axi_master 0}  }
	{ gmem_weights2 int 8 regular {axi_master 0}  }
	{ gmem_weights3 int 8 regular {axi_master 0}  }
	{ gmem_bn1 int 8 regular {axi_master 0}  }
	{ gmem_bn2 int 8 regular {axi_master 0}  }
	{ gmem_bn3 int 8 regular {axi_master 0}  }
	{ gmem_out int 8 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ conv1_kernel int 64 regular {axi_slave 0}  }
	{ dw_kernel int 64 regular {axi_slave 0}  }
	{ conv2_kernel int 64 regular {axi_slave 0}  }
	{ bn1_mean int 64 regular {axi_slave 0}  }
	{ bn1_var int 64 regular {axi_slave 0}  }
	{ bn1_gamma int 64 regular {axi_slave 0}  }
	{ bn1_beta int 64 regular {axi_slave 0}  }
	{ bn2_mean int 64 regular {axi_slave 0}  }
	{ bn2_var int 64 regular {axi_slave 0}  }
	{ bn2_gamma int 64 regular {axi_slave 0}  }
	{ bn2_beta int 64 regular {axi_slave 0}  }
	{ bn3_mean int 64 regular {axi_slave 0}  }
	{ bn3_var int 64 regular {axi_slave 0}  }
	{ bn3_gamma int 64 regular {axi_slave 0}  }
	{ bn3_beta int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ c_in int 16 regular {axi_slave 0}  }
	{ c_out int 16 regular {axi_slave 0}  }
	{ h_w int 16 regular {axi_slave 0}  }
	{ c_reduce int 16 regular {axi_slave 0}  }
	{ stride int 8 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_weights1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "conv1_kernel","offset": { "type": "dynamic","port_name": "conv1_kernel","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_weights2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dw_kernel","offset": { "type": "dynamic","port_name": "dw_kernel","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_weights3", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "conv2_kernel","offset": { "type": "dynamic","port_name": "conv2_kernel","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_bn1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bn1_mean","offset": { "type": "dynamic","port_name": "bn1_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_var","offset": { "type": "dynamic","port_name": "bn1_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_gamma","offset": { "type": "dynamic","port_name": "bn1_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_beta","offset": { "type": "dynamic","port_name": "bn1_beta","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_bn2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bn2_mean","offset": { "type": "dynamic","port_name": "bn2_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_var","offset": { "type": "dynamic","port_name": "bn2_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_gamma","offset": { "type": "dynamic","port_name": "bn2_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_beta","offset": { "type": "dynamic","port_name": "bn2_beta","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_bn3", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bn3_mean","offset": { "type": "dynamic","port_name": "bn3_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_var","offset": { "type": "dynamic","port_name": "bn3_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_gamma","offset": { "type": "dynamic","port_name": "bn3_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_beta","offset": { "type": "dynamic","port_name": "bn3_beta","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_out", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "conv1_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "dw_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "conv2_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "bn1_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "bn1_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "bn1_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "bn1_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "bn2_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "bn2_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "bn2_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "bn2_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":172}, "offset_end" : {"in":183}} , 
 	{ "Name" : "bn3_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":195}} , 
 	{ "Name" : "bn3_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":196}, "offset_end" : {"in":207}} , 
 	{ "Name" : "bn3_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":219}} , 
 	{ "Name" : "bn3_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":220}, "offset_end" : {"in":231}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":243}} , 
 	{ "Name" : "c_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "c_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":244}, "offset_end" : {"in":251}} , 
 	{ "Name" : "h_w", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "c_reduce", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":252}, "offset_end" : {"in":259}} , 
 	{ "Name" : "stride", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 380
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_in_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_weights1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_weights1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_weights1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_weights1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_weights1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_weights1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_weights1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_weights1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_weights1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_weights1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_weights1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_weights1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_weights1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_weights1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_weights2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_weights2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_weights2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_weights2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_weights2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_weights2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_weights2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_weights2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_weights2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_weights2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_weights2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_weights2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_weights2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_weights2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_weights3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_weights3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_weights3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_weights3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_weights3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_weights3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_weights3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_weights3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_weights3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_weights3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_weights3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_weights3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_weights3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_weights3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_weights3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_bn1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_bn1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_bn1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_bn1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_bn1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_bn1_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_bn1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_bn1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_bn1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_bn1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_bn1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem_bn1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_bn1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_bn1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn1_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_bn2_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_bn2_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_bn2_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_bn2_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_bn2_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem_bn2_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_bn2_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_bn2_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_bn2_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_bn2_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_bn2_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem_bn2_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_bn2_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_bn2_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn2_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_bn3_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_bn3_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem_bn3_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_bn3_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_bn3_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_bn3_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_bn3_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem_bn3_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_bn3_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_bn3_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_bn3_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_gmem_bn3_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_bn3_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_bn3_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_bn3_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_out_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem_out_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_gmem_out_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_out_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_out_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_gmem_out_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem_out_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_gmem_out_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_out_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_out_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_out_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_gmem_out_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_out_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem_out_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_out_BUSER sc_in sc_lv 1 signal 7 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"shufflenet_block","role":"start","value":"0","valid_bit":"0"},{"name":"shufflenet_block","role":"continue","value":"0","valid_bit":"4"},{"name":"shufflenet_block","role":"auto_start","value":"0","valid_bit":"7"},{"name":"c_in","role":"data","value":"16"},{"name":"h_w","role":"data","value":"24"},{"name":"stride","role":"data","value":"32"},{"name":"in_r","role":"data","value":"40"},{"name":"conv1_kernel","role":"data","value":"52"},{"name":"dw_kernel","role":"data","value":"64"},{"name":"conv2_kernel","role":"data","value":"76"},{"name":"bn1_mean","role":"data","value":"88"},{"name":"bn1_var","role":"data","value":"100"},{"name":"bn1_gamma","role":"data","value":"112"},{"name":"bn1_beta","role":"data","value":"124"},{"name":"bn2_mean","role":"data","value":"136"},{"name":"bn2_var","role":"data","value":"148"},{"name":"bn2_gamma","role":"data","value":"160"},{"name":"bn2_beta","role":"data","value":"172"},{"name":"bn3_mean","role":"data","value":"184"},{"name":"bn3_var","role":"data","value":"196"},{"name":"bn3_gamma","role":"data","value":"208"},{"name":"bn3_beta","role":"data","value":"220"},{"name":"out_r","role":"data","value":"232"},{"name":"c_out","role":"data","value":"244"},{"name":"c_reduce","role":"data","value":"252"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"shufflenet_block","role":"start","value":"0","valid_bit":"0"},{"name":"shufflenet_block","role":"done","value":"0","valid_bit":"1"},{"name":"shufflenet_block","role":"idle","value":"0","valid_bit":"2"},{"name":"shufflenet_block","role":"ready","value":"0","valid_bit":"3"},{"name":"shufflenet_block","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_in_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_in_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_in_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_in_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_in_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_in_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_in_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_in_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_in_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_in_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_in_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_in_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_in_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_in_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_in_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_in_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_in_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_in_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_in_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_in_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_weights1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_weights1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_weights1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_weights1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_weights1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_weights1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_weights1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_weights1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_weights1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_weights1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_weights1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_weights1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_weights1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_weights1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_weights1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_weights1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_weights1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_weights1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_weights1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_weights1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_weights1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_weights1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_weights1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_weights1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_weights1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_weights1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_weights1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_weights1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_weights1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_weights1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_weights1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_weights1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_weights1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_weights1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_weights1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_weights1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_weights1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_weights1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_weights1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_weights1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_weights1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_weights1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_weights1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_weights1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_weights1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_weights2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_weights2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_weights2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_weights2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_weights2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_weights2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_weights2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_weights2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_weights2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_weights2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_weights2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_weights2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_weights2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_weights2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_weights2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_weights2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_weights2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_weights2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_weights2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_weights2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_weights2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_weights2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_weights2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_weights2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_weights2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_weights2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_weights2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_weights2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_weights2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_weights2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_weights2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_weights2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_weights2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_weights2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_weights2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_weights2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_weights2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_weights2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_weights2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_weights2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_weights2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_weights2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_weights2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_weights2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_weights2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_weights3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_weights3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_weights3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_weights3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_weights3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_weights3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_weights3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_weights3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_weights3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_weights3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_weights3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_weights3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_weights3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_weights3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_weights3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_weights3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_weights3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_weights3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_weights3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_weights3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_weights3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_weights3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_weights3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_weights3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_weights3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_weights3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_weights3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_weights3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_weights3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_weights3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_weights3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_weights3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_weights3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_weights3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_weights3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_weights3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_weights3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_weights3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_weights3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_weights3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_weights3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_weights3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_weights3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_weights3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_weights3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_weights3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_bn1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_bn1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_bn1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_bn1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_bn1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_bn1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_bn1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_bn1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_bn1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_bn1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_bn1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_bn1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_bn1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_bn1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_bn1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_bn1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_bn1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_bn1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_bn1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_bn1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_bn1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_bn1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_bn1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_bn1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_bn1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_bn1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_bn1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_bn1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_bn1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_bn1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_bn1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_bn1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_bn1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_bn1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_bn1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_bn1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_bn1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_bn1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_bn1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_bn1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_bn1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_bn1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_bn1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_bn1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_bn1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_bn2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_bn2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_bn2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_bn2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_bn2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_bn2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_bn2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_bn2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_bn2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_bn2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_bn2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_bn2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_bn2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_bn2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_bn2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_bn2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_bn2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_bn2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_bn2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_bn2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_bn2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_bn2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_bn2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_bn2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_bn2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_bn2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_bn2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_bn2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_bn2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_bn2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_bn2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_bn2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_bn2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_bn2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_bn2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_bn2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_bn2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_bn2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_bn2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_bn2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_bn2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_bn2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_bn2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_bn2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_bn2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_bn3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_bn3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_bn3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_bn3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_bn3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_bn3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_bn3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_bn3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_bn3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_bn3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_bn3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_bn3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_bn3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_bn3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_bn3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_bn3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_bn3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_bn3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_bn3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_bn3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_bn3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_bn3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_bn3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_bn3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_bn3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_bn3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_bn3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_bn3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_bn3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_bn3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_bn3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_bn3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_bn3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_bn3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_bn3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_bn3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_bn3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_bn3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_bn3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_bn3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_bn3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_bn3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_bn3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_bn3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_bn3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_bn3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_out_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_out_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_out_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_out_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_out_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_out_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_out_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_out_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_out_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_out_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_out_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_out_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_out_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_out_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_out_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_out_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_out_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_out_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_out_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_out_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_out_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_out_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_out_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_out_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_out_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_out_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_out_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_out_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_out_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_out_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_out_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_out_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_out_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_out_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_out_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_out_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_out_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_out_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_out_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_out_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_out_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_out_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_out_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_out_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_out_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "shufflenet_block",
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
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_in_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386", "Port" : "gmem_in", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "gmem_weights1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_weights1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_weights1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_weights2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_weights2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_weights2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_weights3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_weights3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_weights3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_bn1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_bn1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_bn1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_bn2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_bn2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_bn2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_bn3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_bn3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_bn3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_out_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386", "Port" : "gmem_out", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_shufflenet_block_Pipeline_VITIS_LOOP_299_15_fu_1402", "Port" : "gmem_out", "Inst_start_state" : "211", "Inst_end_state" : "212"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn1_mean", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn1_var", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn1_gamma", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn1_beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn2_mean", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn2_var", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn2_gamma", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn2_beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn3_mean", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn3_var", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn3_gamma", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn3_beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_reduce", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_branch_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_200_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state30", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state30"], "PreState" : ["ap_ST_fsm_state29"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_196_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state64"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state14", "ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_193_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_188_4_VITIS_LOOP_189_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state65"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_236_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state99", "LastState" : ["ap_ST_fsm_state210"], "QuitState" : ["ap_ST_fsm_state99"], "PreState" : ["ap_ST_fsm_state98"], "PostState" : ["ap_ST_fsm_state78"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_233_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state78", "LastState" : ["ap_ST_fsm_state99"], "QuitState" : ["ap_ST_fsm_state78"], "PreState" : ["ap_ST_fsm_state77"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_228_9_VITIS_LOOP_229_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state76", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state75"], "PostState" : ["ap_ST_fsm_state211"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_318_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state227", "LastState" : ["ap_ST_fsm_state235"], "QuitState" : ["ap_ST_fsm_state227"], "PreState" : ["ap_ST_fsm_state226"], "PostState" : ["ap_ST_fsm_state236"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_333_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state242", "LastState" : ["ap_ST_fsm_state261"], "QuitState" : ["ap_ST_fsm_state242"], "PreState" : ["ap_ST_fsm_state241"], "PostState" : ["ap_ST_fsm_state237"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_327_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state237", "LastState" : ["ap_ST_fsm_state242"], "QuitState" : ["ap_ST_fsm_state237"], "PreState" : ["ap_ST_fsm_state236"], "PostState" : ["ap_ST_fsm_state236"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_324_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state236", "LastState" : ["ap_ST_fsm_state237"], "QuitState" : ["ap_ST_fsm_state236"], "PreState" : ["ap_ST_fsm_state227"], "PostState" : ["ap_ST_fsm_state262"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_342_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state262", "LastState" : ["ap_ST_fsm_state291"], "QuitState" : ["ap_ST_fsm_state262"], "PreState" : ["ap_ST_fsm_state236"], "PostState" : ["ap_ST_fsm_state226"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_314_18", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state226", "LastState" : ["ap_ST_fsm_state262"], "QuitState" : ["ap_ST_fsm_state226"], "PreState" : ["ap_ST_fsm_state225"], "PostState" : ["ap_ST_fsm_state222"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_309_16_VITIS_LOOP_310_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state222", "LastState" : ["ap_ST_fsm_state226"], "QuitState" : ["ap_ST_fsm_state222"], "PreState" : ["ap_ST_fsm_state221"], "PostState" : ["ap_ST_fsm_state292"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_382_27", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state297", "LastState" : ["ap_ST_fsm_state307"], "QuitState" : ["ap_ST_fsm_state297"], "PreState" : ["ap_ST_fsm_state296"], "PostState" : ["ap_ST_fsm_state308"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_388_28", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state308", "LastState" : ["ap_ST_fsm_state352"], "QuitState" : ["ap_ST_fsm_state308"], "PreState" : ["ap_ST_fsm_state296", "ap_ST_fsm_state297"], "PostState" : ["ap_ST_fsm_state296"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_377_26", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state296", "LastState" : ["ap_ST_fsm_state308"], "QuitState" : ["ap_ST_fsm_state296"], "PreState" : ["ap_ST_fsm_state295"], "PostState" : ["ap_ST_fsm_state292"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_372_24_VITIS_LOOP_373_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "352", "FirstState" : "ap_ST_fsm_state292", "LastState" : ["ap_ST_fsm_state296"], "QuitState" : ["ap_ST_fsm_state292"], "PreState" : ["ap_ST_fsm_state222"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_branch_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shuffle_temp_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3",
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
			{"Name" : "rhs_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_out_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln101_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln101", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1513", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter19", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter19", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386.mul_32s_16ns_32_1_1_U1", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386.mul_32s_16ns_32_1_1_U2", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3_fu_1386.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_299_15_fu_1402", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "shufflenet_block_Pipeline_VITIS_LOOP_299_15",
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
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_out_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "bound73", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "ret_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln298", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_297_13_VITIS_LOOP_298_14_VITIS_LOOP_299_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_299_15_fu_1402.mul_15ns_32s_32_1_1_U14", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shufflenet_block_Pipeline_VITIS_LOOP_299_15_fu_1402.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_bn1_m_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_bn2_m_axi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_bn3_m_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_in_m_axi_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_out_m_axi_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_weights1_m_axi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_weights2_m_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_weights3_m_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_32ns_48_1_1_U23", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_48ns_64_2_1_U24", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6s_6s_6_1_1_U25", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U26", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_17ns_47_1_1_U27", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_15ns_32ns_47_1_1_U28", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6s_6s_6_1_1_U29", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6s_6s_6_1_1_U30", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6s_6s_6_1_1_U31", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U32", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6s_6s_6_1_1_U33", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U34", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U35", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U36", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U37", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U38", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U39", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_8s_17_1_1_U40", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U41", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32s_15ns_1_36_seq_1_U42", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_15ns_16_36_1_U43", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U44", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U45", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U46", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_15ns_31_4_1_U47", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_15ns_31_4_1_U48", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_6ns_6ns_6s_6ns_6_4_1_U49", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_22s_8s_8s_31_4_1_U50", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_30s_30_4_1_U51", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U52", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U53", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U54", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U55", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U56", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U57", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U58", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_19s_19_4_1_U59", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_11s_8s_8s_20_4_1_U60", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_20s_17ns_32_4_1_U61", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U62", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_6ns_6ns_6s_6ns_6_4_1_U63", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_8ns_8_4_1_U64", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_17ns_33_4_1_U65", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_16ns_32_4_1_U66", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	shufflenet_block {
		gmem_in {Type I LastRead 37 FirstWrite -1}
		gmem_weights1 {Type I LastRead 37 FirstWrite -1}
		gmem_weights2 {Type I LastRead 142 FirstWrite -1}
		gmem_weights3 {Type I LastRead 51 FirstWrite -1}
		gmem_bn1 {Type I LastRead 27 FirstWrite -1}
		gmem_bn2 {Type I LastRead 17 FirstWrite -1}
		gmem_bn3 {Type I LastRead 29 FirstWrite -1}
		gmem_out {Type IO LastRead 77 FirstWrite 5}
		in_r {Type I LastRead 0 FirstWrite -1}
		conv1_kernel {Type I LastRead 0 FirstWrite -1}
		dw_kernel {Type I LastRead 0 FirstWrite -1}
		conv2_kernel {Type I LastRead 0 FirstWrite -1}
		bn1_mean {Type I LastRead 0 FirstWrite -1}
		bn1_var {Type I LastRead 0 FirstWrite -1}
		bn1_gamma {Type I LastRead 0 FirstWrite -1}
		bn1_beta {Type I LastRead 0 FirstWrite -1}
		bn2_mean {Type I LastRead 0 FirstWrite -1}
		bn2_var {Type I LastRead 0 FirstWrite -1}
		bn2_gamma {Type I LastRead 0 FirstWrite -1}
		bn2_beta {Type I LastRead 0 FirstWrite -1}
		bn3_mean {Type I LastRead 0 FirstWrite -1}
		bn3_var {Type I LastRead 0 FirstWrite -1}
		bn3_gamma {Type I LastRead 0 FirstWrite -1}
		bn3_beta {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		c_out {Type I LastRead 0 FirstWrite -1}
		h_w {Type I LastRead 0 FirstWrite -1}
		c_reduce {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead -1 FirstWrite -1}
		conv_branch_V {Type IO LastRead -1 FirstWrite -1}}
	shufflenet_block_Pipeline_VITIS_LOOP_162_1_VITIS_LOOP_163_2_VITIS_LOOP_165_3 {
		rhs_V_3 {Type I LastRead 0 FirstWrite -1}
		gmem_out {Type O LastRead 15 FirstWrite 14}
		gmem_in {Type I LastRead 13 FirstWrite -1}
		mul_ln101_1 {Type I LastRead 0 FirstWrite -1}
		mul_ln101 {Type I LastRead 0 FirstWrite -1}
		zext_ln1513 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		rhs_6 {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}
	shufflenet_block_Pipeline_VITIS_LOOP_299_15 {
		gmem_out {Type O LastRead 6 FirstWrite 5}
		bound73 {Type I LastRead 0 FirstWrite -1}
		h_w {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ret_V_9 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		icmp_ln298 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_in { m_axi {  { m_axi_gmem_in_AWVALID VALID 1 1 }  { m_axi_gmem_in_AWREADY READY 0 1 }  { m_axi_gmem_in_AWADDR ADDR 1 64 }  { m_axi_gmem_in_AWID ID 1 1 }  { m_axi_gmem_in_AWLEN SIZE 1 8 }  { m_axi_gmem_in_AWSIZE BURST 1 3 }  { m_axi_gmem_in_AWBURST LOCK 1 2 }  { m_axi_gmem_in_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_AWCACHE PROT 1 4 }  { m_axi_gmem_in_AWPROT QOS 1 3 }  { m_axi_gmem_in_AWQOS REGION 1 4 }  { m_axi_gmem_in_AWREGION USER 1 4 }  { m_axi_gmem_in_AWUSER DATA 1 1 }  { m_axi_gmem_in_WVALID VALID 1 1 }  { m_axi_gmem_in_WREADY READY 0 1 }  { m_axi_gmem_in_WDATA FIFONUM 1 32 }  { m_axi_gmem_in_WSTRB STRB 1 4 }  { m_axi_gmem_in_WLAST LAST 1 1 }  { m_axi_gmem_in_WID ID 1 1 }  { m_axi_gmem_in_WUSER DATA 1 1 }  { m_axi_gmem_in_ARVALID VALID 1 1 }  { m_axi_gmem_in_ARREADY READY 0 1 }  { m_axi_gmem_in_ARADDR ADDR 1 64 }  { m_axi_gmem_in_ARID ID 1 1 }  { m_axi_gmem_in_ARLEN SIZE 1 8 }  { m_axi_gmem_in_ARSIZE BURST 1 3 }  { m_axi_gmem_in_ARBURST LOCK 1 2 }  { m_axi_gmem_in_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_ARCACHE PROT 1 4 }  { m_axi_gmem_in_ARPROT QOS 1 3 }  { m_axi_gmem_in_ARQOS REGION 1 4 }  { m_axi_gmem_in_ARREGION USER 1 4 }  { m_axi_gmem_in_ARUSER DATA 1 1 }  { m_axi_gmem_in_RVALID VALID 0 1 }  { m_axi_gmem_in_RREADY READY 1 1 }  { m_axi_gmem_in_RDATA FIFONUM 0 32 }  { m_axi_gmem_in_RLAST LAST 0 1 }  { m_axi_gmem_in_RID ID 0 1 }  { m_axi_gmem_in_RUSER DATA 0 1 }  { m_axi_gmem_in_RRESP RESP 0 2 }  { m_axi_gmem_in_BVALID VALID 0 1 }  { m_axi_gmem_in_BREADY READY 1 1 }  { m_axi_gmem_in_BRESP RESP 0 2 }  { m_axi_gmem_in_BID ID 0 1 }  { m_axi_gmem_in_BUSER DATA 0 1 } } }
	gmem_weights1 { m_axi {  { m_axi_gmem_weights1_AWVALID VALID 1 1 }  { m_axi_gmem_weights1_AWREADY READY 0 1 }  { m_axi_gmem_weights1_AWADDR ADDR 1 64 }  { m_axi_gmem_weights1_AWID ID 1 1 }  { m_axi_gmem_weights1_AWLEN SIZE 1 8 }  { m_axi_gmem_weights1_AWSIZE BURST 1 3 }  { m_axi_gmem_weights1_AWBURST LOCK 1 2 }  { m_axi_gmem_weights1_AWLOCK CACHE 1 2 }  { m_axi_gmem_weights1_AWCACHE PROT 1 4 }  { m_axi_gmem_weights1_AWPROT QOS 1 3 }  { m_axi_gmem_weights1_AWQOS REGION 1 4 }  { m_axi_gmem_weights1_AWREGION USER 1 4 }  { m_axi_gmem_weights1_AWUSER DATA 1 1 }  { m_axi_gmem_weights1_WVALID VALID 1 1 }  { m_axi_gmem_weights1_WREADY READY 0 1 }  { m_axi_gmem_weights1_WDATA FIFONUM 1 32 }  { m_axi_gmem_weights1_WSTRB STRB 1 4 }  { m_axi_gmem_weights1_WLAST LAST 1 1 }  { m_axi_gmem_weights1_WID ID 1 1 }  { m_axi_gmem_weights1_WUSER DATA 1 1 }  { m_axi_gmem_weights1_ARVALID VALID 1 1 }  { m_axi_gmem_weights1_ARREADY READY 0 1 }  { m_axi_gmem_weights1_ARADDR ADDR 1 64 }  { m_axi_gmem_weights1_ARID ID 1 1 }  { m_axi_gmem_weights1_ARLEN SIZE 1 8 }  { m_axi_gmem_weights1_ARSIZE BURST 1 3 }  { m_axi_gmem_weights1_ARBURST LOCK 1 2 }  { m_axi_gmem_weights1_ARLOCK CACHE 1 2 }  { m_axi_gmem_weights1_ARCACHE PROT 1 4 }  { m_axi_gmem_weights1_ARPROT QOS 1 3 }  { m_axi_gmem_weights1_ARQOS REGION 1 4 }  { m_axi_gmem_weights1_ARREGION USER 1 4 }  { m_axi_gmem_weights1_ARUSER DATA 1 1 }  { m_axi_gmem_weights1_RVALID VALID 0 1 }  { m_axi_gmem_weights1_RREADY READY 1 1 }  { m_axi_gmem_weights1_RDATA FIFONUM 0 32 }  { m_axi_gmem_weights1_RLAST LAST 0 1 }  { m_axi_gmem_weights1_RID ID 0 1 }  { m_axi_gmem_weights1_RUSER DATA 0 1 }  { m_axi_gmem_weights1_RRESP RESP 0 2 }  { m_axi_gmem_weights1_BVALID VALID 0 1 }  { m_axi_gmem_weights1_BREADY READY 1 1 }  { m_axi_gmem_weights1_BRESP RESP 0 2 }  { m_axi_gmem_weights1_BID ID 0 1 }  { m_axi_gmem_weights1_BUSER DATA 0 1 } } }
	gmem_weights2 { m_axi {  { m_axi_gmem_weights2_AWVALID VALID 1 1 }  { m_axi_gmem_weights2_AWREADY READY 0 1 }  { m_axi_gmem_weights2_AWADDR ADDR 1 64 }  { m_axi_gmem_weights2_AWID ID 1 1 }  { m_axi_gmem_weights2_AWLEN SIZE 1 8 }  { m_axi_gmem_weights2_AWSIZE BURST 1 3 }  { m_axi_gmem_weights2_AWBURST LOCK 1 2 }  { m_axi_gmem_weights2_AWLOCK CACHE 1 2 }  { m_axi_gmem_weights2_AWCACHE PROT 1 4 }  { m_axi_gmem_weights2_AWPROT QOS 1 3 }  { m_axi_gmem_weights2_AWQOS REGION 1 4 }  { m_axi_gmem_weights2_AWREGION USER 1 4 }  { m_axi_gmem_weights2_AWUSER DATA 1 1 }  { m_axi_gmem_weights2_WVALID VALID 1 1 }  { m_axi_gmem_weights2_WREADY READY 0 1 }  { m_axi_gmem_weights2_WDATA FIFONUM 1 32 }  { m_axi_gmem_weights2_WSTRB STRB 1 4 }  { m_axi_gmem_weights2_WLAST LAST 1 1 }  { m_axi_gmem_weights2_WID ID 1 1 }  { m_axi_gmem_weights2_WUSER DATA 1 1 }  { m_axi_gmem_weights2_ARVALID VALID 1 1 }  { m_axi_gmem_weights2_ARREADY READY 0 1 }  { m_axi_gmem_weights2_ARADDR ADDR 1 64 }  { m_axi_gmem_weights2_ARID ID 1 1 }  { m_axi_gmem_weights2_ARLEN SIZE 1 8 }  { m_axi_gmem_weights2_ARSIZE BURST 1 3 }  { m_axi_gmem_weights2_ARBURST LOCK 1 2 }  { m_axi_gmem_weights2_ARLOCK CACHE 1 2 }  { m_axi_gmem_weights2_ARCACHE PROT 1 4 }  { m_axi_gmem_weights2_ARPROT QOS 1 3 }  { m_axi_gmem_weights2_ARQOS REGION 1 4 }  { m_axi_gmem_weights2_ARREGION USER 1 4 }  { m_axi_gmem_weights2_ARUSER DATA 1 1 }  { m_axi_gmem_weights2_RVALID VALID 0 1 }  { m_axi_gmem_weights2_RREADY READY 1 1 }  { m_axi_gmem_weights2_RDATA FIFONUM 0 32 }  { m_axi_gmem_weights2_RLAST LAST 0 1 }  { m_axi_gmem_weights2_RID ID 0 1 }  { m_axi_gmem_weights2_RUSER DATA 0 1 }  { m_axi_gmem_weights2_RRESP RESP 0 2 }  { m_axi_gmem_weights2_BVALID VALID 0 1 }  { m_axi_gmem_weights2_BREADY READY 1 1 }  { m_axi_gmem_weights2_BRESP RESP 0 2 }  { m_axi_gmem_weights2_BID ID 0 1 }  { m_axi_gmem_weights2_BUSER DATA 0 1 } } }
	gmem_weights3 { m_axi {  { m_axi_gmem_weights3_AWVALID VALID 1 1 }  { m_axi_gmem_weights3_AWREADY READY 0 1 }  { m_axi_gmem_weights3_AWADDR ADDR 1 64 }  { m_axi_gmem_weights3_AWID ID 1 1 }  { m_axi_gmem_weights3_AWLEN SIZE 1 8 }  { m_axi_gmem_weights3_AWSIZE BURST 1 3 }  { m_axi_gmem_weights3_AWBURST LOCK 1 2 }  { m_axi_gmem_weights3_AWLOCK CACHE 1 2 }  { m_axi_gmem_weights3_AWCACHE PROT 1 4 }  { m_axi_gmem_weights3_AWPROT QOS 1 3 }  { m_axi_gmem_weights3_AWQOS REGION 1 4 }  { m_axi_gmem_weights3_AWREGION USER 1 4 }  { m_axi_gmem_weights3_AWUSER DATA 1 1 }  { m_axi_gmem_weights3_WVALID VALID 1 1 }  { m_axi_gmem_weights3_WREADY READY 0 1 }  { m_axi_gmem_weights3_WDATA FIFONUM 1 32 }  { m_axi_gmem_weights3_WSTRB STRB 1 4 }  { m_axi_gmem_weights3_WLAST LAST 1 1 }  { m_axi_gmem_weights3_WID ID 1 1 }  { m_axi_gmem_weights3_WUSER DATA 1 1 }  { m_axi_gmem_weights3_ARVALID VALID 1 1 }  { m_axi_gmem_weights3_ARREADY READY 0 1 }  { m_axi_gmem_weights3_ARADDR ADDR 1 64 }  { m_axi_gmem_weights3_ARID ID 1 1 }  { m_axi_gmem_weights3_ARLEN SIZE 1 8 }  { m_axi_gmem_weights3_ARSIZE BURST 1 3 }  { m_axi_gmem_weights3_ARBURST LOCK 1 2 }  { m_axi_gmem_weights3_ARLOCK CACHE 1 2 }  { m_axi_gmem_weights3_ARCACHE PROT 1 4 }  { m_axi_gmem_weights3_ARPROT QOS 1 3 }  { m_axi_gmem_weights3_ARQOS REGION 1 4 }  { m_axi_gmem_weights3_ARREGION USER 1 4 }  { m_axi_gmem_weights3_ARUSER DATA 1 1 }  { m_axi_gmem_weights3_RVALID VALID 0 1 }  { m_axi_gmem_weights3_RREADY READY 1 1 }  { m_axi_gmem_weights3_RDATA FIFONUM 0 32 }  { m_axi_gmem_weights3_RLAST LAST 0 1 }  { m_axi_gmem_weights3_RID ID 0 1 }  { m_axi_gmem_weights3_RUSER DATA 0 1 }  { m_axi_gmem_weights3_RRESP RESP 0 2 }  { m_axi_gmem_weights3_BVALID VALID 0 1 }  { m_axi_gmem_weights3_BREADY READY 1 1 }  { m_axi_gmem_weights3_BRESP RESP 0 2 }  { m_axi_gmem_weights3_BID ID 0 1 }  { m_axi_gmem_weights3_BUSER DATA 0 1 } } }
	gmem_bn1 { m_axi {  { m_axi_gmem_bn1_AWVALID VALID 1 1 }  { m_axi_gmem_bn1_AWREADY READY 0 1 }  { m_axi_gmem_bn1_AWADDR ADDR 1 64 }  { m_axi_gmem_bn1_AWID ID 1 1 }  { m_axi_gmem_bn1_AWLEN SIZE 1 8 }  { m_axi_gmem_bn1_AWSIZE BURST 1 3 }  { m_axi_gmem_bn1_AWBURST LOCK 1 2 }  { m_axi_gmem_bn1_AWLOCK CACHE 1 2 }  { m_axi_gmem_bn1_AWCACHE PROT 1 4 }  { m_axi_gmem_bn1_AWPROT QOS 1 3 }  { m_axi_gmem_bn1_AWQOS REGION 1 4 }  { m_axi_gmem_bn1_AWREGION USER 1 4 }  { m_axi_gmem_bn1_AWUSER DATA 1 1 }  { m_axi_gmem_bn1_WVALID VALID 1 1 }  { m_axi_gmem_bn1_WREADY READY 0 1 }  { m_axi_gmem_bn1_WDATA FIFONUM 1 32 }  { m_axi_gmem_bn1_WSTRB STRB 1 4 }  { m_axi_gmem_bn1_WLAST LAST 1 1 }  { m_axi_gmem_bn1_WID ID 1 1 }  { m_axi_gmem_bn1_WUSER DATA 1 1 }  { m_axi_gmem_bn1_ARVALID VALID 1 1 }  { m_axi_gmem_bn1_ARREADY READY 0 1 }  { m_axi_gmem_bn1_ARADDR ADDR 1 64 }  { m_axi_gmem_bn1_ARID ID 1 1 }  { m_axi_gmem_bn1_ARLEN SIZE 1 8 }  { m_axi_gmem_bn1_ARSIZE BURST 1 3 }  { m_axi_gmem_bn1_ARBURST LOCK 1 2 }  { m_axi_gmem_bn1_ARLOCK CACHE 1 2 }  { m_axi_gmem_bn1_ARCACHE PROT 1 4 }  { m_axi_gmem_bn1_ARPROT QOS 1 3 }  { m_axi_gmem_bn1_ARQOS REGION 1 4 }  { m_axi_gmem_bn1_ARREGION USER 1 4 }  { m_axi_gmem_bn1_ARUSER DATA 1 1 }  { m_axi_gmem_bn1_RVALID VALID 0 1 }  { m_axi_gmem_bn1_RREADY READY 1 1 }  { m_axi_gmem_bn1_RDATA FIFONUM 0 32 }  { m_axi_gmem_bn1_RLAST LAST 0 1 }  { m_axi_gmem_bn1_RID ID 0 1 }  { m_axi_gmem_bn1_RUSER DATA 0 1 }  { m_axi_gmem_bn1_RRESP RESP 0 2 }  { m_axi_gmem_bn1_BVALID VALID 0 1 }  { m_axi_gmem_bn1_BREADY READY 1 1 }  { m_axi_gmem_bn1_BRESP RESP 0 2 }  { m_axi_gmem_bn1_BID ID 0 1 }  { m_axi_gmem_bn1_BUSER DATA 0 1 } } }
	gmem_bn2 { m_axi {  { m_axi_gmem_bn2_AWVALID VALID 1 1 }  { m_axi_gmem_bn2_AWREADY READY 0 1 }  { m_axi_gmem_bn2_AWADDR ADDR 1 64 }  { m_axi_gmem_bn2_AWID ID 1 1 }  { m_axi_gmem_bn2_AWLEN SIZE 1 8 }  { m_axi_gmem_bn2_AWSIZE BURST 1 3 }  { m_axi_gmem_bn2_AWBURST LOCK 1 2 }  { m_axi_gmem_bn2_AWLOCK CACHE 1 2 }  { m_axi_gmem_bn2_AWCACHE PROT 1 4 }  { m_axi_gmem_bn2_AWPROT QOS 1 3 }  { m_axi_gmem_bn2_AWQOS REGION 1 4 }  { m_axi_gmem_bn2_AWREGION USER 1 4 }  { m_axi_gmem_bn2_AWUSER DATA 1 1 }  { m_axi_gmem_bn2_WVALID VALID 1 1 }  { m_axi_gmem_bn2_WREADY READY 0 1 }  { m_axi_gmem_bn2_WDATA FIFONUM 1 32 }  { m_axi_gmem_bn2_WSTRB STRB 1 4 }  { m_axi_gmem_bn2_WLAST LAST 1 1 }  { m_axi_gmem_bn2_WID ID 1 1 }  { m_axi_gmem_bn2_WUSER DATA 1 1 }  { m_axi_gmem_bn2_ARVALID VALID 1 1 }  { m_axi_gmem_bn2_ARREADY READY 0 1 }  { m_axi_gmem_bn2_ARADDR ADDR 1 64 }  { m_axi_gmem_bn2_ARID ID 1 1 }  { m_axi_gmem_bn2_ARLEN SIZE 1 8 }  { m_axi_gmem_bn2_ARSIZE BURST 1 3 }  { m_axi_gmem_bn2_ARBURST LOCK 1 2 }  { m_axi_gmem_bn2_ARLOCK CACHE 1 2 }  { m_axi_gmem_bn2_ARCACHE PROT 1 4 }  { m_axi_gmem_bn2_ARPROT QOS 1 3 }  { m_axi_gmem_bn2_ARQOS REGION 1 4 }  { m_axi_gmem_bn2_ARREGION USER 1 4 }  { m_axi_gmem_bn2_ARUSER DATA 1 1 }  { m_axi_gmem_bn2_RVALID VALID 0 1 }  { m_axi_gmem_bn2_RREADY READY 1 1 }  { m_axi_gmem_bn2_RDATA FIFONUM 0 32 }  { m_axi_gmem_bn2_RLAST LAST 0 1 }  { m_axi_gmem_bn2_RID ID 0 1 }  { m_axi_gmem_bn2_RUSER DATA 0 1 }  { m_axi_gmem_bn2_RRESP RESP 0 2 }  { m_axi_gmem_bn2_BVALID VALID 0 1 }  { m_axi_gmem_bn2_BREADY READY 1 1 }  { m_axi_gmem_bn2_BRESP RESP 0 2 }  { m_axi_gmem_bn2_BID ID 0 1 }  { m_axi_gmem_bn2_BUSER DATA 0 1 } } }
	gmem_bn3 { m_axi {  { m_axi_gmem_bn3_AWVALID VALID 1 1 }  { m_axi_gmem_bn3_AWREADY READY 0 1 }  { m_axi_gmem_bn3_AWADDR ADDR 1 64 }  { m_axi_gmem_bn3_AWID ID 1 1 }  { m_axi_gmem_bn3_AWLEN SIZE 1 8 }  { m_axi_gmem_bn3_AWSIZE BURST 1 3 }  { m_axi_gmem_bn3_AWBURST LOCK 1 2 }  { m_axi_gmem_bn3_AWLOCK CACHE 1 2 }  { m_axi_gmem_bn3_AWCACHE PROT 1 4 }  { m_axi_gmem_bn3_AWPROT QOS 1 3 }  { m_axi_gmem_bn3_AWQOS REGION 1 4 }  { m_axi_gmem_bn3_AWREGION USER 1 4 }  { m_axi_gmem_bn3_AWUSER DATA 1 1 }  { m_axi_gmem_bn3_WVALID VALID 1 1 }  { m_axi_gmem_bn3_WREADY READY 0 1 }  { m_axi_gmem_bn3_WDATA FIFONUM 1 32 }  { m_axi_gmem_bn3_WSTRB STRB 1 4 }  { m_axi_gmem_bn3_WLAST LAST 1 1 }  { m_axi_gmem_bn3_WID ID 1 1 }  { m_axi_gmem_bn3_WUSER DATA 1 1 }  { m_axi_gmem_bn3_ARVALID VALID 1 1 }  { m_axi_gmem_bn3_ARREADY READY 0 1 }  { m_axi_gmem_bn3_ARADDR ADDR 1 64 }  { m_axi_gmem_bn3_ARID ID 1 1 }  { m_axi_gmem_bn3_ARLEN SIZE 1 8 }  { m_axi_gmem_bn3_ARSIZE BURST 1 3 }  { m_axi_gmem_bn3_ARBURST LOCK 1 2 }  { m_axi_gmem_bn3_ARLOCK CACHE 1 2 }  { m_axi_gmem_bn3_ARCACHE PROT 1 4 }  { m_axi_gmem_bn3_ARPROT QOS 1 3 }  { m_axi_gmem_bn3_ARQOS REGION 1 4 }  { m_axi_gmem_bn3_ARREGION USER 1 4 }  { m_axi_gmem_bn3_ARUSER DATA 1 1 }  { m_axi_gmem_bn3_RVALID VALID 0 1 }  { m_axi_gmem_bn3_RREADY READY 1 1 }  { m_axi_gmem_bn3_RDATA FIFONUM 0 32 }  { m_axi_gmem_bn3_RLAST LAST 0 1 }  { m_axi_gmem_bn3_RID ID 0 1 }  { m_axi_gmem_bn3_RUSER DATA 0 1 }  { m_axi_gmem_bn3_RRESP RESP 0 2 }  { m_axi_gmem_bn3_BVALID VALID 0 1 }  { m_axi_gmem_bn3_BREADY READY 1 1 }  { m_axi_gmem_bn3_BRESP RESP 0 2 }  { m_axi_gmem_bn3_BID ID 0 1 }  { m_axi_gmem_bn3_BUSER DATA 0 1 } } }
	gmem_out { m_axi {  { m_axi_gmem_out_AWVALID VALID 1 1 }  { m_axi_gmem_out_AWREADY READY 0 1 }  { m_axi_gmem_out_AWADDR ADDR 1 64 }  { m_axi_gmem_out_AWID ID 1 1 }  { m_axi_gmem_out_AWLEN SIZE 1 8 }  { m_axi_gmem_out_AWSIZE BURST 1 3 }  { m_axi_gmem_out_AWBURST LOCK 1 2 }  { m_axi_gmem_out_AWLOCK CACHE 1 2 }  { m_axi_gmem_out_AWCACHE PROT 1 4 }  { m_axi_gmem_out_AWPROT QOS 1 3 }  { m_axi_gmem_out_AWQOS REGION 1 4 }  { m_axi_gmem_out_AWREGION USER 1 4 }  { m_axi_gmem_out_AWUSER DATA 1 1 }  { m_axi_gmem_out_WVALID VALID 1 1 }  { m_axi_gmem_out_WREADY READY 0 1 }  { m_axi_gmem_out_WDATA FIFONUM 1 32 }  { m_axi_gmem_out_WSTRB STRB 1 4 }  { m_axi_gmem_out_WLAST LAST 1 1 }  { m_axi_gmem_out_WID ID 1 1 }  { m_axi_gmem_out_WUSER DATA 1 1 }  { m_axi_gmem_out_ARVALID VALID 1 1 }  { m_axi_gmem_out_ARREADY READY 0 1 }  { m_axi_gmem_out_ARADDR ADDR 1 64 }  { m_axi_gmem_out_ARID ID 1 1 }  { m_axi_gmem_out_ARLEN SIZE 1 8 }  { m_axi_gmem_out_ARSIZE BURST 1 3 }  { m_axi_gmem_out_ARBURST LOCK 1 2 }  { m_axi_gmem_out_ARLOCK CACHE 1 2 }  { m_axi_gmem_out_ARCACHE PROT 1 4 }  { m_axi_gmem_out_ARPROT QOS 1 3 }  { m_axi_gmem_out_ARQOS REGION 1 4 }  { m_axi_gmem_out_ARREGION USER 1 4 }  { m_axi_gmem_out_ARUSER DATA 1 1 }  { m_axi_gmem_out_RVALID VALID 0 1 }  { m_axi_gmem_out_RREADY READY 1 1 }  { m_axi_gmem_out_RDATA FIFONUM 0 32 }  { m_axi_gmem_out_RLAST LAST 0 1 }  { m_axi_gmem_out_RID ID 0 1 }  { m_axi_gmem_out_RUSER DATA 0 1 }  { m_axi_gmem_out_RRESP RESP 0 2 }  { m_axi_gmem_out_BVALID VALID 0 1 }  { m_axi_gmem_out_BREADY READY 1 1 }  { m_axi_gmem_out_BRESP RESP 0 2 }  { m_axi_gmem_out_BID ID 0 1 }  { m_axi_gmem_out_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_in {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_weights1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_weights2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_weights3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_bn1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_bn2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_bn3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_out {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_in 1 }
	{ gmem_weights1 1 }
	{ gmem_weights2 1 }
	{ gmem_weights3 1 }
	{ gmem_bn1 1 }
	{ gmem_bn2 1 }
	{ gmem_bn3 1 }
	{ gmem_out 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_in 1 }
	{ gmem_weights1 1 }
	{ gmem_weights2 1 }
	{ gmem_weights3 1 }
	{ gmem_bn1 1 }
	{ gmem_bn2 1 }
	{ gmem_bn3 1 }
	{ gmem_out 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
