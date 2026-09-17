vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_15
vlib modelsim_lib/msim/processing_system7_vip_v1_0_17
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_28
vlib modelsim_lib/msim/axi_crossbar_v2_1_30
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_29
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/axi_clock_converter_v2_1_28
vlib modelsim_lib/msim/blk_mem_gen_v8_4_7
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_29

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 modelsim_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 modelsim_lib/msim/processing_system7_vip_v1_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 modelsim_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 modelsim_lib/msim/axi_crossbar_v2_1_30
vmap axi_protocol_converter_v2_1_29 modelsim_lib/msim/axi_protocol_converter_v2_1_29
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap axi_clock_converter_v2_1_28 modelsim_lib/msim/axi_clock_converter_v2_1_28
vmap blk_mem_gen_v8_4_7 modelsim_lib/msim/blk_mem_gen_v8_4_7
vmap axi_dwidth_converter_v2_1_29 modelsim_lib/msim/axi_dwidth_converter_v2_1_29

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/bd_ocm/ip/bd_ocm_processing_system7_0_0/sim/bd_ocm_processing_system7_0_0.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_ap_s_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_aw_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_bi_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_Block_entry61_proc.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_ca_m_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_control_s_axi.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_fifo_w13_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_fifo_w17_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_fifo_w18_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_fifo_w19_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_fifo_w32_d2_S.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_flow_control_loop_pipe_sequential_init.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_hls_deadlock_detection_unit.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_Loop_VITIS_LOOP_144_1_proc.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_Loop_VITIS_LOOP_144_1_proc_Pipeline_VITIS_LOOP_150_3.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mac_muladd_8ns_8s_20s_20_4_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mac_muladd_8s_8ns_20s_20_4_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mul_13ns_13ns_26_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mul_16ns_13ns_27_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mul_16ns_13ns_29_1_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_mul_17s_32s_32_2_1.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_sa_reset.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top_sa_store.v" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog/shell_top.v" \
"../../../bd/bd_ocm/ip/bd_ocm_shell_top_0_0/sim/bd_ocm_shell_top_0_0.v" \

vlog -work generic_baseblocks_v2_1_1 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -64 -93  \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/bd_ocm/ip/bd_ocm_xbar_0/sim/bd_ocm_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/bd_ocm/ip/bd_ocm_auto_pc_0/sim/bd_ocm_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -64 -93  \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_ocm/ip/bd_ocm_rst_ps7_0_50M_0/sim/bd_ocm_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/bd_ocm/ip/bd_ocm_xbar_1/sim/bd_ocm_xbar_1.v" \

vlog -work axi_clock_converter_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/769c/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_7 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/670d/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/ec67/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/6b2b/hdl" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ipshared/971c/hdl/verilog" "+incdir+../../../../sa.gen/sources_1/bd/bd_ocm/ip/bd_ocm_shell_top_0_0/drivers/shell_top_v1_0/src" "+incdir+/opt/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/bd_ocm/ip/bd_ocm_auto_us_0/sim/bd_ocm_auto_us_0.v" \
"../../../bd/bd_ocm/ip/bd_ocm_auto_us_1/sim/bd_ocm_auto_us_1.v" \
"../../../bd/bd_ocm/ip/bd_ocm_auto_us_2/sim/bd_ocm_auto_us_2.v" \
"../../../bd/bd_ocm/ip/bd_ocm_auto_pc_1/sim/bd_ocm_auto_pc_1.v" \
"../../../bd/bd_ocm/sim/bd_ocm.v" \

vlog -work xil_defaultlib \
"glbl.v"

