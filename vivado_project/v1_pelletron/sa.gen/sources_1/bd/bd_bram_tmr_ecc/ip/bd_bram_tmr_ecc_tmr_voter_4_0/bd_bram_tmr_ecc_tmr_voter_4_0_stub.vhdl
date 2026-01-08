-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon May 12 14:36:18 2025
-- Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_bram_tmr_ecc_tmr_voter_4_0 -prefix
--               bd_bram_tmr_ecc_tmr_voter_4_0_ bd_ocm_tmr_tmr_voter_0_3_stub.vhdl
-- Design      : bd_ocm_tmr_tmr_voter_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_bram_tmr_ecc_tmr_voter_4_0 is
  Port ( 
    Clk : in STD_LOGIC;
    S_AXI1_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_AWLOCK : in STD_LOGIC;
    S_AXI1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWVALID : in STD_LOGIC;
    S_AXI1_AWREADY : out STD_LOGIC;
    S_AXI1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_WLAST : in STD_LOGIC;
    S_AXI1_WVALID : in STD_LOGIC;
    S_AXI1_WREADY : out STD_LOGIC;
    S_AXI1_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_BVALID : out STD_LOGIC;
    S_AXI1_BREADY : in STD_LOGIC;
    S_AXI1_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_ARLOCK : in STD_LOGIC;
    S_AXI1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARVALID : in STD_LOGIC;
    S_AXI1_ARREADY : out STD_LOGIC;
    S_AXI1_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_RLAST : out STD_LOGIC;
    S_AXI1_RVALID : out STD_LOGIC;
    S_AXI1_RREADY : in STD_LOGIC;
    S_AXI2_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_AWLOCK : in STD_LOGIC;
    S_AXI2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWVALID : in STD_LOGIC;
    S_AXI2_AWREADY : out STD_LOGIC;
    S_AXI2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_WLAST : in STD_LOGIC;
    S_AXI2_WVALID : in STD_LOGIC;
    S_AXI2_WREADY : out STD_LOGIC;
    S_AXI2_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_BVALID : out STD_LOGIC;
    S_AXI2_BREADY : in STD_LOGIC;
    S_AXI2_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_ARLOCK : in STD_LOGIC;
    S_AXI2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARVALID : in STD_LOGIC;
    S_AXI2_ARREADY : out STD_LOGIC;
    S_AXI2_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_RLAST : out STD_LOGIC;
    S_AXI2_RVALID : out STD_LOGIC;
    S_AXI2_RREADY : in STD_LOGIC;
    S_AXI3_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_AWLOCK : in STD_LOGIC;
    S_AXI3_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWVALID : in STD_LOGIC;
    S_AXI3_AWREADY : out STD_LOGIC;
    S_AXI3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_WLAST : in STD_LOGIC;
    S_AXI3_WVALID : in STD_LOGIC;
    S_AXI3_WREADY : out STD_LOGIC;
    S_AXI3_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_BVALID : out STD_LOGIC;
    S_AXI3_BREADY : in STD_LOGIC;
    S_AXI3_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_ARLOCK : in STD_LOGIC;
    S_AXI3_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARVALID : in STD_LOGIC;
    S_AXI3_ARREADY : out STD_LOGIC;
    S_AXI3_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_RLAST : out STD_LOGIC;
    S_AXI3_RVALID : out STD_LOGIC;
    S_AXI3_RREADY : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );

end bd_bram_tmr_ecc_tmr_voter_4_0;

