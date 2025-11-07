############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project channel
set_top channel_shuffle
add_files ../ip/ip6/channel_shuffle.cpp
add_files ../ip/ip6/channel_shuffle.h
add_files -tb ../ip/ip6/test_channel_shuffle.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./channel/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
