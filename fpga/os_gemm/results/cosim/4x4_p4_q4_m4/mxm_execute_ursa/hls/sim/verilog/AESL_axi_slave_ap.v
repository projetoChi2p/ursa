// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_ap (
    clk,
    reset,
    TRAN_s_axi_ap_AWADDR,
    TRAN_s_axi_ap_AWVALID,
    TRAN_s_axi_ap_AWREADY,
    TRAN_s_axi_ap_WVALID,
    TRAN_s_axi_ap_WREADY,
    TRAN_s_axi_ap_WDATA,
    TRAN_s_axi_ap_WSTRB,
    TRAN_s_axi_ap_ARADDR,
    TRAN_s_axi_ap_ARVALID,
    TRAN_s_axi_ap_ARREADY,
    TRAN_s_axi_ap_RVALID,
    TRAN_s_axi_ap_RREADY,
    TRAN_s_axi_ap_RDATA,
    TRAN_s_axi_ap_RRESP,
    TRAN_s_axi_ap_BVALID,
    TRAN_s_axi_ap_BREADY,
    TRAN_s_axi_ap_BRESP,
    TRAN_ap_write_data_finish,
    TRAN_ap_read_data_finish,
    TRAN_ap_start_in,
    TRAN_ap_idle_out,
    TRAN_ap_ready_out,
    TRAN_ap_ready_in,
    TRAN_ap_done_out,
    TRAN_ap_write_start_in   ,
    TRAN_ap_write_start_finish,
    TRAN_ap_interrupt,
    TRAN_ap_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_a0_p "../tv/cdatafile/c.mxm_execute_ursa.autotvin_a0_p.dat"
