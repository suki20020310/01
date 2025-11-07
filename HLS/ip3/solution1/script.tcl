############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip3
set_top downsample_block
add_files ../ip/ip3/downsample_block.h
add_files ../ip/ip3/downsample_block.cpp
add_files -tb ../ip/ip3/test_downsample_block.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./ip3/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
