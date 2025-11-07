vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/floating_point_v7_1_15
vlib riviera/axi_protocol_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap floating_point_v7_1_15 riviera/floating_point_v7_1_15
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/sim/bd_886d.v" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_886d_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_886d_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_886d_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_886d_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_886d_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_886d_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_886d_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_886d_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_886d_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_886d_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_886d_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_886d_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_886d_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/sim/design_1_smartconnect_0_1.v" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/sim/bd_88fd.v" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_0/sim/bd_88fd_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_88fd_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_2/sim/bd_88fd_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_3/sim/bd_88fd_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_4/sim/bd_88fd_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_5/sim/bd_88fd_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_6/sim/bd_88fd_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_7/sim/bd_88fd_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_8/sim/bd_88fd_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_9/sim/bd_88fd_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_10/sim/bd_88fd_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_11/sim/bd_88fd_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_12/sim/bd_88fd_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/sim/design_1_smartconnect_1_0.v" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/sim/bd_880d.v" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_0/sim/bd_880d_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_1/sim/bd_880d_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_2/sim/bd_880d_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_3/sim/bd_880d_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_4/sim/bd_880d_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_5/sim/bd_880d_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_6/sim/bd_880d_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_7/sim/bd_880d_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_8/sim/bd_880d_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_9/sim/bd_880d_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_10/sim/bd_880d_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_11/sim/bd_880d_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_12/sim/bd_880d_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/sim/design_1_smartconnect_2_0.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_control_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_fadd_32ns_32ns_32_5_full_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_fdiv_32ns_32ns_32_12_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_flow_control_loop_pipe_sequential_init.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_gmem0_m_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mac_mul_sub_16ns_8ns_8ns_25_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_8ns_8ns_16_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_16ns_32ns_48_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_32s_16ns_32_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_mul_16ns_8ns_24_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_mul_16ns_16ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_mul_mul_25s_16ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_pooling_Pipeline_VITIS_LOOP_57_4_VITIS_LOOP_58_5.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_pooling_Pipeline_VITIS_LOOP_85_6_VITIS_LOOP_86_7.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_sdiv_18ns_9ns_16_22_seq_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling_sitofp_32ns_32_5_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/verilog/pooling.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/ip/pooling_fadd_32ns_32ns_32_5_full_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/ip/pooling_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/ip/pooling_fdiv_32ns_32ns_32_12_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1c03/hdl/ip/pooling_sitofp_32ns_32_5_no_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_pooling_0_1/sim/design_1_pooling_0_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/verilog/fully_connected_control_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/verilog/fully_connected_fadd_32ns_32ns_32_5_full_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/verilog/fully_connected_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/verilog/fully_connected_gmem0_m_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/verilog/fully_connected.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/ip/fully_connected_fadd_32ns_32ns_32_5_full_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c0e8/hdl/ip/fully_connected_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_fully_connected_0_1/sim/design_1_fully_connected_0_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_am_addmul_8ns_24ns_8ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_control_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_faddfsub_32ns_32ns_32_5_full_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_fdiv_32ns_32ns_32_12_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_fsqrt_32ns_32ns_32_12_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_gmem0_m_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mac_mul_sub_16ns_8ns_8ns_25_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_16ns_32s_32_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_32s_8ns_32_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_32s_16ns_32_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_mul_16ns_8ns_24_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_mul_16ns_16ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_mul_mul_25s_16ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu_sdiv_18ns_9ns_16_22_seq_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/verilog/conv_bn_relu.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/ip/conv_bn_relu_faddfsub_32ns_32ns_32_5_full_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/ip/conv_bn_relu_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/ip/conv_bn_relu_fdiv_32ns_32ns_32_12_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/ip/conv_bn_relu_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1286/hdl/ip/conv_bn_relu_fsqrt_32ns_32ns_32_12_no_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_conv_bn_relu_0_3/sim/design_1_conv_bn_relu_0_3.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_pooling_0_1/drivers/pooling_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_fully_connected_0_1/drivers/fully_connected_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_conv_bn_relu_0_3/drivers/conv_bn_relu_v1_0/src" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ip/design_1_channel_shuffle_0_7/drivers/channel_shuffle_v1_0/src" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_control_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_gmem0_m_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_mul_32s_16ns_32_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_mul_mul_8ns_16ns_16_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_mul_mul_16ns_16ns_32_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_mul_mul_17ns_8ns_25_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_mul_mul_17ns_25ns_42_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_udiv_16ns_8ns_16_20_seq_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle_urem_16ns_8ns_8_20_seq_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f854/hdl/verilog/channel_shuffle.v" \
"../../../bd/design_1/ip/design_1_channel_shuffle_0_7/sim/design_1_channel_shuffle_0_7.v" \

vlog -work xil_defaultlib \
"glbl.v"

