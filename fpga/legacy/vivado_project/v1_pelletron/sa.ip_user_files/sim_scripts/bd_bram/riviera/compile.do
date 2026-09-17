transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_15
vlib riviera/processing_system7_vip_v1_0_17
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/axi_register_slice_v2_1_29
vlib riviera/fifo_generator_v13_2_9
vlib riviera/axi_data_fifo_v2_1_28
vlib riviera/axi_crossbar_v2_1_30
vlib riviera/axi_protocol_converter_v2_1_29
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/blk_mem_gen_v8_4_7
vlib riviera/axi_bram_ctrl_v4_1_9

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 riviera/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 riviera/processing_system7_vip_v1_0_17
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 riviera/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 riviera/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 riviera/axi_crossbar_v2_1_30
vmap axi_protocol_converter_v2_1_29 riviera/axi_protocol_converter_v2_1_29
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap blk_mem_gen_v8_4_7 riviera/blk_mem_gen_v8_4_7
vmap axi_bram_ctrl_v4_1_9 riviera/axi_bram_ctrl_v4_1_9

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../bd/bd_bram/ip/bd_bram_processing_system7_0_0/sim/bd_bram_processing_system7_0_0.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_ap_s_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_aw_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_bi_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_Block_entry61_proc.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_ca_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_control_s_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_fifo_w13_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_fifo_w17_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_fifo_w18_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_fifo_w19_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_fifo_w32_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_flow_control_loop_pipe_sequential_init.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_hls_deadlock_detection_unit.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_Loop_VITIS_LOOP_144_1_proc.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_Loop_VITIS_LOOP_144_1_proc_Pipeline_VITIS_LOOP_150_3.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mac_muladd_8ns_8s_20s_20_4_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mac_muladd_8s_8ns_20s_20_4_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mul_13ns_13ns_26_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mul_16ns_13ns_27_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mul_16ns_13ns_29_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_mul_17s_32s_32_2_1.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_sa_reset.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top_sa_store.v" \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog/shell_top.v" \
"../../../bd/bd_bram/ip/bd_bram_shell_top_0_0/sim/bd_bram_shell_top_0_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../bd/bd_bram/ip/bd_bram_xbar_0/sim/bd_bram_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../bd/bd_bram/ip/bd_bram_auto_pc_2/sim/bd_bram_auto_pc_2.v" \
"../../../bd/bd_bram/ip/bd_bram_auto_pc_0/sim/bd_bram_auto_pc_0.v" \
"../../../bd/bd_bram/ip/bd_bram_auto_pc_1/sim/bd_bram_auto_pc_1.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/bd_bram/ip/bd_bram_rst_ps7_0_50M_0/sim/bd_bram_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_7  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../bd/bd_bram/ip/bd_bram_blk_mem_gen_0_0/sim/bd_bram_blk_mem_gen_0_0.v" \
"../../../bd/bd_bram/ip/bd_bram_blk_mem_gen_1_0/sim/bd_bram_blk_mem_gen_1_0.v" \
"../../../bd/bd_bram/ip/bd_bram_blk_mem_gen_2_0/sim/bd_bram_blk_mem_gen_2_0.v" \

vcom -work axi_bram_ctrl_v4_1_9 -93  -incr \
"../../../../sa.gen/sources_1/bd/bd_bram/ipshared/5ed7/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/bd_bram/ip/bd_bram_axi_bram_ctrl_0_0/sim/bd_bram_axi_bram_ctrl_0_0.vhd" \
"../../../bd/bd_bram/ip/bd_bram_axi_bram_ctrl_1_0/sim/bd_bram_axi_bram_ctrl_1_0.vhd" \
"../../../bd/bd_bram/ip/bd_bram_axi_bram_ctrl_2_0/sim/bd_bram_axi_bram_ctrl_2_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_bram/ip/bd_bram_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l blk_mem_gen_v8_4_7 -l axi_bram_ctrl_v4_1_9 \
"../../../bd/bd_bram/ip/bd_bram_xbar_1/sim/bd_bram_xbar_1.v" \
"../../../bd/bd_bram/ip/bd_bram_xbar_2/sim/bd_bram_xbar_2.v" \
"../../../bd/bd_bram/ip/bd_bram_xbar_3/sim/bd_bram_xbar_3.v" \
"../../../bd/bd_bram/sim/bd_bram.v" \

vlog -work xil_defaultlib \
"glbl.v"

