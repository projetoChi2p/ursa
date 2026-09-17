`default_nettype none
module rvx_zynq
(
    BTN0,
    LED0,
    LED1,
    LED2,
    LED3,
    JE1,
    JE2,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
    
    input BTN0;
    output JE1;
    input JE2;
    output LED0;
    output LED1;
    output LED2;
    output LED3;  
    
    inout [14:0]DDR_addr;
    inout [2:0]DDR_ba;
    inout DDR_cas_n;
    inout DDR_ck_n;
    inout DDR_ck_p;
    inout DDR_cke;
    inout DDR_cs_n;
    inout [3:0]DDR_dm;
    inout [31:0]DDR_dq;
    inout [3:0]DDR_dqs_n;
    inout [3:0]DDR_dqs_p;
    inout DDR_odt;
    inout DDR_ras_n;
    inout DDR_reset_n;
    inout DDR_we_n;
    inout FIXED_IO_ddr_vrn;
    inout FIXED_IO_ddr_vrp;
    inout [53:0]FIXED_IO_mio;
    inout FIXED_IO_ps_clk;
    inout FIXED_IO_ps_porb;
    inout FIXED_IO_ps_srstb;    
    
    
    localparam GPIO_WIDTH       = 1;
    localparam MEMORY_INIT_FILE = "hello.mem"; //"mqhu_fuc.mem";
    //localparam MEMORY_INIT_FILE = "memorytest.mem"; 
    localparam MEMORY_SIZE      = 128*1024;
    localparam EXTERNAL_SIZE    = 512*1024; // See AXI block design base address and total crossbar range
    
    //localparam CORE_STEEL     = 1;
    //localparam CORE_STEEL_AXI = 2;
//    localparam CORE_RVX       = 3;
//    localparam CORE_RVX_AXI   = 4;
    
//    localparam CORE_SEL = CORE_RVX_AXI; 
    
    wire BTN0;
    wire JE1;
    wire JE2;
    wire LED0;
    wire LED1;
    wire LED2;
    wire LED3;
    
    wire [14:0]DDR_addr;
    wire [2:0]DDR_ba;
    wire DDR_cas_n;
    wire DDR_ck_n;
    wire DDR_ck_p;
    wire DDR_cke;
    wire DDR_cs_n;
    wire [3:0]DDR_dm;
    wire [31:0]DDR_dq;
    wire [3:0]DDR_dqs_n;
    wire [3:0]DDR_dqs_p;
    wire DDR_odt;
    wire DDR_ras_n;
    wire DDR_reset_n;
    wire DDR_we_n;
    wire FIXED_IO_ddr_vrn;
    wire FIXED_IO_ddr_vrp;
    wire [53:0]FIXED_IO_mio;
    wire FIXED_IO_ps_clk;
    wire FIXED_IO_ps_porb;
    wire FIXED_IO_ps_srstb;
    
    
    wire [31:0]S_AXI4_araddr;
    wire [2:0]S_AXI4_arprot;
    wire S_AXI4_arready;
    wire S_AXI4_arvalid;
    wire [31:0]S_AXI4_awaddr;
    wire [2:0]S_AXI4_awprot;
    wire S_AXI4_awready;
    wire S_AXI4_awvalid;
    wire S_AXI4_bready;
    wire [1:0]S_AXI4_bresp;
    wire S_AXI4_bvalid;
    wire [31:0]S_AXI4_rdata;
    wire S_AXI4_rready;
    wire [1:0]S_AXI4_rresp;
    wire S_AXI4_rvalid;
    wire [31:0]S_AXI4_wdata;
    wire S_AXI4_wready;
    wire [3:0]S_AXI4_wstrb;
    wire S_AXI4_wvalid;
    
    // Avoid warnings about intentionally unused pins/wires
    wire unused_ok =
        &{1'b0,
        S_AXI4_bresp,
        S_AXI4_rresp,
        1'b0};


    // GPIO signals
    wire [GPIO_WIDTH-1:0] gpio_input;
    wire [GPIO_WIDTH-1:0] gpio_oe;
    wire [GPIO_WIDTH-1:0] gpio_output;
       
    wire      clock_fast;
    wire      reset_fast;
    wire      resetn_fast;
    wire      clock_slow;
    wire      reset_slow;
    wire      resetn_slow;
    
    wire uart_rxd;
    wire uart_txd;
    wire gpio_led;
    
    wire tick;
    wire reset_once;
    
    
    wire FCLK_SLOW_CLK;
    wire [0:0]FCLK_SLOW_RESET_N;
    
    
    
    assign gpio_led = gpio_oe[0] == 1'b1 ? gpio_output[0] : 1'b0;
    
    assign LED0 = tick || reset_slow;
    assign LED1 = gpio_led;
    assign LED2 = ~uart_txd;
    assign LED3 = ~uart_rxd;
    
    assign JE1 = uart_txd;
    assign uart_rxd = JE2;
    
    assign clock_slow = FCLK_SLOW_CLK;
    assign reset_slow = (!FCLK_SLOW_RESET_N) || BTN0 || reset_once;
    assign resetn_slow = ~reset_slow;

    
    bd_ursa_wrapper
    bd_axi_i (
        .FCLK_CLK0_40(clock_slow),
        .RESET_N(resetn_slow),
        .S_AXI4_araddr(S_AXI4_araddr),
        .S_AXI4_arprot(S_AXI4_arprot),
        .S_AXI4_arready(S_AXI4_arready),
        .S_AXI4_arvalid(S_AXI4_arvalid),
        .S_AXI4_awaddr(S_AXI4_awaddr),
        .S_AXI4_awprot(S_AXI4_awprot),
        .S_AXI4_awready(S_AXI4_awready),
        .S_AXI4_awvalid(S_AXI4_awvalid),
        .S_AXI4_bready(S_AXI4_bready),
        .S_AXI4_bresp(S_AXI4_bresp),
        .S_AXI4_bvalid(S_AXI4_bvalid),
        .S_AXI4_rdata(S_AXI4_rdata),
        .S_AXI4_rready(S_AXI4_rready),
        .S_AXI4_rresp(S_AXI4_rresp),
        .S_AXI4_rvalid(S_AXI4_rvalid),
        .S_AXI4_wdata(S_AXI4_wdata),
        .S_AXI4_wready(S_AXI4_wready),
        .S_AXI4_wstrb(S_AXI4_wstrb),
        .S_AXI4_wvalid(S_AXI4_wvalid)
    );


//    generate
//    if (CORE_SEL==CORE_RVX) begin : rvx_core_g
        
//        rvx_soc #(
//            .CLOCK_FREQUENCY          (40_000_000             ),
//            .UART_BAUD_RATE           (115200                 ),
//            .MEMORY_SIZE              (MEMORY_SIZE            ),
//            .MEMORY_INIT_FILE         (MEMORY_INIT_FILE       ),
//            .EXTERNAL_SIZE            (EXTERNAL_SIZE          ),
//            .BOOT_ADDRESS             (32'h00000000           ),
//            .GPIO_WIDTH               (GPIO_WIDTH             )
//        ) rvx_i (
        
//            .clock                    (clock_slow             ),
//            .reset                    (reset_slow             ),
//            .halt                     (0                      ),
//            .uart_rx                  (uart_rxd               ),
//            .uart_tx                  (uart_txd               ),
//            .gpio_input               (gpio_input             ),
//            .gpio_oe                  (gpio_oe                ),
//            .gpio_output              (gpio_output            )
//        );
        
//    end
//    else if (CORE_SEL==CORE_RVX_AXI) begin : rvx_core_axi_g
        
        rvx_soc_axi #(
            .CLOCK_FREQUENCY          (40_000_000             ),
            .UART_BAUD_RATE           (115200                 ),
            .MEMORY_SIZE              (MEMORY_SIZE            ),
            .MEMORY_INIT_FILE         (MEMORY_INIT_FILE       ),
            .EXTERNAL_SIZE            (EXTERNAL_SIZE          ),
            .BOOT_ADDRESS             (32'h00000000           ),
            .GPIO_WIDTH               (GPIO_WIDTH             )
        ) rvx_i (
        
            .clock                    (clock_slow             ),
            .reset                    (reset_slow             ),
            .halt                     (0                      ),
            .uart_rx                  (uart_rxd               ),
            .uart_tx                  (uart_txd               ),
            .gpio_input               (gpio_input             ),
            .gpio_oe                  (gpio_oe                ),
            .gpio_output              (gpio_output            ),
            
            .axi_awvalid              (S_AXI4_awvalid         ),
            .axi_awready              (S_AXI4_awready         ),
            .axi_awaddr               (S_AXI4_awaddr          ),
            .axi_awprot               (S_AXI4_awprot          ),
            .axi_wvalid               (S_AXI4_wvalid          ),
            .axi_wready               (S_AXI4_wready          ),
            .axi_wdata                (S_AXI4_wdata           ),
            .axi_wstrb                (S_AXI4_wstrb           ),
            .axi_bvalid               (S_AXI4_bvalid          ),
            .axi_bresp                (S_AXI4_bresp           ),
            .axi_bready               (S_AXI4_bready          ),
            .axi_arvalid              (S_AXI4_arvalid         ),
            .axi_arready              (S_AXI4_arready         ),
            .axi_araddr               (S_AXI4_araddr          ),
            .axi_arprot               (S_AXI4_arprot          ),
            .axi_rvalid               (S_AXI4_rvalid          ),
            .axi_rready               (S_AXI4_rready          ),
            .axi_rresp                (S_AXI4_rresp           ),
            .axi_rdata                (S_AXI4_rdata           )
        );

//    end
//    else if (CORE_SEL==CORE_STEEL_AXI) begin : steel_core_axi_g
        
//        rvsteel_soc_axi #(
//            .CLOCK_FREQUENCY          (40_000_000             ),
//            .UART_BAUD_RATE           (115200                 ),
//            .MEMORY_SIZE              (MEMORY_SIZE            ),
//            .MEMORY_INIT_FILE         (MEMORY_INIT_FILE       ),
//            .EXTERNAL_SIZE            (EXTERNAL_SIZE          ),
//            .BOOT_ADDRESS             (32'h00000000           ),
//            .GPIO_WIDTH               (GPIO_WIDTH             )
//        ) steel_i (
//            .clock                    (clock_slow             ),
//            .reset                    (reset_slow             ),
//            .halt                     (0                      ),
//            .uart_rx                  (uart_rxd               ),
//            .uart_tx                  (uart_txd               ),
//            .gpio_input               (gpio_input             ),
//            .gpio_oe                  (gpio_oe                ),
//            .gpio_output              (gpio_output            ),
            
//            .axi_awvalid              (AXI4_awvalid           ),
//            .axi_awready              (AXI4_awready           ),
//            .axi_awaddr               (AXI4_awaddr            ),
//            .axi_awprot               (AXI4_awprot            ),
//            .axi_wvalid               (AXI4_wvalid            ),
//            .axi_wready               (AXI4_wready            ),
//            .axi_wdata                (AXI4_wdata             ),
//            .axi_wstrb                (AXI4_wstrb             ),
//            .axi_bvalid               (AXI4_bvalid            ),
//            .axi_bready               (AXI4_bready            ),
//            .axi_arvalid              (AXI4_arvalid           ),
//            .axi_arready              (AXI4_arready           ),
//            .axi_araddr               (AXI4_araddr            ),
//            .axi_arprot               (AXI4_arprot            ),
//            .axi_rvalid               (AXI4_rvalid            ),
//            .axi_rready               (AXI4_rready            ),
//            .axi_rdata                (AXI4_rdata             )
//        );
        
//    end
//    endgenerate
       
    
    bd_zynq_wrapper 
    bd_ps7_i (
    
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0_40(FCLK_SLOW_CLK),
        .RESET_N(FCLK_SLOW_RESET_N),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb)
    );
    
    
//    reset_once #(
//        .CLK_CYCLES(32)
//    ) reset_i (
//        .clk(clock_slow),
//        .reset(reset_once)
//    );
    
//    ticker #(
//        .HZ(40_000_000)
//    ) ticker_i (
//        .areset(FCLK_SLOW_RESET),
//        .clk(clock_slow),
//        .tick(tick)
//    );


endmodule
`default_nettype wire
