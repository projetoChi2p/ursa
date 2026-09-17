// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      mxm_execute_ursa
`define AUTOTB_DUT_INST AESL_inst_mxm_execute_ursa
`define AUTOTB_TOP      apatb_mxm_execute_ursa_top
`define AUTOTB_LAT_RESULT_FILE "mxm_execute_ursa.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "mxm_execute_ursa.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_mxm_execute_ursa_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_aw 1
`define AESL_DEPTH_bi 1
`define AESL_DEPTH_ca 1
`define AESL_DEPTH_addr_a0 1
`define AESL_DEPTH_a0_p 1
`define AESL_DEPTH_addr_b0 1
`define AESL_DEPTH_b0_q 1
`define AESL_DEPTH_addr_c0 1
`define AESL_DEPTH_m 1
`define AUTOTB_TVIN_aw  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_aw.dat"
`define AUTOTB_TVIN_bi  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_bi.dat"
`define AUTOTB_TVIN_addr_a0  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_addr_a0.dat"
`define AUTOTB_TVIN_a0_p  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_a0_p.dat"
`define AUTOTB_TVIN_addr_b0  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_addr_b0.dat"
`define AUTOTB_TVIN_b0_q  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_b0_q.dat"
`define AUTOTB_TVIN_addr_c0  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_addr_c0.dat"
`define AUTOTB_TVIN_m  "../tv/cdatafile/c.mxm_execute_ursa.autotvin_m.dat"
`define AUTOTB_TVIN_aw_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_aw.dat"
`define AUTOTB_TVIN_bi_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_bi.dat"
`define AUTOTB_TVIN_addr_a0_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_addr_a0.dat"
`define AUTOTB_TVIN_a0_p_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_a0_p.dat"
`define AUTOTB_TVIN_addr_b0_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_addr_b0.dat"
`define AUTOTB_TVIN_b0_q_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_b0_q.dat"
`define AUTOTB_TVIN_addr_c0_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_addr_c0.dat"
`define AUTOTB_TVIN_m_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvin_m.dat"
`define AUTOTB_TVOUT_ca  "../tv/cdatafile/c.mxm_execute_ursa.autotvout_ca.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.mxm_execute_ursa.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_ca_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvout_ca.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 2147483647;
parameter LENGTH_a0_p = 1;
parameter LENGTH_addr_a0 = 1;
parameter LENGTH_addr_b0 = 1;
parameter LENGTH_addr_c0 = 1;
parameter LENGTH_ap_return = 1;
parameter LENGTH_aw = 4096;
parameter LENGTH_b0_q = 1;
parameter LENGTH_bi = 4096;
parameter LENGTH_ca = 4096;
parameter LENGTH_m = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] ap_AWADDR;
wire  ap_AWVALID;
wire  ap_AWREADY;
wire  ap_WVALID;
wire  ap_WREADY;
wire [31 : 0] ap_WDATA;
wire [3 : 0] ap_WSTRB;
wire [5 : 0] ap_ARADDR;
wire  ap_ARVALID;
wire  ap_ARREADY;
wire  ap_RVALID;
wire  ap_RREADY;
wire [31 : 0] ap_RDATA;
wire [1 : 0] ap_RRESP;
wire  ap_BVALID;
wire  ap_BREADY;
wire [1 : 0] ap_BRESP;
wire  ap_INTERRUPT;
wire [5 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [5 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  aw_AWVALID;
wire  aw_AWREADY;
wire [31 : 0] aw_AWADDR;
wire [0 : 0] aw_AWID;
wire [7 : 0] aw_AWLEN;
wire [2 : 0] aw_AWSIZE;
wire [1 : 0] aw_AWBURST;
wire [1 : 0] aw_AWLOCK;
wire [3 : 0] aw_AWCACHE;
wire [2 : 0] aw_AWPROT;
wire [3 : 0] aw_AWQOS;
wire [3 : 0] aw_AWREGION;
wire [0 : 0] aw_AWUSER;
wire  aw_WVALID;
wire  aw_WREADY;
wire [31 : 0] aw_WDATA;
wire [3 : 0] aw_WSTRB;
wire  aw_WLAST;
wire [0 : 0] aw_WID;
wire [0 : 0] aw_WUSER;
wire  aw_ARVALID;
wire  aw_ARREADY;
wire [31 : 0] aw_ARADDR;
wire [0 : 0] aw_ARID;
wire [7 : 0] aw_ARLEN;
wire [2 : 0] aw_ARSIZE;
wire [1 : 0] aw_ARBURST;
wire [1 : 0] aw_ARLOCK;
wire [3 : 0] aw_ARCACHE;
wire [2 : 0] aw_ARPROT;
wire [3 : 0] aw_ARQOS;
wire [3 : 0] aw_ARREGION;
wire [0 : 0] aw_ARUSER;
wire  aw_RVALID;
wire  aw_RREADY;
wire [31 : 0] aw_RDATA;
wire  aw_RLAST;
wire [0 : 0] aw_RID;
wire [0 : 0] aw_RUSER;
wire [1 : 0] aw_RRESP;
wire  aw_BVALID;
wire  aw_BREADY;
wire [1 : 0] aw_BRESP;
wire [0 : 0] aw_BID;
wire [0 : 0] aw_BUSER;
wire  bi_AWVALID;
wire  bi_AWREADY;
wire [31 : 0] bi_AWADDR;
wire [0 : 0] bi_AWID;
wire [7 : 0] bi_AWLEN;
wire [2 : 0] bi_AWSIZE;
wire [1 : 0] bi_AWBURST;
wire [1 : 0] bi_AWLOCK;
wire [3 : 0] bi_AWCACHE;
wire [2 : 0] bi_AWPROT;
wire [3 : 0] bi_AWQOS;
wire [3 : 0] bi_AWREGION;
wire [0 : 0] bi_AWUSER;
wire  bi_WVALID;
wire  bi_WREADY;
wire [31 : 0] bi_WDATA;
wire [3 : 0] bi_WSTRB;
wire  bi_WLAST;
wire [0 : 0] bi_WID;
wire [0 : 0] bi_WUSER;
wire  bi_ARVALID;
wire  bi_ARREADY;
wire [31 : 0] bi_ARADDR;
wire [0 : 0] bi_ARID;
wire [7 : 0] bi_ARLEN;
wire [2 : 0] bi_ARSIZE;
wire [1 : 0] bi_ARBURST;
wire [1 : 0] bi_ARLOCK;
wire [3 : 0] bi_ARCACHE;
wire [2 : 0] bi_ARPROT;
wire [3 : 0] bi_ARQOS;
wire [3 : 0] bi_ARREGION;
wire [0 : 0] bi_ARUSER;
wire  bi_RVALID;
wire  bi_RREADY;
wire [31 : 0] bi_RDATA;
wire  bi_RLAST;
wire [0 : 0] bi_RID;
wire [0 : 0] bi_RUSER;
wire [1 : 0] bi_RRESP;
wire  bi_BVALID;
wire  bi_BREADY;
wire [1 : 0] bi_BRESP;
wire [0 : 0] bi_BID;
wire [0 : 0] bi_BUSER;
wire  ca_AWVALID;
wire  ca_AWREADY;
wire [31 : 0] ca_AWADDR;
wire [0 : 0] ca_AWID;
wire [7 : 0] ca_AWLEN;
wire [2 : 0] ca_AWSIZE;
wire [1 : 0] ca_AWBURST;
wire [1 : 0] ca_AWLOCK;
wire [3 : 0] ca_AWCACHE;
wire [2 : 0] ca_AWPROT;
wire [3 : 0] ca_AWQOS;
wire [3 : 0] ca_AWREGION;
wire [0 : 0] ca_AWUSER;
wire  ca_WVALID;
wire  ca_WREADY;
wire [31 : 0] ca_WDATA;
wire [3 : 0] ca_WSTRB;
wire  ca_WLAST;
wire [0 : 0] ca_WID;
wire [0 : 0] ca_WUSER;
wire  ca_ARVALID;
wire  ca_ARREADY;
wire [31 : 0] ca_ARADDR;
wire [0 : 0] ca_ARID;
wire [7 : 0] ca_ARLEN;
wire [2 : 0] ca_ARSIZE;
wire [1 : 0] ca_ARBURST;
wire [1 : 0] ca_ARLOCK;
wire [3 : 0] ca_ARCACHE;
wire [2 : 0] ca_ARPROT;
wire [3 : 0] ca_ARQOS;
wire [3 : 0] ca_ARREGION;
wire [0 : 0] ca_ARUSER;
wire  ca_RVALID;
wire  ca_RREADY;
wire [31 : 0] ca_RDATA;
wire  ca_RLAST;
wire [0 : 0] ca_RID;
wire [0 : 0] ca_RUSER;
wire [1 : 0] ca_RRESP;
wire  ca_BVALID;
wire  ca_BREADY;
wire [1 : 0] ca_BRESP;
wire [0 : 0] ca_BID;
wire [0 : 0] ca_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire ap_read_data_finish;
wire ap_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_ap_AWADDR(ap_AWADDR),
    .s_axi_ap_AWVALID(ap_AWVALID),
    .s_axi_ap_AWREADY(ap_AWREADY),
    .s_axi_ap_WVALID(ap_WVALID),
    .s_axi_ap_WREADY(ap_WREADY),
    .s_axi_ap_WDATA(ap_WDATA),
    .s_axi_ap_WSTRB(ap_WSTRB),
    .s_axi_ap_ARADDR(ap_ARADDR),
    .s_axi_ap_ARVALID(ap_ARVALID),
    .s_axi_ap_ARREADY(ap_ARREADY),
    .s_axi_ap_RVALID(ap_RVALID),
    .s_axi_ap_RREADY(ap_RREADY),
    .s_axi_ap_RDATA(ap_RDATA),
    .s_axi_ap_RRESP(ap_RRESP),
    .s_axi_ap_BVALID(ap_BVALID),
    .s_axi_ap_BREADY(ap_BREADY),
    .s_axi_ap_BRESP(ap_BRESP),
    .interrupt(ap_INTERRUPT),
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_aw_AWVALID(aw_AWVALID),
    .m_axi_aw_AWREADY(aw_AWREADY),
    .m_axi_aw_AWADDR(aw_AWADDR),
    .m_axi_aw_AWID(aw_AWID),
    .m_axi_aw_AWLEN(aw_AWLEN),
    .m_axi_aw_AWSIZE(aw_AWSIZE),
    .m_axi_aw_AWBURST(aw_AWBURST),
    .m_axi_aw_AWLOCK(aw_AWLOCK),
    .m_axi_aw_AWCACHE(aw_AWCACHE),
    .m_axi_aw_AWPROT(aw_AWPROT),
    .m_axi_aw_AWQOS(aw_AWQOS),
    .m_axi_aw_AWREGION(aw_AWREGION),
    .m_axi_aw_AWUSER(aw_AWUSER),
    .m_axi_aw_WVALID(aw_WVALID),
    .m_axi_aw_WREADY(aw_WREADY),
    .m_axi_aw_WDATA(aw_WDATA),
    .m_axi_aw_WSTRB(aw_WSTRB),
    .m_axi_aw_WLAST(aw_WLAST),
    .m_axi_aw_WID(aw_WID),
    .m_axi_aw_WUSER(aw_WUSER),
    .m_axi_aw_ARVALID(aw_ARVALID),
    .m_axi_aw_ARREADY(aw_ARREADY),
    .m_axi_aw_ARADDR(aw_ARADDR),
    .m_axi_aw_ARID(aw_ARID),
    .m_axi_aw_ARLEN(aw_ARLEN),
    .m_axi_aw_ARSIZE(aw_ARSIZE),
    .m_axi_aw_ARBURST(aw_ARBURST),
    .m_axi_aw_ARLOCK(aw_ARLOCK),
    .m_axi_aw_ARCACHE(aw_ARCACHE),
    .m_axi_aw_ARPROT(aw_ARPROT),
    .m_axi_aw_ARQOS(aw_ARQOS),
    .m_axi_aw_ARREGION(aw_ARREGION),
    .m_axi_aw_ARUSER(aw_ARUSER),
    .m_axi_aw_RVALID(aw_RVALID),
    .m_axi_aw_RREADY(aw_RREADY),
    .m_axi_aw_RDATA(aw_RDATA),
    .m_axi_aw_RLAST(aw_RLAST),
    .m_axi_aw_RID(aw_RID),
    .m_axi_aw_RUSER(aw_RUSER),
    .m_axi_aw_RRESP(aw_RRESP),
    .m_axi_aw_BVALID(aw_BVALID),
    .m_axi_aw_BREADY(aw_BREADY),
    .m_axi_aw_BRESP(aw_BRESP),
    .m_axi_aw_BID(aw_BID),
    .m_axi_aw_BUSER(aw_BUSER),
    .m_axi_bi_AWVALID(bi_AWVALID),
    .m_axi_bi_AWREADY(bi_AWREADY),
    .m_axi_bi_AWADDR(bi_AWADDR),
    .m_axi_bi_AWID(bi_AWID),
    .m_axi_bi_AWLEN(bi_AWLEN),
    .m_axi_bi_AWSIZE(bi_AWSIZE),
    .m_axi_bi_AWBURST(bi_AWBURST),
    .m_axi_bi_AWLOCK(bi_AWLOCK),
    .m_axi_bi_AWCACHE(bi_AWCACHE),
    .m_axi_bi_AWPROT(bi_AWPROT),
    .m_axi_bi_AWQOS(bi_AWQOS),
    .m_axi_bi_AWREGION(bi_AWREGION),
    .m_axi_bi_AWUSER(bi_AWUSER),
    .m_axi_bi_WVALID(bi_WVALID),
    .m_axi_bi_WREADY(bi_WREADY),
    .m_axi_bi_WDATA(bi_WDATA),
    .m_axi_bi_WSTRB(bi_WSTRB),
    .m_axi_bi_WLAST(bi_WLAST),
    .m_axi_bi_WID(bi_WID),
    .m_axi_bi_WUSER(bi_WUSER),
    .m_axi_bi_ARVALID(bi_ARVALID),
    .m_axi_bi_ARREADY(bi_ARREADY),
    .m_axi_bi_ARADDR(bi_ARADDR),
    .m_axi_bi_ARID(bi_ARID),
    .m_axi_bi_ARLEN(bi_ARLEN),
    .m_axi_bi_ARSIZE(bi_ARSIZE),
    .m_axi_bi_ARBURST(bi_ARBURST),
    .m_axi_bi_ARLOCK(bi_ARLOCK),
    .m_axi_bi_ARCACHE(bi_ARCACHE),
    .m_axi_bi_ARPROT(bi_ARPROT),
    .m_axi_bi_ARQOS(bi_ARQOS),
    .m_axi_bi_ARREGION(bi_ARREGION),
    .m_axi_bi_ARUSER(bi_ARUSER),
    .m_axi_bi_RVALID(bi_RVALID),
    .m_axi_bi_RREADY(bi_RREADY),
    .m_axi_bi_RDATA(bi_RDATA),
    .m_axi_bi_RLAST(bi_RLAST),
    .m_axi_bi_RID(bi_RID),
    .m_axi_bi_RUSER(bi_RUSER),
    .m_axi_bi_RRESP(bi_RRESP),
    .m_axi_bi_BVALID(bi_BVALID),
    .m_axi_bi_BREADY(bi_BREADY),
    .m_axi_bi_BRESP(bi_BRESP),
    .m_axi_bi_BID(bi_BID),
    .m_axi_bi_BUSER(bi_BUSER),
    .m_axi_ca_AWVALID(ca_AWVALID),
    .m_axi_ca_AWREADY(ca_AWREADY),
    .m_axi_ca_AWADDR(ca_AWADDR),
    .m_axi_ca_AWID(ca_AWID),
    .m_axi_ca_AWLEN(ca_AWLEN),
    .m_axi_ca_AWSIZE(ca_AWSIZE),
    .m_axi_ca_AWBURST(ca_AWBURST),
    .m_axi_ca_AWLOCK(ca_AWLOCK),
    .m_axi_ca_AWCACHE(ca_AWCACHE),
    .m_axi_ca_AWPROT(ca_AWPROT),
    .m_axi_ca_AWQOS(ca_AWQOS),
    .m_axi_ca_AWREGION(ca_AWREGION),
    .m_axi_ca_AWUSER(ca_AWUSER),
    .m_axi_ca_WVALID(ca_WVALID),
    .m_axi_ca_WREADY(ca_WREADY),
    .m_axi_ca_WDATA(ca_WDATA),
    .m_axi_ca_WSTRB(ca_WSTRB),
    .m_axi_ca_WLAST(ca_WLAST),
    .m_axi_ca_WID(ca_WID),
    .m_axi_ca_WUSER(ca_WUSER),
    .m_axi_ca_ARVALID(ca_ARVALID),
    .m_axi_ca_ARREADY(ca_ARREADY),
    .m_axi_ca_ARADDR(ca_ARADDR),
    .m_axi_ca_ARID(ca_ARID),
    .m_axi_ca_ARLEN(ca_ARLEN),
    .m_axi_ca_ARSIZE(ca_ARSIZE),
    .m_axi_ca_ARBURST(ca_ARBURST),
    .m_axi_ca_ARLOCK(ca_ARLOCK),
    .m_axi_ca_ARCACHE(ca_ARCACHE),
    .m_axi_ca_ARPROT(ca_ARPROT),
    .m_axi_ca_ARQOS(ca_ARQOS),
    .m_axi_ca_ARREGION(ca_ARREGION),
    .m_axi_ca_ARUSER(ca_ARUSER),
    .m_axi_ca_RVALID(ca_RVALID),
    .m_axi_ca_RREADY(ca_RREADY),
    .m_axi_ca_RDATA(ca_RDATA),
    .m_axi_ca_RLAST(ca_RLAST),
    .m_axi_ca_RID(ca_RID),
    .m_axi_ca_RUSER(ca_RUSER),
    .m_axi_ca_RRESP(ca_RRESP),
    .m_axi_ca_BVALID(ca_BVALID),
    .m_axi_ca_BREADY(ca_BREADY),
    .m_axi_ca_BRESP(ca_BRESP),
    .m_axi_ca_BID(ca_BID),
    .m_axi_ca_BUSER(ca_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish & ap_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & ap_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end









wire    AESL_axi_master_aw_ready;
wire    AESL_axi_master_aw_done;
AESL_axi_master_aw AESL_AXI_MASTER_aw(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_aw_AWVALID (aw_AWVALID),
    .TRAN_aw_AWREADY (aw_AWREADY),
    .TRAN_aw_AWADDR (aw_AWADDR),
    .TRAN_aw_AWID (aw_AWID),
    .TRAN_aw_AWLEN (aw_AWLEN),
    .TRAN_aw_AWSIZE (aw_AWSIZE),
    .TRAN_aw_AWBURST (aw_AWBURST),
    .TRAN_aw_AWLOCK (aw_AWLOCK),
    .TRAN_aw_AWCACHE (aw_AWCACHE),
    .TRAN_aw_AWPROT (aw_AWPROT),
    .TRAN_aw_AWQOS (aw_AWQOS),
    .TRAN_aw_AWREGION (aw_AWREGION),
    .TRAN_aw_AWUSER (aw_AWUSER),
    .TRAN_aw_WVALID (aw_WVALID),
    .TRAN_aw_WREADY (aw_WREADY),
    .TRAN_aw_WDATA (aw_WDATA),
    .TRAN_aw_WSTRB (aw_WSTRB),
    .TRAN_aw_WLAST (aw_WLAST),
    .TRAN_aw_WID (aw_WID),
    .TRAN_aw_WUSER (aw_WUSER),
    .TRAN_aw_ARVALID (aw_ARVALID),
    .TRAN_aw_ARREADY (aw_ARREADY),
    .TRAN_aw_ARADDR (aw_ARADDR),
    .TRAN_aw_ARID (aw_ARID),
    .TRAN_aw_ARLEN (aw_ARLEN),
    .TRAN_aw_ARSIZE (aw_ARSIZE),
    .TRAN_aw_ARBURST (aw_ARBURST),
    .TRAN_aw_ARLOCK (aw_ARLOCK),
    .TRAN_aw_ARCACHE (aw_ARCACHE),
    .TRAN_aw_ARPROT (aw_ARPROT),
    .TRAN_aw_ARQOS (aw_ARQOS),
    .TRAN_aw_ARREGION (aw_ARREGION),
    .TRAN_aw_ARUSER (aw_ARUSER),
    .TRAN_aw_RVALID (aw_RVALID),
    .TRAN_aw_RREADY (aw_RREADY),
    .TRAN_aw_RDATA (aw_RDATA),
    .TRAN_aw_RLAST (aw_RLAST),
    .TRAN_aw_RID (aw_RID),
    .TRAN_aw_RUSER (aw_RUSER),
    .TRAN_aw_RRESP (aw_RRESP),
    .TRAN_aw_BVALID (aw_BVALID),
    .TRAN_aw_BREADY (aw_BREADY),
    .TRAN_aw_BRESP (aw_BRESP),
    .TRAN_aw_BID (aw_BID),
    .TRAN_aw_BUSER (aw_BUSER),
    .ready (AESL_axi_master_aw_ready),
    .done  (AESL_axi_master_aw_done)
);
assign    AESL_axi_master_aw_ready    =   ready;
assign    AESL_axi_master_aw_done    =   AESL_done_delay;
wire    AESL_axi_master_bi_ready;
wire    AESL_axi_master_bi_done;
AESL_axi_master_bi AESL_AXI_MASTER_bi(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bi_AWVALID (bi_AWVALID),
    .TRAN_bi_AWREADY (bi_AWREADY),
    .TRAN_bi_AWADDR (bi_AWADDR),
    .TRAN_bi_AWID (bi_AWID),
    .TRAN_bi_AWLEN (bi_AWLEN),
    .TRAN_bi_AWSIZE (bi_AWSIZE),
    .TRAN_bi_AWBURST (bi_AWBURST),
    .TRAN_bi_AWLOCK (bi_AWLOCK),
    .TRAN_bi_AWCACHE (bi_AWCACHE),
    .TRAN_bi_AWPROT (bi_AWPROT),
    .TRAN_bi_AWQOS (bi_AWQOS),
    .TRAN_bi_AWREGION (bi_AWREGION),
    .TRAN_bi_AWUSER (bi_AWUSER),
    .TRAN_bi_WVALID (bi_WVALID),
    .TRAN_bi_WREADY (bi_WREADY),
    .TRAN_bi_WDATA (bi_WDATA),
    .TRAN_bi_WSTRB (bi_WSTRB),
    .TRAN_bi_WLAST (bi_WLAST),
    .TRAN_bi_WID (bi_WID),
    .TRAN_bi_WUSER (bi_WUSER),
    .TRAN_bi_ARVALID (bi_ARVALID),
    .TRAN_bi_ARREADY (bi_ARREADY),
    .TRAN_bi_ARADDR (bi_ARADDR),
    .TRAN_bi_ARID (bi_ARID),
    .TRAN_bi_ARLEN (bi_ARLEN),
    .TRAN_bi_ARSIZE (bi_ARSIZE),
    .TRAN_bi_ARBURST (bi_ARBURST),
    .TRAN_bi_ARLOCK (bi_ARLOCK),
    .TRAN_bi_ARCACHE (bi_ARCACHE),
    .TRAN_bi_ARPROT (bi_ARPROT),
    .TRAN_bi_ARQOS (bi_ARQOS),
    .TRAN_bi_ARREGION (bi_ARREGION),
    .TRAN_bi_ARUSER (bi_ARUSER),
    .TRAN_bi_RVALID (bi_RVALID),
    .TRAN_bi_RREADY (bi_RREADY),
    .TRAN_bi_RDATA (bi_RDATA),
    .TRAN_bi_RLAST (bi_RLAST),
    .TRAN_bi_RID (bi_RID),
    .TRAN_bi_RUSER (bi_RUSER),
    .TRAN_bi_RRESP (bi_RRESP),
    .TRAN_bi_BVALID (bi_BVALID),
    .TRAN_bi_BREADY (bi_BREADY),
    .TRAN_bi_BRESP (bi_BRESP),
    .TRAN_bi_BID (bi_BID),
    .TRAN_bi_BUSER (bi_BUSER),
    .ready (AESL_axi_master_bi_ready),
    .done  (AESL_axi_master_bi_done)
);
assign    AESL_axi_master_bi_ready    =   ready;
assign    AESL_axi_master_bi_done    =   AESL_done_delay;
wire    AESL_axi_master_ca_ready;
wire    AESL_axi_master_ca_done;
AESL_axi_master_ca AESL_AXI_MASTER_ca(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ca_AWVALID (ca_AWVALID),
    .TRAN_ca_AWREADY (ca_AWREADY),
    .TRAN_ca_AWADDR (ca_AWADDR),
    .TRAN_ca_AWID (ca_AWID),
    .TRAN_ca_AWLEN (ca_AWLEN),
    .TRAN_ca_AWSIZE (ca_AWSIZE),
    .TRAN_ca_AWBURST (ca_AWBURST),
    .TRAN_ca_AWLOCK (ca_AWLOCK),
    .TRAN_ca_AWCACHE (ca_AWCACHE),
    .TRAN_ca_AWPROT (ca_AWPROT),
    .TRAN_ca_AWQOS (ca_AWQOS),
    .TRAN_ca_AWREGION (ca_AWREGION),
    .TRAN_ca_AWUSER (ca_AWUSER),
    .TRAN_ca_WVALID (ca_WVALID),
    .TRAN_ca_WREADY (ca_WREADY),
    .TRAN_ca_WDATA (ca_WDATA),
    .TRAN_ca_WSTRB (ca_WSTRB),
    .TRAN_ca_WLAST (ca_WLAST),
    .TRAN_ca_WID (ca_WID),
    .TRAN_ca_WUSER (ca_WUSER),
    .TRAN_ca_ARVALID (ca_ARVALID),
    .TRAN_ca_ARREADY (ca_ARREADY),
    .TRAN_ca_ARADDR (ca_ARADDR),
    .TRAN_ca_ARID (ca_ARID),
    .TRAN_ca_ARLEN (ca_ARLEN),
    .TRAN_ca_ARSIZE (ca_ARSIZE),
    .TRAN_ca_ARBURST (ca_ARBURST),
    .TRAN_ca_ARLOCK (ca_ARLOCK),
    .TRAN_ca_ARCACHE (ca_ARCACHE),
    .TRAN_ca_ARPROT (ca_ARPROT),
    .TRAN_ca_ARQOS (ca_ARQOS),
    .TRAN_ca_ARREGION (ca_ARREGION),
    .TRAN_ca_ARUSER (ca_ARUSER),
    .TRAN_ca_RVALID (ca_RVALID),
    .TRAN_ca_RREADY (ca_RREADY),
    .TRAN_ca_RDATA (ca_RDATA),
    .TRAN_ca_RLAST (ca_RLAST),
    .TRAN_ca_RID (ca_RID),
    .TRAN_ca_RUSER (ca_RUSER),
    .TRAN_ca_RRESP (ca_RRESP),
    .TRAN_ca_BVALID (ca_BVALID),
    .TRAN_ca_BREADY (ca_BREADY),
    .TRAN_ca_BRESP (ca_BRESP),
    .TRAN_ca_BID (ca_BID),
    .TRAN_ca_BUSER (ca_BUSER),
    .ready (AESL_axi_master_ca_ready),
    .done  (AESL_axi_master_ca_done)
);
assign    AESL_axi_master_ca_ready    =   ready;
assign    AESL_axi_master_ca_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);
AESL_axi_slave_ap AESL_AXI_SLAVE_ap(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_ap_AWADDR (ap_AWADDR),
    .TRAN_s_axi_ap_AWVALID (ap_AWVALID),
    .TRAN_s_axi_ap_AWREADY (ap_AWREADY),
    .TRAN_s_axi_ap_WVALID (ap_WVALID),
    .TRAN_s_axi_ap_WREADY (ap_WREADY),
    .TRAN_s_axi_ap_WDATA (ap_WDATA),
    .TRAN_s_axi_ap_WSTRB (ap_WSTRB),
    .TRAN_s_axi_ap_ARADDR (ap_ARADDR),
    .TRAN_s_axi_ap_ARVALID (ap_ARVALID),
    .TRAN_s_axi_ap_ARREADY (ap_ARREADY),
    .TRAN_s_axi_ap_RVALID (ap_RVALID),
    .TRAN_s_axi_ap_RREADY (ap_RREADY),
    .TRAN_s_axi_ap_RDATA (ap_RDATA),
    .TRAN_s_axi_ap_RRESP (ap_RRESP),
    .TRAN_s_axi_ap_BVALID (ap_BVALID),
    .TRAN_s_axi_ap_BREADY (ap_BREADY),
    .TRAN_s_axi_ap_BRESP (ap_BRESP),
    .TRAN_ap_interrupt (ap_INTERRUPT),
    .TRAN_ap_read_data_finish(ap_read_data_finish),
    .TRAN_ap_write_data_finish(ap_write_data_finish),
    .TRAN_ap_ready_out (AESL_ready),
    .TRAN_ap_ready_in (AESL_slave_ready),
    .TRAN_ap_done_out (AESL_slave_output_done),
    .TRAN_ap_idle_out (AESL_idle),
    .TRAN_ap_write_start_in     (AESL_slave_write_start_in),
    .TRAN_ap_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_ap_transaction_done_in (AESL_done_delay),
    .TRAN_ap_start_in  (AESL_slave_start)
);


reg dump_tvout_finish_ap_return;

initial begin : dump_tvout_runtime_sign_ap_return
    integer fp;
    dump_tvout_finish_ap_return = 0;
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_ap_return = 1;
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_aw;
reg [31:0] size_aw;
reg [31:0] size_aw_backup;
reg end_bi;
reg [31:0] size_bi;
reg [31:0] size_bi_backup;
reg end_addr_a0;
reg [31:0] size_addr_a0;
reg [31:0] size_addr_a0_backup;
reg end_a0_p;
reg [31:0] size_a0_p;
reg [31:0] size_a0_p_backup;
reg end_addr_b0;
reg [31:0] size_addr_b0;
reg [31:0] size_addr_b0_backup;
reg end_b0_q;
reg [31:0] size_b0_q;
reg [31:0] size_b0_q_backup;
reg end_addr_c0;
reg [31:0] size_addr_c0;
reg [31:0] size_addr_c0_backup;
reg end_m;
reg [31:0] size_m;
reg [31:0] size_m_backup;
reg end_ca;
reg [31:0] size_ca;
reg [31:0] size_ca_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_ca;

initial begin : dump_tvout_runtime_sign_ca
    integer fp;
    dump_tvout_finish_ca = 0;
    fp = $fopen(`AUTOTB_TVOUT_ca_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ca_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ca_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ca_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_ca = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