architecture stub of bd_bram_tmr_ecc_tmr_voter_4_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,S_AXI1_AWID[0:0],S_AXI1_AWADDR[31:0],S_AXI1_AWLEN[7:0],S_AXI1_AWSIZE[2:0],S_AXI1_AWBURST[1:0],S_AXI1_AWLOCK,S_AXI1_AWCACHE[3:0],S_AXI1_AWPROT[2:0],S_AXI1_AWQOS[3:0],S_AXI1_AWVALID,S_AXI1_AWREADY,S_AXI1_WDATA[31:0],S_AXI1_WSTRB[3:0],S_AXI1_WLAST,S_AXI1_WVALID,S_AXI1_WREADY,S_AXI1_BID[0:0],S_AXI1_BRESP[1:0],S_AXI1_BVALID,S_AXI1_BREADY,S_AXI1_ARID[0:0],S_AXI1_ARADDR[31:0],S_AXI1_ARLEN[7:0],S_AXI1_ARSIZE[2:0],S_AXI1_ARBURST[1:0],S_AXI1_ARLOCK,S_AXI1_ARCACHE[3:0],S_AXI1_ARPROT[2:0],S_AXI1_ARQOS[3:0],S_AXI1_ARVALID,S_AXI1_ARREADY,S_AXI1_RID[0:0],S_AXI1_RDATA[31:0],S_AXI1_RRESP[1:0],S_AXI1_RLAST,S_AXI1_RVALID,S_AXI1_RREADY,S_AXI2_AWID[0:0],S_AXI2_AWADDR[31:0],S_AXI2_AWLEN[7:0],S_AXI2_AWSIZE[2:0],S_AXI2_AWBURST[1:0],S_AXI2_AWLOCK,S_AXI2_AWCACHE[3:0],S_AXI2_AWPROT[2:0],S_AXI2_AWQOS[3:0],S_AXI2_AWVALID,S_AXI2_AWREADY,S_AXI2_WDATA[31:0],S_AXI2_WSTRB[3:0],S_AXI2_WLAST,S_AXI2_WVALID,S_AXI2_WREADY,S_AXI2_BID[0:0],S_AXI2_BRESP[1:0],S_AXI2_BVALID,S_AXI2_BREADY,S_AXI2_ARID[0:0],S_AXI2_ARADDR[31:0],S_AXI2_ARLEN[7:0],S_AXI2_ARSIZE[2:0],S_AXI2_ARBURST[1:0],S_AXI2_ARLOCK,S_AXI2_ARCACHE[3:0],S_AXI2_ARPROT[2:0],S_AXI2_ARQOS[3:0],S_AXI2_ARVALID,S_AXI2_ARREADY,S_AXI2_RID[0:0],S_AXI2_RDATA[31:0],S_AXI2_RRESP[1:0],S_AXI2_RLAST,S_AXI2_RVALID,S_AXI2_RREADY,S_AXI3_AWID[0:0],S_AXI3_AWADDR[31:0],S_AXI3_AWLEN[7:0],S_AXI3_AWSIZE[2:0],S_AXI3_AWBURST[1:0],S_AXI3_AWLOCK,S_AXI3_AWCACHE[3:0],S_AXI3_AWPROT[2:0],S_AXI3_AWQOS[3:0],S_AXI3_AWVALID,S_AXI3_AWREADY,S_AXI3_WDATA[31:0],S_AXI3_WSTRB[3:0],S_AXI3_WLAST,S_AXI3_WVALID,S_AXI3_WREADY,S_AXI3_BID[0:0],S_AXI3_BRESP[1:0],S_AXI3_BVALID,S_AXI3_BREADY,S_AXI3_ARID[0:0],S_AXI3_ARADDR[31:0],S_AXI3_ARLEN[7:0],S_AXI3_ARSIZE[2:0],S_AXI3_ARBURST[1:0],S_AXI3_ARLOCK,S_AXI3_ARCACHE[3:0],S_AXI3_ARPROT[2:0],S_AXI3_ARQOS[3:0],S_AXI3_ARVALID,S_AXI3_ARREADY,S_AXI3_RID[0:0],S_AXI3_RDATA[31:0],S_AXI3_RRESP[1:0],S_AXI3_RLAST,S_AXI3_RVALID,S_AXI3_RREADY,M_AXI_AWID[0:0],M_AXI_AWADDR[31:0],M_AXI_AWLEN[7:0],M_AXI_AWSIZE[2:0],M_AXI_AWBURST[1:0],M_AXI_AWLOCK,M_AXI_AWCACHE[3:0],M_AXI_AWPROT[2:0],M_AXI_AWQOS[3:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WLAST,M_AXI_WVALID,M_AXI_WREADY,M_AXI_BID[0:0],M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARID[0:0],M_AXI_ARADDR[31:0],M_AXI_ARLEN[7:0],M_AXI_ARSIZE[2:0],M_AXI_ARBURST[1:0],M_AXI_ARLOCK,M_AXI_ARCACHE[3:0],M_AXI_ARPROT[2:0],M_AXI_ARQOS[3:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RID[0:0],M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RLAST,M_AXI_RVALID,M_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "tmr_voter,Vivado 2023.2";
begin
end;
