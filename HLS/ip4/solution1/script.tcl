############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip4
set_top output_conv_pool_bn
add_files ../ip/ip4/output_conv_pool_bn.cpp
add_files ../ip/ip4/output_conv_pool_bn.h
add_files -tb ../ip/ip4/test_output_conv_pool_bn.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./ip4/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