`define TV_IN_b0_q "../tv/cdatafile/c.mxm_execute_ursa.autotvin_b0_q.dat"
`define TV_IN_m "../tv/cdatafile/c.mxm_execute_ursa.autotvin_m.dat"
`define TV_OUT_ap_return "../tv/rtldatafile/rtl.mxm_execute_ursa.autotvout_ap_return.dat"
parameter ADDR_WIDTH = 6;
parameter DATA_WIDTH = 32;
parameter a0_p_DEPTH = 1;
reg [31 : 0] a0_p_OPERATE_DEPTH = 0;
parameter a0_p_c_bitwidth = 16;
parameter b0_q_DEPTH = 1;
reg [31 : 0] b0_q_OPERATE_DEPTH = 0;
parameter b0_q_c_bitwidth = 16;
parameter m_DEPTH = 1;
reg [31 : 0] m_OPERATE_DEPTH = 0;
parameter m_c_bitwidth = 16;
parameter ap_return_DEPTH = 1;
reg [31 : 0] ap_return_OPERATE_DEPTH = 0;
parameter ap_return_c_bitwidth = 8;
parameter START_ADDR = 0;
parameter mxm_execute_ursa_continue_addr = 0;
parameter mxm_execute_ursa_auto_start_addr = 0;
parameter a0_p_data_in_addr = 24;
parameter b0_q_data_in_addr = 32;
parameter m_data_in_addr = 40;
parameter ap_return_data_out_addr = 16;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ap_AWADDR;
output  TRAN_s_axi_ap_AWVALID;
input  TRAN_s_axi_ap_AWREADY;
output  TRAN_s_axi_ap_WVALID;
input  TRAN_s_axi_ap_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_ap_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_ap_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ap_ARADDR;
output  TRAN_s_axi_ap_ARVALID;
input  TRAN_s_axi_ap_ARREADY;
input  TRAN_s_axi_ap_RVALID;
output  TRAN_s_axi_ap_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_ap_RDATA;
input [2 - 1 : 0] TRAN_s_axi_ap_RRESP;
input  TRAN_s_axi_ap_BVALID;
output  TRAN_s_axi_ap_BREADY;
input [2 - 1 : 0] TRAN_s_axi_ap_BRESP;
output TRAN_ap_write_data_finish;
output TRAN_ap_read_data_finish;
input     clk;
input     reset;
input     TRAN_ap_start_in;
output    TRAN_ap_done_out;
output    TRAN_ap_ready_out;
input     TRAN_ap_ready_in;
output    TRAN_ap_idle_out;
input  TRAN_ap_write_start_in   ;
output TRAN_ap_write_start_finish;
input     TRAN_ap_interrupt;
input     TRAN_ap_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_a0_p [a0_p_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_a0_p [ (a0_p_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * a0_p_DEPTH -1 : 0] = '{default : 'hz};
reg a0_p_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_b0_q [b0_q_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_b0_q [ (b0_q_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * b0_q_DEPTH -1 : 0] = '{default : 'hz};
reg b0_q_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_m [m_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m [ (m_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m_DEPTH -1 : 0] = '{default : 'hz};
reg m_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_ap_return [ap_return_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_ap_return [ (ap_return_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * ap_return_DEPTH -1 : 0] = '{default : 'hz};
reg ap_return_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
//write a0_p reg
reg [31 : 0] write_a0_p_count = 0;
reg [31 : 0] a0_p_diff_count = 0;
reg write_a0_p_run_flag = 0;
reg write_one_a0_p_data_done = 0;
//write b0_q reg
reg [31 : 0] write_b0_q_count = 0;
reg [31 : 0] b0_q_diff_count = 0;
reg write_b0_q_run_flag = 0;
reg write_one_b0_q_data_done = 0;
//write m reg
reg [31 : 0] write_m_count = 0;
reg [31 : 0] m_diff_count = 0;
reg write_m_run_flag = 0;
reg write_one_m_data_done = 0;
//read ap_return reg
reg [31 : 0] read_ap_return_count = 0;
reg read_ap_return_run_flag = 0;
reg read_one_ap_return_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_ap_AWADDR = AWADDR_reg;
assign TRAN_s_axi_ap_AWVALID = AWVALID_reg;
assign TRAN_s_axi_ap_WVALID = WVALID_reg;
assign TRAN_s_axi_ap_WDATA = WDATA_reg;
assign TRAN_s_axi_ap_WSTRB = WSTRB_reg;
assign TRAN_s_axi_ap_ARADDR = ARADDR_reg;
assign TRAN_s_axi_ap_ARVALID = ARVALID_reg;
assign TRAN_s_axi_ap_RREADY = RREADY_reg;
assign TRAN_s_axi_ap_BREADY = BREADY_reg;
assign TRAN_ap_write_start_finish = AESL_write_start_finish;
assign TRAN_ap_done_out = AESL_done_index_reg;
assign TRAN_ap_ready_out = AESL_ready_out_index_reg;
assign TRAN_ap_idle_out = AESL_idle_index_reg;
assign TRAN_ap_read_data_finish = 1 & ap_return_read_data_finish;
assign TRAN_ap_write_data_finish = 1 & a0_p_write_data_finish & b0_q_write_data_finish & m_write_data_finish;
always @(TRAN_ap_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_ap_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

function integer ceil_align_to_pow_of_two;
input integer a;
begin
    ceil_align_to_pow_of_two = $pow(2,$clog2(a));
end
endfunction

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_ap_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_ap_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_ap_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_ap_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_ap_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_ap_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_ap_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_ap_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_a0_p_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (a0_p_c_bitwidth, a0_p_DEPTH, a0_p_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_a0_p_run_flag <= 1; 
        end
        else if ((write_one_a0_p_data_done == 1 && write_a0_p_count == a0_p_diff_count - 1) || a0_p_diff_count == 0) begin
            write_a0_p_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_a0_p_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_a0_p_count = 0;
        end
        if (write_one_a0_p_data_done === 1) begin
            write_a0_p_count = write_a0_p_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        a0_p_write_data_finish <= 0;
    end
    else begin
        if (TRAN_ap_start_in === 1) begin
            a0_p_write_data_finish <= 0;
        end
        if (write_a0_p_run_flag == 1 && write_a0_p_count == a0_p_diff_count) begin
            a0_p_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_a0_p
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] a0_p_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a0_p_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        a0_p_diff_count = 0;

        for (k = 0; k < a0_p_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (a0_p_c_bitwidth < 32) begin
                    a0_p_data_tmp_reg = mem_a0_p[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < a0_p_c_bitwidth) begin
                            a0_p_data_tmp_reg[j] = mem_a0_p[k][i*32 + j];
                        end
                        else begin
                            a0_p_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_a0_p[k * four_byte_num  + i]!==a0_p_data_tmp_reg) begin
                a0_p_diff_count = a0_p_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_a0_p
    integer write_a0_p_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_a0_p_count;
    reg [31 : 0] a0_p_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a0_p_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        for (check_a0_p_count = 0; check_a0_p_count < a0_p_OPERATE_DEPTH; check_a0_p_count = check_a0_p_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_a0_p_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write a0_p data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (a0_p_c_bitwidth < 32) begin
                            a0_p_data_tmp_reg = mem_a0_p[check_a0_p_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < a0_p_c_bitwidth) begin
                                    a0_p_data_tmp_reg[j] = mem_a0_p[check_a0_p_count][i*32 + j];
                                end
                                else begin
                                    a0_p_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_a0_p[check_a0_p_count * four_byte_num  + i]!==a0_p_data_tmp_reg) begin
                        write (a0_p_data_in_addr + check_a0_p_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, a0_p_data_tmp_reg, write_a0_p_resp);
                        write_one_a0_p_data_done <= 1;
                        @(posedge clk);
                        write_one_a0_p_data_done <= 0;
                        image_mem_a0_p[check_a0_p_count * four_byte_num + i]=a0_p_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_1_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_b0_q_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (b0_q_c_bitwidth, b0_q_DEPTH, b0_q_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_b0_q_run_flag <= 1; 
        end
        else if ((write_one_b0_q_data_done == 1 && write_b0_q_count == b0_q_diff_count - 1) || b0_q_diff_count == 0) begin
            write_b0_q_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_b0_q_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_b0_q_count = 0;
        end
        if (write_one_b0_q_data_done === 1) begin
            write_b0_q_count = write_b0_q_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        b0_q_write_data_finish <= 0;
    end
    else begin
        if (TRAN_ap_start_in === 1) begin
            b0_q_write_data_finish <= 0;
        end
        if (write_b0_q_run_flag == 1 && write_b0_q_count == b0_q_diff_count) begin
            b0_q_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_b0_q
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] b0_q_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b0_q_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        b0_q_diff_count = 0;

        for (k = 0; k < b0_q_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (b0_q_c_bitwidth < 32) begin
                    b0_q_data_tmp_reg = mem_b0_q[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < b0_q_c_bitwidth) begin
                            b0_q_data_tmp_reg[j] = mem_b0_q[k][i*32 + j];
                        end
                        else begin
                            b0_q_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_b0_q[k * four_byte_num  + i]!==b0_q_data_tmp_reg) begin
                b0_q_diff_count = b0_q_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_b0_q
    integer write_b0_q_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_b0_q_count;
    reg [31 : 0] b0_q_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b0_q_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_2_finish <= 0;

        for (check_b0_q_count = 0; check_b0_q_count < b0_q_OPERATE_DEPTH; check_b0_q_count = check_b0_q_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_b0_q_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write b0_q data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (b0_q_c_bitwidth < 32) begin
                            b0_q_data_tmp_reg = mem_b0_q[check_b0_q_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < b0_q_c_bitwidth) begin
                                    b0_q_data_tmp_reg[j] = mem_b0_q[check_b0_q_count][i*32 + j];
                                end
                                else begin
                                    b0_q_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_b0_q[check_b0_q_count * four_byte_num  + i]!==b0_q_data_tmp_reg) begin
                        write (b0_q_data_in_addr + check_b0_q_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, b0_q_data_tmp_reg, write_b0_q_resp);
                        write_one_b0_q_data_done <= 1;
                        @(posedge clk);
                        write_one_b0_q_data_done <= 0;
                        image_mem_b0_q[check_b0_q_count * four_byte_num + i]=b0_q_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_2_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_m_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (m_c_bitwidth, m_DEPTH, m_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_m_run_flag <= 1; 
        end
        else if ((write_one_m_data_done == 1 && write_m_count == m_diff_count - 1) || m_diff_count == 0) begin
            write_m_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_m_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_m_count = 0;
        end
        if (write_one_m_data_done === 1) begin
            write_m_count = write_m_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        m_write_data_finish <= 0;
    end
    else begin
        if (TRAN_ap_start_in === 1) begin
            m_write_data_finish <= 0;
        end
        if (write_m_run_flag == 1 && write_m_count == m_diff_count) begin
            m_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_m
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] m_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        m_diff_count = 0;

        for (k = 0; k < m_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (m_c_bitwidth < 32) begin
                    m_data_tmp_reg = mem_m[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < m_c_bitwidth) begin
                            m_data_tmp_reg[j] = mem_m[k][i*32 + j];
                        end
                        else begin
                            m_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_m[k * four_byte_num  + i]!==m_data_tmp_reg) begin
                m_diff_count = m_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_m
    integer write_m_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_m_count;
    reg [31 : 0] m_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_3_finish <= 0;

        for (check_m_count = 0; check_m_count < m_OPERATE_DEPTH; check_m_count = check_m_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_m_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write m data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (m_c_bitwidth < 32) begin
                            m_data_tmp_reg = mem_m[check_m_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < m_c_bitwidth) begin
                                    m_data_tmp_reg[j] = mem_m[check_m_count][i*32 + j];
                                end
                                else begin
                                    m_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_m[check_m_count * four_byte_num  + i]!==m_data_tmp_reg) begin
                        write (m_data_in_addr + check_m_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, m_data_tmp_reg, write_m_resp);
                        write_one_m_data_done <= 1;
                        @(posedge clk);
                        write_one_m_data_done <= 0;
                        image_mem_m[check_m_count * four_byte_num + i]=m_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_3_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end


always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_ap_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 4;
    while (1) begin
        process_4_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_4_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        ap_return_read_data_finish <= 0;
        read_ap_return_run_flag <= 0; 
        read_ap_return_count = 0;
        count_operate_depth_by_bitwidth_and_depth (ap_return_c_bitwidth, ap_return_DEPTH, ap_return_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_ap_return_run_flag = 1; 
        end
        if (TRAN_ap_transaction_done_in === 1) begin
            ap_return_read_data_finish <= 0;
            read_ap_return_count = 0; 
        end
        if (read_one_ap_return_data_done === 1) begin
            read_ap_return_count = read_ap_return_count + 1;
            if (read_ap_return_count == ap_return_OPERATE_DEPTH) begin
                read_ap_return_run_flag <= 0; 
                ap_return_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_ap_return
    integer read_ap_return_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = ap_return_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_ap_return_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read ap_return data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (ap_return_data_out_addr + read_ap_return_count * four_byte_num * 4 + i * 4, RDATA_reg, read_ap_return_resp);
                        if (ap_return_c_bitwidth < 32) begin
                            mem_ap_return[read_ap_return_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < ap_return_c_bitwidth) begin
                                    mem_ap_return[read_ap_return_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_ap_return_data_done <= 1;
                    @(posedge clk);
                    read_one_ap_return_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_a0_p_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [a0_p_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (a0_p_c_bitwidth , factor);
  fp = $fopen(`TV_IN_a0_p ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_a0_p); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < a0_p_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_a0_p [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_a0_p [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_a0_p [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_a0_p [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_a0_p [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_a0_p;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_b0_q_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [b0_q_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (b0_q_c_bitwidth , factor);
  fp = $fopen(`TV_IN_b0_q ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_b0_q); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < b0_q_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_b0_q [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_b0_q [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_b0_q [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_b0_q [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_b0_q [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_b0_q;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_m_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [m_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (m_c_bitwidth , factor);
  fp = $fopen(`TV_IN_m ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_m); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < m_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_m [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_m [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_m [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_m [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_m [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_m;
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
task write_binary_ap_return;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_ap_return_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [ap_return_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (ap_return_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (TRAN_ap_transaction_done_in !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_ap_return, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_ap_return); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (ap_return_DEPTH - ap_return_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_ap_return[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_ap_return[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_ap_return[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_ap_return[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_ap_return[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_ap_return[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_ap_return[i]);
          end
      end 
      if (factor == 4) begin
          if ((ap_return_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][23:16]);
          end
          if ((ap_return_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][15:8]);
          end
          if ((ap_return_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((ap_return_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_ap_return[ap_return_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
  end 
end 
 
endmodule
