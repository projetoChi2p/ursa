-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon May 12 14:36:18 2025
-- Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_ocm_tmr/ip/bd_ocm_tmr_tmr_voter_0_0/bd_ocm_tmr_tmr_voter_0_0_stub.vhdl
-- Design      : bd_ocm_tmr_tmr_voter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_ocm_tmr_tmr_voter_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    M_AXI1_AWADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI1_AWVALID : out STD_LOGIC;
    M_AXI1_AWREADY : in STD_LOGIC;
    M_AXI1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_WVALID : out STD_LOGIC;
    M_AXI1_WREADY : in STD_LOGIC;
    M_AXI1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_BVALID : in STD_LOGIC;
    M_AXI1_BREADY : out STD_LOGIC;
    M_AXI1_ARADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI1_ARVALID : out STD_LOGIC;
    M_AXI1_ARREADY : in STD_LOGIC;
    M_AXI1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_RVALID : in STD_LOGIC;
    M_AXI1_RREADY : out STD_LOGIC;
    M_AXI2_AWADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI2_AWVALID : out STD_LOGIC;
    M_AXI2_AWREADY : in STD_LOGIC;
    M_AXI2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_WVALID : out STD_LOGIC;
    M_AXI2_WREADY : in STD_LOGIC;
    M_AXI2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_BVALID : in STD_LOGIC;
    M_AXI2_BREADY : out STD_LOGIC;
    M_AXI2_ARADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI2_ARVALID : out STD_LOGIC;
    M_AXI2_ARREADY : in STD_LOGIC;
    M_AXI2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_RVALID : in STD_LOGIC;
    M_AXI2_RREADY : out STD_LOGIC;
    M_AXI3_AWADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI3_AWVALID : out STD_LOGIC;
    M_AXI3_AWREADY : in STD_LOGIC;
    M_AXI3_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_WVALID : out STD_LOGIC;
    M_AXI3_WREADY : in STD_LOGIC;
    M_AXI3_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_BVALID : in STD_LOGIC;
    M_AXI3_BREADY : out STD_LOGIC;
    M_AXI3_ARADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI3_ARVALID : out STD_LOGIC;
    M_AXI3_ARREADY : in STD_LOGIC;
    M_AXI3_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_RVALID : in STD_LOGIC;
    M_AXI3_RREADY : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );

end bd_ocm_tmr_tmr_voter_0_0;

architecture stub of bd_ocm_tmr_tmr_voter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,M_AXI1_AWADDR[5:0],M_AXI1_AWVALID,M_AXI1_AWREADY,M_AXI1_WDATA[31:0],M_AXI1_WSTRB[3:0],M_AXI1_WVALID,M_AXI1_WREADY,M_AXI1_BRESP[1:0],M_AXI1_BVALID,M_AXI1_BREADY,M_AXI1_ARADDR[5:0],M_AXI1_ARVALID,M_AXI1_ARREADY,M_AXI1_RDATA[31:0],M_AXI1_RRESP[1:0],M_AXI1_RVALID,M_AXI1_RREADY,M_AXI2_AWADDR[5:0],M_AXI2_AWVALID,M_AXI2_AWREADY,M_AXI2_WDATA[31:0],M_AXI2_WSTRB[3:0],M_AXI2_WVALID,M_AXI2_WREADY,M_AXI2_BRESP[1:0],M_AXI2_BVALID,M_AXI2_BREADY,M_AXI2_ARADDR[5:0],M_AXI2_ARVALID,M_AXI2_ARREADY,M_AXI2_RDATA[31:0],M_AXI2_RRESP[1:0],M_AXI2_RVALID,M_AXI2_RREADY,M_AXI3_AWADDR[5:0],M_AXI3_AWVALID,M_AXI3_AWREADY,M_AXI3_WDATA[31:0],M_AXI3_WSTRB[3:0],M_AXI3_WVALID,M_AXI3_WREADY,M_AXI3_BRESP[1:0],M_AXI3_BVALID,M_AXI3_BREADY,M_AXI3_ARADDR[5:0],M_AXI3_ARVALID,M_AXI3_ARREADY,M_AXI3_RDATA[31:0],M_AXI3_RRESP[1:0],M_AXI3_RVALID,M_AXI3_RREADY,S_AXI_AWADDR[5:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[5:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "tmr_voter,Vivado 2023.2";
begin
end;
