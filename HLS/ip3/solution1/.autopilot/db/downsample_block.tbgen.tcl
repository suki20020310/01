set moduleName downsample_block
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
set C_modelName {downsample_block}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem2 int 8 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ dw_kernel int 64 regular {axi_slave 0}  }
	{ conv1_kernel int 64 regular {axi_slave 0}  }
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
	{ h_in int 16 regular {axi_slave 0}  }
	{ w_in int 16 regular {axi_slave 0}  }
	{ h_out int 16 regular {axi_slave 0}  }
	{ w_out int 16 regular {axi_slave 0}  }
	{ stride int 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"},{"cName": "dw_kernel","offset": { "type": "dynamic","port_name": "dw_kernel","bundle": "control"},"direction": "READONLY"},{"cName": "conv1_kernel","offset": { "type": "dynamic","port_name": "conv1_kernel","bundle": "control"},"direction": "READONLY"},{"cName": "conv2_kernel","offset": { "type": "dynamic","port_name": "conv2_kernel","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_mean","offset": { "type": "dynamic","port_name": "bn1_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_var","offset": { "type": "dynamic","port_name": "bn1_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_gamma","offset": { "type": "dynamic","port_name": "bn1_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn1_beta","offset": { "type": "dynamic","port_name": "bn1_beta","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_mean","offset": { "type": "dynamic","port_name": "bn2_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_var","offset": { "type": "dynamic","port_name": "bn2_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_gamma","offset": { "type": "dynamic","port_name": "bn2_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn2_beta","offset": { "type": "dynamic","port_name": "bn2_beta","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_mean","offset": { "type": "dynamic","port_name": "bn3_mean","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_var","offset": { "type": "dynamic","port_name": "bn3_var","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_gamma","offset": { "type": "dynamic","port_name": "bn3_gamma","bundle": "control"},"direction": "READONLY"},{"cName": "bn3_beta","offset": { "type": "dynamic","port_name": "bn3_beta","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":59}} , 
 	{ "Name" : "dw_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":71}} , 
 	{ "Name" : "conv1_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":83}} , 
 	{ "Name" : "conv2_kernel", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":95}} , 
 	{ "Name" : "bn1_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":107}} , 
 	{ "Name" : "bn1_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":108}, "offset_end" : {"in":119}} , 
 	{ "Name" : "bn1_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":131}} , 
 	{ "Name" : "bn1_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":132}, "offset_end" : {"in":143}} , 
 	{ "Name" : "bn2_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":155}} , 
 	{ "Name" : "bn2_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":156}, "offset_end" : {"in":167}} , 
 	{ "Name" : "bn2_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":179}} , 
 	{ "Name" : "bn2_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":180}, "offset_end" : {"in":191}} , 
 	{ "Name" : "bn3_mean", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":203}} , 
 	{ "Name" : "bn3_var", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":204}, "offset_end" : {"in":215}} , 
 	{ "Name" : "bn3_gamma", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":227}} , 
 	{ "Name" : "bn3_beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":228}, "offset_end" : {"in":239}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":251}} , 
 	{ "Name" : "c_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "c_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":252}, "offset_end" : {"in":259}} , 
 	{ "Name" : "h_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "w_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":260}, "offset_end" : {"in":267}} , 
 	{ "Name" : "h_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "w_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":268}, "offset_end" : {"in":275}} , 
 	{ "Name" : "stride", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 0 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"downsample_block","role":"start","value":"0","valid_bit":"0"},{"name":"downsample_block","role":"continue","value":"0","valid_bit":"4"},{"name":"downsample_block","role":"auto_start","value":"0","valid_bit":"7"},{"name":"c_in","role":"data","value":"16"},{"name":"h_in","role":"data","value":"24"},{"name":"h_out","role":"data","value":"32"},{"name":"stride","role":"data","value":"40"},{"name":"in_r","role":"data","value":"48"},{"name":"dw_kernel","role":"data","value":"60"},{"name":"conv1_kernel","role":"data","value":"72"},{"name":"conv2_kernel","role":"data","value":"84"},{"name":"bn1_mean","role":"data","value":"96"},{"name":"bn1_var","role":"data","value":"108"},{"name":"bn1_gamma","role":"data","value":"120"},{"name":"bn1_beta","role":"data","value":"132"},{"name":"bn2_mean","role":"data","value":"144"},{"name":"bn2_var","role":"data","value":"156"},{"name":"bn2_gamma","role":"data","value":"168"},{"name":"bn2_beta","role":"data","value":"180"},{"name":"bn3_mean","role":"data","value":"192"},{"name":"bn3_var","role":"data","value":"204"},{"name":"bn3_gamma","role":"data","value":"216"},{"name":"bn3_beta","role":"data","value":"228"},{"name":"out_r","role":"data","value":"240"},{"name":"c_out","role":"data","value":"252"},{"name":"w_in","role":"data","value":"260"},{"name":"w_out","role":"data","value":"268"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"downsample_block","role":"start","value":"0","valid_bit":"0"},{"name":"downsample_block","role":"done","value":"0","valid_bit":"1"},{"name":"downsample_block","role":"idle","value":"0","valid_bit":"2"},{"name":"downsample_block","role":"ready","value":"0","valid_bit":"3"},{"name":"downsample_block","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "downsample_block",
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
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_kernel", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "h_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_145_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state10_blk"}},
			{"Name" : "VITIS_LOOP_156_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_150_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state36"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_166_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state36", "LastState" : ["ap_ST_fsm_state70"], "QuitState" : ["ap_ST_fsm_state36"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_140_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state36"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_135_1_VITIS_LOOP_136_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state71"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_197_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state444"], "QuitState" : ["ap_ST_fsm_state81"], "PreState" : ["ap_ST_fsm_state80"], "PostState" : ["ap_ST_fsm_state79"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_194_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state79", "LastState" : ["ap_ST_fsm_state81"], "QuitState" : ["ap_ST_fsm_state79"], "PreState" : ["ap_ST_fsm_state78"], "PostState" : ["ap_ST_fsm_state71"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_189_8_VITIS_LOOP_190_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state71", "LastState" : ["ap_ST_fsm_state79"], "QuitState" : ["ap_ST_fsm_state74"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state445"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_290_15", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state451", "LastState" : ["ap_ST_fsm_state459"], "QuitState" : ["ap_ST_fsm_state451"], "PreState" : ["ap_ST_fsm_state450"], "PostState" : ["ap_ST_fsm_state460"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_303_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state462", "LastState" : ["ap_ST_fsm_state481"], "QuitState" : ["ap_ST_fsm_state462"], "PreState" : ["ap_ST_fsm_state461"], "PostState" : ["ap_ST_fsm_state460"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_297_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state460", "LastState" : ["ap_ST_fsm_state462"], "QuitState" : ["ap_ST_fsm_state460"], "PreState" : ["ap_ST_fsm_state451"], "PostState" : ["ap_ST_fsm_state482"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_313_18", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state482", "LastState" : ["ap_ST_fsm_state523"], "QuitState" : ["ap_ST_fsm_state482"], "PreState" : ["ap_ST_fsm_state460"], "PostState" : ["ap_ST_fsm_state447"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_285_13_VITIS_LOOP_286_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state447", "LastState" : ["ap_ST_fsm_state482"], "QuitState" : ["ap_ST_fsm_state447"], "PreState" : ["ap_ST_fsm_state446"], "PostState" : ["ap_ST_fsm_state445"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_281_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state445", "LastState" : ["ap_ST_fsm_state447"], "QuitState" : ["ap_ST_fsm_state445"], "PreState" : ["ap_ST_fsm_state74"], "PostState" : ["ap_ST_fsm_state524"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_346_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state530", "LastState" : ["ap_ST_fsm_state539"], "QuitState" : ["ap_ST_fsm_state530"], "PreState" : ["ap_ST_fsm_state529"], "PostState" : ["ap_ST_fsm_state540"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_419_24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state695", "LastState" : ["ap_ST_fsm_state714"], "QuitState" : ["ap_ST_fsm_state695"], "PreState" : ["ap_ST_fsm_state694"], "PostState" : ["ap_ST_fsm_state540"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_353_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state540", "LastState" : ["ap_ST_fsm_state695"], "QuitState" : ["ap_ST_fsm_state540"], "PreState" : ["ap_ST_fsm_state530"], "PostState" : ["ap_ST_fsm_state529"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_342_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state529", "LastState" : ["ap_ST_fsm_state540"], "QuitState" : ["ap_ST_fsm_state529"], "PreState" : ["ap_ST_fsm_state528"], "PostState" : ["ap_ST_fsm_state528"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_338_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state528", "LastState" : ["ap_ST_fsm_state529"], "QuitState" : ["ap_ST_fsm_state528"], "PreState" : ["ap_ST_fsm_state527"], "PostState" : ["ap_ST_fsm_state715"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_439_28", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state721", "LastState" : ["ap_ST_fsm_state763"], "QuitState" : ["ap_ST_fsm_state721"], "PreState" : ["ap_ST_fsm_state720"], "PostState" : ["ap_ST_fsm_state717"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_435_26_VITIS_LOOP_436_27", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state717", "LastState" : ["ap_ST_fsm_state721"], "QuitState" : ["ap_ST_fsm_state717"], "PreState" : ["ap_ST_fsm_state716"], "PostState" : ["ap_ST_fsm_state715"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_432_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state715", "LastState" : ["ap_ST_fsm_state717"], "QuitState" : ["ap_ST_fsm_state715"], "PreState" : ["ap_ST_fsm_state528"], "PostState" : ["ap_ST_fsm_state764"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_486_32", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state769", "LastState" : ["ap_ST_fsm_state780"], "QuitState" : ["ap_ST_fsm_state769"], "PreState" : ["ap_ST_fsm_state768"], "PostState" : ["ap_ST_fsm_state781"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_492_33", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state781", "LastState" : ["ap_ST_fsm_state792"], "QuitState" : ["ap_ST_fsm_state781"], "PreState" : ["ap_ST_fsm_state769"], "PostState" : ["ap_ST_fsm_state793"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_498_34", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state793", "LastState" : ["ap_ST_fsm_state802"], "QuitState" : ["ap_ST_fsm_state793"], "PreState" : ["ap_ST_fsm_state781"], "PostState" : ["ap_ST_fsm_state803"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_503_35", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state803", "LastState" : ["ap_ST_fsm_state812"], "QuitState" : ["ap_ST_fsm_state803"], "PreState" : ["ap_ST_fsm_state768", "ap_ST_fsm_state793"], "PostState" : ["ap_ST_fsm_state768"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_471_31", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state768", "LastState" : ["ap_ST_fsm_state803"], "QuitState" : ["ap_ST_fsm_state768"], "PreState" : ["ap_ST_fsm_state767"], "PostState" : ["ap_ST_fsm_state764"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_466_29_VITIS_LOOP_467_30", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state764", "LastState" : ["ap_ST_fsm_state768"], "QuitState" : ["ap_ST_fsm_state764"], "PreState" : ["ap_ST_fsm_state715"], "PostState" : ["ap_ST_fsm_state524"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_337_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "812", "FirstState" : "ap_ST_fsm_state524", "LastState" : ["ap_ST_fsm_state764"], "QuitState" : ["ap_ST_fsm_state524"], "PreState" : ["ap_ST_fsm_state445"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mini_buffer_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shuffle_temp_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_17s_5_37_1_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_15ns_32_1_1_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_32s_32_1_1_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U18", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_8s_17_1_1_U19", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U20", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_1_1_U21", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U22", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U23", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_1_1_U24", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U25", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U26", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_17s_8ns_17_21_1_U27", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_8s_17_1_1_U28", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U29", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U30", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U31", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_32_1_1_U32", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U33", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U34", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U35", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_8ns_8_4_1_U36", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_8s_17_4_1_U37", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_17ns_33_4_1_U38", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U39", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U40", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_16ns_33_4_1_U41", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U42", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U43", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U44", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U45", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U46", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U47", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U48", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U49", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_19s_19_4_1_U50", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_11s_8s_8s_20_4_1_U51", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_20s_17ns_32_4_1_U52", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_16ns_32_4_1_U53", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_8ns_8_4_1_U54", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_17ns_33_4_1_U55", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U56", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_16ns_1ns_16ns_32_4_1_U57", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_16ns_32_4_1_U58", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U59", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U60", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U61", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U62", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U63", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_18_4_1_U64", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U65", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_19s_19_4_1_U66", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_11s_8s_8s_20_4_1_U67", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_20s_17ns_32_4_1_U68", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_8ns_8_4_1_U69", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U70", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_17ns_33_4_1_U71", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_16ns_32_4_1_U72", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	downsample_block {
		gmem2 {Type IO LastRead 377 FirstWrite 18}
		in_r {Type I LastRead 0 FirstWrite -1}
		dw_kernel {Type I LastRead 0 FirstWrite -1}
		conv1_kernel {Type I LastRead 0 FirstWrite -1}
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
		h_in {Type I LastRead 0 FirstWrite -1}
		w_in {Type I LastRead 0 FirstWrite -1}
		h_out {Type I LastRead 0 FirstWrite -1}
		w_out {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
