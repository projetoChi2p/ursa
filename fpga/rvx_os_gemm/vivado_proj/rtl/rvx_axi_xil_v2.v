// Copyright (c) 2022-2025 Universidade Federal do Rio Grande do Sul
//
// This code is loosely based on PicoRV32 AXI adapter, Gisselquist's bus
// bridges, PULP platform AXI wrapper and AMD/Xilinx AXI IP generator.
//
// This work is licensed under the MIT License, see LICENSE file for details.
// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------


(* keep_hierarchy = "yes", dont_touch = "true", keep = "true", preserve = "true", mark_debug = "true" *)
module rvx_axi_xil_v2
(
    input  wire                       clock,
    input  wire                       reset,

    //
    // RVX core bus side
    //

    input  wire  [31:0]               rvx_rw_address_i,
    output wire  [31:0]               rvx_read_data_o,
    input  wire                       rvx_read_request_i,
    output wire                       rvx_read_response_o,
    input  wire  [31:0]               rvx_write_data_i,
    input  wire  [3:0]                rvx_write_strobe_i,
    input  wire                       rvx_write_request_i,
    output wire                       rvx_write_response_o,
    
    //
    // AXI side
    //

    /**************** Write Address Channel Signals ****************/
    output wire  [31:0]               axi_awaddr,
    output wire  [2:0]                axi_awprot,
    input  wire                       axi_awready,
    output wire                       axi_awvalid,
    
    /**************** Read Address Channel Signals ****************/
    output wire  [31:0]               axi_araddr,
    output wire  [2:0]                axi_arprot,
    input  wire                       axi_arready,
    output wire                       axi_arvalid,

    /**************** Write Data Channel Signals ****************/
    output wire                       axi_wvalid,
    output wire  [31:0]               axi_wdata,
    output wire  [3:0]                axi_wstrb,
    input  wire                       axi_wready,
    
    /**************** Read Data Channel Signals ****************/
    input  wire  [31:0]               axi_rdata,
    input  wire  [1:0]                axi_rresp,
    output wire                       axi_rready,
    input  wire                       axi_rvalid,
    
    /**************** Write Response Channel Signals ****************/
    input  wire  [1:0]                axi_bresp,
    output wire                       axi_bready,
    input  wire                       axi_bvalid
);

    // Settings for reference design RVX v3.0
    localparam C_M_AXI_ADDR_WIDTH = 32;
    localparam C_M_AXI_DATA_WIDTH = 32;


	localparam [1:0] IDLE = 2'b00; 
        // This state initiates AXI4Lite transaction 
        // after the state machine changes state to INIT_WRITE   
        // when there is 0 to 1 transition on INIT_AXI_TXN
        
    localparam [1:0] INIT_WRITE = 2'b01;
        // This state initializes write transaction,
        // once writes are done, the state machine 
        // changes state to INIT_READ 
        
    localparam [1:0] INIT_READ = 2'b10;
        // This state initializes read transaction
        // once reads are done, the state machine 
        // changes state to INIT_COMPARE 
    localparam [1:0] CONCLUDE_TRANSACTION = 2'b11;
        // This state issues the status of comparison 
        // of the written data with the read data	

    reg [1:0] mst_exec_state;


    // AXI4LITE signals
    //write address valid
    reg  	internal_awvalid;
    //write data valid
    reg  	internal_wvalid;
    //read address valid
    reg  	internal_arvalid;
    //read data acceptance
    reg  	internal_rready;
    //write response acceptance
    reg  	internal_bready;
    //write address
    reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	internal_awaddr;
    //write data
    reg [C_M_AXI_DATA_WIDTH-1 : 0] 	internal_wdata;
    //read addresss
    reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	internal_araddr;
    
    
    //Asserts when there is a write response error
    wire  	write_resp_error;
    //Asserts when there is a read response error
    wire  	read_resp_error;
    //A pulse to initiate a write transaction
    reg  	start_single_write;
    //A pulse to initiate a read transaction
    reg  	start_single_read;
    //Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
    reg  	write_issued;
    //Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
    reg  	read_issued;
    //flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
    reg  	writes_done;
    //flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
    reg  	reads_done;
    //The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
    reg  	error_reg;
	//Captured read data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	captured_rdata;
    //Flag marks the completion of comparison of the read data with the expected read data
    reg  	transaction_done;
    //Flag is asserted when the write index reaches the last write transction number
    reg  	last_write;
    //Flag is asserted when the read index reaches the last read transction number
    reg  	last_read;
    reg  	init_txn_ff;
    reg  	init_txn_ff2;
    //reg  	init_txn_edge;
    wire  	init_txn_pulse;

    reg  	read_req_ff;
    reg  	read_req_ff2;
    wire  	read_req_pulse;

    reg  	write_req_ff;
    reg  	write_req_ff2;
    wire  	write_req_pulse;



	// I/O Connections assignments

	//Adding the offset address to the base addr of the slave
	assign axi_awaddr	= internal_awaddr;
	//AXI 4 write data
	assign axi_wdata	= internal_wdata;
	assign axi_awprot	= 3'b000;
	assign axi_awvalid	= internal_awvalid;
	//Write Data(W)
	assign axi_wvalid	= internal_wvalid;
	//Set all byte strobes in this example
	assign axi_wstrb	= rvx_write_strobe_i;
	//Write Response (B)
	assign axi_bready	= internal_bready;
	//Read Address (AR)
	assign axi_araddr	= internal_araddr;
	assign axi_arvalid	= internal_arvalid;
	assign axi_arprot	= 3'b001;
	//Read and Read Response (R)
	assign axi_rready	= internal_rready;
	//Example design I/O
	assign rvx_read_response_o = transaction_done && read_req_ff;  // is rvx_read_request_i a strobe or will it be kept asserted until completion
	assign rvx_write_response_o = transaction_done && write_req_ff; // is rvx_write_request_i a strobe or will it be kept asserted until completion
    assign rvx_read_data_o = captured_rdata;
	
	
	
    //--------------------
    // Request rising edge
    //--------------------

    // Generate a pulse to initiate AXI transaction.

	assign init_txn_pulse  = (!init_txn_ff2)  && init_txn_ff;
	assign read_req_pulse  = (!read_req_ff2)  && read_req_ff;
	assign write_req_pulse = (!write_req_ff2) && write_req_ff;
    always @(posedge clock)
    begin
        // Initiates AXI transaction delay
        if (reset == 1) begin
            init_txn_ff <= 1'b0;
            init_txn_ff2 <= 1'b0;
            read_req_ff <= 1'b0;
            read_req_ff2 <= 1'b0;
            write_req_ff <= 1'b0;
            write_req_ff2 <= 1'b0;
        end
        else begin
            init_txn_ff <= (rvx_read_request_i | rvx_write_request_i);
            init_txn_ff2 <= init_txn_ff;

            read_req_ff <= rvx_read_request_i;
            read_req_ff2 <= read_req_ff;

            write_req_ff <= rvx_write_request_i;
            write_req_ff2 <= write_req_ff;

        end
    end
    


    
    //--------------------
    //Write Address Channel
    //--------------------
    
    // The purpose of the write address channel is to request the address and
    // command information for the entire transaction.  It is a single beat
    // of information.
    
    // Note for this example the internal_awvalid/internal_wvalid are asserted at the same
    // time, and then each is deasserted independent from each other.
    // This is a lower-performance, but simplier control scheme.
    
    // AXI VALID signals must be held active until accepted by the partner.
    
    // A data transfer is accepted by the slave when a master has
    // VALID data and the slave acknoledges it is also READY. While the master
    // is allowed to generated multiple, back-to-back requests by not
    // deasserting VALID, this design will add rest cycle for
    // simplicity.
    
    // Since only one outstanding transaction is issued by the user design,
    // there will not be a collision between a new request and an accepted
    // request on the same clock cycle.
    
    always @(posedge clock)
    begin
        //Only VALID signals must be deasserted during reset per AXI spec
        //Consider inverting then registering active-low reset for higher fmax
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            internal_awvalid <= 1'b0;
        end
        else begin
            //Signal a new address/data command is available by user logic
            if (start_single_write) begin
                internal_awvalid <= 1'b1;
            end 
            else if (axi_awready && internal_awvalid) begin
                //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
                internal_awvalid <= 1'b0;
            end
        end
    end


    //--------------------
    //Write Data Channel
    //--------------------
    
    //The write data channel is for transfering the actual data.
    //The data generation is speific to the example design, and
    //so only the WVALID/WREADY handshake is shown here
    
    always @(posedge clock)
    begin
        if (reset == 1  || init_txn_pulse == 1'b1) begin
            internal_wvalid <= 1'b0;
        end
        else if (start_single_write) begin
            //Signal a new address/data command is available by user logic
            internal_wvalid <= 1'b1;
        end
        else if (axi_wready && internal_wvalid) begin
            //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)
            internal_wvalid <= 1'b0;
        end
    end





    
    //----------------------------
    //Write Response (B) Channel
    //----------------------------
    
    //The write response channel provides feedback that the write has committed
    //to memory. BREADY will occur after both the data and the write address
    //has arrived and been accepted by the slave, and can guarantee that no
    //other accesses launched afterwards will be able to be reordered before it.
    
    //The BRESP bit [1] is used indicate any errors from the interconnect or
    //slave for the entire write burst. This example will capture the error.
    
    //While not necessary per spec, it is advisable to reset READY signals in
    //case of differing reset latencies between master/slave.
    
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            internal_bready <= 1'b0;
        end
        else if (axi_bvalid && ~internal_bready) begin
            // accept/acknowledge bresp with internal_bready by the master
            // when M_AXI_BVALID is asserted by slave
            internal_bready <= 1'b1;
        end
        else if (internal_bready) begin
            // deassert after one clock cycle
            internal_bready <= 1'b0;
        end
        else begin
            // retain the previous value
            internal_bready <= internal_bready;
        end
    end
        
    //Flag write errors
    assign write_resp_error = (internal_bready & axi_bvalid & axi_bresp[1]); // b10 SLVERR, b11 DECERR




    
    //----------------------------
    //Read Address Channel
    //----------------------------
    
    
    // A new internal_arvalid is asserted when there is a valid read address
    // available by the master. start_single_read triggers a new read
    // transaction
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            internal_arvalid <= 1'b0;
        end
        else if (start_single_read) begin
            //Signal a new read address command is available by user logic
            internal_arvalid <= 1'b1;
        end
        else if (axi_arready && internal_arvalid) begin
            //read address accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)
            internal_arvalid <= 1'b0;
        end
        else begin
            // retain the previous value
            internal_arvalid <= internal_arvalid;
        end
    end
    



    
    //--------------------------------
    //Read Data (and Response) Channel
    //--------------------------------
    
    //The Read Data channel returns the results of the read request
    //The master will accept the read data by asserting internal_rready
    //when there is a valid read data available.
    //While not necessary per spec, it is advisable to reset READY signals in
    //case of differing reset latencies between master/slave.
    
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
        internal_rready <= 1'b0;
        end
        else if (axi_rvalid && ~internal_rready) begin
            // accept/acknowledge rdata/rresp with internal_rready by the master
            // when M_AXI_RVALID is asserted by slave
            internal_rready <= 1'b1;
        end
        else if (internal_rready) begin
            // deassert after one clock cycle
            internal_rready <= 1'b0;
        end
        else begin
            // retain the previous value
            internal_rready <= internal_rready;
        end
    end
    
    //Flag write errors
    assign read_resp_error = (internal_rready & axi_rvalid & axi_rresp[1]); // b10 SLVERR, b11 DECERR
    




    //================================
    //================================
    //User Logic
    //================================
    //================================

    
    
    
    //--------------------------------
    //Address/Data Stimulus
    //--------------------------------
    
    //Address/data pairs for this example. The read and write values should
    //match.
    //Modify these as desired for different address patterns.
    
    //Write Addresses
    always @(posedge clock)
    begin
        if (reset == 1  || init_txn_pulse == 1'b1) begin
            internal_awaddr <= rvx_rw_address_i;
        end
        else if (axi_awready && internal_awvalid) begin
            // Signals a new write address/ write data is
            // available by user logic
            internal_awaddr <= rvx_rw_address_i;
        end
    end



    // Write data generation
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1 ) begin
            internal_wdata <= rvx_write_data_i;
        end
        else if (axi_wready && internal_wvalid) begin
            // Signals a new write address/write data is
            // available by user logic
            internal_wdata <= rvx_write_data_i;
        end
    end


    
    //Read Addresses
    always @(posedge clock)
    begin
        if (reset == 1  || init_txn_pulse == 1'b1) begin
            internal_araddr <= rvx_rw_address_i;
        end
        else if (axi_arready && internal_arvalid) begin
            // Signals a new write address/ write data is
            // available by user logic
            internal_araddr <= rvx_rw_address_i;
        end
    end

    
    // Asserts when ERROR is detected
    reg ERROR;
    
    
    //implement master command interface state machine
    always @ ( posedge clock)
    begin
        if (reset == 1) begin
            // reset condition
            // All the signals are assigned default values under reset condition
            mst_exec_state  <= IDLE;
            start_single_write <= 1'b0;
            write_issued  <= 1'b0;
            start_single_read  <= 1'b0;
            read_issued   <= 1'b0;
            transaction_done  <= 1'b0;
            ERROR <= 1'b0;
        end
        else begin
            // state transition
            case (mst_exec_state)
                
                IDLE:
                    begin
                        transaction_done <= 1'b0;
                        // This state is responsible to initiate
                        // AXI transaction when init_txn_pulse is asserted
                        if ( init_txn_pulse == 1'b1 ) begin
                            if ( write_req_ff == 1'b1 ) begin
                                mst_exec_state  <= INIT_WRITE; // FBV TODO goto INIT_WRITE or INIT_READ depending on the rising edge detected R/W
                            end
                            else begin
                                mst_exec_state  <= INIT_READ; // FBV TODO goto INIT_WRITE or INIT_READ depending on the rising edge detected R/W
                            end
                            ERROR <= 1'b0;
                        end
                        else begin
                            transaction_done <= 1'b0;
                            mst_exec_state  <= IDLE;
                        end
                    end
                INIT_WRITE:
                    // This state is responsible to issue start_single_write pulse to
                    // initiate a write transaction. Write transactions will be
                    // issued until last_write signal is asserted.
                    // write controller
                    if (writes_done) begin
                        mst_exec_state <= CONCLUDE_TRANSACTION; //INIT_READ; // FBV TODO goto IDLE
                    end
                    else begin
                        mst_exec_state  <= INIT_WRITE;
                        
                        if (~internal_awvalid && ~internal_wvalid && ~axi_bvalid && ~last_write && ~start_single_write && ~write_issued) begin
                            start_single_write <= 1'b1;
                            write_issued  <= 1'b1;
                        end
                        else if (internal_bready) begin
                            write_issued  <= 1'b0;
                        end
                        else begin
                            //Negate to generate a pulse
                            start_single_write <= 1'b0;
                        end
                    end
                
                INIT_READ:
                    // This state is responsible to issue start_single_read pulse to
                    // initiate a read transaction. Read transactions will be
                    // issued until last_read signal is asserted.
                    // read controller
                    if (reads_done) begin
                        mst_exec_state <= CONCLUDE_TRANSACTION;
                    end
                    else begin
                        mst_exec_state  <= INIT_READ;
                        
                        if (~internal_arvalid && ~axi_rvalid && ~last_read && ~start_single_read && ~read_issued) begin
                            start_single_read <= 1'b1;
                            read_issued  <= 1'b1;
                        end
                        else if (internal_rready) begin
                            read_issued  <= 1'b0;
                        end
                        else begin
                            //Negate to generate a pulse
                            start_single_read <= 1'b0;
                        end
                    end
                
                CONCLUDE_TRANSACTION:
                    begin
                        // This state is responsible to issue the state of comparison
                        // of written data with the read data. If no error flags are set,
                        // compare_done signal will be asseted to indicate success.
                        ERROR <= error_reg;
                        mst_exec_state <= IDLE;
                        transaction_done <= 1'b1;
                    end
                    
                default:
                    begin
                        mst_exec_state  <= IDLE;
                    end

            endcase
        end
    end //MASTER_EXECUTION_PROC



    //------------------
    //Write
    //------------------
    
    
    //Terminal write count
    
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            last_write <= 1'b0;
        end
        else if (axi_awready) begin
            //The last write should be associated with a write address ready response
            last_write <= 1'b1;
        end
        else begin
            last_write <= last_write;
        end
    end
    
    //Check for last write completion.
    
    //This logic is to qualify the last write count with the final write
    //response. This demonstrates how to confirm that a write has been
    //committed.
    
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
           writes_done <= 1'b0;
        end
        else if (last_write && axi_bvalid && internal_bready) begin
            //The writes_done should be associated with a bready response
            writes_done <= 1'b1;
        end
        else begin
            writes_done <= writes_done;
        end
    end
        
    
    
    
    
    //------------------
    //Read example
    //------------------
    
    //Terminal Read Count
    
    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            last_read <= 1'b0;
        end
        else if (axi_arready && internal_arvalid) begin
            //The last read should be associated with a read address ready response
            last_read <= 1'b1;
        end
        else begin
            last_read <= last_read;
        end
    end
    
    //Check for last read completion.
    
    //This logic is to qualify the last read count with the final read
    //response/data.

    always @(posedge clock)
    begin
        if (reset == 1 || init_txn_pulse == 1'b1) begin
            reads_done <= 1'b0;
        end
        else if (last_read && axi_rvalid && internal_rready) begin
            //The reads_done should be associated with a read ready response
            reads_done <= 1'b1;
        end
        else begin
            reads_done <= reads_done;
        end
    end


        
    
    //-----------------------------
    //Example design error register
    //-----------------------------
    
    //Data Capture
    always @(posedge clock)
    begin
        if (reset == 1  || init_txn_pulse == 1'b1) begin
            captured_rdata <= 32'b0;
        end
        else if (axi_rvalid && internal_rready) begin
            // Signals a new write address/ write data is
            // available by user logic
            captured_rdata <= axi_rdata;
        end
        else begin
            captured_rdata <= captured_rdata;
        end
    end
    
    
    
    // Register and hold any data mismatches, or read/write interface errors
    always @(posedge clock)
    begin
        if (reset == 1  || init_txn_pulse == 1'b1) begin
            error_reg <= 1'b0;
        end
        else if (write_resp_error || read_resp_error) begin
            //Capture any error types
            error_reg <= 1'b1;
        end
        else begin
            error_reg <= error_reg;
        end
    end


endmodule
