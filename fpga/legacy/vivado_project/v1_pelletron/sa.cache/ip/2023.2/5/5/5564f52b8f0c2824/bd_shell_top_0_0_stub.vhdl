-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 26 15:13:34 2025
-- Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_shell_top_0_0_stub.vhdl
-- Design      : bd_shell_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_ap_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ap_AWVALID : in STD_LOGIC;
    s_axi_ap_AWREADY : out STD_LOGIC;
    s_axi_ap_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ap_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ap_WVALID : in STD_LOGIC;
    s_axi_ap_WREADY : out STD_LOGIC;
    s_axi_ap_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ap_BVALID : out STD_LOGIC;
    s_axi_ap_BREADY : in STD_LOGIC;
    s_axi_ap_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ap_ARVALID : in STD_LOGIC;
    s_axi_ap_ARREADY : out STD_LOGIC;
    s_axi_ap_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ap_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ap_RVALID : out STD_LOGIC;
    s_axi_ap_RREADY : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_aw_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aw_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_aw_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aw_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_aw_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_aw_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_AWVALID : out STD_LOGIC;
    m_axi_aw_AWREADY : in STD_LOGIC;
    m_axi_aw_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aw_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_aw_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_WLAST : out STD_LOGIC;
    m_axi_aw_WVALID : out STD_LOGIC;
    m_axi_aw_WREADY : in STD_LOGIC;
    m_axi_aw_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aw_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_BVALID : in STD_LOGIC;
    m_axi_aw_BREADY : out STD_LOGIC;
    m_axi_aw_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aw_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_aw_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aw_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_aw_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_aw_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aw_ARVALID : out STD_LOGIC;
    m_axi_aw_ARREADY : in STD_LOGIC;
    m_axi_aw_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aw_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_aw_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_aw_RLAST : in STD_LOGIC;
    m_axi_aw_RVALID : in STD_LOGIC;
    m_axi_aw_RREADY : out STD_LOGIC;
    m_axi_bi_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bi_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bi_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_AWVALID : out STD_LOGIC;
    m_axi_bi_AWREADY : in STD_LOGIC;
    m_axi_bi_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bi_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bi_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_WLAST : out STD_LOGIC;
    m_axi_bi_WVALID : out STD_LOGIC;
    m_axi_bi_WREADY : in STD_LOGIC;
    m_axi_bi_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_BVALID : in STD_LOGIC;
    m_axi_bi_BREADY : out STD_LOGIC;
    m_axi_bi_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bi_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bi_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bi_ARVALID : out STD_LOGIC;
    m_axi_bi_ARREADY : in STD_LOGIC;
    m_axi_bi_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bi_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bi_RLAST : in STD_LOGIC;
    m_axi_bi_RVALID : in STD_LOGIC;
    m_axi_bi_RREADY : out STD_LOGIC;
    m_axi_ca_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ca_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ca_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ca_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ca_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ca_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_AWVALID : out STD_LOGIC;
    m_axi_ca_AWREADY : in STD_LOGIC;
    m_axi_ca_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ca_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ca_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_WLAST : out STD_LOGIC;
    m_axi_ca_WVALID : out STD_LOGIC;
    m_axi_ca_WREADY : in STD_LOGIC;
    m_axi_ca_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ca_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_BVALID : in STD_LOGIC;
    m_axi_ca_BREADY : out STD_LOGIC;
    m_axi_ca_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ca_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ca_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ca_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ca_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ca_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ca_ARVALID : out STD_LOGIC;
    m_axi_ca_ARREADY : in STD_LOGIC;
    m_axi_ca_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ca_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ca_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ca_RLAST : in STD_LOGIC;
    m_axi_ca_RVALID : in STD_LOGIC;
    m_axi_ca_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_ap_AWADDR[5:0],s_axi_ap_AWVALID,s_axi_ap_AWREADY,s_axi_ap_WDATA[31:0],s_axi_ap_WSTRB[3:0],s_axi_ap_WVALID,s_axi_ap_WREADY,s_axi_ap_BRESP[1:0],s_axi_ap_BVALID,s_axi_ap_BREADY,s_axi_ap_ARADDR[5:0],s_axi_ap_ARVALID,s_axi_ap_ARREADY,s_axi_ap_RDATA[31:0],s_axi_ap_RRESP[1:0],s_axi_ap_RVALID,s_axi_ap_RREADY,s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_aw_AWID[0:0],m_axi_aw_AWADDR[31:0],m_axi_aw_AWLEN[7:0],m_axi_aw_AWSIZE[2:0],m_axi_aw_AWBURST[1:0],m_axi_aw_AWLOCK[1:0],m_axi_aw_AWREGION[3:0],m_axi_aw_AWCACHE[3:0],m_axi_aw_AWPROT[2:0],m_axi_aw_AWQOS[3:0],m_axi_aw_AWVALID,m_axi_aw_AWREADY,m_axi_aw_WID[0:0],m_axi_aw_WDATA[31:0],m_axi_aw_WSTRB[3:0],m_axi_aw_WLAST,m_axi_aw_WVALID,m_axi_aw_WREADY,m_axi_aw_BID[0:0],m_axi_aw_BRESP[1:0],m_axi_aw_BVALID,m_axi_aw_BREADY,m_axi_aw_ARID[0:0],m_axi_aw_ARADDR[31:0],m_axi_aw_ARLEN[7:0],m_axi_aw_ARSIZE[2:0],m_axi_aw_ARBURST[1:0],m_axi_aw_ARLOCK[1:0],m_axi_aw_ARREGION[3:0],m_axi_aw_ARCACHE[3:0],m_axi_aw_ARPROT[2:0],m_axi_aw_ARQOS[3:0],m_axi_aw_ARVALID,m_axi_aw_ARREADY,m_axi_aw_RID[0:0],m_axi_aw_RDATA[31:0],m_axi_aw_RRESP[1:0],m_axi_aw_RLAST,m_axi_aw_RVALID,m_axi_aw_RREADY,m_axi_bi_AWID[0:0],m_axi_bi_AWADDR[31:0],m_axi_bi_AWLEN[7:0],m_axi_bi_AWSIZE[2:0],m_axi_bi_AWBURST[1:0],m_axi_bi_AWLOCK[1:0],m_axi_bi_AWREGION[3:0],m_axi_bi_AWCACHE[3:0],m_axi_bi_AWPROT[2:0],m_axi_bi_AWQOS[3:0],m_axi_bi_AWVALID,m_axi_bi_AWREADY,m_axi_bi_WID[0:0],m_axi_bi_WDATA[31:0],m_axi_bi_WSTRB[3:0],m_axi_bi_WLAST,m_axi_bi_WVALID,m_axi_bi_WREADY,m_axi_bi_BID[0:0],m_axi_bi_BRESP[1:0],m_axi_bi_BVALID,m_axi_bi_BREADY,m_axi_bi_ARID[0:0],m_axi_bi_ARADDR[31:0],m_axi_bi_ARLEN[7:0],m_axi_bi_ARSIZE[2:0],m_axi_bi_ARBURST[1:0],m_axi_bi_ARLOCK[1:0],m_axi_bi_ARREGION[3:0],m_axi_bi_ARCACHE[3:0],m_axi_bi_ARPROT[2:0],m_axi_bi_ARQOS[3:0],m_axi_bi_ARVALID,m_axi_bi_ARREADY,m_axi_bi_RID[0:0],m_axi_bi_RDATA[31:0],m_axi_bi_RRESP[1:0],m_axi_bi_RLAST,m_axi_bi_RVALID,m_axi_bi_RREADY,m_axi_ca_AWID[0:0],m_axi_ca_AWADDR[31:0],m_axi_ca_AWLEN[7:0],m_axi_ca_AWSIZE[2:0],m_axi_ca_AWBURST[1:0],m_axi_ca_AWLOCK[1:0],m_axi_ca_AWREGION[3:0],m_axi_ca_AWCACHE[3:0],m_axi_ca_AWPROT[2:0],m_axi_ca_AWQOS[3:0],m_axi_ca_AWVALID,m_axi_ca_AWREADY,m_axi_ca_WID[0:0],m_axi_ca_WDATA[31:0],m_axi_ca_WSTRB[3:0],m_axi_ca_WLAST,m_axi_ca_WVALID,m_axi_ca_WREADY,m_axi_ca_BID[0:0],m_axi_ca_BRESP[1:0],m_axi_ca_BVALID,m_axi_ca_BREADY,m_axi_ca_ARID[0:0],m_axi_ca_ARADDR[31:0],m_axi_ca_ARLEN[7:0],m_axi_ca_ARSIZE[2:0],m_axi_ca_ARBURST[1:0],m_axi_ca_ARLOCK[1:0],m_axi_ca_ARREGION[3:0],m_axi_ca_ARCACHE[3:0],m_axi_ca_ARPROT[2:0],m_axi_ca_ARQOS[3:0],m_axi_ca_ARVALID,m_axi_ca_ARREADY,m_axi_ca_RID[0:0],m_axi_ca_RDATA[31:0],m_axi_ca_RRESP[1:0],m_axi_ca_RLAST,m_axi_ca_RVALID,m_axi_ca_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "shell_top,Vivado 2023.2";
begin
end;
