############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip9
set_top conv_bn_relu
add_files ../ip/ip6/conv_bn_relu.cpp
add_files ../ip/ip6/conv_bn_relu.h
add_files -tb ../ip/ip6/test_conv_bn_relu.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
#source "./ip9/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
