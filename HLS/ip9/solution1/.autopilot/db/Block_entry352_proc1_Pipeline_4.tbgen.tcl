set moduleName Block_entry352_proc1_Pipeline_4
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
set C_modelName {Block_entry352_proc1_Pipeline_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_conv_kernel_blk float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_3 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_4 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_5 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_6 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_7 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_8 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_9 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_10 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_conv_kernel_blk_11 float 32 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_conv_kernel_blk", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_conv_kernel_blk_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_conv_kernel_blk_address0 sc_out sc_lv 6 signal 0 } 
	{ local_conv_kernel_blk_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_conv_kernel_blk_we0 sc_out sc_logic 1 signal 0 } 
	{ local_conv_kernel_blk_d0 sc_out sc_lv 32 signal 0 } 
	{ local_conv_kernel_blk_1_address0 sc_out sc_lv 6 signal 1 } 
	{ local_conv_kernel_blk_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_conv_kernel_blk_1_we0 sc_out sc_logic 1 signal 1 } 
	{ local_conv_kernel_blk_1_d0 sc_out sc_lv 32 signal 1 } 
	{ local_conv_kernel_blk_2_address0 sc_out sc_lv 6 signal 2 } 
	{ local_conv_kernel_blk_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_conv_kernel_blk_2_we0 sc_out sc_logic 1 signal 2 } 
	{ local_conv_kernel_blk_2_d0 sc_out sc_lv 32 signal 2 } 
	{ local_conv_kernel_blk_3_address0 sc_out sc_lv 6 signal 3 } 
	{ local_conv_kernel_blk_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_conv_kernel_blk_3_we0 sc_out sc_logic 1 signal 3 } 
	{ local_conv_kernel_blk_3_d0 sc_out sc_lv 32 signal 3 } 
	{ local_conv_kernel_blk_4_address0 sc_out sc_lv 6 signal 4 } 
	{ local_conv_kernel_blk_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_conv_kernel_blk_4_we0 sc_out sc_logic 1 signal 4 } 
	{ local_conv_kernel_blk_4_d0 sc_out sc_lv 32 signal 4 } 
	{ local_conv_kernel_blk_5_address0 sc_out sc_lv 6 signal 5 } 
	{ local_conv_kernel_blk_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_conv_kernel_blk_5_we0 sc_out sc_logic 1 signal 5 } 
	{ local_conv_kernel_blk_5_d0 sc_out sc_lv 32 signal 5 } 
	{ local_conv_kernel_blk_6_address0 sc_out sc_lv 6 signal 6 } 
	{ local_conv_kernel_blk_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_conv_kernel_blk_6_we0 sc_out sc_logic 1 signal 6 } 
	{ local_conv_kernel_blk_6_d0 sc_out sc_lv 32 signal 6 } 
	{ local_conv_kernel_blk_7_address0 sc_out sc_lv 6 signal 7 } 
	{ local_conv_kernel_blk_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_conv_kernel_blk_7_we0 sc_out sc_logic 1 signal 7 } 
	{ local_conv_kernel_blk_7_d0 sc_out sc_lv 32 signal 7 } 
	{ local_conv_kernel_blk_8_address0 sc_out sc_lv 6 signal 8 } 
	{ local_conv_kernel_blk_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_conv_kernel_blk_8_we0 sc_out sc_logic 1 signal 8 } 
	{ local_conv_kernel_blk_8_d0 sc_out sc_lv 32 signal 8 } 
	{ local_conv_kernel_blk_9_address0 sc_out sc_lv 6 signal 9 } 
	{ local_conv_kernel_blk_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_conv_kernel_blk_9_we0 sc_out sc_logic 1 signal 9 } 
	{ local_conv_kernel_blk_9_d0 sc_out sc_lv 32 signal 9 } 
	{ local_conv_kernel_blk_10_address0 sc_out sc_lv 6 signal 10 } 
	{ local_conv_kernel_blk_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_conv_kernel_blk_10_we0 sc_out sc_logic 1 signal 10 } 
	{ local_conv_kernel_blk_10_d0 sc_out sc_lv 32 signal 10 } 
	{ local_conv_kernel_blk_11_address0 sc_out sc_lv 6 signal 11 } 
	{ local_conv_kernel_blk_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_conv_kernel_blk_11_we0 sc_out sc_logic 1 signal 11 } 
	{ local_conv_kernel_blk_11_d0 sc_out sc_lv 32 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_conv_kernel_blk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_1", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_2", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_3", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_4", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_5", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_6", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_7", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_8", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_9", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_10", "role": "d0" }} , 
 	{ "name": "local_conv_kernel_blk_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "address0" }} , 
 	{ "name": "local_conv_kernel_blk_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "ce0" }} , 
 	{ "name": "local_conv_kernel_blk_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "we0" }} , 
 	{ "name": "local_conv_kernel_blk_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_conv_kernel_blk_11", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U29", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_7ns_5ns_4_11_1_U30", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_6ns_9_1_1_U31", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		local_conv_kernel_blk_11 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "588", "Max" : "588"}
	, {"Name" : "Interval", "Min" : "588", "Max" : "588"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	local_conv_kernel_blk { ap_memory {  { local_conv_kernel_blk_address0 mem_address 1 6 }  { local_conv_kernel_blk_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_we0 mem_we 1 1 }  { local_conv_kernel_blk_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_1 { ap_memory {  { local_conv_kernel_blk_1_address0 mem_address 1 6 }  { local_conv_kernel_blk_1_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_1_we0 mem_we 1 1 }  { local_conv_kernel_blk_1_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_2 { ap_memory {  { local_conv_kernel_blk_2_address0 mem_address 1 6 }  { local_conv_kernel_blk_2_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_2_we0 mem_we 1 1 }  { local_conv_kernel_blk_2_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_3 { ap_memory {  { local_conv_kernel_blk_3_address0 mem_address 1 6 }  { local_conv_kernel_blk_3_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_3_we0 mem_we 1 1 }  { local_conv_kernel_blk_3_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_4 { ap_memory {  { local_conv_kernel_blk_4_address0 mem_address 1 6 }  { local_conv_kernel_blk_4_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_4_we0 mem_we 1 1 }  { local_conv_kernel_blk_4_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_5 { ap_memory {  { local_conv_kernel_blk_5_address0 mem_address 1 6 }  { local_conv_kernel_blk_5_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_5_we0 mem_we 1 1 }  { local_conv_kernel_blk_5_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_6 { ap_memory {  { local_conv_kernel_blk_6_address0 mem_address 1 6 }  { local_conv_kernel_blk_6_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_6_we0 mem_we 1 1 }  { local_conv_kernel_blk_6_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_7 { ap_memory {  { local_conv_kernel_blk_7_address0 mem_address 1 6 }  { local_conv_kernel_blk_7_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_7_we0 mem_we 1 1 }  { local_conv_kernel_blk_7_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_8 { ap_memory {  { local_conv_kernel_blk_8_address0 mem_address 1 6 }  { local_conv_kernel_blk_8_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_8_we0 mem_we 1 1 }  { local_conv_kernel_blk_8_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_9 { ap_memory {  { local_conv_kernel_blk_9_address0 mem_address 1 6 }  { local_conv_kernel_blk_9_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_9_we0 mem_we 1 1 }  { local_conv_kernel_blk_9_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_10 { ap_memory {  { local_conv_kernel_blk_10_address0 mem_address 1 6 }  { local_conv_kernel_blk_10_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_10_we0 mem_we 1 1 }  { local_conv_kernel_blk_10_d0 mem_din 1 32 } } }
	local_conv_kernel_blk_11 { ap_memory {  { local_conv_kernel_blk_11_address0 mem_address 1 6 }  { local_conv_kernel_blk_11_ce0 mem_ce 1 1 }  { local_conv_kernel_blk_11_we0 mem_we 1 1 }  { local_conv_kernel_blk_11_d0 mem_din 1 32 } } }
}
