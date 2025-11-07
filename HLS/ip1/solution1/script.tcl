############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip1
set_top initial_conv_bn_relu
add_files ../ip/Ip1/initial_conv_bn_relu.h
add_files ../ip/Ip1/initial_conv_bn_relu.cpp
add_files -tb ../ip/Ip1/test_initial_conv_bn_relu.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./ip1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
