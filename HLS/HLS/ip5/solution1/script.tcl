############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip5
set_top channel_shuffle
add_files ../ip/ip6/channel_shuffle.h
add_files ../ip/ip6/channel_shuffle.cpp
add_files -tb ../ip/ip6/test_channel_shuffle.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./ip5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
