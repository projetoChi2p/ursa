-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon May 12 14:36:18 2025
-- Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_hybrid_tmr_ecc_tmr_voter_3_0 -prefix
--               bd_hybrid_tmr_ecc_tmr_voter_3_0_ bd_ocm_tmr_tmr_voter_0_3_sim_netlist.vhdl
-- Design      : bd_ocm_tmr_tmr_voter_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hybrid_tmr_ecc_tmr_voter_3_0_Voter is
  port (
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_RREADY : in STD_LOGIC;
    S_AXI3_RREADY : in STD_LOGIC;
    S_AXI2_RREADY : in STD_LOGIC;
    S_AXI1_ARVALID : in STD_LOGIC;
    S_AXI3_ARVALID : in STD_LOGIC;
    S_AXI2_ARVALID : in STD_LOGIC;
    S_AXI1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARLOCK : in STD_LOGIC;
    S_AXI3_ARLOCK : in STD_LOGIC;
    S_AXI2_ARLOCK : in STD_LOGIC;
    S_AXI1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_BREADY : in STD_LOGIC;
    S_AXI3_BREADY : in STD_LOGIC;
    S_AXI2_BREADY : in STD_LOGIC;
    S_AXI1_WVALID : in STD_LOGIC;
    S_AXI3_WVALID : in STD_LOGIC;
    S_AXI2_WVALID : in STD_LOGIC;
    S_AXI1_WLAST : in STD_LOGIC;
    S_AXI3_WLAST : in STD_LOGIC;
    S_AXI2_WLAST : in STD_LOGIC;
    S_AXI1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_AWVALID : in STD_LOGIC;
    S_AXI3_AWVALID : in STD_LOGIC;
    S_AXI2_AWVALID : in STD_LOGIC;
    S_AXI1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWLOCK : in STD_LOGIC;
    S_AXI3_AWLOCK : in STD_LOGIC;
    S_AXI2_AWLOCK : in STD_LOGIC;
    S_AXI1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_AWID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_hybrid_tmr_ecc_tmr_voter_3_0_Voter;

architecture STRUCTURE of bd_hybrid_tmr_ecc_tmr_voter_3_0_Voter is
begin
\M_AXI_ARADDR[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(0),
      I1 => S_AXI3_ARADDR(0),
      I2 => S_AXI2_ARADDR(0),
      O => M_AXI_ARADDR(0)
    );
\M_AXI_ARADDR[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(10),
      I1 => S_AXI3_ARADDR(10),
      I2 => S_AXI2_ARADDR(10),
      O => M_AXI_ARADDR(10)
    );
\M_AXI_ARADDR[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(11),
      I1 => S_AXI3_ARADDR(11),
      I2 => S_AXI2_ARADDR(11),
      O => M_AXI_ARADDR(11)
    );
\M_AXI_ARADDR[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(12),
      I1 => S_AXI3_ARADDR(12),
      I2 => S_AXI2_ARADDR(12),
      O => M_AXI_ARADDR(12)
    );
\M_AXI_ARADDR[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(13),
      I1 => S_AXI3_ARADDR(13),
      I2 => S_AXI2_ARADDR(13),
      O => M_AXI_ARADDR(13)
    );
\M_AXI_ARADDR[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(14),
      I1 => S_AXI3_ARADDR(14),
      I2 => S_AXI2_ARADDR(14),
      O => M_AXI_ARADDR(14)
    );
\M_AXI_ARADDR[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(15),
      I1 => S_AXI3_ARADDR(15),
      I2 => S_AXI2_ARADDR(15),
      O => M_AXI_ARADDR(15)
    );
\M_AXI_ARADDR[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(16),
      I1 => S_AXI3_ARADDR(16),
      I2 => S_AXI2_ARADDR(16),
      O => M_AXI_ARADDR(16)
    );
\M_AXI_ARADDR[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(17),
      I1 => S_AXI3_ARADDR(17),
      I2 => S_AXI2_ARADDR(17),
      O => M_AXI_ARADDR(17)
    );
\M_AXI_ARADDR[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(18),
      I1 => S_AXI3_ARADDR(18),
      I2 => S_AXI2_ARADDR(18),
      O => M_AXI_ARADDR(18)
    );
\M_AXI_ARADDR[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(19),
      I1 => S_AXI3_ARADDR(19),
      I2 => S_AXI2_ARADDR(19),
      O => M_AXI_ARADDR(19)
    );
\M_AXI_ARADDR[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(1),
      I1 => S_AXI3_ARADDR(1),
      I2 => S_AXI2_ARADDR(1),
      O => M_AXI_ARADDR(1)
    );
\M_AXI_ARADDR[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(20),
      I1 => S_AXI3_ARADDR(20),
      I2 => S_AXI2_ARADDR(20),
      O => M_AXI_ARADDR(20)
    );
\M_AXI_ARADDR[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(21),
      I1 => S_AXI3_ARADDR(21),
      I2 => S_AXI2_ARADDR(21),
      O => M_AXI_ARADDR(21)
    );
\M_AXI_ARADDR[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(22),
      I1 => S_AXI3_ARADDR(22),
      I2 => S_AXI2_ARADDR(22),
      O => M_AXI_ARADDR(22)
    );
\M_AXI_ARADDR[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(23),
      I1 => S_AXI3_ARADDR(23),
      I2 => S_AXI2_ARADDR(23),
      O => M_AXI_ARADDR(23)
    );
\M_AXI_ARADDR[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(24),
      I1 => S_AXI3_ARADDR(24),
      I2 => S_AXI2_ARADDR(24),
      O => M_AXI_ARADDR(24)
    );
\M_AXI_ARADDR[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(25),
      I1 => S_AXI3_ARADDR(25),
      I2 => S_AXI2_ARADDR(25),
      O => M_AXI_ARADDR(25)
    );
\M_AXI_ARADDR[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(26),
      I1 => S_AXI3_ARADDR(26),
      I2 => S_AXI2_ARADDR(26),
      O => M_AXI_ARADDR(26)
    );
\M_AXI_ARADDR[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(27),
      I1 => S_AXI3_ARADDR(27),
      I2 => S_AXI2_ARADDR(27),
      O => M_AXI_ARADDR(27)
    );
\M_AXI_ARADDR[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(28),
      I1 => S_AXI3_ARADDR(28),
      I2 => S_AXI2_ARADDR(28),
      O => M_AXI_ARADDR(28)
    );
\M_AXI_ARADDR[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(29),
      I1 => S_AXI3_ARADDR(29),
      I2 => S_AXI2_ARADDR(29),
      O => M_AXI_ARADDR(29)
    );
\M_AXI_ARADDR[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(2),
      I1 => S_AXI3_ARADDR(2),
      I2 => S_AXI2_ARADDR(2),
      O => M_AXI_ARADDR(2)
    );
\M_AXI_ARADDR[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(30),
      I1 => S_AXI3_ARADDR(30),
      I2 => S_AXI2_ARADDR(30),
      O => M_AXI_ARADDR(30)
    );
\M_AXI_ARADDR[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(31),
      I1 => S_AXI3_ARADDR(31),
      I2 => S_AXI2_ARADDR(31),
      O => M_AXI_ARADDR(31)
    );
\M_AXI_ARADDR[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(3),
      I1 => S_AXI3_ARADDR(3),
      I2 => S_AXI2_ARADDR(3),
      O => M_AXI_ARADDR(3)
    );
\M_AXI_ARADDR[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(4),
      I1 => S_AXI3_ARADDR(4),
      I2 => S_AXI2_ARADDR(4),
      O => M_AXI_ARADDR(4)
    );
\M_AXI_ARADDR[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(5),
      I1 => S_AXI3_ARADDR(5),
      I2 => S_AXI2_ARADDR(5),
      O => M_AXI_ARADDR(5)
    );
\M_AXI_ARADDR[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(6),
      I1 => S_AXI3_ARADDR(6),
      I2 => S_AXI2_ARADDR(6),
      O => M_AXI_ARADDR(6)
    );
\M_AXI_ARADDR[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(7),
      I1 => S_AXI3_ARADDR(7),
      I2 => S_AXI2_ARADDR(7),
      O => M_AXI_ARADDR(7)
    );
\M_AXI_ARADDR[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(8),
      I1 => S_AXI3_ARADDR(8),
      I2 => S_AXI2_ARADDR(8),
      O => M_AXI_ARADDR(8)
    );
\M_AXI_ARADDR[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARADDR(9),
      I1 => S_AXI3_ARADDR(9),
      I2 => S_AXI2_ARADDR(9),
      O => M_AXI_ARADDR(9)
    );
\M_AXI_ARBURST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARBURST(0),
      I1 => S_AXI3_ARBURST(0),
      I2 => S_AXI2_ARBURST(0),
      O => M_AXI_ARBURST(0)
    );
\M_AXI_ARBURST[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARBURST(1),
      I1 => S_AXI3_ARBURST(1),
      I2 => S_AXI2_ARBURST(1),
      O => M_AXI_ARBURST(1)
    );
\M_AXI_ARCACHE[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARCACHE(0),
      I1 => S_AXI3_ARCACHE(0),
      I2 => S_AXI2_ARCACHE(0),
      O => M_AXI_ARCACHE(0)
    );
\M_AXI_ARCACHE[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARCACHE(1),
      I1 => S_AXI3_ARCACHE(1),
      I2 => S_AXI2_ARCACHE(1),
      O => M_AXI_ARCACHE(1)
    );
\M_AXI_ARCACHE[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARCACHE(2),
      I1 => S_AXI3_ARCACHE(2),
      I2 => S_AXI2_ARCACHE(2),
      O => M_AXI_ARCACHE(2)
    );
\M_AXI_ARCACHE[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARCACHE(3),
      I1 => S_AXI3_ARCACHE(3),
      I2 => S_AXI2_ARCACHE(3),
      O => M_AXI_ARCACHE(3)
    );
\M_AXI_ARID[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARID(0),
      I1 => S_AXI3_ARID(0),
      I2 => S_AXI2_ARID(0),
      O => M_AXI_ARID(0)
    );
\M_AXI_ARLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(0),
      I1 => S_AXI3_ARLEN(0),
      I2 => S_AXI2_ARLEN(0),
      O => M_AXI_ARLEN(0)
    );
\M_AXI_ARLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(1),
      I1 => S_AXI3_ARLEN(1),
      I2 => S_AXI2_ARLEN(1),
      O => M_AXI_ARLEN(1)
    );
\M_AXI_ARLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(2),
      I1 => S_AXI3_ARLEN(2),
      I2 => S_AXI2_ARLEN(2),
      O => M_AXI_ARLEN(2)
    );
\M_AXI_ARLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(3),
      I1 => S_AXI3_ARLEN(3),
      I2 => S_AXI2_ARLEN(3),
      O => M_AXI_ARLEN(3)
    );
\M_AXI_ARLEN[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(4),
      I1 => S_AXI3_ARLEN(4),
      I2 => S_AXI2_ARLEN(4),
      O => M_AXI_ARLEN(4)
    );
\M_AXI_ARLEN[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(5),
      I1 => S_AXI3_ARLEN(5),
      I2 => S_AXI2_ARLEN(5),
      O => M_AXI_ARLEN(5)
    );
\M_AXI_ARLEN[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(6),
      I1 => S_AXI3_ARLEN(6),
      I2 => S_AXI2_ARLEN(6),
      O => M_AXI_ARLEN(6)
    );
\M_AXI_ARLEN[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLEN(7),
      I1 => S_AXI3_ARLEN(7),
      I2 => S_AXI2_ARLEN(7),
      O => M_AXI_ARLEN(7)
    );
M_AXI_ARLOCK_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARLOCK,
      I1 => S_AXI3_ARLOCK,
      I2 => S_AXI2_ARLOCK,
      O => M_AXI_ARLOCK
    );
\M_AXI_ARPROT[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARPROT(0),
      I1 => S_AXI3_ARPROT(0),
      I2 => S_AXI2_ARPROT(0),
      O => M_AXI_ARPROT(0)
    );
\M_AXI_ARPROT[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARPROT(1),
      I1 => S_AXI3_ARPROT(1),
      I2 => S_AXI2_ARPROT(1),
      O => M_AXI_ARPROT(1)
    );
\M_AXI_ARPROT[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARPROT(2),
      I1 => S_AXI3_ARPROT(2),
      I2 => S_AXI2_ARPROT(2),
      O => M_AXI_ARPROT(2)
    );
\M_AXI_ARQOS[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARQOS(0),
      I1 => S_AXI3_ARQOS(0),
      I2 => S_AXI2_ARQOS(0),
      O => M_AXI_ARQOS(0)
    );
\M_AXI_ARQOS[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARQOS(1),
      I1 => S_AXI3_ARQOS(1),
      I2 => S_AXI2_ARQOS(1),
      O => M_AXI_ARQOS(1)
    );
\M_AXI_ARQOS[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARQOS(2),
      I1 => S_AXI3_ARQOS(2),
      I2 => S_AXI2_ARQOS(2),
      O => M_AXI_ARQOS(2)
    );
\M_AXI_ARQOS[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARQOS(3),
      I1 => S_AXI3_ARQOS(3),
      I2 => S_AXI2_ARQOS(3),
      O => M_AXI_ARQOS(3)
    );
\M_AXI_ARSIZE[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARSIZE(0),
      I1 => S_AXI3_ARSIZE(0),
      I2 => S_AXI2_ARSIZE(0),
      O => M_AXI_ARSIZE(0)
    );
\M_AXI_ARSIZE[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARSIZE(1),
      I1 => S_AXI3_ARSIZE(1),
      I2 => S_AXI2_ARSIZE(1),
      O => M_AXI_ARSIZE(1)
    );
\M_AXI_ARSIZE[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARSIZE(2),
      I1 => S_AXI3_ARSIZE(2),
      I2 => S_AXI2_ARSIZE(2),
      O => M_AXI_ARSIZE(2)
    );
M_AXI_ARVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_ARVALID,
      I1 => S_AXI3_ARVALID,
      I2 => S_AXI2_ARVALID,
      O => M_AXI_ARVALID
    );
\M_AXI_AWADDR[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(0),
      I1 => S_AXI3_AWADDR(0),
      I2 => S_AXI2_AWADDR(0),
      O => M_AXI_AWADDR(0)
    );
\M_AXI_AWADDR[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(10),
      I1 => S_AXI3_AWADDR(10),
      I2 => S_AXI2_AWADDR(10),
      O => M_AXI_AWADDR(10)
    );
\M_AXI_AWADDR[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(11),
      I1 => S_AXI3_AWADDR(11),
      I2 => S_AXI2_AWADDR(11),
      O => M_AXI_AWADDR(11)
    );
\M_AXI_AWADDR[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(12),
      I1 => S_AXI3_AWADDR(12),
      I2 => S_AXI2_AWADDR(12),
      O => M_AXI_AWADDR(12)
    );
\M_AXI_AWADDR[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(13),
      I1 => S_AXI3_AWADDR(13),
      I2 => S_AXI2_AWADDR(13),
      O => M_AXI_AWADDR(13)
    );
\M_AXI_AWADDR[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(14),
      I1 => S_AXI3_AWADDR(14),
      I2 => S_AXI2_AWADDR(14),
      O => M_AXI_AWADDR(14)
    );
\M_AXI_AWADDR[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(15),
      I1 => S_AXI3_AWADDR(15),
      I2 => S_AXI2_AWADDR(15),
      O => M_AXI_AWADDR(15)
    );
\M_AXI_AWADDR[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(16),
      I1 => S_AXI3_AWADDR(16),
      I2 => S_AXI2_AWADDR(16),
      O => M_AXI_AWADDR(16)
    );
\M_AXI_AWADDR[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(17),
      I1 => S_AXI3_AWADDR(17),
      I2 => S_AXI2_AWADDR(17),
      O => M_AXI_AWADDR(17)
    );
\M_AXI_AWADDR[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(18),
      I1 => S_AXI3_AWADDR(18),
      I2 => S_AXI2_AWADDR(18),
      O => M_AXI_AWADDR(18)
    );
\M_AXI_AWADDR[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(19),
      I1 => S_AXI3_AWADDR(19),
      I2 => S_AXI2_AWADDR(19),
      O => M_AXI_AWADDR(19)
    );
\M_AXI_AWADDR[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(1),
      I1 => S_AXI3_AWADDR(1),
      I2 => S_AXI2_AWADDR(1),
      O => M_AXI_AWADDR(1)
    );
\M_AXI_AWADDR[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(20),
      I1 => S_AXI3_AWADDR(20),
      I2 => S_AXI2_AWADDR(20),
      O => M_AXI_AWADDR(20)
    );
\M_AXI_AWADDR[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(21),
      I1 => S_AXI3_AWADDR(21),
      I2 => S_AXI2_AWADDR(21),
      O => M_AXI_AWADDR(21)
    );
\M_AXI_AWADDR[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(22),
      I1 => S_AXI3_AWADDR(22),
      I2 => S_AXI2_AWADDR(22),
      O => M_AXI_AWADDR(22)
    );
\M_AXI_AWADDR[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(23),
      I1 => S_AXI3_AWADDR(23),
      I2 => S_AXI2_AWADDR(23),
      O => M_AXI_AWADDR(23)
    );
\M_AXI_AWADDR[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(24),
      I1 => S_AXI3_AWADDR(24),
      I2 => S_AXI2_AWADDR(24),
      O => M_AXI_AWADDR(24)
    );
\M_AXI_AWADDR[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(25),
      I1 => S_AXI3_AWADDR(25),
      I2 => S_AXI2_AWADDR(25),
      O => M_AXI_AWADDR(25)
    );
\M_AXI_AWADDR[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(26),
      I1 => S_AXI3_AWADDR(26),
      I2 => S_AXI2_AWADDR(26),
      O => M_AXI_AWADDR(26)
    );
\M_AXI_AWADDR[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(27),
      I1 => S_AXI3_AWADDR(27),
      I2 => S_AXI2_AWADDR(27),
      O => M_AXI_AWADDR(27)
    );
\M_AXI_AWADDR[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(28),
      I1 => S_AXI3_AWADDR(28),
      I2 => S_AXI2_AWADDR(28),
      O => M_AXI_AWADDR(28)
    );
\M_AXI_AWADDR[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(29),
      I1 => S_AXI3_AWADDR(29),
      I2 => S_AXI2_AWADDR(29),
      O => M_AXI_AWADDR(29)
    );
\M_AXI_AWADDR[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(2),
      I1 => S_AXI3_AWADDR(2),
      I2 => S_AXI2_AWADDR(2),
      O => M_AXI_AWADDR(2)
    );
\M_AXI_AWADDR[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(30),
      I1 => S_AXI3_AWADDR(30),
      I2 => S_AXI2_AWADDR(30),
      O => M_AXI_AWADDR(30)
    );
\M_AXI_AWADDR[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(31),
      I1 => S_AXI3_AWADDR(31),
      I2 => S_AXI2_AWADDR(31),
      O => M_AXI_AWADDR(31)
    );
\M_AXI_AWADDR[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(3),
      I1 => S_AXI3_AWADDR(3),
      I2 => S_AXI2_AWADDR(3),
      O => M_AXI_AWADDR(3)
    );
\M_AXI_AWADDR[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(4),
      I1 => S_AXI3_AWADDR(4),
      I2 => S_AXI2_AWADDR(4),
      O => M_AXI_AWADDR(4)
    );
\M_AXI_AWADDR[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(5),
      I1 => S_AXI3_AWADDR(5),
      I2 => S_AXI2_AWADDR(5),
      O => M_AXI_AWADDR(5)
    );
\M_AXI_AWADDR[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(6),
      I1 => S_AXI3_AWADDR(6),
      I2 => S_AXI2_AWADDR(6),
      O => M_AXI_AWADDR(6)
    );
\M_AXI_AWADDR[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(7),
      I1 => S_AXI3_AWADDR(7),
      I2 => S_AXI2_AWADDR(7),
      O => M_AXI_AWADDR(7)
    );
\M_AXI_AWADDR[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(8),
      I1 => S_AXI3_AWADDR(8),
      I2 => S_AXI2_AWADDR(8),
      O => M_AXI_AWADDR(8)
    );
\M_AXI_AWADDR[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWADDR(9),
      I1 => S_AXI3_AWADDR(9),
      I2 => S_AXI2_AWADDR(9),
      O => M_AXI_AWADDR(9)
    );
\M_AXI_AWBURST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWBURST(0),
      I1 => S_AXI3_AWBURST(0),
      I2 => S_AXI2_AWBURST(0),
      O => M_AXI_AWBURST(0)
    );
\M_AXI_AWBURST[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWBURST(1),
      I1 => S_AXI3_AWBURST(1),
      I2 => S_AXI2_AWBURST(1),
      O => M_AXI_AWBURST(1)
    );
\M_AXI_AWCACHE[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWCACHE(0),
      I1 => S_AXI3_AWCACHE(0),
      I2 => S_AXI2_AWCACHE(0),
      O => M_AXI_AWCACHE(0)
    );
\M_AXI_AWCACHE[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWCACHE(1),
      I1 => S_AXI3_AWCACHE(1),
      I2 => S_AXI2_AWCACHE(1),
      O => M_AXI_AWCACHE(1)
    );
\M_AXI_AWCACHE[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWCACHE(2),
      I1 => S_AXI3_AWCACHE(2),
      I2 => S_AXI2_AWCACHE(2),
      O => M_AXI_AWCACHE(2)
    );
\M_AXI_AWCACHE[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWCACHE(3),
      I1 => S_AXI3_AWCACHE(3),
      I2 => S_AXI2_AWCACHE(3),
      O => M_AXI_AWCACHE(3)
    );
\M_AXI_AWID[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWID(0),
      I1 => S_AXI3_AWID(0),
      I2 => S_AXI2_AWID(0),
      O => M_AXI_AWID(0)
    );
\M_AXI_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(0),
      I1 => S_AXI3_AWLEN(0),
      I2 => S_AXI2_AWLEN(0),
      O => M_AXI_AWLEN(0)
    );
\M_AXI_AWLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(1),
      I1 => S_AXI3_AWLEN(1),
      I2 => S_AXI2_AWLEN(1),
      O => M_AXI_AWLEN(1)
    );
\M_AXI_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(2),
      I1 => S_AXI3_AWLEN(2),
      I2 => S_AXI2_AWLEN(2),
      O => M_AXI_AWLEN(2)
    );
\M_AXI_AWLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(3),
      I1 => S_AXI3_AWLEN(3),
      I2 => S_AXI2_AWLEN(3),
      O => M_AXI_AWLEN(3)
    );
\M_AXI_AWLEN[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(4),
      I1 => S_AXI3_AWLEN(4),
      I2 => S_AXI2_AWLEN(4),
      O => M_AXI_AWLEN(4)
    );
\M_AXI_AWLEN[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(5),
      I1 => S_AXI3_AWLEN(5),
      I2 => S_AXI2_AWLEN(5),
      O => M_AXI_AWLEN(5)
    );
\M_AXI_AWLEN[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(6),
      I1 => S_AXI3_AWLEN(6),
      I2 => S_AXI2_AWLEN(6),
      O => M_AXI_AWLEN(6)
    );
\M_AXI_AWLEN[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLEN(7),
      I1 => S_AXI3_AWLEN(7),
      I2 => S_AXI2_AWLEN(7),
      O => M_AXI_AWLEN(7)
    );
M_AXI_AWLOCK_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWLOCK,
      I1 => S_AXI3_AWLOCK,
      I2 => S_AXI2_AWLOCK,
      O => M_AXI_AWLOCK
    );
\M_AXI_AWPROT[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWPROT(0),
      I1 => S_AXI3_AWPROT(0),
      I2 => S_AXI2_AWPROT(0),
      O => M_AXI_AWPROT(0)
    );
\M_AXI_AWPROT[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWPROT(1),
      I1 => S_AXI3_AWPROT(1),
      I2 => S_AXI2_AWPROT(1),
      O => M_AXI_AWPROT(1)
    );
\M_AXI_AWPROT[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWPROT(2),
      I1 => S_AXI3_AWPROT(2),
      I2 => S_AXI2_AWPROT(2),
      O => M_AXI_AWPROT(2)
    );
\M_AXI_AWQOS[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWQOS(0),
      I1 => S_AXI3_AWQOS(0),
      I2 => S_AXI2_AWQOS(0),
      O => M_AXI_AWQOS(0)
    );
\M_AXI_AWQOS[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWQOS(1),
      I1 => S_AXI3_AWQOS(1),
      I2 => S_AXI2_AWQOS(1),
      O => M_AXI_AWQOS(1)
    );
\M_AXI_AWQOS[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWQOS(2),
      I1 => S_AXI3_AWQOS(2),
      I2 => S_AXI2_AWQOS(2),
      O => M_AXI_AWQOS(2)
    );
\M_AXI_AWQOS[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWQOS(3),
      I1 => S_AXI3_AWQOS(3),
      I2 => S_AXI2_AWQOS(3),
      O => M_AXI_AWQOS(3)
    );
\M_AXI_AWSIZE[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWSIZE(0),
      I1 => S_AXI3_AWSIZE(0),
      I2 => S_AXI2_AWSIZE(0),
      O => M_AXI_AWSIZE(0)
    );
\M_AXI_AWSIZE[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWSIZE(1),
      I1 => S_AXI3_AWSIZE(1),
      I2 => S_AXI2_AWSIZE(1),
      O => M_AXI_AWSIZE(1)
    );
\M_AXI_AWSIZE[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWSIZE(2),
      I1 => S_AXI3_AWSIZE(2),
      I2 => S_AXI2_AWSIZE(2),
      O => M_AXI_AWSIZE(2)
    );
M_AXI_AWVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_AWVALID,
      I1 => S_AXI3_AWVALID,
      I2 => S_AXI2_AWVALID,
      O => M_AXI_AWVALID
    );
M_AXI_BREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_BREADY,
      I1 => S_AXI3_BREADY,
      I2 => S_AXI2_BREADY,
      O => M_AXI_BREADY
    );
M_AXI_RREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_RREADY,
      I1 => S_AXI3_RREADY,
      I2 => S_AXI2_RREADY,
      O => M_AXI_RREADY
    );
\M_AXI_WDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(0),
      I1 => S_AXI3_WDATA(0),
      I2 => S_AXI2_WDATA(0),
      O => M_AXI_WDATA(0)
    );
\M_AXI_WDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(10),
      I1 => S_AXI3_WDATA(10),
      I2 => S_AXI2_WDATA(10),
      O => M_AXI_WDATA(10)
    );
\M_AXI_WDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(11),
      I1 => S_AXI3_WDATA(11),
      I2 => S_AXI2_WDATA(11),
      O => M_AXI_WDATA(11)
    );
\M_AXI_WDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(12),
      I1 => S_AXI3_WDATA(12),
      I2 => S_AXI2_WDATA(12),
      O => M_AXI_WDATA(12)
    );
\M_AXI_WDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(13),
      I1 => S_AXI3_WDATA(13),
      I2 => S_AXI2_WDATA(13),
      O => M_AXI_WDATA(13)
    );
\M_AXI_WDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(14),
      I1 => S_AXI3_WDATA(14),
      I2 => S_AXI2_WDATA(14),
      O => M_AXI_WDATA(14)
    );
\M_AXI_WDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(15),
      I1 => S_AXI3_WDATA(15),
      I2 => S_AXI2_WDATA(15),
      O => M_AXI_WDATA(15)
    );
\M_AXI_WDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(16),
      I1 => S_AXI3_WDATA(16),
      I2 => S_AXI2_WDATA(16),
      O => M_AXI_WDATA(16)
    );
\M_AXI_WDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(17),
      I1 => S_AXI3_WDATA(17),
      I2 => S_AXI2_WDATA(17),
      O => M_AXI_WDATA(17)
    );
\M_AXI_WDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(18),
      I1 => S_AXI3_WDATA(18),
      I2 => S_AXI2_WDATA(18),
      O => M_AXI_WDATA(18)
    );
\M_AXI_WDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(19),
      I1 => S_AXI3_WDATA(19),
      I2 => S_AXI2_WDATA(19),
      O => M_AXI_WDATA(19)
    );
\M_AXI_WDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(1),
      I1 => S_AXI3_WDATA(1),
      I2 => S_AXI2_WDATA(1),
      O => M_AXI_WDATA(1)
    );
\M_AXI_WDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(20),
      I1 => S_AXI3_WDATA(20),
      I2 => S_AXI2_WDATA(20),
      O => M_AXI_WDATA(20)
    );
\M_AXI_WDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(21),
      I1 => S_AXI3_WDATA(21),
      I2 => S_AXI2_WDATA(21),
      O => M_AXI_WDATA(21)
    );
\M_AXI_WDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(22),
      I1 => S_AXI3_WDATA(22),
      I2 => S_AXI2_WDATA(22),
      O => M_AXI_WDATA(22)
    );
\M_AXI_WDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(23),
      I1 => S_AXI3_WDATA(23),
      I2 => S_AXI2_WDATA(23),
      O => M_AXI_WDATA(23)
    );
\M_AXI_WDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(24),
      I1 => S_AXI3_WDATA(24),
      I2 => S_AXI2_WDATA(24),
      O => M_AXI_WDATA(24)
    );
\M_AXI_WDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(25),
      I1 => S_AXI3_WDATA(25),
      I2 => S_AXI2_WDATA(25),
      O => M_AXI_WDATA(25)
    );
\M_AXI_WDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(26),
      I1 => S_AXI3_WDATA(26),
      I2 => S_AXI2_WDATA(26),
      O => M_AXI_WDATA(26)
    );
\M_AXI_WDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(27),
      I1 => S_AXI3_WDATA(27),
      I2 => S_AXI2_WDATA(27),
      O => M_AXI_WDATA(27)
    );
\M_AXI_WDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(28),
      I1 => S_AXI3_WDATA(28),
      I2 => S_AXI2_WDATA(28),
      O => M_AXI_WDATA(28)
    );
\M_AXI_WDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(29),
      I1 => S_AXI3_WDATA(29),
      I2 => S_AXI2_WDATA(29),
      O => M_AXI_WDATA(29)
    );
\M_AXI_WDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(2),
      I1 => S_AXI3_WDATA(2),
      I2 => S_AXI2_WDATA(2),
      O => M_AXI_WDATA(2)
    );
\M_AXI_WDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(30),
      I1 => S_AXI3_WDATA(30),
      I2 => S_AXI2_WDATA(30),
      O => M_AXI_WDATA(30)
    );
\M_AXI_WDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(31),
      I1 => S_AXI3_WDATA(31),
      I2 => S_AXI2_WDATA(31),
      O => M_AXI_WDATA(31)
    );
\M_AXI_WDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(3),
      I1 => S_AXI3_WDATA(3),
      I2 => S_AXI2_WDATA(3),
      O => M_AXI_WDATA(3)
    );
\M_AXI_WDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(4),
      I1 => S_AXI3_WDATA(4),
      I2 => S_AXI2_WDATA(4),
      O => M_AXI_WDATA(4)
    );
\M_AXI_WDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(5),
      I1 => S_AXI3_WDATA(5),
      I2 => S_AXI2_WDATA(5),
      O => M_AXI_WDATA(5)
    );
\M_AXI_WDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(6),
      I1 => S_AXI3_WDATA(6),
      I2 => S_AXI2_WDATA(6),
      O => M_AXI_WDATA(6)
    );
\M_AXI_WDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(7),
      I1 => S_AXI3_WDATA(7),
      I2 => S_AXI2_WDATA(7),
      O => M_AXI_WDATA(7)
    );
\M_AXI_WDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(8),
      I1 => S_AXI3_WDATA(8),
      I2 => S_AXI2_WDATA(8),
      O => M_AXI_WDATA(8)
    );
\M_AXI_WDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WDATA(9),
      I1 => S_AXI3_WDATA(9),
      I2 => S_AXI2_WDATA(9),
      O => M_AXI_WDATA(9)
    );
M_AXI_WLAST_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WLAST,
      I1 => S_AXI3_WLAST,
      I2 => S_AXI2_WLAST,
      O => M_AXI_WLAST
    );
\M_AXI_WSTRB[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WSTRB(0),
      I1 => S_AXI3_WSTRB(0),
      I2 => S_AXI2_WSTRB(0),
      O => M_AXI_WSTRB(0)
    );
\M_AXI_WSTRB[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WSTRB(1),
      I1 => S_AXI3_WSTRB(1),
      I2 => S_AXI2_WSTRB(1),
      O => M_AXI_WSTRB(1)
    );
\M_AXI_WSTRB[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WSTRB(2),
      I1 => S_AXI3_WSTRB(2),
      I2 => S_AXI2_WSTRB(2),
      O => M_AXI_WSTRB(2)
    );
\M_AXI_WSTRB[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WSTRB(3),
      I1 => S_AXI3_WSTRB(3),
      I2 => S_AXI2_WSTRB(3),
      O => M_AXI_WSTRB(3)
    );
M_AXI_WVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => S_AXI1_WVALID,
      I1 => S_AXI3_WVALID,
      I2 => S_AXI2_WVALID,
      O => M_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hybrid_tmr_ecc_tmr_voter_3_0_axi_voter is
  port (
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_RREADY : in STD_LOGIC;
    S_AXI3_RREADY : in STD_LOGIC;
    S_AXI2_RREADY : in STD_LOGIC;
    S_AXI1_ARVALID : in STD_LOGIC;
    S_AXI3_ARVALID : in STD_LOGIC;
    S_AXI2_ARVALID : in STD_LOGIC;
    S_AXI1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARLOCK : in STD_LOGIC;
    S_AXI3_ARLOCK : in STD_LOGIC;
    S_AXI2_ARLOCK : in STD_LOGIC;
    S_AXI1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_BREADY : in STD_LOGIC;
    S_AXI3_BREADY : in STD_LOGIC;
    S_AXI2_BREADY : in STD_LOGIC;
    S_AXI1_WVALID : in STD_LOGIC;
    S_AXI3_WVALID : in STD_LOGIC;
    S_AXI2_WVALID : in STD_LOGIC;
    S_AXI1_WLAST : in STD_LOGIC;
    S_AXI3_WLAST : in STD_LOGIC;
    S_AXI2_WLAST : in STD_LOGIC;
    S_AXI1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_AWVALID : in STD_LOGIC;
    S_AXI3_AWVALID : in STD_LOGIC;
    S_AXI2_AWVALID : in STD_LOGIC;
    S_AXI1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_AWLOCK : in STD_LOGIC;
    S_AXI3_AWLOCK : in STD_LOGIC;
    S_AXI2_AWLOCK : in STD_LOGIC;
    S_AXI1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI3_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI2_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_AWID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_hybrid_tmr_ecc_tmr_voter_3_0_axi_voter;

architecture STRUCTURE of bd_hybrid_tmr_ecc_tmr_voter_3_0_axi_voter is
begin
vote_I: entity work.bd_hybrid_tmr_ecc_tmr_voter_3_0_Voter
     port map (
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARID(0) => M_AXI_ARID(0),
      M_AXI_ARLEN(7 downto 0) => M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARPROT(2 downto 0) => M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => M_AXI_ARQOS(3 downto 0),
      M_AXI_ARSIZE(2 downto 0) => M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(0) => M_AXI_AWID(0),
      M_AXI_AWLEN(7 downto 0) => M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWPROT(2 downto 0) => M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => M_AXI_AWQOS(3 downto 0),
      M_AXI_AWSIZE(2 downto 0) => M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => M_AXI_WVALID,
      S_AXI1_ARADDR(31 downto 0) => S_AXI1_ARADDR(31 downto 0),
      S_AXI1_ARBURST(1 downto 0) => S_AXI1_ARBURST(1 downto 0),
      S_AXI1_ARCACHE(3 downto 0) => S_AXI1_ARCACHE(3 downto 0),
      S_AXI1_ARID(0) => S_AXI1_ARID(0),
      S_AXI1_ARLEN(7 downto 0) => S_AXI1_ARLEN(7 downto 0),
      S_AXI1_ARLOCK => S_AXI1_ARLOCK,
      S_AXI1_ARPROT(2 downto 0) => S_AXI1_ARPROT(2 downto 0),
      S_AXI1_ARQOS(3 downto 0) => S_AXI1_ARQOS(3 downto 0),
      S_AXI1_ARSIZE(2 downto 0) => S_AXI1_ARSIZE(2 downto 0),
      S_AXI1_ARVALID => S_AXI1_ARVALID,
      S_AXI1_AWADDR(31 downto 0) => S_AXI1_AWADDR(31 downto 0),
      S_AXI1_AWBURST(1 downto 0) => S_AXI1_AWBURST(1 downto 0),
      S_AXI1_AWCACHE(3 downto 0) => S_AXI1_AWCACHE(3 downto 0),
      S_AXI1_AWID(0) => S_AXI1_AWID(0),
      S_AXI1_AWLEN(7 downto 0) => S_AXI1_AWLEN(7 downto 0),
      S_AXI1_AWLOCK => S_AXI1_AWLOCK,
      S_AXI1_AWPROT(2 downto 0) => S_AXI1_AWPROT(2 downto 0),
      S_AXI1_AWQOS(3 downto 0) => S_AXI1_AWQOS(3 downto 0),
      S_AXI1_AWSIZE(2 downto 0) => S_AXI1_AWSIZE(2 downto 0),
      S_AXI1_AWVALID => S_AXI1_AWVALID,
      S_AXI1_BREADY => S_AXI1_BREADY,
      S_AXI1_RREADY => S_AXI1_RREADY,
      S_AXI1_WDATA(31 downto 0) => S_AXI1_WDATA(31 downto 0),
      S_AXI1_WLAST => S_AXI1_WLAST,
      S_AXI1_WSTRB(3 downto 0) => S_AXI1_WSTRB(3 downto 0),
      S_AXI1_WVALID => S_AXI1_WVALID,
      S_AXI2_ARADDR(31 downto 0) => S_AXI2_ARADDR(31 downto 0),
      S_AXI2_ARBURST(1 downto 0) => S_AXI2_ARBURST(1 downto 0),
      S_AXI2_ARCACHE(3 downto 0) => S_AXI2_ARCACHE(3 downto 0),
      S_AXI2_ARID(0) => S_AXI2_ARID(0),
      S_AXI2_ARLEN(7 downto 0) => S_AXI2_ARLEN(7 downto 0),
      S_AXI2_ARLOCK => S_AXI2_ARLOCK,
      S_AXI2_ARPROT(2 downto 0) => S_AXI2_ARPROT(2 downto 0),
      S_AXI2_ARQOS(3 downto 0) => S_AXI2_ARQOS(3 downto 0),
      S_AXI2_ARSIZE(2 downto 0) => S_AXI2_ARSIZE(2 downto 0),
      S_AXI2_ARVALID => S_AXI2_ARVALID,
      S_AXI2_AWADDR(31 downto 0) => S_AXI2_AWADDR(31 downto 0),
      S_AXI2_AWBURST(1 downto 0) => S_AXI2_AWBURST(1 downto 0),
      S_AXI2_AWCACHE(3 downto 0) => S_AXI2_AWCACHE(3 downto 0),
      S_AXI2_AWID(0) => S_AXI2_AWID(0),
      S_AXI2_AWLEN(7 downto 0) => S_AXI2_AWLEN(7 downto 0),
      S_AXI2_AWLOCK => S_AXI2_AWLOCK,
      S_AXI2_AWPROT(2 downto 0) => S_AXI2_AWPROT(2 downto 0),
      S_AXI2_AWQOS(3 downto 0) => S_AXI2_AWQOS(3 downto 0),
      S_AXI2_AWSIZE(2 downto 0) => S_AXI2_AWSIZE(2 downto 0),
      S_AXI2_AWVALID => S_AXI2_AWVALID,
      S_AXI2_BREADY => S_AXI2_BREADY,
      S_AXI2_RREADY => S_AXI2_RREADY,
      S_AXI2_WDATA(31 downto 0) => S_AXI2_WDATA(31 downto 0),
      S_AXI2_WLAST => S_AXI2_WLAST,
      S_AXI2_WSTRB(3 downto 0) => S_AXI2_WSTRB(3 downto 0),
      S_AXI2_WVALID => S_AXI2_WVALID,
      S_AXI3_ARADDR(31 downto 0) => S_AXI3_ARADDR(31 downto 0),
      S_AXI3_ARBURST(1 downto 0) => S_AXI3_ARBURST(1 downto 0),
      S_AXI3_ARCACHE(3 downto 0) => S_AXI3_ARCACHE(3 downto 0),
      S_AXI3_ARID(0) => S_AXI3_ARID(0),
      S_AXI3_ARLEN(7 downto 0) => S_AXI3_ARLEN(7 downto 0),
      S_AXI3_ARLOCK => S_AXI3_ARLOCK,
      S_AXI3_ARPROT(2 downto 0) => S_AXI3_ARPROT(2 downto 0),
      S_AXI3_ARQOS(3 downto 0) => S_AXI3_ARQOS(3 downto 0),
      S_AXI3_ARSIZE(2 downto 0) => S_AXI3_ARSIZE(2 downto 0),
      S_AXI3_ARVALID => S_AXI3_ARVALID,
      S_AXI3_AWADDR(31 downto 0) => S_AXI3_AWADDR(31 downto 0),
      S_AXI3_AWBURST(1 downto 0) => S_AXI3_AWBURST(1 downto 0),
      S_AXI3_AWCACHE(3 downto 0) => S_AXI3_AWCACHE(3 downto 0),
      S_AXI3_AWID(0) => S_AXI3_AWID(0),
      S_AXI3_AWLEN(7 downto 0) => S_AXI3_AWLEN(7 downto 0),
      S_AXI3_AWLOCK => S_AXI3_AWLOCK,
      S_AXI3_AWPROT(2 downto 0) => S_AXI3_AWPROT(2 downto 0),
      S_AXI3_AWQOS(3 downto 0) => S_AXI3_AWQOS(3 downto 0),
      S_AXI3_AWSIZE(2 downto 0) => S_AXI3_AWSIZE(2 downto 0),
      S_AXI3_AWVALID => S_AXI3_AWVALID,
      S_AXI3_BREADY => S_AXI3_BREADY,
      S_AXI3_RREADY => S_AXI3_RREADY,
      S_AXI3_WDATA(31 downto 0) => S_AXI3_WDATA(31 downto 0),
      S_AXI3_WLAST => S_AXI3_WLAST,
      S_AXI3_WSTRB(3 downto 0) => S_AXI3_WSTRB(3 downto 0),
      S_AXI3_WVALID => S_AXI3_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter is
  port (
    TMR_Disable : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Test_Comparator : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_TLAST_Test : in STD_LOGIC;
    S_AXIS_TDATA_Test : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TVALID_Test : in STD_LOGIC;
    S_AXIS_TREADY_Test : out STD_LOGIC;
    M_AXIS_TLAST_Test : out STD_LOGIC;
    M_AXIS_TDATA_Test : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TVALID_Test : out STD_LOGIC;
    M_AXIS_TREADY_Test : in STD_LOGIC;
    Discrete1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Discrete2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Discrete3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Discrete : out STD_LOGIC_VECTOR ( 0 to 0 );
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_ReadStrobe : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl1_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    Sl1_UE : out STD_LOGIC;
    Sl1_CE : out STD_LOGIC;
    LMB2_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB2_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB2_AddrStrobe : in STD_LOGIC;
    LMB2_ReadStrobe : in STD_LOGIC;
    LMB2_WriteStrobe : in STD_LOGIC;
    LMB2_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl2_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl2_Ready : out STD_LOGIC;
    Sl2_Wait : out STD_LOGIC;
    Sl2_UE : out STD_LOGIC;
    Sl2_CE : out STD_LOGIC;
    LMB3_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB3_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB3_AddrStrobe : in STD_LOGIC;
    LMB3_ReadStrobe : in STD_LOGIC;
    LMB3_WriteStrobe : in STD_LOGIC;
    LMB3_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl3_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl3_Ready : out STD_LOGIC;
    Sl3_Wait : out STD_LOGIC;
    Sl3_UE : out STD_LOGIC;
    Sl3_CE : out STD_LOGIC;
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC;
    Sl_Wait : in STD_LOGIC;
    Sl_UE : in STD_LOGIC;
    Sl_CE : in STD_LOGIC;
    S_LMB1_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB1_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB1_AddrStrobe : out STD_LOGIC;
    S_LMB1_ReadStrobe : out STD_LOGIC;
    S_LMB1_WriteStrobe : out STD_LOGIC;
    S_LMB1_BE : out STD_LOGIC_VECTOR ( 0 to 3 );
    S_Sl1_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_Sl1_Ready : in STD_LOGIC;
    S_Sl1_Wait : in STD_LOGIC;
    S_Sl1_UE : in STD_LOGIC;
    S_Sl1_CE : in STD_LOGIC;
    S_LMB2_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB2_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB2_AddrStrobe : out STD_LOGIC;
    S_LMB2_ReadStrobe : out STD_LOGIC;
    S_LMB2_WriteStrobe : out STD_LOGIC;
    S_LMB2_BE : out STD_LOGIC_VECTOR ( 0 to 3 );
    S_Sl2_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_Sl2_Ready : in STD_LOGIC;
    S_Sl2_Wait : in STD_LOGIC;
    S_Sl2_UE : in STD_LOGIC;
    S_Sl2_CE : in STD_LOGIC;
    S_LMB3_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB3_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB3_AddrStrobe : out STD_LOGIC;
    S_LMB3_ReadStrobe : out STD_LOGIC;
    S_LMB3_WriteStrobe : out STD_LOGIC;
    S_LMB3_BE : out STD_LOGIC_VECTOR ( 0 to 3 );
    S_Sl3_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_Sl3_Ready : in STD_LOGIC;
    S_Sl3_Wait : in STD_LOGIC;
    S_Sl3_UE : in STD_LOGIC;
    S_Sl3_CE : in STD_LOGIC;
    S_LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_LMB_AddrStrobe : in STD_LOGIC;
    S_LMB_ReadStrobe : in STD_LOGIC;
    S_LMB_WriteStrobe : in STD_LOGIC;
    S_LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    S_Sl_Ready : out STD_LOGIC;
    S_Sl_Wait : out STD_LOGIC;
    S_Sl_UE : out STD_LOGIC;
    S_Sl_CE : out STD_LOGIC;
    BRAM1_Rst : in STD_LOGIC;
    BRAM1_Clk : in STD_LOGIC;
    BRAM1_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM1_EN : in STD_LOGIC;
    BRAM1_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM1_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM1_Din : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM2_Rst : in STD_LOGIC;
    BRAM2_Clk : in STD_LOGIC;
    BRAM2_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM2_EN : in STD_LOGIC;
    BRAM2_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM2_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM2_Din : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM3_Rst : in STD_LOGIC;
    BRAM3_Clk : in STD_LOGIC;
    BRAM3_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM3_EN : in STD_LOGIC;
    BRAM3_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM3_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM3_Din : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Rst : out STD_LOGIC;
    BRAM_Clk : out STD_LOGIC;
    BRAM_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN : out STD_LOGIC;
    BRAM_WE : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM1_Rst : out STD_LOGIC;
    M_BRAM1_Clk : out STD_LOGIC;
    M_BRAM1_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM1_EN : out STD_LOGIC;
    M_BRAM1_WE : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_BRAM1_Dout : out STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM1_Din : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM2_Rst : in STD_LOGIC;
    M_BRAM2_Clk : in STD_LOGIC;
    M_BRAM2_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM2_EN : in STD_LOGIC;
    M_BRAM2_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    M_BRAM2_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM2_Din : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM3_Rst : in STD_LOGIC;
    M_BRAM3_Clk : in STD_LOGIC;
    M_BRAM3_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM3_EN : in STD_LOGIC;
    M_BRAM3_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    M_BRAM3_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BRAM3_Din : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_BRAM_Rst : in STD_LOGIC;
    S_BRAM_Clk : in STD_LOGIC;
    S_BRAM_Addr : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_BRAM_EN : in STD_LOGIC;
    S_BRAM_WE : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_BRAM_Dout : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_BRAM_Din : out STD_LOGIC_VECTOR ( 0 to 31 );
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
    S_AXI1_AWUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_AWDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_AWSNOOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_AWBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_WLAST : in STD_LOGIC;
    S_AXI1_WVALID : in STD_LOGIC;
    S_AXI1_WREADY : out STD_LOGIC;
    S_AXI1_WUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_BVALID : out STD_LOGIC;
    S_AXI1_BREADY : in STD_LOGIC;
    S_AXI1_BUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_WACK : in STD_LOGIC;
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
    S_AXI1_ARUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_ARDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_ARSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ARBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_RLAST : out STD_LOGIC;
    S_AXI1_RVALID : out STD_LOGIC;
    S_AXI1_RREADY : in STD_LOGIC;
    S_AXI1_RUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_RACK : in STD_LOGIC;
    S_AXI1_ACVALID : out STD_LOGIC;
    S_AXI1_ACADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_ACSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_ACPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI1_ACREADY : in STD_LOGIC;
    S_AXI1_CRVALID : in STD_LOGIC;
    S_AXI1_CRRESP : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI1_CRREADY : out STD_LOGIC;
    S_AXI1_CDVALID : in STD_LOGIC;
    S_AXI1_CDDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_CDLAST : in STD_LOGIC;
    S_AXI1_CDREADY : out STD_LOGIC;
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
    S_AXI2_AWUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_AWDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_AWSNOOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_AWBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_WLAST : in STD_LOGIC;
    S_AXI2_WVALID : in STD_LOGIC;
    S_AXI2_WREADY : out STD_LOGIC;
    S_AXI2_WUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_BVALID : out STD_LOGIC;
    S_AXI2_BREADY : in STD_LOGIC;
    S_AXI2_BUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_WACK : in STD_LOGIC;
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
    S_AXI2_ARUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_ARDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_ARSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ARBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_RLAST : out STD_LOGIC;
    S_AXI2_RVALID : out STD_LOGIC;
    S_AXI2_RREADY : in STD_LOGIC;
    S_AXI2_RUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_RACK : in STD_LOGIC;
    S_AXI2_ACVALID : out STD_LOGIC;
    S_AXI2_ACADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_ACSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_ACPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI2_ACREADY : in STD_LOGIC;
    S_AXI2_CRVALID : in STD_LOGIC;
    S_AXI2_CRRESP : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI2_CRREADY : out STD_LOGIC;
    S_AXI2_CDVALID : in STD_LOGIC;
    S_AXI2_CDDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_CDLAST : in STD_LOGIC;
    S_AXI2_CDREADY : out STD_LOGIC;
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
    S_AXI3_AWDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_AWSNOOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_AWBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_AWUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_WLAST : in STD_LOGIC;
    S_AXI3_WVALID : in STD_LOGIC;
    S_AXI3_WREADY : out STD_LOGIC;
    S_AXI3_WUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_BVALID : out STD_LOGIC;
    S_AXI3_BREADY : in STD_LOGIC;
    S_AXI3_BUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_WACK : in STD_LOGIC;
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
    S_AXI3_ARUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_ARDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_ARSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ARBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_RLAST : out STD_LOGIC;
    S_AXI3_RVALID : out STD_LOGIC;
    S_AXI3_RREADY : in STD_LOGIC;
    S_AXI3_RUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_RACK : in STD_LOGIC;
    S_AXI3_ACVALID : out STD_LOGIC;
    S_AXI3_ACADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_ACSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_ACPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI3_ACREADY : in STD_LOGIC;
    S_AXI3_CRVALID : in STD_LOGIC;
    S_AXI3_CRRESP : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI3_CRREADY : out STD_LOGIC;
    S_AXI3_CDVALID : in STD_LOGIC;
    S_AXI3_CDDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_CDLAST : in STD_LOGIC;
    S_AXI3_CDREADY : out STD_LOGIC;
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
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWSNOOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_WACK : out STD_LOGIC;
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
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RACK : out STD_LOGIC;
    M_AXI_ACVALID : in STD_LOGIC;
    M_AXI_ACADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ACSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ACPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ACREADY : out STD_LOGIC;
    M_AXI_CRVALID : out STD_LOGIC;
    M_AXI_CRRESP : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_CRREADY : in STD_LOGIC;
    M_AXI_CDVALID : out STD_LOGIC;
    M_AXI_CDDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_CDLAST : out STD_LOGIC;
    M_AXI_CDREADY : in STD_LOGIC;
    M_AXI1_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_AWLOCK : out STD_LOGIC;
    M_AXI1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_AWVALID : out STD_LOGIC;
    M_AXI1_AWREADY : in STD_LOGIC;
    M_AXI1_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_AWDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_AWSNOOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_AWBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_WLAST : out STD_LOGIC;
    M_AXI1_WVALID : out STD_LOGIC;
    M_AXI1_WREADY : in STD_LOGIC;
    M_AXI1_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_BVALID : in STD_LOGIC;
    M_AXI1_BREADY : out STD_LOGIC;
    M_AXI1_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_WACK : out STD_LOGIC;
    M_AXI1_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_ARLOCK : out STD_LOGIC;
    M_AXI1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_ARVALID : out STD_LOGIC;
    M_AXI1_ARREADY : in STD_LOGIC;
    M_AXI1_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_ARDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_ARSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_ARBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI1_RLAST : in STD_LOGIC;
    M_AXI1_RVALID : in STD_LOGIC;
    M_AXI1_RREADY : out STD_LOGIC;
    M_AXI1_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI1_RACK : out STD_LOGIC;
    M_AXI1_ACVALID : in STD_LOGIC;
    M_AXI1_ACADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_ACSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI1_ACPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI1_ACREADY : out STD_LOGIC;
    M_AXI1_CRVALID : out STD_LOGIC;
    M_AXI1_CRRESP : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI1_CRREADY : in STD_LOGIC;
    M_AXI1_CDVALID : out STD_LOGIC;
    M_AXI1_CDDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI1_CDLAST : out STD_LOGIC;
    M_AXI1_CDREADY : in STD_LOGIC;
    M_AXI2_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_AWLOCK : out STD_LOGIC;
    M_AXI2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_AWVALID : out STD_LOGIC;
    M_AXI2_AWREADY : in STD_LOGIC;
    M_AXI2_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_AWDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_AWSNOOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_AWBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_WLAST : out STD_LOGIC;
    M_AXI2_WVALID : out STD_LOGIC;
    M_AXI2_WREADY : in STD_LOGIC;
    M_AXI2_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_BVALID : in STD_LOGIC;
    M_AXI2_BREADY : out STD_LOGIC;
    M_AXI2_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_WACK : out STD_LOGIC;
    M_AXI2_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_ARLOCK : out STD_LOGIC;
    M_AXI2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_ARVALID : out STD_LOGIC;
    M_AXI2_ARREADY : in STD_LOGIC;
    M_AXI2_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_ARDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_ARSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_ARBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI2_RLAST : in STD_LOGIC;
    M_AXI2_RVALID : in STD_LOGIC;
    M_AXI2_RREADY : out STD_LOGIC;
    M_AXI2_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI2_RACK : out STD_LOGIC;
    M_AXI2_ACVALID : in STD_LOGIC;
    M_AXI2_ACADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_ACSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI2_ACPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI2_ACREADY : out STD_LOGIC;
    M_AXI2_CRVALID : out STD_LOGIC;
    M_AXI2_CRRESP : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI2_CRREADY : in STD_LOGIC;
    M_AXI2_CDVALID : out STD_LOGIC;
    M_AXI2_CDDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI2_CDLAST : out STD_LOGIC;
    M_AXI2_CDREADY : in STD_LOGIC;
    M_AXI3_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI3_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_AWLOCK : out STD_LOGIC;
    M_AXI3_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_AWVALID : out STD_LOGIC;
    M_AXI3_AWREADY : in STD_LOGIC;
    M_AXI3_AWDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_AWSNOOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_AWBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_WLAST : out STD_LOGIC;
    M_AXI3_WVALID : out STD_LOGIC;
    M_AXI3_WREADY : in STD_LOGIC;
    M_AXI3_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_BVALID : in STD_LOGIC;
    M_AXI3_BREADY : out STD_LOGIC;
    M_AXI3_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_WACK : out STD_LOGIC;
    M_AXI3_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI3_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_ARLOCK : out STD_LOGIC;
    M_AXI3_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_ARVALID : out STD_LOGIC;
    M_AXI3_ARREADY : in STD_LOGIC;
    M_AXI3_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_ARDOMAIN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_ARSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_ARBAR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI3_RLAST : in STD_LOGIC;
    M_AXI3_RVALID : in STD_LOGIC;
    M_AXI3_RREADY : out STD_LOGIC;
    M_AXI3_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI3_RACK : out STD_LOGIC;
    M_AXI3_ACVALID : in STD_LOGIC;
    M_AXI3_ACADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_ACSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI3_ACPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI3_ACREADY : out STD_LOGIC;
    M_AXI3_CRVALID : out STD_LOGIC;
    M_AXI3_CRRESP : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI3_CRREADY : in STD_LOGIC;
    M_AXI3_CDVALID : out STD_LOGIC;
    M_AXI3_CDDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI3_CDLAST : out STD_LOGIC;
    M_AXI3_CDREADY : in STD_LOGIC;
    S_AXI_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWLOCK : in STD_LOGIC;
    S_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_AWUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWSNOOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WLAST : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_WUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WACK : in STD_LOGIC;
    S_AXI_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARLOCK : in STD_LOGIC;
    S_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARDOMAIN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARSNOOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARBAR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RLAST : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RACK : in STD_LOGIC;
    S_AXI_ACVALID : out STD_LOGIC;
    S_AXI_ACADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACSNOOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACREADY : in STD_LOGIC;
    S_AXI_CRVALID : in STD_LOGIC;
    S_AXI_CRRESP : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_CRREADY : out STD_LOGIC;
    S_AXI_CDVALID : in STD_LOGIC;
    S_AXI_CDDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CDLAST : in STD_LOGIC;
    S_AXI_CDREADY : out STD_LOGIC;
    S_AXIS1_TLAST : in STD_LOGIC;
    S_AXIS1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS1_TVALID : in STD_LOGIC;
    S_AXIS1_TREADY : out STD_LOGIC;
    S_AXIS1_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS1_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS1_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS1_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS1_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS2_TLAST : in STD_LOGIC;
    S_AXIS2_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS2_TVALID : in STD_LOGIC;
    S_AXIS2_TREADY : out STD_LOGIC;
    S_AXIS2_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS2_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS2_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS2_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS2_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS3_TLAST : in STD_LOGIC;
    S_AXIS3_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS3_TVALID : in STD_LOGIC;
    S_AXIS3_TREADY : out STD_LOGIC;
    S_AXIS3_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS3_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS3_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS3_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS3_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS1_TLAST : out STD_LOGIC;
    M_AXIS1_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS1_TVALID : out STD_LOGIC;
    M_AXIS1_TREADY : in STD_LOGIC;
    M_AXIS1_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS1_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS1_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS1_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS1_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS2_TLAST : out STD_LOGIC;
    M_AXIS2_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS2_TVALID : out STD_LOGIC;
    M_AXIS2_TREADY : in STD_LOGIC;
    M_AXIS2_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS2_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS2_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS2_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS2_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS3_TLAST : out STD_LOGIC;
    M_AXIS3_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS3_TVALID : out STD_LOGIC;
    M_AXIS3_TREADY : in STD_LOGIC;
    M_AXIS3_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS3_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS3_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS3_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS3_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    Trace1_Instruction : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace1_Valid_Instr : in STD_LOGIC;
    Trace1_PC : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace1_Reg_Write : in STD_LOGIC;
    Trace1_Reg_Addr : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace1_MSR_Reg : in STD_LOGIC_VECTOR ( 0 to 14 );
    Trace1_PID_Reg : in STD_LOGIC_VECTOR ( 0 to 7 );
    Trace1_New_Reg_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace1_Exception_Taken : in STD_LOGIC;
    Trace1_Exception_Kind : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace1_Jump_Taken : in STD_LOGIC;
    Trace1_Delay_Slot : in STD_LOGIC;
    Trace1_Data_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace1_Data_Write_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace1_Data_Byte_Enable : in STD_LOGIC_VECTOR ( 0 to 3 );
    Trace1_Data_Access : in STD_LOGIC;
    Trace1_Data_Read : in STD_LOGIC;
    Trace1_Data_Write : in STD_LOGIC;
    Trace1_DCache_Req : in STD_LOGIC;
    Trace1_DCache_Hit : in STD_LOGIC;
    Trace1_DCache_Rdy : in STD_LOGIC;
    Trace1_DCache_Read : in STD_LOGIC;
    Trace1_ICache_Req : in STD_LOGIC;
    Trace1_ICache_Hit : in STD_LOGIC;
    Trace1_ICache_Rdy : in STD_LOGIC;
    Trace1_OF_PipeRun : in STD_LOGIC;
    Trace1_EX_PipeRun : in STD_LOGIC;
    Trace1_MEM_PipeRun : in STD_LOGIC;
    Trace1_MB_Halted : in STD_LOGIC;
    Trace1_Jump_Hit : in STD_LOGIC;
    Trace2_Instruction : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace2_Valid_Instr : in STD_LOGIC;
    Trace2_PC : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace2_Reg_Write : in STD_LOGIC;
    Trace2_Reg_Addr : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace2_MSR_Reg : in STD_LOGIC_VECTOR ( 0 to 14 );
    Trace2_PID_Reg : in STD_LOGIC_VECTOR ( 0 to 7 );
    Trace2_New_Reg_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace2_Exception_Taken : in STD_LOGIC;
    Trace2_Exception_Kind : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace2_Jump_Taken : in STD_LOGIC;
    Trace2_Delay_Slot : in STD_LOGIC;
    Trace2_Data_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace2_Data_Write_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace2_Data_Byte_Enable : in STD_LOGIC_VECTOR ( 0 to 3 );
    Trace2_Data_Access : in STD_LOGIC;
    Trace2_Data_Read : in STD_LOGIC;
    Trace2_Data_Write : in STD_LOGIC;
    Trace2_DCache_Req : in STD_LOGIC;
    Trace2_DCache_Hit : in STD_LOGIC;
    Trace2_DCache_Rdy : in STD_LOGIC;
    Trace2_DCache_Read : in STD_LOGIC;
    Trace2_ICache_Req : in STD_LOGIC;
    Trace2_ICache_Hit : in STD_LOGIC;
    Trace2_ICache_Rdy : in STD_LOGIC;
    Trace2_OF_PipeRun : in STD_LOGIC;
    Trace2_EX_PipeRun : in STD_LOGIC;
    Trace2_MEM_PipeRun : in STD_LOGIC;
    Trace2_MB_Halted : in STD_LOGIC;
    Trace2_Jump_Hit : in STD_LOGIC;
    Trace3_Instruction : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace3_Valid_Instr : in STD_LOGIC;
    Trace3_PC : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace3_Reg_Write : in STD_LOGIC;
    Trace3_Reg_Addr : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace3_MSR_Reg : in STD_LOGIC_VECTOR ( 0 to 14 );
    Trace3_PID_Reg : in STD_LOGIC_VECTOR ( 0 to 7 );
    Trace3_New_Reg_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace3_Exception_Taken : in STD_LOGIC;
    Trace3_Exception_Kind : in STD_LOGIC_VECTOR ( 0 to 4 );
    Trace3_Jump_Taken : in STD_LOGIC;
    Trace3_Delay_Slot : in STD_LOGIC;
    Trace3_Data_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace3_Data_Write_Value : in STD_LOGIC_VECTOR ( 0 to 31 );
    Trace3_Data_Byte_Enable : in STD_LOGIC_VECTOR ( 0 to 3 );
    Trace3_Data_Access : in STD_LOGIC;
    Trace3_Data_Read : in STD_LOGIC;
    Trace3_Data_Write : in STD_LOGIC;
    Trace3_DCache_Req : in STD_LOGIC;
    Trace3_DCache_Hit : in STD_LOGIC;
    Trace3_DCache_Rdy : in STD_LOGIC;
    Trace3_DCache_Read : in STD_LOGIC;
    Trace3_ICache_Req : in STD_LOGIC;
    Trace3_ICache_Hit : in STD_LOGIC;
    Trace3_ICache_Rdy : in STD_LOGIC;
    Trace3_OF_PipeRun : in STD_LOGIC;
    Trace3_EX_PipeRun : in STD_LOGIC;
    Trace3_MEM_PipeRun : in STD_LOGIC;
    Trace3_MB_Halted : in STD_LOGIC;
    Trace3_Jump_Hit : in STD_LOGIC;
    Trace_Instruction : out STD_LOGIC_VECTOR ( 0 to 31 );
    Trace_Valid_Instr : out STD_LOGIC;
    Trace_PC : out STD_LOGIC_VECTOR ( 0 to 31 );
    Trace_Reg_Write : out STD_LOGIC;
    Trace_Reg_Addr : out STD_LOGIC_VECTOR ( 0 to 4 );
    Trace_MSR_Reg : out STD_LOGIC_VECTOR ( 0 to 14 );
    Trace_PID_Reg : out STD_LOGIC_VECTOR ( 0 to 7 );
    Trace_New_Reg_Value : out STD_LOGIC_VECTOR ( 0 to 31 );
    Trace_Exception_Taken : out STD_LOGIC;
    Trace_Exception_Kind : out STD_LOGIC_VECTOR ( 0 to 4 );
    Trace_Jump_Taken : out STD_LOGIC;
    Trace_Delay_Slot : out STD_LOGIC;
    Trace_Data_Address : out STD_LOGIC_VECTOR ( 0 to 31 );
    Trace_Data_Write_Value : out STD_LOGIC_VECTOR ( 0 to 31 );
    Trace_Data_Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    Trace_Data_Access : out STD_LOGIC;
    Trace_Data_Read : out STD_LOGIC;
    Trace_Data_Write : out STD_LOGIC;
    Trace_DCache_Req : out STD_LOGIC;
    Trace_DCache_Hit : out STD_LOGIC;
    Trace_DCache_Rdy : out STD_LOGIC;
    Trace_DCache_Read : out STD_LOGIC;
    Trace_ICache_Req : out STD_LOGIC;
    Trace_ICache_Hit : out STD_LOGIC;
    Trace_ICache_Rdy : out STD_LOGIC;
    Trace_OF_PipeRun : out STD_LOGIC;
    Trace_EX_PipeRun : out STD_LOGIC;
    Trace_MEM_PipeRun : out STD_LOGIC;
    Trace_MB_Halted : out STD_LOGIC;
    Trace_Jump_Hit : out STD_LOGIC;
    IRQ1 : out STD_LOGIC;
    IRQ1_Address : out STD_LOGIC_VECTOR ( 0 to 31 );
    IRQ1_Ack : in STD_LOGIC_VECTOR ( 0 to 1 );
    IRQ2 : out STD_LOGIC;
    IRQ2_Address : out STD_LOGIC_VECTOR ( 0 to 31 );
    IRQ2_Ack : in STD_LOGIC_VECTOR ( 0 to 1 );
    IRQ3 : out STD_LOGIC;
    IRQ3_Address : out STD_LOGIC_VECTOR ( 0 to 31 );
    IRQ3_Ack : in STD_LOGIC_VECTOR ( 0 to 1 );
    IRQ : in STD_LOGIC;
    IRQ_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    IRQ_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    S_IRQ1 : in STD_LOGIC;
    S_IRQ1_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_IRQ1_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    S_IRQ2 : in STD_LOGIC;
    S_IRQ2_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_IRQ2_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    S_IRQ3 : in STD_LOGIC;
    S_IRQ3_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_IRQ3_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    M_IRQ : out STD_LOGIC;
    M_IRQ_Address : out STD_LOGIC_VECTOR ( 0 to 31 );
    M_IRQ_Ack : in STD_LOGIC_VECTOR ( 0 to 1 );
    IO1_Addr_Strobe : in STD_LOGIC;
    IO1_Read_Strobe : in STD_LOGIC;
    IO1_Write_Strobe : in STD_LOGIC;
    IO1_Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO1_Byte_Enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO1_Write_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO1_Read_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO1_Ready : out STD_LOGIC;
    IO2_Addr_Strobe : in STD_LOGIC;
    IO2_Read_Strobe : in STD_LOGIC;
    IO2_Write_Strobe : in STD_LOGIC;
    IO2_Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO2_Byte_Enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO2_Write_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO2_Read_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO2_Ready : out STD_LOGIC;
    IO3_Addr_Strobe : in STD_LOGIC;
    IO3_Read_Strobe : in STD_LOGIC;
    IO3_Write_Strobe : in STD_LOGIC;
    IO3_Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO3_Byte_Enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO3_Write_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO3_Read_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO3_Ready : out STD_LOGIC;
    IO_Addr_Strobe : out STD_LOGIC;
    IO_Read_Strobe : out STD_LOGIC;
    IO_Write_Strobe : out STD_LOGIC;
    IO_Address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Byte_Enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_Write_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Read_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Ready : in STD_LOGIC;
    GPO1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPT1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPT2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPT3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    UART1_TxD : in STD_LOGIC;
    UART1_RxD : out STD_LOGIC;
    UART1_RTSn : in STD_LOGIC;
    UART1_CTSn : out STD_LOGIC;
    UART1_DTRn : in STD_LOGIC;
    UART1_DSRn : out STD_LOGIC;
    UART1_BAUDOUTn : in STD_LOGIC;
    UART1_RCLK : out STD_LOGIC;
    UART1_XIN : out STD_LOGIC;
    UART1_XOUT : in STD_LOGIC;
    UART1_DCDn : out STD_LOGIC;
    UART1_DDIS : in STD_LOGIC;
    UART1_OUT1n : in STD_LOGIC;
    UART1_OUT2n : in STD_LOGIC;
    UART1_TXRDYn : in STD_LOGIC;
    UART1_RXRDYn : in STD_LOGIC;
    UART1_RI : out STD_LOGIC;
    UART2_TxD : in STD_LOGIC;
    UART2_RxD : out STD_LOGIC;
    UART2_RTSn : in STD_LOGIC;
    UART2_CTSn : out STD_LOGIC;
    UART2_DTRn : in STD_LOGIC;
    UART2_DSRn : out STD_LOGIC;
    UART2_BAUDOUTn : in STD_LOGIC;
    UART2_RCLK : out STD_LOGIC;
    UART2_XIN : out STD_LOGIC;
    UART2_XOUT : in STD_LOGIC;
    UART2_DCDn : out STD_LOGIC;
    UART2_DDIS : in STD_LOGIC;
    UART2_OUT1n : in STD_LOGIC;
    UART2_OUT2n : in STD_LOGIC;
    UART2_TXRDYn : in STD_LOGIC;
    UART2_RXRDYn : in STD_LOGIC;
    UART2_RI : out STD_LOGIC;
    UART3_TxD : in STD_LOGIC;
    UART3_RxD : out STD_LOGIC;
    UART3_RTSn : in STD_LOGIC;
    UART3_CTSn : out STD_LOGIC;
    UART3_DTRn : in STD_LOGIC;
    UART3_DSRn : out STD_LOGIC;
    UART3_BAUDOUTn : in STD_LOGIC;
    UART3_RCLK : out STD_LOGIC;
    UART3_XIN : out STD_LOGIC;
    UART3_XOUT : in STD_LOGIC;
    UART3_DCDn : out STD_LOGIC;
    UART3_DDIS : in STD_LOGIC;
    UART3_OUT1n : in STD_LOGIC;
    UART3_OUT2n : in STD_LOGIC;
    UART3_TXRDYn : in STD_LOGIC;
    UART3_RXRDYn : in STD_LOGIC;
    UART3_RI : out STD_LOGIC;
    UART_TxD : out STD_LOGIC;
    UART_RxD : in STD_LOGIC;
    UART_RTSn : out STD_LOGIC;
    UART_CTSn : in STD_LOGIC;
    UART_DTRn : out STD_LOGIC;
    UART_DSRn : in STD_LOGIC;
    UART_BAUDOUTn : out STD_LOGIC;
    UART_RCLK : in STD_LOGIC;
    UART_XIN : in STD_LOGIC;
    UART_XOUT : out STD_LOGIC;
    UART_DCDn : in STD_LOGIC;
    UART_DDIS : out STD_LOGIC;
    UART_OUT1n : out STD_LOGIC;
    UART_OUT2n : out STD_LOGIC;
    UART_TXRDYn : out STD_LOGIC;
    UART_RXRDYn : out STD_LOGIC;
    UART_RI : in STD_LOGIC;
    IIC1_scl_i : out STD_LOGIC;
    IIC1_scl_o : in STD_LOGIC;
    IIC1_scl_t : in STD_LOGIC;
    IIC1_sda_i : out STD_LOGIC;
    IIC1_sda_o : in STD_LOGIC;
    IIC1_sda_t : in STD_LOGIC;
    IIC2_scl_i : out STD_LOGIC;
    IIC2_scl_o : in STD_LOGIC;
    IIC2_scl_t : in STD_LOGIC;
    IIC2_sda_i : out STD_LOGIC;
    IIC2_sda_o : in STD_LOGIC;
    IIC2_sda_t : in STD_LOGIC;
    IIC3_scl_i : out STD_LOGIC;
    IIC3_scl_o : in STD_LOGIC;
    IIC3_scl_t : in STD_LOGIC;
    IIC3_sda_i : out STD_LOGIC;
    IIC3_sda_o : in STD_LOGIC;
    IIC3_sda_t : in STD_LOGIC;
    IIC_scl_i : in STD_LOGIC;
    IIC_scl_o : out STD_LOGIC;
    IIC_scl_t : out STD_LOGIC;
    IIC_sda_i : in STD_LOGIC;
    IIC_sda_o : out STD_LOGIC;
    IIC_sda_t : out STD_LOGIC;
    Compare : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_BRAM_MisMatch : out STD_LOGIC
  );
  attribute C_ADDR_SIZE : integer;
  attribute C_ADDR_SIZE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_AXIS_DATA_WIDTH : integer;
  attribute C_AXIS_DATA_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_AXIS_DEST_WIDTH : integer;
  attribute C_AXIS_DEST_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXIS_ID_WIDTH : integer;
  attribute C_AXIS_ID_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXIS_USER_WIDTH : integer;
  attribute C_AXIS_USER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_COMPARATOR : integer;
  attribute C_COMPARATOR of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_DATA_SIZE : integer;
  attribute C_DATA_SIZE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_DISCRETE_WIDTH : integer;
  attribute C_DISCRETE_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_ECC : integer;
  attribute C_ECC of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_GPI_SIZE : integer;
  attribute C_GPI_SIZE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_GPO_SIZE : integer;
  attribute C_GPO_SIZE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_INCLUDE_MASK : string;
  attribute C_INCLUDE_MASK of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is "64'b1111111111111111111111111111111111111100011111111111111000111111";
  attribute C_INPUT_REGISTER : integer;
  attribute C_INPUT_REGISTER of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_INTERFACE : integer;
  attribute C_INTERFACE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 3;
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_LMB_PROTOCOL : integer;
  attribute C_LMB_PROTOCOL of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_LOW_LATENCY : integer;
  attribute C_LOW_LATENCY of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_TEMPORAL_DEPTH1 : integer;
  attribute C_TEMPORAL_DEPTH1 of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_TEMPORAL_DEPTH2 : integer;
  attribute C_TEMPORAL_DEPTH2 of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_TEST_AXIS_DATA_WIDTH : integer;
  attribute C_TEST_AXIS_DATA_WIDTH of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 32;
  attribute C_TEST_COMPARATOR : integer;
  attribute C_TEST_COMPARATOR of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_TEST_LAST_INTERFACE : integer;
  attribute C_TEST_LAST_INTERFACE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_TMR : integer;
  attribute C_TMR of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 1;
  attribute C_USE_TMR_DISABLE : integer;
  attribute C_USE_TMR_DISABLE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
  attribute C_VOTER_CHECK : integer;
  attribute C_VOTER_CHECK of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter : entity is 0;
end bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter;

architecture STRUCTURE of bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
begin
  BRAM1_Din(0) <= \<const0>\;
  BRAM1_Din(1) <= \<const0>\;
  BRAM1_Din(2) <= \<const0>\;
  BRAM1_Din(3) <= \<const0>\;
  BRAM1_Din(4) <= \<const0>\;
  BRAM1_Din(5) <= \<const0>\;
  BRAM1_Din(6) <= \<const0>\;
  BRAM1_Din(7) <= \<const0>\;
  BRAM1_Din(8) <= \<const0>\;
  BRAM1_Din(9) <= \<const0>\;
  BRAM1_Din(10) <= \<const0>\;
  BRAM1_Din(11) <= \<const0>\;
  BRAM1_Din(12) <= \<const0>\;
  BRAM1_Din(13) <= \<const0>\;
  BRAM1_Din(14) <= \<const0>\;
  BRAM1_Din(15) <= \<const0>\;
  BRAM1_Din(16) <= \<const0>\;
  BRAM1_Din(17) <= \<const0>\;
  BRAM1_Din(18) <= \<const0>\;
  BRAM1_Din(19) <= \<const0>\;
  BRAM1_Din(20) <= \<const0>\;
  BRAM1_Din(21) <= \<const0>\;
  BRAM1_Din(22) <= \<const0>\;
  BRAM1_Din(23) <= \<const0>\;
  BRAM1_Din(24) <= \<const0>\;
  BRAM1_Din(25) <= \<const0>\;
  BRAM1_Din(26) <= \<const0>\;
  BRAM1_Din(27) <= \<const0>\;
  BRAM1_Din(28) <= \<const0>\;
  BRAM1_Din(29) <= \<const0>\;
  BRAM1_Din(30) <= \<const0>\;
  BRAM1_Din(31) <= \<const0>\;
  BRAM2_Din(0) <= \<const0>\;
  BRAM2_Din(1) <= \<const0>\;
  BRAM2_Din(2) <= \<const0>\;
  BRAM2_Din(3) <= \<const0>\;
  BRAM2_Din(4) <= \<const0>\;
  BRAM2_Din(5) <= \<const0>\;
  BRAM2_Din(6) <= \<const0>\;
  BRAM2_Din(7) <= \<const0>\;
  BRAM2_Din(8) <= \<const0>\;
  BRAM2_Din(9) <= \<const0>\;
  BRAM2_Din(10) <= \<const0>\;
  BRAM2_Din(11) <= \<const0>\;
  BRAM2_Din(12) <= \<const0>\;
  BRAM2_Din(13) <= \<const0>\;
  BRAM2_Din(14) <= \<const0>\;
  BRAM2_Din(15) <= \<const0>\;
  BRAM2_Din(16) <= \<const0>\;
  BRAM2_Din(17) <= \<const0>\;
  BRAM2_Din(18) <= \<const0>\;
  BRAM2_Din(19) <= \<const0>\;
  BRAM2_Din(20) <= \<const0>\;
  BRAM2_Din(21) <= \<const0>\;
  BRAM2_Din(22) <= \<const0>\;
  BRAM2_Din(23) <= \<const0>\;
  BRAM2_Din(24) <= \<const0>\;
  BRAM2_Din(25) <= \<const0>\;
  BRAM2_Din(26) <= \<const0>\;
  BRAM2_Din(27) <= \<const0>\;
  BRAM2_Din(28) <= \<const0>\;
  BRAM2_Din(29) <= \<const0>\;
  BRAM2_Din(30) <= \<const0>\;
  BRAM2_Din(31) <= \<const0>\;
  BRAM3_Din(0) <= \<const0>\;
  BRAM3_Din(1) <= \<const0>\;
  BRAM3_Din(2) <= \<const0>\;
  BRAM3_Din(3) <= \<const0>\;
  BRAM3_Din(4) <= \<const0>\;
  BRAM3_Din(5) <= \<const0>\;
  BRAM3_Din(6) <= \<const0>\;
  BRAM3_Din(7) <= \<const0>\;
  BRAM3_Din(8) <= \<const0>\;
  BRAM3_Din(9) <= \<const0>\;
  BRAM3_Din(10) <= \<const0>\;
  BRAM3_Din(11) <= \<const0>\;
  BRAM3_Din(12) <= \<const0>\;
  BRAM3_Din(13) <= \<const0>\;
  BRAM3_Din(14) <= \<const0>\;
  BRAM3_Din(15) <= \<const0>\;
  BRAM3_Din(16) <= \<const0>\;
  BRAM3_Din(17) <= \<const0>\;
  BRAM3_Din(18) <= \<const0>\;
  BRAM3_Din(19) <= \<const0>\;
  BRAM3_Din(20) <= \<const0>\;
  BRAM3_Din(21) <= \<const0>\;
  BRAM3_Din(22) <= \<const0>\;
  BRAM3_Din(23) <= \<const0>\;
  BRAM3_Din(24) <= \<const0>\;
  BRAM3_Din(25) <= \<const0>\;
  BRAM3_Din(26) <= \<const0>\;
  BRAM3_Din(27) <= \<const0>\;
  BRAM3_Din(28) <= \<const0>\;
  BRAM3_Din(29) <= \<const0>\;
  BRAM3_Din(30) <= \<const0>\;
  BRAM3_Din(31) <= \<const0>\;
  BRAM_Addr(0) <= \<const0>\;
  BRAM_Addr(1) <= \<const0>\;
  BRAM_Addr(2) <= \<const0>\;
  BRAM_Addr(3) <= \<const0>\;
  BRAM_Addr(4) <= \<const0>\;
  BRAM_Addr(5) <= \<const0>\;
  BRAM_Addr(6) <= \<const0>\;
  BRAM_Addr(7) <= \<const0>\;
  BRAM_Addr(8) <= \<const0>\;
  BRAM_Addr(9) <= \<const0>\;
  BRAM_Addr(10) <= \<const0>\;
  BRAM_Addr(11) <= \<const0>\;
  BRAM_Addr(12) <= \<const0>\;
  BRAM_Addr(13) <= \<const0>\;
  BRAM_Addr(14) <= \<const0>\;
  BRAM_Addr(15) <= \<const0>\;
  BRAM_Addr(16) <= \<const0>\;
  BRAM_Addr(17) <= \<const0>\;
  BRAM_Addr(18) <= \<const0>\;
  BRAM_Addr(19) <= \<const0>\;
  BRAM_Addr(20) <= \<const0>\;
  BRAM_Addr(21) <= \<const0>\;
  BRAM_Addr(22) <= \<const0>\;
  BRAM_Addr(23) <= \<const0>\;
  BRAM_Addr(24) <= \<const0>\;
  BRAM_Addr(25) <= \<const0>\;
  BRAM_Addr(26) <= \<const0>\;
  BRAM_Addr(27) <= \<const0>\;
  BRAM_Addr(28) <= \<const0>\;
  BRAM_Addr(29) <= \<const0>\;
  BRAM_Addr(30) <= \<const0>\;
  BRAM_Addr(31) <= \<const0>\;
  BRAM_Clk <= \<const0>\;
  BRAM_Dout(0) <= \<const0>\;
  BRAM_Dout(1) <= \<const0>\;
  BRAM_Dout(2) <= \<const0>\;
  BRAM_Dout(3) <= \<const0>\;
  BRAM_Dout(4) <= \<const0>\;
  BRAM_Dout(5) <= \<const0>\;
  BRAM_Dout(6) <= \<const0>\;
  BRAM_Dout(7) <= \<const0>\;
  BRAM_Dout(8) <= \<const0>\;
  BRAM_Dout(9) <= \<const0>\;
  BRAM_Dout(10) <= \<const0>\;
  BRAM_Dout(11) <= \<const0>\;
  BRAM_Dout(12) <= \<const0>\;
  BRAM_Dout(13) <= \<const0>\;
  BRAM_Dout(14) <= \<const0>\;
  BRAM_Dout(15) <= \<const0>\;
  BRAM_Dout(16) <= \<const0>\;
  BRAM_Dout(17) <= \<const0>\;
  BRAM_Dout(18) <= \<const0>\;
  BRAM_Dout(19) <= \<const0>\;
  BRAM_Dout(20) <= \<const0>\;
  BRAM_Dout(21) <= \<const0>\;
  BRAM_Dout(22) <= \<const0>\;
  BRAM_Dout(23) <= \<const0>\;
  BRAM_Dout(24) <= \<const0>\;
  BRAM_Dout(25) <= \<const0>\;
  BRAM_Dout(26) <= \<const0>\;
  BRAM_Dout(27) <= \<const0>\;
  BRAM_Dout(28) <= \<const0>\;
  BRAM_Dout(29) <= \<const0>\;
  BRAM_Dout(30) <= \<const0>\;
  BRAM_Dout(31) <= \<const0>\;
  BRAM_EN <= \<const0>\;
  BRAM_Rst <= \<const0>\;
  BRAM_WE(0) <= \<const0>\;
  BRAM_WE(1) <= \<const0>\;
  BRAM_WE(2) <= \<const0>\;
  BRAM_WE(3) <= \<const0>\;
  Compare(3) <= \<const0>\;
  Compare(2) <= \<const0>\;
  Compare(1) <= \<const0>\;
  Compare(0) <= \<const0>\;
  Discrete(0) <= \<const0>\;
  GPI1(31) <= \<const0>\;
  GPI1(30) <= \<const0>\;
  GPI1(29) <= \<const0>\;
  GPI1(28) <= \<const0>\;
  GPI1(27) <= \<const0>\;
  GPI1(26) <= \<const0>\;
  GPI1(25) <= \<const0>\;
  GPI1(24) <= \<const0>\;
  GPI1(23) <= \<const0>\;
  GPI1(22) <= \<const0>\;
  GPI1(21) <= \<const0>\;
  GPI1(20) <= \<const0>\;
  GPI1(19) <= \<const0>\;
  GPI1(18) <= \<const0>\;
  GPI1(17) <= \<const0>\;
  GPI1(16) <= \<const0>\;
  GPI1(15) <= \<const0>\;
  GPI1(14) <= \<const0>\;
  GPI1(13) <= \<const0>\;
  GPI1(12) <= \<const0>\;
  GPI1(11) <= \<const0>\;
  GPI1(10) <= \<const0>\;
  GPI1(9) <= \<const0>\;
  GPI1(8) <= \<const0>\;
  GPI1(7) <= \<const0>\;
  GPI1(6) <= \<const0>\;
  GPI1(5) <= \<const0>\;
  GPI1(4) <= \<const0>\;
  GPI1(3) <= \<const0>\;
  GPI1(2) <= \<const0>\;
  GPI1(1) <= \<const0>\;
  GPI1(0) <= \<const0>\;
  GPI2(31) <= \<const0>\;
  GPI2(30) <= \<const0>\;
  GPI2(29) <= \<const0>\;
  GPI2(28) <= \<const0>\;
  GPI2(27) <= \<const0>\;
  GPI2(26) <= \<const0>\;
  GPI2(25) <= \<const0>\;
  GPI2(24) <= \<const0>\;
  GPI2(23) <= \<const0>\;
  GPI2(22) <= \<const0>\;
  GPI2(21) <= \<const0>\;
  GPI2(20) <= \<const0>\;
  GPI2(19) <= \<const0>\;
  GPI2(18) <= \<const0>\;
  GPI2(17) <= \<const0>\;
  GPI2(16) <= \<const0>\;
  GPI2(15) <= \<const0>\;
  GPI2(14) <= \<const0>\;
  GPI2(13) <= \<const0>\;
  GPI2(12) <= \<const0>\;
  GPI2(11) <= \<const0>\;
  GPI2(10) <= \<const0>\;
  GPI2(9) <= \<const0>\;
  GPI2(8) <= \<const0>\;
  GPI2(7) <= \<const0>\;
  GPI2(6) <= \<const0>\;
  GPI2(5) <= \<const0>\;
  GPI2(4) <= \<const0>\;
  GPI2(3) <= \<const0>\;
  GPI2(2) <= \<const0>\;
  GPI2(1) <= \<const0>\;
  GPI2(0) <= \<const0>\;
  GPI3(31) <= \<const0>\;
  GPI3(30) <= \<const0>\;
  GPI3(29) <= \<const0>\;
  GPI3(28) <= \<const0>\;
  GPI3(27) <= \<const0>\;
  GPI3(26) <= \<const0>\;
  GPI3(25) <= \<const0>\;
  GPI3(24) <= \<const0>\;
  GPI3(23) <= \<const0>\;
  GPI3(22) <= \<const0>\;
  GPI3(21) <= \<const0>\;
  GPI3(20) <= \<const0>\;
  GPI3(19) <= \<const0>\;
  GPI3(18) <= \<const0>\;
  GPI3(17) <= \<const0>\;
  GPI3(16) <= \<const0>\;
  GPI3(15) <= \<const0>\;
  GPI3(14) <= \<const0>\;
  GPI3(13) <= \<const0>\;
  GPI3(12) <= \<const0>\;
  GPI3(11) <= \<const0>\;
  GPI3(10) <= \<const0>\;
  GPI3(9) <= \<const0>\;
  GPI3(8) <= \<const0>\;
  GPI3(7) <= \<const0>\;
  GPI3(6) <= \<const0>\;
  GPI3(5) <= \<const0>\;
  GPI3(4) <= \<const0>\;
  GPI3(3) <= \<const0>\;
  GPI3(2) <= \<const0>\;
  GPI3(1) <= \<const0>\;
  GPI3(0) <= \<const0>\;
  GPO(31) <= \<const0>\;
  GPO(30) <= \<const0>\;
  GPO(29) <= \<const0>\;
  GPO(28) <= \<const0>\;
  GPO(27) <= \<const0>\;
  GPO(26) <= \<const0>\;
  GPO(25) <= \<const0>\;
  GPO(24) <= \<const0>\;
  GPO(23) <= \<const0>\;
  GPO(22) <= \<const0>\;
  GPO(21) <= \<const0>\;
  GPO(20) <= \<const0>\;
  GPO(19) <= \<const0>\;
  GPO(18) <= \<const0>\;
  GPO(17) <= \<const0>\;
  GPO(16) <= \<const0>\;
  GPO(15) <= \<const0>\;
  GPO(14) <= \<const0>\;
  GPO(13) <= \<const0>\;
  GPO(12) <= \<const0>\;
  GPO(11) <= \<const0>\;
  GPO(10) <= \<const0>\;
  GPO(9) <= \<const0>\;
  GPO(8) <= \<const0>\;
  GPO(7) <= \<const0>\;
  GPO(6) <= \<const0>\;
  GPO(5) <= \<const0>\;
  GPO(4) <= \<const0>\;
  GPO(3) <= \<const0>\;
  GPO(2) <= \<const0>\;
  GPO(1) <= \<const0>\;
  GPO(0) <= \<const0>\;
  GPT(31) <= \<const0>\;
  GPT(30) <= \<const0>\;
  GPT(29) <= \<const0>\;
  GPT(28) <= \<const0>\;
  GPT(27) <= \<const0>\;
  GPT(26) <= \<const0>\;
  GPT(25) <= \<const0>\;
  GPT(24) <= \<const0>\;
  GPT(23) <= \<const0>\;
  GPT(22) <= \<const0>\;
  GPT(21) <= \<const0>\;
  GPT(20) <= \<const0>\;
  GPT(19) <= \<const0>\;
  GPT(18) <= \<const0>\;
  GPT(17) <= \<const0>\;
  GPT(16) <= \<const0>\;
  GPT(15) <= \<const0>\;
  GPT(14) <= \<const0>\;
  GPT(13) <= \<const0>\;
  GPT(12) <= \<const0>\;
  GPT(11) <= \<const0>\;
  GPT(10) <= \<const0>\;
  GPT(9) <= \<const0>\;
  GPT(8) <= \<const0>\;
  GPT(7) <= \<const0>\;
  GPT(6) <= \<const0>\;
  GPT(5) <= \<const0>\;
  GPT(4) <= \<const0>\;
  GPT(3) <= \<const0>\;
  GPT(2) <= \<const0>\;
  GPT(1) <= \<const0>\;
  GPT(0) <= \<const0>\;
  IIC1_scl_i <= \<const0>\;
  IIC1_sda_i <= \<const0>\;
  IIC2_scl_i <= \<const0>\;
  IIC2_sda_i <= \<const0>\;
  IIC3_scl_i <= \<const0>\;
  IIC3_sda_i <= \<const0>\;
  IIC_scl_o <= \<const0>\;
  IIC_scl_t <= \<const0>\;
  IIC_sda_o <= \<const0>\;
  IIC_sda_t <= \<const0>\;
  IO1_Read_Data(31) <= \<const0>\;
  IO1_Read_Data(30) <= \<const0>\;
  IO1_Read_Data(29) <= \<const0>\;
  IO1_Read_Data(28) <= \<const0>\;
  IO1_Read_Data(27) <= \<const0>\;
  IO1_Read_Data(26) <= \<const0>\;
  IO1_Read_Data(25) <= \<const0>\;
  IO1_Read_Data(24) <= \<const0>\;
  IO1_Read_Data(23) <= \<const0>\;
  IO1_Read_Data(22) <= \<const0>\;
  IO1_Read_Data(21) <= \<const0>\;
  IO1_Read_Data(20) <= \<const0>\;
  IO1_Read_Data(19) <= \<const0>\;
  IO1_Read_Data(18) <= \<const0>\;
  IO1_Read_Data(17) <= \<const0>\;
  IO1_Read_Data(16) <= \<const0>\;
  IO1_Read_Data(15) <= \<const0>\;
  IO1_Read_Data(14) <= \<const0>\;
  IO1_Read_Data(13) <= \<const0>\;
  IO1_Read_Data(12) <= \<const0>\;
  IO1_Read_Data(11) <= \<const0>\;
  IO1_Read_Data(10) <= \<const0>\;
  IO1_Read_Data(9) <= \<const0>\;
  IO1_Read_Data(8) <= \<const0>\;
  IO1_Read_Data(7) <= \<const0>\;
  IO1_Read_Data(6) <= \<const0>\;
  IO1_Read_Data(5) <= \<const0>\;
  IO1_Read_Data(4) <= \<const0>\;
  IO1_Read_Data(3) <= \<const0>\;
  IO1_Read_Data(2) <= \<const0>\;
  IO1_Read_Data(1) <= \<const0>\;
  IO1_Read_Data(0) <= \<const0>\;
  IO1_Ready <= \<const0>\;
  IO2_Read_Data(31) <= \<const0>\;
  IO2_Read_Data(30) <= \<const0>\;
  IO2_Read_Data(29) <= \<const0>\;
  IO2_Read_Data(28) <= \<const0>\;
  IO2_Read_Data(27) <= \<const0>\;
  IO2_Read_Data(26) <= \<const0>\;
  IO2_Read_Data(25) <= \<const0>\;
  IO2_Read_Data(24) <= \<const0>\;
  IO2_Read_Data(23) <= \<const0>\;
  IO2_Read_Data(22) <= \<const0>\;
  IO2_Read_Data(21) <= \<const0>\;
  IO2_Read_Data(20) <= \<const0>\;
  IO2_Read_Data(19) <= \<const0>\;
  IO2_Read_Data(18) <= \<const0>\;
  IO2_Read_Data(17) <= \<const0>\;
  IO2_Read_Data(16) <= \<const0>\;
  IO2_Read_Data(15) <= \<const0>\;
  IO2_Read_Data(14) <= \<const0>\;
  IO2_Read_Data(13) <= \<const0>\;
  IO2_Read_Data(12) <= \<const0>\;
  IO2_Read_Data(11) <= \<const0>\;
  IO2_Read_Data(10) <= \<const0>\;
  IO2_Read_Data(9) <= \<const0>\;
  IO2_Read_Data(8) <= \<const0>\;
  IO2_Read_Data(7) <= \<const0>\;
  IO2_Read_Data(6) <= \<const0>\;
  IO2_Read_Data(5) <= \<const0>\;
  IO2_Read_Data(4) <= \<const0>\;
  IO2_Read_Data(3) <= \<const0>\;
  IO2_Read_Data(2) <= \<const0>\;
  IO2_Read_Data(1) <= \<const0>\;
  IO2_Read_Data(0) <= \<const0>\;
  IO2_Ready <= \<const0>\;
  IO3_Read_Data(31) <= \<const0>\;
  IO3_Read_Data(30) <= \<const0>\;
  IO3_Read_Data(29) <= \<const0>\;
  IO3_Read_Data(28) <= \<const0>\;
  IO3_Read_Data(27) <= \<const0>\;
  IO3_Read_Data(26) <= \<const0>\;
  IO3_Read_Data(25) <= \<const0>\;
  IO3_Read_Data(24) <= \<const0>\;
  IO3_Read_Data(23) <= \<const0>\;
  IO3_Read_Data(22) <= \<const0>\;
  IO3_Read_Data(21) <= \<const0>\;
  IO3_Read_Data(20) <= \<const0>\;
  IO3_Read_Data(19) <= \<const0>\;
  IO3_Read_Data(18) <= \<const0>\;
  IO3_Read_Data(17) <= \<const0>\;
  IO3_Read_Data(16) <= \<const0>\;
  IO3_Read_Data(15) <= \<const0>\;
  IO3_Read_Data(14) <= \<const0>\;
  IO3_Read_Data(13) <= \<const0>\;
  IO3_Read_Data(12) <= \<const0>\;
  IO3_Read_Data(11) <= \<const0>\;
  IO3_Read_Data(10) <= \<const0>\;
  IO3_Read_Data(9) <= \<const0>\;
  IO3_Read_Data(8) <= \<const0>\;
  IO3_Read_Data(7) <= \<const0>\;
  IO3_Read_Data(6) <= \<const0>\;
  IO3_Read_Data(5) <= \<const0>\;
  IO3_Read_Data(4) <= \<const0>\;
  IO3_Read_Data(3) <= \<const0>\;
  IO3_Read_Data(2) <= \<const0>\;
  IO3_Read_Data(1) <= \<const0>\;
  IO3_Read_Data(0) <= \<const0>\;
  IO3_Ready <= \<const0>\;
  IO_Addr_Strobe <= \<const0>\;
  IO_Address(31) <= \<const0>\;
  IO_Address(30) <= \<const0>\;
  IO_Address(29) <= \<const0>\;
  IO_Address(28) <= \<const0>\;
  IO_Address(27) <= \<const0>\;
  IO_Address(26) <= \<const0>\;
  IO_Address(25) <= \<const0>\;
  IO_Address(24) <= \<const0>\;
  IO_Address(23) <= \<const0>\;
  IO_Address(22) <= \<const0>\;
  IO_Address(21) <= \<const0>\;
  IO_Address(20) <= \<const0>\;
  IO_Address(19) <= \<const0>\;
  IO_Address(18) <= \<const0>\;
  IO_Address(17) <= \<const0>\;
  IO_Address(16) <= \<const0>\;
  IO_Address(15) <= \<const0>\;
  IO_Address(14) <= \<const0>\;
  IO_Address(13) <= \<const0>\;
  IO_Address(12) <= \<const0>\;
  IO_Address(11) <= \<const0>\;
  IO_Address(10) <= \<const0>\;
  IO_Address(9) <= \<const0>\;
  IO_Address(8) <= \<const0>\;
  IO_Address(7) <= \<const0>\;
  IO_Address(6) <= \<const0>\;
  IO_Address(5) <= \<const0>\;
  IO_Address(4) <= \<const0>\;
  IO_Address(3) <= \<const0>\;
  IO_Address(2) <= \<const0>\;
  IO_Address(1) <= \<const0>\;
  IO_Address(0) <= \<const0>\;
  IO_Byte_Enable(3) <= \<const0>\;
  IO_Byte_Enable(2) <= \<const0>\;
  IO_Byte_Enable(1) <= \<const0>\;
  IO_Byte_Enable(0) <= \<const0>\;
  IO_Read_Strobe <= \<const0>\;
  IO_Write_Data(31) <= \<const0>\;
  IO_Write_Data(30) <= \<const0>\;
  IO_Write_Data(29) <= \<const0>\;
  IO_Write_Data(28) <= \<const0>\;
  IO_Write_Data(27) <= \<const0>\;
  IO_Write_Data(26) <= \<const0>\;
  IO_Write_Data(25) <= \<const0>\;
  IO_Write_Data(24) <= \<const0>\;
  IO_Write_Data(23) <= \<const0>\;
  IO_Write_Data(22) <= \<const0>\;
  IO_Write_Data(21) <= \<const0>\;
  IO_Write_Data(20) <= \<const0>\;
  IO_Write_Data(19) <= \<const0>\;
  IO_Write_Data(18) <= \<const0>\;
  IO_Write_Data(17) <= \<const0>\;
  IO_Write_Data(16) <= \<const0>\;
  IO_Write_Data(15) <= \<const0>\;
  IO_Write_Data(14) <= \<const0>\;
  IO_Write_Data(13) <= \<const0>\;
  IO_Write_Data(12) <= \<const0>\;
  IO_Write_Data(11) <= \<const0>\;
  IO_Write_Data(10) <= \<const0>\;
  IO_Write_Data(9) <= \<const0>\;
  IO_Write_Data(8) <= \<const0>\;
  IO_Write_Data(7) <= \<const0>\;
  IO_Write_Data(6) <= \<const0>\;
  IO_Write_Data(5) <= \<const0>\;
  IO_Write_Data(4) <= \<const0>\;
  IO_Write_Data(3) <= \<const0>\;
  IO_Write_Data(2) <= \<const0>\;
  IO_Write_Data(1) <= \<const0>\;
  IO_Write_Data(0) <= \<const0>\;
  IO_Write_Strobe <= \<const0>\;
  IRQ1 <= \<const0>\;
  IRQ1_Address(0) <= \<const0>\;
  IRQ1_Address(1) <= \<const0>\;
  IRQ1_Address(2) <= \<const0>\;
  IRQ1_Address(3) <= \<const0>\;
  IRQ1_Address(4) <= \<const0>\;
  IRQ1_Address(5) <= \<const0>\;
  IRQ1_Address(6) <= \<const0>\;
  IRQ1_Address(7) <= \<const0>\;
  IRQ1_Address(8) <= \<const0>\;
  IRQ1_Address(9) <= \<const0>\;
  IRQ1_Address(10) <= \<const0>\;
  IRQ1_Address(11) <= \<const0>\;
  IRQ1_Address(12) <= \<const0>\;
  IRQ1_Address(13) <= \<const0>\;
  IRQ1_Address(14) <= \<const0>\;
  IRQ1_Address(15) <= \<const0>\;
  IRQ1_Address(16) <= \<const0>\;
  IRQ1_Address(17) <= \<const0>\;
  IRQ1_Address(18) <= \<const0>\;
  IRQ1_Address(19) <= \<const0>\;
  IRQ1_Address(20) <= \<const0>\;
  IRQ1_Address(21) <= \<const0>\;
  IRQ1_Address(22) <= \<const0>\;
  IRQ1_Address(23) <= \<const0>\;
  IRQ1_Address(24) <= \<const0>\;
  IRQ1_Address(25) <= \<const0>\;
  IRQ1_Address(26) <= \<const0>\;
  IRQ1_Address(27) <= \<const0>\;
  IRQ1_Address(28) <= \<const0>\;
  IRQ1_Address(29) <= \<const0>\;
  IRQ1_Address(30) <= \<const0>\;
  IRQ1_Address(31) <= \<const0>\;
  IRQ2 <= \<const0>\;
  IRQ2_Address(0) <= \<const0>\;
  IRQ2_Address(1) <= \<const0>\;
  IRQ2_Address(2) <= \<const0>\;
  IRQ2_Address(3) <= \<const0>\;
  IRQ2_Address(4) <= \<const0>\;
  IRQ2_Address(5) <= \<const0>\;
  IRQ2_Address(6) <= \<const0>\;
  IRQ2_Address(7) <= \<const0>\;
  IRQ2_Address(8) <= \<const0>\;
  IRQ2_Address(9) <= \<const0>\;
  IRQ2_Address(10) <= \<const0>\;
  IRQ2_Address(11) <= \<const0>\;
  IRQ2_Address(12) <= \<const0>\;
  IRQ2_Address(13) <= \<const0>\;
  IRQ2_Address(14) <= \<const0>\;
  IRQ2_Address(15) <= \<const0>\;
  IRQ2_Address(16) <= \<const0>\;
  IRQ2_Address(17) <= \<const0>\;
  IRQ2_Address(18) <= \<const0>\;
  IRQ2_Address(19) <= \<const0>\;
  IRQ2_Address(20) <= \<const0>\;
  IRQ2_Address(21) <= \<const0>\;
  IRQ2_Address(22) <= \<const0>\;
  IRQ2_Address(23) <= \<const0>\;
  IRQ2_Address(24) <= \<const0>\;
  IRQ2_Address(25) <= \<const0>\;
  IRQ2_Address(26) <= \<const0>\;
  IRQ2_Address(27) <= \<const0>\;
  IRQ2_Address(28) <= \<const0>\;
  IRQ2_Address(29) <= \<const0>\;
  IRQ2_Address(30) <= \<const0>\;
  IRQ2_Address(31) <= \<const0>\;
  IRQ3 <= \<const0>\;
  IRQ3_Address(0) <= \<const0>\;
  IRQ3_Address(1) <= \<const0>\;
  IRQ3_Address(2) <= \<const0>\;
  IRQ3_Address(3) <= \<const0>\;
  IRQ3_Address(4) <= \<const0>\;
  IRQ3_Address(5) <= \<const0>\;
  IRQ3_Address(6) <= \<const0>\;
  IRQ3_Address(7) <= \<const0>\;
  IRQ3_Address(8) <= \<const0>\;
  IRQ3_Address(9) <= \<const0>\;
  IRQ3_Address(10) <= \<const0>\;
  IRQ3_Address(11) <= \<const0>\;
  IRQ3_Address(12) <= \<const0>\;
  IRQ3_Address(13) <= \<const0>\;
  IRQ3_Address(14) <= \<const0>\;
  IRQ3_Address(15) <= \<const0>\;
  IRQ3_Address(16) <= \<const0>\;
  IRQ3_Address(17) <= \<const0>\;
  IRQ3_Address(18) <= \<const0>\;
  IRQ3_Address(19) <= \<const0>\;
  IRQ3_Address(20) <= \<const0>\;
  IRQ3_Address(21) <= \<const0>\;
  IRQ3_Address(22) <= \<const0>\;
  IRQ3_Address(23) <= \<const0>\;
  IRQ3_Address(24) <= \<const0>\;
  IRQ3_Address(25) <= \<const0>\;
  IRQ3_Address(26) <= \<const0>\;
  IRQ3_Address(27) <= \<const0>\;
  IRQ3_Address(28) <= \<const0>\;
  IRQ3_Address(29) <= \<const0>\;
  IRQ3_Address(30) <= \<const0>\;
  IRQ3_Address(31) <= \<const0>\;
  IRQ_Ack(0) <= \<const0>\;
  IRQ_Ack(1) <= \<const0>\;
  LMB_ABus(0) <= \<const0>\;
  LMB_ABus(1) <= \<const0>\;
  LMB_ABus(2) <= \<const0>\;
  LMB_ABus(3) <= \<const0>\;
  LMB_ABus(4) <= \<const0>\;
  LMB_ABus(5) <= \<const0>\;
  LMB_ABus(6) <= \<const0>\;
  LMB_ABus(7) <= \<const0>\;
  LMB_ABus(8) <= \<const0>\;
  LMB_ABus(9) <= \<const0>\;
  LMB_ABus(10) <= \<const0>\;
  LMB_ABus(11) <= \<const0>\;
  LMB_ABus(12) <= \<const0>\;
  LMB_ABus(13) <= \<const0>\;
  LMB_ABus(14) <= \<const0>\;
  LMB_ABus(15) <= \<const0>\;
  LMB_ABus(16) <= \<const0>\;
  LMB_ABus(17) <= \<const0>\;
  LMB_ABus(18) <= \<const0>\;
  LMB_ABus(19) <= \<const0>\;
  LMB_ABus(20) <= \<const0>\;
  LMB_ABus(21) <= \<const0>\;
  LMB_ABus(22) <= \<const0>\;
  LMB_ABus(23) <= \<const0>\;
  LMB_ABus(24) <= \<const0>\;
  LMB_ABus(25) <= \<const0>\;
  LMB_ABus(26) <= \<const0>\;
  LMB_ABus(27) <= \<const0>\;
  LMB_ABus(28) <= \<const0>\;
  LMB_ABus(29) <= \<const0>\;
  LMB_ABus(30) <= \<const0>\;
  LMB_ABus(31) <= \<const0>\;
  LMB_AddrStrobe <= \<const0>\;
  LMB_BE(0) <= \<const0>\;
  LMB_BE(1) <= \<const0>\;
  LMB_BE(2) <= \<const0>\;
  LMB_BE(3) <= \<const0>\;
  LMB_ReadStrobe <= \<const0>\;
  LMB_WriteDBus(0) <= \<const0>\;
  LMB_WriteDBus(1) <= \<const0>\;
  LMB_WriteDBus(2) <= \<const0>\;
  LMB_WriteDBus(3) <= \<const0>\;
  LMB_WriteDBus(4) <= \<const0>\;
  LMB_WriteDBus(5) <= \<const0>\;
  LMB_WriteDBus(6) <= \<const0>\;
  LMB_WriteDBus(7) <= \<const0>\;
  LMB_WriteDBus(8) <= \<const0>\;
  LMB_WriteDBus(9) <= \<const0>\;
  LMB_WriteDBus(10) <= \<const0>\;
  LMB_WriteDBus(11) <= \<const0>\;
  LMB_WriteDBus(12) <= \<const0>\;
  LMB_WriteDBus(13) <= \<const0>\;
  LMB_WriteDBus(14) <= \<const0>\;
  LMB_WriteDBus(15) <= \<const0>\;
  LMB_WriteDBus(16) <= \<const0>\;
  LMB_WriteDBus(17) <= \<const0>\;
  LMB_WriteDBus(18) <= \<const0>\;
  LMB_WriteDBus(19) <= \<const0>\;
  LMB_WriteDBus(20) <= \<const0>\;
  LMB_WriteDBus(21) <= \<const0>\;
  LMB_WriteDBus(22) <= \<const0>\;
  LMB_WriteDBus(23) <= \<const0>\;
  LMB_WriteDBus(24) <= \<const0>\;
  LMB_WriteDBus(25) <= \<const0>\;
  LMB_WriteDBus(26) <= \<const0>\;
  LMB_WriteDBus(27) <= \<const0>\;
  LMB_WriteDBus(28) <= \<const0>\;
  LMB_WriteDBus(29) <= \<const0>\;
  LMB_WriteDBus(30) <= \<const0>\;
  LMB_WriteDBus(31) <= \<const0>\;
  LMB_WriteStrobe <= \<const0>\;
  M_AXI1_ACREADY <= \<const0>\;
  M_AXI1_ARADDR(31) <= \<const0>\;
  M_AXI1_ARADDR(30) <= \<const0>\;
  M_AXI1_ARADDR(29) <= \<const0>\;
  M_AXI1_ARADDR(28) <= \<const0>\;
  M_AXI1_ARADDR(27) <= \<const0>\;
  M_AXI1_ARADDR(26) <= \<const0>\;
  M_AXI1_ARADDR(25) <= \<const0>\;
  M_AXI1_ARADDR(24) <= \<const0>\;
  M_AXI1_ARADDR(23) <= \<const0>\;
  M_AXI1_ARADDR(22) <= \<const0>\;
  M_AXI1_ARADDR(21) <= \<const0>\;
  M_AXI1_ARADDR(20) <= \<const0>\;
  M_AXI1_ARADDR(19) <= \<const0>\;
  M_AXI1_ARADDR(18) <= \<const0>\;
  M_AXI1_ARADDR(17) <= \<const0>\;
  M_AXI1_ARADDR(16) <= \<const0>\;
  M_AXI1_ARADDR(15) <= \<const0>\;
  M_AXI1_ARADDR(14) <= \<const0>\;
  M_AXI1_ARADDR(13) <= \<const0>\;
  M_AXI1_ARADDR(12) <= \<const0>\;
  M_AXI1_ARADDR(11) <= \<const0>\;
  M_AXI1_ARADDR(10) <= \<const0>\;
  M_AXI1_ARADDR(9) <= \<const0>\;
  M_AXI1_ARADDR(8) <= \<const0>\;
  M_AXI1_ARADDR(7) <= \<const0>\;
  M_AXI1_ARADDR(6) <= \<const0>\;
  M_AXI1_ARADDR(5) <= \<const0>\;
  M_AXI1_ARADDR(4) <= \<const0>\;
  M_AXI1_ARADDR(3) <= \<const0>\;
  M_AXI1_ARADDR(2) <= \<const0>\;
  M_AXI1_ARADDR(1) <= \<const0>\;
  M_AXI1_ARADDR(0) <= \<const0>\;
  M_AXI1_ARBAR(1) <= \<const0>\;
  M_AXI1_ARBAR(0) <= \<const0>\;
  M_AXI1_ARBURST(1) <= \<const0>\;
  M_AXI1_ARBURST(0) <= \<const0>\;
  M_AXI1_ARCACHE(3) <= \<const0>\;
  M_AXI1_ARCACHE(2) <= \<const0>\;
  M_AXI1_ARCACHE(1) <= \<const0>\;
  M_AXI1_ARCACHE(0) <= \<const0>\;
  M_AXI1_ARDOMAIN(1) <= \<const0>\;
  M_AXI1_ARDOMAIN(0) <= \<const0>\;
  M_AXI1_ARID(0) <= \<const0>\;
  M_AXI1_ARLEN(7) <= \<const0>\;
  M_AXI1_ARLEN(6) <= \<const0>\;
  M_AXI1_ARLEN(5) <= \<const0>\;
  M_AXI1_ARLEN(4) <= \<const0>\;
  M_AXI1_ARLEN(3) <= \<const0>\;
  M_AXI1_ARLEN(2) <= \<const0>\;
  M_AXI1_ARLEN(1) <= \<const0>\;
  M_AXI1_ARLEN(0) <= \<const0>\;
  M_AXI1_ARLOCK <= \<const0>\;
  M_AXI1_ARPROT(2) <= \<const0>\;
  M_AXI1_ARPROT(1) <= \<const0>\;
  M_AXI1_ARPROT(0) <= \<const0>\;
  M_AXI1_ARQOS(3) <= \<const0>\;
  M_AXI1_ARQOS(2) <= \<const0>\;
  M_AXI1_ARQOS(1) <= \<const0>\;
  M_AXI1_ARQOS(0) <= \<const0>\;
  M_AXI1_ARSIZE(2) <= \<const0>\;
  M_AXI1_ARSIZE(1) <= \<const0>\;
  M_AXI1_ARSIZE(0) <= \<const0>\;
  M_AXI1_ARSNOOP(3) <= \<const0>\;
  M_AXI1_ARSNOOP(2) <= \<const0>\;
  M_AXI1_ARSNOOP(1) <= \<const0>\;
  M_AXI1_ARSNOOP(0) <= \<const0>\;
  M_AXI1_ARUSER(0) <= \<const0>\;
  M_AXI1_ARVALID <= \<const0>\;
  M_AXI1_AWADDR(31) <= \<const0>\;
  M_AXI1_AWADDR(30) <= \<const0>\;
  M_AXI1_AWADDR(29) <= \<const0>\;
  M_AXI1_AWADDR(28) <= \<const0>\;
  M_AXI1_AWADDR(27) <= \<const0>\;
  M_AXI1_AWADDR(26) <= \<const0>\;
  M_AXI1_AWADDR(25) <= \<const0>\;
  M_AXI1_AWADDR(24) <= \<const0>\;
  M_AXI1_AWADDR(23) <= \<const0>\;
  M_AXI1_AWADDR(22) <= \<const0>\;
  M_AXI1_AWADDR(21) <= \<const0>\;
  M_AXI1_AWADDR(20) <= \<const0>\;
  M_AXI1_AWADDR(19) <= \<const0>\;
  M_AXI1_AWADDR(18) <= \<const0>\;
  M_AXI1_AWADDR(17) <= \<const0>\;
  M_AXI1_AWADDR(16) <= \<const0>\;
  M_AXI1_AWADDR(15) <= \<const0>\;
  M_AXI1_AWADDR(14) <= \<const0>\;
  M_AXI1_AWADDR(13) <= \<const0>\;
  M_AXI1_AWADDR(12) <= \<const0>\;
  M_AXI1_AWADDR(11) <= \<const0>\;
  M_AXI1_AWADDR(10) <= \<const0>\;
  M_AXI1_AWADDR(9) <= \<const0>\;
  M_AXI1_AWADDR(8) <= \<const0>\;
  M_AXI1_AWADDR(7) <= \<const0>\;
  M_AXI1_AWADDR(6) <= \<const0>\;
  M_AXI1_AWADDR(5) <= \<const0>\;
  M_AXI1_AWADDR(4) <= \<const0>\;
  M_AXI1_AWADDR(3) <= \<const0>\;
  M_AXI1_AWADDR(2) <= \<const0>\;
  M_AXI1_AWADDR(1) <= \<const0>\;
  M_AXI1_AWADDR(0) <= \<const0>\;
  M_AXI1_AWBAR(1) <= \<const0>\;
  M_AXI1_AWBAR(0) <= \<const0>\;
  M_AXI1_AWBURST(1) <= \<const0>\;
  M_AXI1_AWBURST(0) <= \<const0>\;
  M_AXI1_AWCACHE(3) <= \<const0>\;
  M_AXI1_AWCACHE(2) <= \<const0>\;
  M_AXI1_AWCACHE(1) <= \<const0>\;
  M_AXI1_AWCACHE(0) <= \<const0>\;
  M_AXI1_AWDOMAIN(1) <= \<const0>\;
  M_AXI1_AWDOMAIN(0) <= \<const0>\;
  M_AXI1_AWID(0) <= \<const0>\;
  M_AXI1_AWLEN(7) <= \<const0>\;
  M_AXI1_AWLEN(6) <= \<const0>\;
  M_AXI1_AWLEN(5) <= \<const0>\;
  M_AXI1_AWLEN(4) <= \<const0>\;
  M_AXI1_AWLEN(3) <= \<const0>\;
  M_AXI1_AWLEN(2) <= \<const0>\;
  M_AXI1_AWLEN(1) <= \<const0>\;
  M_AXI1_AWLEN(0) <= \<const0>\;
  M_AXI1_AWLOCK <= \<const0>\;
  M_AXI1_AWPROT(2) <= \<const0>\;
  M_AXI1_AWPROT(1) <= \<const0>\;
  M_AXI1_AWPROT(0) <= \<const0>\;
  M_AXI1_AWQOS(3) <= \<const0>\;
  M_AXI1_AWQOS(2) <= \<const0>\;
  M_AXI1_AWQOS(1) <= \<const0>\;
  M_AXI1_AWQOS(0) <= \<const0>\;
  M_AXI1_AWSIZE(2) <= \<const0>\;
  M_AXI1_AWSIZE(1) <= \<const0>\;
  M_AXI1_AWSIZE(0) <= \<const0>\;
  M_AXI1_AWSNOOP(2) <= \<const0>\;
  M_AXI1_AWSNOOP(1) <= \<const0>\;
  M_AXI1_AWSNOOP(0) <= \<const0>\;
  M_AXI1_AWUSER(0) <= \<const0>\;
  M_AXI1_AWVALID <= \<const0>\;
  M_AXI1_BREADY <= \<const0>\;
  M_AXI1_CDDATA(31) <= \<const0>\;
  M_AXI1_CDDATA(30) <= \<const0>\;
  M_AXI1_CDDATA(29) <= \<const0>\;
  M_AXI1_CDDATA(28) <= \<const0>\;
  M_AXI1_CDDATA(27) <= \<const0>\;
  M_AXI1_CDDATA(26) <= \<const0>\;
  M_AXI1_CDDATA(25) <= \<const0>\;
  M_AXI1_CDDATA(24) <= \<const0>\;
  M_AXI1_CDDATA(23) <= \<const0>\;
  M_AXI1_CDDATA(22) <= \<const0>\;
  M_AXI1_CDDATA(21) <= \<const0>\;
  M_AXI1_CDDATA(20) <= \<const0>\;
  M_AXI1_CDDATA(19) <= \<const0>\;
  M_AXI1_CDDATA(18) <= \<const0>\;
  M_AXI1_CDDATA(17) <= \<const0>\;
  M_AXI1_CDDATA(16) <= \<const0>\;
  M_AXI1_CDDATA(15) <= \<const0>\;
  M_AXI1_CDDATA(14) <= \<const0>\;
  M_AXI1_CDDATA(13) <= \<const0>\;
  M_AXI1_CDDATA(12) <= \<const0>\;
  M_AXI1_CDDATA(11) <= \<const0>\;
  M_AXI1_CDDATA(10) <= \<const0>\;
  M_AXI1_CDDATA(9) <= \<const0>\;
  M_AXI1_CDDATA(8) <= \<const0>\;
  M_AXI1_CDDATA(7) <= \<const0>\;
  M_AXI1_CDDATA(6) <= \<const0>\;
  M_AXI1_CDDATA(5) <= \<const0>\;
  M_AXI1_CDDATA(4) <= \<const0>\;
  M_AXI1_CDDATA(3) <= \<const0>\;
  M_AXI1_CDDATA(2) <= \<const0>\;
  M_AXI1_CDDATA(1) <= \<const0>\;
  M_AXI1_CDDATA(0) <= \<const0>\;
  M_AXI1_CDLAST <= \<const0>\;
  M_AXI1_CDVALID <= \<const0>\;
  M_AXI1_CRRESP(4) <= \<const0>\;
  M_AXI1_CRRESP(3) <= \<const0>\;
  M_AXI1_CRRESP(2) <= \<const0>\;
  M_AXI1_CRRESP(1) <= \<const0>\;
  M_AXI1_CRRESP(0) <= \<const0>\;
  M_AXI1_CRVALID <= \<const0>\;
  M_AXI1_RACK <= \<const0>\;
  M_AXI1_RREADY <= \<const0>\;
  M_AXI1_WACK <= \<const0>\;
  M_AXI1_WDATA(31) <= \<const0>\;
  M_AXI1_WDATA(30) <= \<const0>\;
  M_AXI1_WDATA(29) <= \<const0>\;
  M_AXI1_WDATA(28) <= \<const0>\;
  M_AXI1_WDATA(27) <= \<const0>\;
  M_AXI1_WDATA(26) <= \<const0>\;
  M_AXI1_WDATA(25) <= \<const0>\;
  M_AXI1_WDATA(24) <= \<const0>\;
  M_AXI1_WDATA(23) <= \<const0>\;
  M_AXI1_WDATA(22) <= \<const0>\;
  M_AXI1_WDATA(21) <= \<const0>\;
  M_AXI1_WDATA(20) <= \<const0>\;
  M_AXI1_WDATA(19) <= \<const0>\;
  M_AXI1_WDATA(18) <= \<const0>\;
  M_AXI1_WDATA(17) <= \<const0>\;
  M_AXI1_WDATA(16) <= \<const0>\;
  M_AXI1_WDATA(15) <= \<const0>\;
  M_AXI1_WDATA(14) <= \<const0>\;
  M_AXI1_WDATA(13) <= \<const0>\;
  M_AXI1_WDATA(12) <= \<const0>\;
  M_AXI1_WDATA(11) <= \<const0>\;
  M_AXI1_WDATA(10) <= \<const0>\;
  M_AXI1_WDATA(9) <= \<const0>\;
  M_AXI1_WDATA(8) <= \<const0>\;
  M_AXI1_WDATA(7) <= \<const0>\;
  M_AXI1_WDATA(6) <= \<const0>\;
  M_AXI1_WDATA(5) <= \<const0>\;
  M_AXI1_WDATA(4) <= \<const0>\;
  M_AXI1_WDATA(3) <= \<const0>\;
  M_AXI1_WDATA(2) <= \<const0>\;
  M_AXI1_WDATA(1) <= \<const0>\;
  M_AXI1_WDATA(0) <= \<const0>\;
  M_AXI1_WLAST <= \<const0>\;
  M_AXI1_WSTRB(3) <= \<const0>\;
  M_AXI1_WSTRB(2) <= \<const0>\;
  M_AXI1_WSTRB(1) <= \<const0>\;
  M_AXI1_WSTRB(0) <= \<const0>\;
  M_AXI1_WUSER(0) <= \<const0>\;
  M_AXI1_WVALID <= \<const0>\;
  M_AXI2_ACREADY <= \<const0>\;
  M_AXI2_ARADDR(31) <= \<const0>\;
  M_AXI2_ARADDR(30) <= \<const0>\;
  M_AXI2_ARADDR(29) <= \<const0>\;
  M_AXI2_ARADDR(28) <= \<const0>\;
  M_AXI2_ARADDR(27) <= \<const0>\;
  M_AXI2_ARADDR(26) <= \<const0>\;
  M_AXI2_ARADDR(25) <= \<const0>\;
  M_AXI2_ARADDR(24) <= \<const0>\;
  M_AXI2_ARADDR(23) <= \<const0>\;
  M_AXI2_ARADDR(22) <= \<const0>\;
  M_AXI2_ARADDR(21) <= \<const0>\;
  M_AXI2_ARADDR(20) <= \<const0>\;
  M_AXI2_ARADDR(19) <= \<const0>\;
  M_AXI2_ARADDR(18) <= \<const0>\;
  M_AXI2_ARADDR(17) <= \<const0>\;
  M_AXI2_ARADDR(16) <= \<const0>\;
  M_AXI2_ARADDR(15) <= \<const0>\;
  M_AXI2_ARADDR(14) <= \<const0>\;
  M_AXI2_ARADDR(13) <= \<const0>\;
  M_AXI2_ARADDR(12) <= \<const0>\;
  M_AXI2_ARADDR(11) <= \<const0>\;
  M_AXI2_ARADDR(10) <= \<const0>\;
  M_AXI2_ARADDR(9) <= \<const0>\;
  M_AXI2_ARADDR(8) <= \<const0>\;
  M_AXI2_ARADDR(7) <= \<const0>\;
  M_AXI2_ARADDR(6) <= \<const0>\;
  M_AXI2_ARADDR(5) <= \<const0>\;
  M_AXI2_ARADDR(4) <= \<const0>\;
  M_AXI2_ARADDR(3) <= \<const0>\;
  M_AXI2_ARADDR(2) <= \<const0>\;
  M_AXI2_ARADDR(1) <= \<const0>\;
  M_AXI2_ARADDR(0) <= \<const0>\;
  M_AXI2_ARBAR(1) <= \<const0>\;
  M_AXI2_ARBAR(0) <= \<const0>\;
  M_AXI2_ARBURST(1) <= \<const0>\;
  M_AXI2_ARBURST(0) <= \<const0>\;
  M_AXI2_ARCACHE(3) <= \<const0>\;
  M_AXI2_ARCACHE(2) <= \<const0>\;
  M_AXI2_ARCACHE(1) <= \<const0>\;
  M_AXI2_ARCACHE(0) <= \<const0>\;
  M_AXI2_ARDOMAIN(1) <= \<const0>\;
  M_AXI2_ARDOMAIN(0) <= \<const0>\;
  M_AXI2_ARID(0) <= \<const0>\;
  M_AXI2_ARLEN(7) <= \<const0>\;
  M_AXI2_ARLEN(6) <= \<const0>\;
  M_AXI2_ARLEN(5) <= \<const0>\;
  M_AXI2_ARLEN(4) <= \<const0>\;
  M_AXI2_ARLEN(3) <= \<const0>\;
  M_AXI2_ARLEN(2) <= \<const0>\;
  M_AXI2_ARLEN(1) <= \<const0>\;
  M_AXI2_ARLEN(0) <= \<const0>\;
  M_AXI2_ARLOCK <= \<const0>\;
  M_AXI2_ARPROT(2) <= \<const0>\;
  M_AXI2_ARPROT(1) <= \<const0>\;
  M_AXI2_ARPROT(0) <= \<const0>\;
  M_AXI2_ARQOS(3) <= \<const0>\;
  M_AXI2_ARQOS(2) <= \<const0>\;
  M_AXI2_ARQOS(1) <= \<const0>\;
  M_AXI2_ARQOS(0) <= \<const0>\;
  M_AXI2_ARSIZE(2) <= \<const0>\;
  M_AXI2_ARSIZE(1) <= \<const0>\;
  M_AXI2_ARSIZE(0) <= \<const0>\;
  M_AXI2_ARSNOOP(3) <= \<const0>\;
  M_AXI2_ARSNOOP(2) <= \<const0>\;
  M_AXI2_ARSNOOP(1) <= \<const0>\;
  M_AXI2_ARSNOOP(0) <= \<const0>\;
  M_AXI2_ARUSER(0) <= \<const0>\;
  M_AXI2_ARVALID <= \<const0>\;
  M_AXI2_AWADDR(31) <= \<const0>\;
  M_AXI2_AWADDR(30) <= \<const0>\;
  M_AXI2_AWADDR(29) <= \<const0>\;
  M_AXI2_AWADDR(28) <= \<const0>\;
  M_AXI2_AWADDR(27) <= \<const0>\;
  M_AXI2_AWADDR(26) <= \<const0>\;
  M_AXI2_AWADDR(25) <= \<const0>\;
  M_AXI2_AWADDR(24) <= \<const0>\;
  M_AXI2_AWADDR(23) <= \<const0>\;
  M_AXI2_AWADDR(22) <= \<const0>\;
  M_AXI2_AWADDR(21) <= \<const0>\;
  M_AXI2_AWADDR(20) <= \<const0>\;
  M_AXI2_AWADDR(19) <= \<const0>\;
  M_AXI2_AWADDR(18) <= \<const0>\;
  M_AXI2_AWADDR(17) <= \<const0>\;
  M_AXI2_AWADDR(16) <= \<const0>\;
  M_AXI2_AWADDR(15) <= \<const0>\;
  M_AXI2_AWADDR(14) <= \<const0>\;
  M_AXI2_AWADDR(13) <= \<const0>\;
  M_AXI2_AWADDR(12) <= \<const0>\;
  M_AXI2_AWADDR(11) <= \<const0>\;
  M_AXI2_AWADDR(10) <= \<const0>\;
  M_AXI2_AWADDR(9) <= \<const0>\;
  M_AXI2_AWADDR(8) <= \<const0>\;
  M_AXI2_AWADDR(7) <= \<const0>\;
  M_AXI2_AWADDR(6) <= \<const0>\;
  M_AXI2_AWADDR(5) <= \<const0>\;
  M_AXI2_AWADDR(4) <= \<const0>\;
  M_AXI2_AWADDR(3) <= \<const0>\;
  M_AXI2_AWADDR(2) <= \<const0>\;
  M_AXI2_AWADDR(1) <= \<const0>\;
  M_AXI2_AWADDR(0) <= \<const0>\;
  M_AXI2_AWBAR(1) <= \<const0>\;
  M_AXI2_AWBAR(0) <= \<const0>\;
  M_AXI2_AWBURST(1) <= \<const0>\;
  M_AXI2_AWBURST(0) <= \<const0>\;
  M_AXI2_AWCACHE(3) <= \<const0>\;
  M_AXI2_AWCACHE(2) <= \<const0>\;
  M_AXI2_AWCACHE(1) <= \<const0>\;
  M_AXI2_AWCACHE(0) <= \<const0>\;
  M_AXI2_AWDOMAIN(1) <= \<const0>\;
  M_AXI2_AWDOMAIN(0) <= \<const0>\;
  M_AXI2_AWID(0) <= \<const0>\;
  M_AXI2_AWLEN(7) <= \<const0>\;
  M_AXI2_AWLEN(6) <= \<const0>\;
  M_AXI2_AWLEN(5) <= \<const0>\;
  M_AXI2_AWLEN(4) <= \<const0>\;
  M_AXI2_AWLEN(3) <= \<const0>\;
  M_AXI2_AWLEN(2) <= \<const0>\;
  M_AXI2_AWLEN(1) <= \<const0>\;
  M_AXI2_AWLEN(0) <= \<const0>\;
  M_AXI2_AWLOCK <= \<const0>\;
  M_AXI2_AWPROT(2) <= \<const0>\;
  M_AXI2_AWPROT(1) <= \<const0>\;
  M_AXI2_AWPROT(0) <= \<const0>\;
  M_AXI2_AWQOS(3) <= \<const0>\;
  M_AXI2_AWQOS(2) <= \<const0>\;
  M_AXI2_AWQOS(1) <= \<const0>\;
  M_AXI2_AWQOS(0) <= \<const0>\;
  M_AXI2_AWSIZE(2) <= \<const0>\;
  M_AXI2_AWSIZE(1) <= \<const0>\;
  M_AXI2_AWSIZE(0) <= \<const0>\;
  M_AXI2_AWSNOOP(2) <= \<const0>\;
  M_AXI2_AWSNOOP(1) <= \<const0>\;
  M_AXI2_AWSNOOP(0) <= \<const0>\;
  M_AXI2_AWUSER(0) <= \<const0>\;
  M_AXI2_AWVALID <= \<const0>\;
  M_AXI2_BREADY <= \<const0>\;
  M_AXI2_CDDATA(31) <= \<const0>\;
  M_AXI2_CDDATA(30) <= \<const0>\;
  M_AXI2_CDDATA(29) <= \<const0>\;
  M_AXI2_CDDATA(28) <= \<const0>\;
  M_AXI2_CDDATA(27) <= \<const0>\;
  M_AXI2_CDDATA(26) <= \<const0>\;
  M_AXI2_CDDATA(25) <= \<const0>\;
  M_AXI2_CDDATA(24) <= \<const0>\;
  M_AXI2_CDDATA(23) <= \<const0>\;
  M_AXI2_CDDATA(22) <= \<const0>\;
  M_AXI2_CDDATA(21) <= \<const0>\;
  M_AXI2_CDDATA(20) <= \<const0>\;
  M_AXI2_CDDATA(19) <= \<const0>\;
  M_AXI2_CDDATA(18) <= \<const0>\;
  M_AXI2_CDDATA(17) <= \<const0>\;
  M_AXI2_CDDATA(16) <= \<const0>\;
  M_AXI2_CDDATA(15) <= \<const0>\;
  M_AXI2_CDDATA(14) <= \<const0>\;
  M_AXI2_CDDATA(13) <= \<const0>\;
  M_AXI2_CDDATA(12) <= \<const0>\;
  M_AXI2_CDDATA(11) <= \<const0>\;
  M_AXI2_CDDATA(10) <= \<const0>\;
  M_AXI2_CDDATA(9) <= \<const0>\;
  M_AXI2_CDDATA(8) <= \<const0>\;
  M_AXI2_CDDATA(7) <= \<const0>\;
  M_AXI2_CDDATA(6) <= \<const0>\;
  M_AXI2_CDDATA(5) <= \<const0>\;
  M_AXI2_CDDATA(4) <= \<const0>\;
  M_AXI2_CDDATA(3) <= \<const0>\;
  M_AXI2_CDDATA(2) <= \<const0>\;
  M_AXI2_CDDATA(1) <= \<const0>\;
  M_AXI2_CDDATA(0) <= \<const0>\;
  M_AXI2_CDLAST <= \<const0>\;
  M_AXI2_CDVALID <= \<const0>\;
  M_AXI2_CRRESP(4) <= \<const0>\;
  M_AXI2_CRRESP(3) <= \<const0>\;
  M_AXI2_CRRESP(2) <= \<const0>\;
  M_AXI2_CRRESP(1) <= \<const0>\;
  M_AXI2_CRRESP(0) <= \<const0>\;
  M_AXI2_CRVALID <= \<const0>\;
  M_AXI2_RACK <= \<const0>\;
  M_AXI2_RREADY <= \<const0>\;
  M_AXI2_WACK <= \<const0>\;
  M_AXI2_WDATA(31) <= \<const0>\;
  M_AXI2_WDATA(30) <= \<const0>\;
  M_AXI2_WDATA(29) <= \<const0>\;
  M_AXI2_WDATA(28) <= \<const0>\;
  M_AXI2_WDATA(27) <= \<const0>\;
  M_AXI2_WDATA(26) <= \<const0>\;
  M_AXI2_WDATA(25) <= \<const0>\;
  M_AXI2_WDATA(24) <= \<const0>\;
  M_AXI2_WDATA(23) <= \<const0>\;
  M_AXI2_WDATA(22) <= \<const0>\;
  M_AXI2_WDATA(21) <= \<const0>\;
  M_AXI2_WDATA(20) <= \<const0>\;
  M_AXI2_WDATA(19) <= \<const0>\;
  M_AXI2_WDATA(18) <= \<const0>\;
  M_AXI2_WDATA(17) <= \<const0>\;
  M_AXI2_WDATA(16) <= \<const0>\;
  M_AXI2_WDATA(15) <= \<const0>\;
  M_AXI2_WDATA(14) <= \<const0>\;
  M_AXI2_WDATA(13) <= \<const0>\;
  M_AXI2_WDATA(12) <= \<const0>\;
  M_AXI2_WDATA(11) <= \<const0>\;
  M_AXI2_WDATA(10) <= \<const0>\;
  M_AXI2_WDATA(9) <= \<const0>\;
  M_AXI2_WDATA(8) <= \<const0>\;
  M_AXI2_WDATA(7) <= \<const0>\;
  M_AXI2_WDATA(6) <= \<const0>\;
  M_AXI2_WDATA(5) <= \<const0>\;
  M_AXI2_WDATA(4) <= \<const0>\;
  M_AXI2_WDATA(3) <= \<const0>\;
  M_AXI2_WDATA(2) <= \<const0>\;
  M_AXI2_WDATA(1) <= \<const0>\;
  M_AXI2_WDATA(0) <= \<const0>\;
  M_AXI2_WLAST <= \<const0>\;
  M_AXI2_WSTRB(3) <= \<const0>\;
  M_AXI2_WSTRB(2) <= \<const0>\;
  M_AXI2_WSTRB(1) <= \<const0>\;
  M_AXI2_WSTRB(0) <= \<const0>\;
  M_AXI2_WUSER(0) <= \<const0>\;
  M_AXI2_WVALID <= \<const0>\;
  M_AXI3_ACREADY <= \<const0>\;
  M_AXI3_ARADDR(31) <= \<const0>\;
  M_AXI3_ARADDR(30) <= \<const0>\;
  M_AXI3_ARADDR(29) <= \<const0>\;
  M_AXI3_ARADDR(28) <= \<const0>\;
  M_AXI3_ARADDR(27) <= \<const0>\;
  M_AXI3_ARADDR(26) <= \<const0>\;
  M_AXI3_ARADDR(25) <= \<const0>\;
  M_AXI3_ARADDR(24) <= \<const0>\;
  M_AXI3_ARADDR(23) <= \<const0>\;
  M_AXI3_ARADDR(22) <= \<const0>\;
  M_AXI3_ARADDR(21) <= \<const0>\;
  M_AXI3_ARADDR(20) <= \<const0>\;
  M_AXI3_ARADDR(19) <= \<const0>\;
  M_AXI3_ARADDR(18) <= \<const0>\;
  M_AXI3_ARADDR(17) <= \<const0>\;
  M_AXI3_ARADDR(16) <= \<const0>\;
  M_AXI3_ARADDR(15) <= \<const0>\;
  M_AXI3_ARADDR(14) <= \<const0>\;
  M_AXI3_ARADDR(13) <= \<const0>\;
  M_AXI3_ARADDR(12) <= \<const0>\;
  M_AXI3_ARADDR(11) <= \<const0>\;
  M_AXI3_ARADDR(10) <= \<const0>\;
  M_AXI3_ARADDR(9) <= \<const0>\;
  M_AXI3_ARADDR(8) <= \<const0>\;
  M_AXI3_ARADDR(7) <= \<const0>\;
  M_AXI3_ARADDR(6) <= \<const0>\;
  M_AXI3_ARADDR(5) <= \<const0>\;
  M_AXI3_ARADDR(4) <= \<const0>\;
  M_AXI3_ARADDR(3) <= \<const0>\;
  M_AXI3_ARADDR(2) <= \<const0>\;
  M_AXI3_ARADDR(1) <= \<const0>\;
  M_AXI3_ARADDR(0) <= \<const0>\;
  M_AXI3_ARBAR(1) <= \<const0>\;
  M_AXI3_ARBAR(0) <= \<const0>\;
  M_AXI3_ARBURST(1) <= \<const0>\;
  M_AXI3_ARBURST(0) <= \<const0>\;
  M_AXI3_ARCACHE(3) <= \<const0>\;
  M_AXI3_ARCACHE(2) <= \<const0>\;
  M_AXI3_ARCACHE(1) <= \<const0>\;
  M_AXI3_ARCACHE(0) <= \<const0>\;
  M_AXI3_ARDOMAIN(1) <= \<const0>\;
  M_AXI3_ARDOMAIN(0) <= \<const0>\;
  M_AXI3_ARID(0) <= \<const0>\;
  M_AXI3_ARLEN(7) <= \<const0>\;
  M_AXI3_ARLEN(6) <= \<const0>\;
  M_AXI3_ARLEN(5) <= \<const0>\;
  M_AXI3_ARLEN(4) <= \<const0>\;
  M_AXI3_ARLEN(3) <= \<const0>\;
  M_AXI3_ARLEN(2) <= \<const0>\;
  M_AXI3_ARLEN(1) <= \<const0>\;
  M_AXI3_ARLEN(0) <= \<const0>\;
  M_AXI3_ARLOCK <= \<const0>\;
  M_AXI3_ARPROT(2) <= \<const0>\;
  M_AXI3_ARPROT(1) <= \<const0>\;
  M_AXI3_ARPROT(0) <= \<const0>\;
  M_AXI3_ARQOS(3) <= \<const0>\;
  M_AXI3_ARQOS(2) <= \<const0>\;
  M_AXI3_ARQOS(1) <= \<const0>\;
  M_AXI3_ARQOS(0) <= \<const0>\;
  M_AXI3_ARSIZE(2) <= \<const0>\;
  M_AXI3_ARSIZE(1) <= \<const0>\;
  M_AXI3_ARSIZE(0) <= \<const0>\;
  M_AXI3_ARSNOOP(3) <= \<const0>\;
  M_AXI3_ARSNOOP(2) <= \<const0>\;
  M_AXI3_ARSNOOP(1) <= \<const0>\;
  M_AXI3_ARSNOOP(0) <= \<const0>\;
  M_AXI3_ARUSER(0) <= \<const0>\;
  M_AXI3_ARVALID <= \<const0>\;
  M_AXI3_AWADDR(31) <= \<const0>\;
  M_AXI3_AWADDR(30) <= \<const0>\;
  M_AXI3_AWADDR(29) <= \<const0>\;
  M_AXI3_AWADDR(28) <= \<const0>\;
  M_AXI3_AWADDR(27) <= \<const0>\;
  M_AXI3_AWADDR(26) <= \<const0>\;
  M_AXI3_AWADDR(25) <= \<const0>\;
  M_AXI3_AWADDR(24) <= \<const0>\;
  M_AXI3_AWADDR(23) <= \<const0>\;
  M_AXI3_AWADDR(22) <= \<const0>\;
  M_AXI3_AWADDR(21) <= \<const0>\;
  M_AXI3_AWADDR(20) <= \<const0>\;
  M_AXI3_AWADDR(19) <= \<const0>\;
  M_AXI3_AWADDR(18) <= \<const0>\;
  M_AXI3_AWADDR(17) <= \<const0>\;
  M_AXI3_AWADDR(16) <= \<const0>\;
  M_AXI3_AWADDR(15) <= \<const0>\;
  M_AXI3_AWADDR(14) <= \<const0>\;
  M_AXI3_AWADDR(13) <= \<const0>\;
  M_AXI3_AWADDR(12) <= \<const0>\;
  M_AXI3_AWADDR(11) <= \<const0>\;
  M_AXI3_AWADDR(10) <= \<const0>\;
  M_AXI3_AWADDR(9) <= \<const0>\;
  M_AXI3_AWADDR(8) <= \<const0>\;
  M_AXI3_AWADDR(7) <= \<const0>\;
  M_AXI3_AWADDR(6) <= \<const0>\;
  M_AXI3_AWADDR(5) <= \<const0>\;
  M_AXI3_AWADDR(4) <= \<const0>\;
  M_AXI3_AWADDR(3) <= \<const0>\;
  M_AXI3_AWADDR(2) <= \<const0>\;
  M_AXI3_AWADDR(1) <= \<const0>\;
  M_AXI3_AWADDR(0) <= \<const0>\;
  M_AXI3_AWBAR(1) <= \<const0>\;
  M_AXI3_AWBAR(0) <= \<const0>\;
  M_AXI3_AWBURST(1) <= \<const0>\;
  M_AXI3_AWBURST(0) <= \<const0>\;
  M_AXI3_AWCACHE(3) <= \<const0>\;
  M_AXI3_AWCACHE(2) <= \<const0>\;
  M_AXI3_AWCACHE(1) <= \<const0>\;
  M_AXI3_AWCACHE(0) <= \<const0>\;
  M_AXI3_AWDOMAIN(1) <= \<const0>\;
  M_AXI3_AWDOMAIN(0) <= \<const0>\;
  M_AXI3_AWID(0) <= \<const0>\;
  M_AXI3_AWLEN(7) <= \<const0>\;
  M_AXI3_AWLEN(6) <= \<const0>\;
  M_AXI3_AWLEN(5) <= \<const0>\;
  M_AXI3_AWLEN(4) <= \<const0>\;
  M_AXI3_AWLEN(3) <= \<const0>\;
  M_AXI3_AWLEN(2) <= \<const0>\;
  M_AXI3_AWLEN(1) <= \<const0>\;
  M_AXI3_AWLEN(0) <= \<const0>\;
  M_AXI3_AWLOCK <= \<const0>\;
  M_AXI3_AWPROT(2) <= \<const0>\;
  M_AXI3_AWPROT(1) <= \<const0>\;
  M_AXI3_AWPROT(0) <= \<const0>\;
  M_AXI3_AWQOS(3) <= \<const0>\;
  M_AXI3_AWQOS(2) <= \<const0>\;
  M_AXI3_AWQOS(1) <= \<const0>\;
  M_AXI3_AWQOS(0) <= \<const0>\;
  M_AXI3_AWSIZE(2) <= \<const0>\;
  M_AXI3_AWSIZE(1) <= \<const0>\;
  M_AXI3_AWSIZE(0) <= \<const0>\;
  M_AXI3_AWSNOOP(2) <= \<const0>\;
  M_AXI3_AWSNOOP(1) <= \<const0>\;
  M_AXI3_AWSNOOP(0) <= \<const0>\;
  M_AXI3_AWUSER(0) <= \<const0>\;
  M_AXI3_AWVALID <= \<const0>\;
  M_AXI3_BREADY <= \<const0>\;
  M_AXI3_CDDATA(31) <= \<const0>\;
  M_AXI3_CDDATA(30) <= \<const0>\;
  M_AXI3_CDDATA(29) <= \<const0>\;
  M_AXI3_CDDATA(28) <= \<const0>\;
  M_AXI3_CDDATA(27) <= \<const0>\;
  M_AXI3_CDDATA(26) <= \<const0>\;
  M_AXI3_CDDATA(25) <= \<const0>\;
  M_AXI3_CDDATA(24) <= \<const0>\;
  M_AXI3_CDDATA(23) <= \<const0>\;
  M_AXI3_CDDATA(22) <= \<const0>\;
  M_AXI3_CDDATA(21) <= \<const0>\;
  M_AXI3_CDDATA(20) <= \<const0>\;
  M_AXI3_CDDATA(19) <= \<const0>\;
  M_AXI3_CDDATA(18) <= \<const0>\;
  M_AXI3_CDDATA(17) <= \<const0>\;
  M_AXI3_CDDATA(16) <= \<const0>\;
  M_AXI3_CDDATA(15) <= \<const0>\;
  M_AXI3_CDDATA(14) <= \<const0>\;
  M_AXI3_CDDATA(13) <= \<const0>\;
  M_AXI3_CDDATA(12) <= \<const0>\;
  M_AXI3_CDDATA(11) <= \<const0>\;
  M_AXI3_CDDATA(10) <= \<const0>\;
  M_AXI3_CDDATA(9) <= \<const0>\;
  M_AXI3_CDDATA(8) <= \<const0>\;
  M_AXI3_CDDATA(7) <= \<const0>\;
  M_AXI3_CDDATA(6) <= \<const0>\;
  M_AXI3_CDDATA(5) <= \<const0>\;
  M_AXI3_CDDATA(4) <= \<const0>\;
  M_AXI3_CDDATA(3) <= \<const0>\;
  M_AXI3_CDDATA(2) <= \<const0>\;
  M_AXI3_CDDATA(1) <= \<const0>\;
  M_AXI3_CDDATA(0) <= \<const0>\;
  M_AXI3_CDLAST <= \<const0>\;
  M_AXI3_CDVALID <= \<const0>\;
  M_AXI3_CRRESP(4) <= \<const0>\;
  M_AXI3_CRRESP(3) <= \<const0>\;
  M_AXI3_CRRESP(2) <= \<const0>\;
  M_AXI3_CRRESP(1) <= \<const0>\;
  M_AXI3_CRRESP(0) <= \<const0>\;
  M_AXI3_CRVALID <= \<const0>\;
  M_AXI3_RACK <= \<const0>\;
  M_AXI3_RREADY <= \<const0>\;
  M_AXI3_WACK <= \<const0>\;
  M_AXI3_WDATA(31) <= \<const0>\;
  M_AXI3_WDATA(30) <= \<const0>\;
  M_AXI3_WDATA(29) <= \<const0>\;
  M_AXI3_WDATA(28) <= \<const0>\;
  M_AXI3_WDATA(27) <= \<const0>\;
  M_AXI3_WDATA(26) <= \<const0>\;
  M_AXI3_WDATA(25) <= \<const0>\;
  M_AXI3_WDATA(24) <= \<const0>\;
  M_AXI3_WDATA(23) <= \<const0>\;
  M_AXI3_WDATA(22) <= \<const0>\;
  M_AXI3_WDATA(21) <= \<const0>\;
  M_AXI3_WDATA(20) <= \<const0>\;
  M_AXI3_WDATA(19) <= \<const0>\;
  M_AXI3_WDATA(18) <= \<const0>\;
  M_AXI3_WDATA(17) <= \<const0>\;
  M_AXI3_WDATA(16) <= \<const0>\;
  M_AXI3_WDATA(15) <= \<const0>\;
  M_AXI3_WDATA(14) <= \<const0>\;
  M_AXI3_WDATA(13) <= \<const0>\;
  M_AXI3_WDATA(12) <= \<const0>\;
  M_AXI3_WDATA(11) <= \<const0>\;
  M_AXI3_WDATA(10) <= \<const0>\;
  M_AXI3_WDATA(9) <= \<const0>\;
  M_AXI3_WDATA(8) <= \<const0>\;
  M_AXI3_WDATA(7) <= \<const0>\;
  M_AXI3_WDATA(6) <= \<const0>\;
  M_AXI3_WDATA(5) <= \<const0>\;
  M_AXI3_WDATA(4) <= \<const0>\;
  M_AXI3_WDATA(3) <= \<const0>\;
  M_AXI3_WDATA(2) <= \<const0>\;
  M_AXI3_WDATA(1) <= \<const0>\;
  M_AXI3_WDATA(0) <= \<const0>\;
  M_AXI3_WLAST <= \<const0>\;
  M_AXI3_WSTRB(3) <= \<const0>\;
  M_AXI3_WSTRB(2) <= \<const0>\;
  M_AXI3_WSTRB(1) <= \<const0>\;
  M_AXI3_WSTRB(0) <= \<const0>\;
  M_AXI3_WUSER(0) <= \<const0>\;
  M_AXI3_WVALID <= \<const0>\;
  M_AXIS1_TDATA(31) <= \<const0>\;
  M_AXIS1_TDATA(30) <= \<const0>\;
  M_AXIS1_TDATA(29) <= \<const0>\;
  M_AXIS1_TDATA(28) <= \<const0>\;
  M_AXIS1_TDATA(27) <= \<const0>\;
  M_AXIS1_TDATA(26) <= \<const0>\;
  M_AXIS1_TDATA(25) <= \<const0>\;
  M_AXIS1_TDATA(24) <= \<const0>\;
  M_AXIS1_TDATA(23) <= \<const0>\;
  M_AXIS1_TDATA(22) <= \<const0>\;
  M_AXIS1_TDATA(21) <= \<const0>\;
  M_AXIS1_TDATA(20) <= \<const0>\;
  M_AXIS1_TDATA(19) <= \<const0>\;
  M_AXIS1_TDATA(18) <= \<const0>\;
  M_AXIS1_TDATA(17) <= \<const0>\;
  M_AXIS1_TDATA(16) <= \<const0>\;
  M_AXIS1_TDATA(15) <= \<const0>\;
  M_AXIS1_TDATA(14) <= \<const0>\;
  M_AXIS1_TDATA(13) <= \<const0>\;
  M_AXIS1_TDATA(12) <= \<const0>\;
  M_AXIS1_TDATA(11) <= \<const0>\;
  M_AXIS1_TDATA(10) <= \<const0>\;
  M_AXIS1_TDATA(9) <= \<const0>\;
  M_AXIS1_TDATA(8) <= \<const0>\;
  M_AXIS1_TDATA(7) <= \<const0>\;
  M_AXIS1_TDATA(6) <= \<const0>\;
  M_AXIS1_TDATA(5) <= \<const0>\;
  M_AXIS1_TDATA(4) <= \<const0>\;
  M_AXIS1_TDATA(3) <= \<const0>\;
  M_AXIS1_TDATA(2) <= \<const0>\;
  M_AXIS1_TDATA(1) <= \<const0>\;
  M_AXIS1_TDATA(0) <= \<const0>\;
  M_AXIS1_TDEST(0) <= \<const0>\;
  M_AXIS1_TID(0) <= \<const0>\;
  M_AXIS1_TKEEP(3) <= \<const0>\;
  M_AXIS1_TKEEP(2) <= \<const0>\;
  M_AXIS1_TKEEP(1) <= \<const0>\;
  M_AXIS1_TKEEP(0) <= \<const0>\;
  M_AXIS1_TLAST <= \<const0>\;
  M_AXIS1_TSTRB(3) <= \<const0>\;
  M_AXIS1_TSTRB(2) <= \<const0>\;
  M_AXIS1_TSTRB(1) <= \<const0>\;
  M_AXIS1_TSTRB(0) <= \<const0>\;
  M_AXIS1_TUSER(0) <= \<const0>\;
  M_AXIS1_TVALID <= \<const0>\;
  M_AXIS2_TDATA(31) <= \<const0>\;
  M_AXIS2_TDATA(30) <= \<const0>\;
  M_AXIS2_TDATA(29) <= \<const0>\;
  M_AXIS2_TDATA(28) <= \<const0>\;
  M_AXIS2_TDATA(27) <= \<const0>\;
  M_AXIS2_TDATA(26) <= \<const0>\;
  M_AXIS2_TDATA(25) <= \<const0>\;
  M_AXIS2_TDATA(24) <= \<const0>\;
  M_AXIS2_TDATA(23) <= \<const0>\;
  M_AXIS2_TDATA(22) <= \<const0>\;
  M_AXIS2_TDATA(21) <= \<const0>\;
  M_AXIS2_TDATA(20) <= \<const0>\;
  M_AXIS2_TDATA(19) <= \<const0>\;
  M_AXIS2_TDATA(18) <= \<const0>\;
  M_AXIS2_TDATA(17) <= \<const0>\;
  M_AXIS2_TDATA(16) <= \<const0>\;
  M_AXIS2_TDATA(15) <= \<const0>\;
  M_AXIS2_TDATA(14) <= \<const0>\;
  M_AXIS2_TDATA(13) <= \<const0>\;
  M_AXIS2_TDATA(12) <= \<const0>\;
  M_AXIS2_TDATA(11) <= \<const0>\;
  M_AXIS2_TDATA(10) <= \<const0>\;
  M_AXIS2_TDATA(9) <= \<const0>\;
  M_AXIS2_TDATA(8) <= \<const0>\;
  M_AXIS2_TDATA(7) <= \<const0>\;
  M_AXIS2_TDATA(6) <= \<const0>\;
  M_AXIS2_TDATA(5) <= \<const0>\;
  M_AXIS2_TDATA(4) <= \<const0>\;
  M_AXIS2_TDATA(3) <= \<const0>\;
  M_AXIS2_TDATA(2) <= \<const0>\;
  M_AXIS2_TDATA(1) <= \<const0>\;
  M_AXIS2_TDATA(0) <= \<const0>\;
  M_AXIS2_TDEST(0) <= \<const0>\;
  M_AXIS2_TID(0) <= \<const0>\;
  M_AXIS2_TKEEP(3) <= \<const0>\;
  M_AXIS2_TKEEP(2) <= \<const0>\;
  M_AXIS2_TKEEP(1) <= \<const0>\;
  M_AXIS2_TKEEP(0) <= \<const0>\;
  M_AXIS2_TLAST <= \<const0>\;
  M_AXIS2_TSTRB(3) <= \<const0>\;
  M_AXIS2_TSTRB(2) <= \<const0>\;
  M_AXIS2_TSTRB(1) <= \<const0>\;
  M_AXIS2_TSTRB(0) <= \<const0>\;
  M_AXIS2_TUSER(0) <= \<const0>\;
  M_AXIS2_TVALID <= \<const0>\;
  M_AXIS3_TDATA(31) <= \<const0>\;
  M_AXIS3_TDATA(30) <= \<const0>\;
  M_AXIS3_TDATA(29) <= \<const0>\;
  M_AXIS3_TDATA(28) <= \<const0>\;
  M_AXIS3_TDATA(27) <= \<const0>\;
  M_AXIS3_TDATA(26) <= \<const0>\;
  M_AXIS3_TDATA(25) <= \<const0>\;
  M_AXIS3_TDATA(24) <= \<const0>\;
  M_AXIS3_TDATA(23) <= \<const0>\;
  M_AXIS3_TDATA(22) <= \<const0>\;
  M_AXIS3_TDATA(21) <= \<const0>\;
  M_AXIS3_TDATA(20) <= \<const0>\;
  M_AXIS3_TDATA(19) <= \<const0>\;
  M_AXIS3_TDATA(18) <= \<const0>\;
  M_AXIS3_TDATA(17) <= \<const0>\;
  M_AXIS3_TDATA(16) <= \<const0>\;
  M_AXIS3_TDATA(15) <= \<const0>\;
  M_AXIS3_TDATA(14) <= \<const0>\;
  M_AXIS3_TDATA(13) <= \<const0>\;
  M_AXIS3_TDATA(12) <= \<const0>\;
  M_AXIS3_TDATA(11) <= \<const0>\;
  M_AXIS3_TDATA(10) <= \<const0>\;
  M_AXIS3_TDATA(9) <= \<const0>\;
  M_AXIS3_TDATA(8) <= \<const0>\;
  M_AXIS3_TDATA(7) <= \<const0>\;
  M_AXIS3_TDATA(6) <= \<const0>\;
  M_AXIS3_TDATA(5) <= \<const0>\;
  M_AXIS3_TDATA(4) <= \<const0>\;
  M_AXIS3_TDATA(3) <= \<const0>\;
  M_AXIS3_TDATA(2) <= \<const0>\;
  M_AXIS3_TDATA(1) <= \<const0>\;
  M_AXIS3_TDATA(0) <= \<const0>\;
  M_AXIS3_TDEST(0) <= \<const0>\;
  M_AXIS3_TID(0) <= \<const0>\;
  M_AXIS3_TKEEP(3) <= \<const0>\;
  M_AXIS3_TKEEP(2) <= \<const0>\;
  M_AXIS3_TKEEP(1) <= \<const0>\;
  M_AXIS3_TKEEP(0) <= \<const0>\;
  M_AXIS3_TLAST <= \<const0>\;
  M_AXIS3_TSTRB(3) <= \<const0>\;
  M_AXIS3_TSTRB(2) <= \<const0>\;
  M_AXIS3_TSTRB(1) <= \<const0>\;
  M_AXIS3_TSTRB(0) <= \<const0>\;
  M_AXIS3_TUSER(0) <= \<const0>\;
  M_AXIS3_TVALID <= \<const0>\;
  M_AXIS_TDATA(31) <= \<const0>\;
  M_AXIS_TDATA(30) <= \<const0>\;
  M_AXIS_TDATA(29) <= \<const0>\;
  M_AXIS_TDATA(28) <= \<const0>\;
  M_AXIS_TDATA(27) <= \<const0>\;
  M_AXIS_TDATA(26) <= \<const0>\;
  M_AXIS_TDATA(25) <= \<const0>\;
  M_AXIS_TDATA(24) <= \<const0>\;
  M_AXIS_TDATA(23) <= \<const0>\;
  M_AXIS_TDATA(22) <= \<const0>\;
  M_AXIS_TDATA(21) <= \<const0>\;
  M_AXIS_TDATA(20) <= \<const0>\;
  M_AXIS_TDATA(19) <= \<const0>\;
  M_AXIS_TDATA(18) <= \<const0>\;
  M_AXIS_TDATA(17) <= \<const0>\;
  M_AXIS_TDATA(16) <= \<const0>\;
  M_AXIS_TDATA(15) <= \<const0>\;
  M_AXIS_TDATA(14) <= \<const0>\;
  M_AXIS_TDATA(13) <= \<const0>\;
  M_AXIS_TDATA(12) <= \<const0>\;
  M_AXIS_TDATA(11) <= \<const0>\;
  M_AXIS_TDATA(10) <= \<const0>\;
  M_AXIS_TDATA(9) <= \<const0>\;
  M_AXIS_TDATA(8) <= \<const0>\;
  M_AXIS_TDATA(7) <= \<const0>\;
  M_AXIS_TDATA(6) <= \<const0>\;
  M_AXIS_TDATA(5) <= \<const0>\;
  M_AXIS_TDATA(4) <= \<const0>\;
  M_AXIS_TDATA(3) <= \<const0>\;
  M_AXIS_TDATA(2) <= \<const0>\;
  M_AXIS_TDATA(1) <= \<const0>\;
  M_AXIS_TDATA(0) <= \<const0>\;
  M_AXIS_TDATA_Test(31) <= \<const0>\;
  M_AXIS_TDATA_Test(30) <= \<const0>\;
  M_AXIS_TDATA_Test(29) <= \<const0>\;
  M_AXIS_TDATA_Test(28) <= \<const0>\;
  M_AXIS_TDATA_Test(27) <= \<const0>\;
  M_AXIS_TDATA_Test(26) <= \<const0>\;
  M_AXIS_TDATA_Test(25) <= \<const0>\;
  M_AXIS_TDATA_Test(24) <= \<const0>\;
  M_AXIS_TDATA_Test(23) <= \<const0>\;
  M_AXIS_TDATA_Test(22) <= \<const0>\;
  M_AXIS_TDATA_Test(21) <= \<const0>\;
  M_AXIS_TDATA_Test(20) <= \<const0>\;
  M_AXIS_TDATA_Test(19) <= \<const0>\;
  M_AXIS_TDATA_Test(18) <= \<const0>\;
  M_AXIS_TDATA_Test(17) <= \<const0>\;
  M_AXIS_TDATA_Test(16) <= \<const0>\;
  M_AXIS_TDATA_Test(15) <= \<const0>\;
  M_AXIS_TDATA_Test(14) <= \<const0>\;
  M_AXIS_TDATA_Test(13) <= \<const0>\;
  M_AXIS_TDATA_Test(12) <= \<const0>\;
  M_AXIS_TDATA_Test(11) <= \<const0>\;
  M_AXIS_TDATA_Test(10) <= \<const0>\;
  M_AXIS_TDATA_Test(9) <= \<const0>\;
  M_AXIS_TDATA_Test(8) <= \<const0>\;
  M_AXIS_TDATA_Test(7) <= \<const0>\;
  M_AXIS_TDATA_Test(6) <= \<const0>\;
  M_AXIS_TDATA_Test(5) <= \<const0>\;
  M_AXIS_TDATA_Test(4) <= \<const0>\;
  M_AXIS_TDATA_Test(3) <= \<const0>\;
  M_AXIS_TDATA_Test(2) <= \<const0>\;
  M_AXIS_TDATA_Test(1) <= \<const0>\;
  M_AXIS_TDATA_Test(0) <= \<const0>\;
  M_AXIS_TDEST(0) <= \<const0>\;
  M_AXIS_TID(0) <= \<const0>\;
  M_AXIS_TKEEP(3) <= \<const0>\;
  M_AXIS_TKEEP(2) <= \<const0>\;
  M_AXIS_TKEEP(1) <= \<const0>\;
  M_AXIS_TKEEP(0) <= \<const0>\;
  M_AXIS_TLAST <= \<const0>\;
  M_AXIS_TLAST_Test <= \<const0>\;
  M_AXIS_TSTRB(3) <= \<const0>\;
  M_AXIS_TSTRB(2) <= \<const0>\;
  M_AXIS_TSTRB(1) <= \<const0>\;
  M_AXIS_TSTRB(0) <= \<const0>\;
  M_AXIS_TUSER(0) <= \<const0>\;
  M_AXIS_TVALID <= \<const0>\;
  M_AXIS_TVALID_Test <= \<const0>\;
  M_AXI_ACREADY <= \<const0>\;
  M_AXI_ARBAR(1) <= \<const0>\;
  M_AXI_ARBAR(0) <= \<const0>\;
  M_AXI_ARDOMAIN(1) <= \<const0>\;
  M_AXI_ARDOMAIN(0) <= \<const0>\;
  M_AXI_ARSNOOP(3) <= \<const0>\;
  M_AXI_ARSNOOP(2) <= \<const0>\;
  M_AXI_ARSNOOP(1) <= \<const0>\;
  M_AXI_ARSNOOP(0) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const0>\;
  M_AXI_AWBAR(1) <= \<const0>\;
  M_AXI_AWBAR(0) <= \<const0>\;
  M_AXI_AWDOMAIN(1) <= \<const0>\;
  M_AXI_AWDOMAIN(0) <= \<const0>\;
  M_AXI_AWSNOOP(2) <= \<const0>\;
  M_AXI_AWSNOOP(1) <= \<const0>\;
  M_AXI_AWSNOOP(0) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const0>\;
  M_AXI_CDDATA(31) <= \<const0>\;
  M_AXI_CDDATA(30) <= \<const0>\;
  M_AXI_CDDATA(29) <= \<const0>\;
  M_AXI_CDDATA(28) <= \<const0>\;
  M_AXI_CDDATA(27) <= \<const0>\;
  M_AXI_CDDATA(26) <= \<const0>\;
  M_AXI_CDDATA(25) <= \<const0>\;
  M_AXI_CDDATA(24) <= \<const0>\;
  M_AXI_CDDATA(23) <= \<const0>\;
  M_AXI_CDDATA(22) <= \<const0>\;
  M_AXI_CDDATA(21) <= \<const0>\;
  M_AXI_CDDATA(20) <= \<const0>\;
  M_AXI_CDDATA(19) <= \<const0>\;
  M_AXI_CDDATA(18) <= \<const0>\;
  M_AXI_CDDATA(17) <= \<const0>\;
  M_AXI_CDDATA(16) <= \<const0>\;
  M_AXI_CDDATA(15) <= \<const0>\;
  M_AXI_CDDATA(14) <= \<const0>\;
  M_AXI_CDDATA(13) <= \<const0>\;
  M_AXI_CDDATA(12) <= \<const0>\;
  M_AXI_CDDATA(11) <= \<const0>\;
  M_AXI_CDDATA(10) <= \<const0>\;
  M_AXI_CDDATA(9) <= \<const0>\;
  M_AXI_CDDATA(8) <= \<const0>\;
  M_AXI_CDDATA(7) <= \<const0>\;
  M_AXI_CDDATA(6) <= \<const0>\;
  M_AXI_CDDATA(5) <= \<const0>\;
  M_AXI_CDDATA(4) <= \<const0>\;
  M_AXI_CDDATA(3) <= \<const0>\;
  M_AXI_CDDATA(2) <= \<const0>\;
  M_AXI_CDDATA(1) <= \<const0>\;
  M_AXI_CDDATA(0) <= \<const0>\;
  M_AXI_CDLAST <= \<const0>\;
  M_AXI_CDVALID <= \<const0>\;
  M_AXI_CRRESP(4) <= \<const0>\;
  M_AXI_CRRESP(3) <= \<const0>\;
  M_AXI_CRRESP(2) <= \<const0>\;
  M_AXI_CRRESP(1) <= \<const0>\;
  M_AXI_CRRESP(0) <= \<const0>\;
  M_AXI_CRVALID <= \<const0>\;
  M_AXI_RACK <= \<const0>\;
  M_AXI_WACK <= \<const0>\;
  M_AXI_WUSER(0) <= \<const0>\;
  M_BRAM1_Addr(0) <= \<const0>\;
  M_BRAM1_Addr(1) <= \<const0>\;
  M_BRAM1_Addr(2) <= \<const0>\;
  M_BRAM1_Addr(3) <= \<const0>\;
  M_BRAM1_Addr(4) <= \<const0>\;
  M_BRAM1_Addr(5) <= \<const0>\;
  M_BRAM1_Addr(6) <= \<const0>\;
  M_BRAM1_Addr(7) <= \<const0>\;
  M_BRAM1_Addr(8) <= \<const0>\;
  M_BRAM1_Addr(9) <= \<const0>\;
  M_BRAM1_Addr(10) <= \<const0>\;
  M_BRAM1_Addr(11) <= \<const0>\;
  M_BRAM1_Addr(12) <= \<const0>\;
  M_BRAM1_Addr(13) <= \<const0>\;
  M_BRAM1_Addr(14) <= \<const0>\;
  M_BRAM1_Addr(15) <= \<const0>\;
  M_BRAM1_Addr(16) <= \<const0>\;
  M_BRAM1_Addr(17) <= \<const0>\;
  M_BRAM1_Addr(18) <= \<const0>\;
  M_BRAM1_Addr(19) <= \<const0>\;
  M_BRAM1_Addr(20) <= \<const0>\;
  M_BRAM1_Addr(21) <= \<const0>\;
  M_BRAM1_Addr(22) <= \<const0>\;
  M_BRAM1_Addr(23) <= \<const0>\;
  M_BRAM1_Addr(24) <= \<const0>\;
  M_BRAM1_Addr(25) <= \<const0>\;
  M_BRAM1_Addr(26) <= \<const0>\;
  M_BRAM1_Addr(27) <= \<const0>\;
  M_BRAM1_Addr(28) <= \<const0>\;
  M_BRAM1_Addr(29) <= \<const0>\;
  M_BRAM1_Addr(30) <= \<const0>\;
  M_BRAM1_Addr(31) <= \<const0>\;
  M_BRAM1_Clk <= \<const0>\;
  M_BRAM1_Dout(0) <= \<const0>\;
  M_BRAM1_Dout(1) <= \<const0>\;
  M_BRAM1_Dout(2) <= \<const0>\;
  M_BRAM1_Dout(3) <= \<const0>\;
  M_BRAM1_Dout(4) <= \<const0>\;
  M_BRAM1_Dout(5) <= \<const0>\;
  M_BRAM1_Dout(6) <= \<const0>\;
  M_BRAM1_Dout(7) <= \<const0>\;
  M_BRAM1_Dout(8) <= \<const0>\;
  M_BRAM1_Dout(9) <= \<const0>\;
  M_BRAM1_Dout(10) <= \<const0>\;
  M_BRAM1_Dout(11) <= \<const0>\;
  M_BRAM1_Dout(12) <= \<const0>\;
  M_BRAM1_Dout(13) <= \<const0>\;
  M_BRAM1_Dout(14) <= \<const0>\;
  M_BRAM1_Dout(15) <= \<const0>\;
  M_BRAM1_Dout(16) <= \<const0>\;
  M_BRAM1_Dout(17) <= \<const0>\;
  M_BRAM1_Dout(18) <= \<const0>\;
  M_BRAM1_Dout(19) <= \<const0>\;
  M_BRAM1_Dout(20) <= \<const0>\;
  M_BRAM1_Dout(21) <= \<const0>\;
  M_BRAM1_Dout(22) <= \<const0>\;
  M_BRAM1_Dout(23) <= \<const0>\;
  M_BRAM1_Dout(24) <= \<const0>\;
  M_BRAM1_Dout(25) <= \<const0>\;
  M_BRAM1_Dout(26) <= \<const0>\;
  M_BRAM1_Dout(27) <= \<const0>\;
  M_BRAM1_Dout(28) <= \<const0>\;
  M_BRAM1_Dout(29) <= \<const0>\;
  M_BRAM1_Dout(30) <= \<const0>\;
  M_BRAM1_Dout(31) <= \<const0>\;
  M_BRAM1_EN <= \<const0>\;
  M_BRAM1_Rst <= \<const0>\;
  M_BRAM1_WE(0) <= \<const0>\;
  M_BRAM1_WE(1) <= \<const0>\;
  M_BRAM1_WE(2) <= \<const0>\;
  M_BRAM1_WE(3) <= \<const0>\;
  M_BRAM_MisMatch <= \<const0>\;
  M_IRQ <= \<const0>\;
  M_IRQ_Address(0) <= \<const0>\;
  M_IRQ_Address(1) <= \<const0>\;
  M_IRQ_Address(2) <= \<const0>\;
  M_IRQ_Address(3) <= \<const0>\;
  M_IRQ_Address(4) <= \<const0>\;
  M_IRQ_Address(5) <= \<const0>\;
  M_IRQ_Address(6) <= \<const0>\;
  M_IRQ_Address(7) <= \<const0>\;
  M_IRQ_Address(8) <= \<const0>\;
  M_IRQ_Address(9) <= \<const0>\;
  M_IRQ_Address(10) <= \<const0>\;
  M_IRQ_Address(11) <= \<const0>\;
  M_IRQ_Address(12) <= \<const0>\;
  M_IRQ_Address(13) <= \<const0>\;
  M_IRQ_Address(14) <= \<const0>\;
  M_IRQ_Address(15) <= \<const0>\;
  M_IRQ_Address(16) <= \<const0>\;
  M_IRQ_Address(17) <= \<const0>\;
  M_IRQ_Address(18) <= \<const0>\;
  M_IRQ_Address(19) <= \<const0>\;
  M_IRQ_Address(20) <= \<const0>\;
  M_IRQ_Address(21) <= \<const0>\;
  M_IRQ_Address(22) <= \<const0>\;
  M_IRQ_Address(23) <= \<const0>\;
  M_IRQ_Address(24) <= \<const0>\;
  M_IRQ_Address(25) <= \<const0>\;
  M_IRQ_Address(26) <= \<const0>\;
  M_IRQ_Address(27) <= \<const0>\;
  M_IRQ_Address(28) <= \<const0>\;
  M_IRQ_Address(29) <= \<const0>\;
  M_IRQ_Address(30) <= \<const0>\;
  M_IRQ_Address(31) <= \<const0>\;
  S_AXI1_ACADDR(31) <= \<const0>\;
  S_AXI1_ACADDR(30) <= \<const0>\;
  S_AXI1_ACADDR(29) <= \<const0>\;
  S_AXI1_ACADDR(28) <= \<const0>\;
  S_AXI1_ACADDR(27) <= \<const0>\;
  S_AXI1_ACADDR(26) <= \<const0>\;
  S_AXI1_ACADDR(25) <= \<const0>\;
  S_AXI1_ACADDR(24) <= \<const0>\;
  S_AXI1_ACADDR(23) <= \<const0>\;
  S_AXI1_ACADDR(22) <= \<const0>\;
  S_AXI1_ACADDR(21) <= \<const0>\;
  S_AXI1_ACADDR(20) <= \<const0>\;
  S_AXI1_ACADDR(19) <= \<const0>\;
  S_AXI1_ACADDR(18) <= \<const0>\;
  S_AXI1_ACADDR(17) <= \<const0>\;
  S_AXI1_ACADDR(16) <= \<const0>\;
  S_AXI1_ACADDR(15) <= \<const0>\;
  S_AXI1_ACADDR(14) <= \<const0>\;
  S_AXI1_ACADDR(13) <= \<const0>\;
  S_AXI1_ACADDR(12) <= \<const0>\;
  S_AXI1_ACADDR(11) <= \<const0>\;
  S_AXI1_ACADDR(10) <= \<const0>\;
  S_AXI1_ACADDR(9) <= \<const0>\;
  S_AXI1_ACADDR(8) <= \<const0>\;
  S_AXI1_ACADDR(7) <= \<const0>\;
  S_AXI1_ACADDR(6) <= \<const0>\;
  S_AXI1_ACADDR(5) <= \<const0>\;
  S_AXI1_ACADDR(4) <= \<const0>\;
  S_AXI1_ACADDR(3) <= \<const0>\;
  S_AXI1_ACADDR(2) <= \<const0>\;
  S_AXI1_ACADDR(1) <= \<const0>\;
  S_AXI1_ACADDR(0) <= \<const0>\;
  S_AXI1_ACPROT(2) <= \<const0>\;
  S_AXI1_ACPROT(1) <= \<const0>\;
  S_AXI1_ACPROT(0) <= \<const0>\;
  S_AXI1_ACSNOOP(3) <= \<const0>\;
  S_AXI1_ACSNOOP(2) <= \<const0>\;
  S_AXI1_ACSNOOP(1) <= \<const0>\;
  S_AXI1_ACSNOOP(0) <= \<const0>\;
  S_AXI1_ACVALID <= \<const0>\;
  S_AXI1_ARREADY <= \^m_axi_arready\;
  S_AXI1_AWREADY <= \^m_axi_awready\;
  S_AXI1_BID(0) <= \^m_axi_bid\(0);
  S_AXI1_BRESP(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  S_AXI1_BUSER(0) <= \<const0>\;
  S_AXI1_BVALID <= \^m_axi_bvalid\;
  S_AXI1_CDREADY <= \<const0>\;
  S_AXI1_CRREADY <= \<const0>\;
  S_AXI1_RDATA(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  S_AXI1_RID(0) <= \^m_axi_rid\(0);
  S_AXI1_RLAST <= \^m_axi_rlast\;
  S_AXI1_RRESP(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  S_AXI1_RUSER(0) <= \<const0>\;
  S_AXI1_RVALID <= \^m_axi_rvalid\;
  S_AXI1_WREADY <= \^m_axi_wready\;
  S_AXI2_ACADDR(31) <= \<const0>\;
  S_AXI2_ACADDR(30) <= \<const0>\;
  S_AXI2_ACADDR(29) <= \<const0>\;
  S_AXI2_ACADDR(28) <= \<const0>\;
  S_AXI2_ACADDR(27) <= \<const0>\;
  S_AXI2_ACADDR(26) <= \<const0>\;
  S_AXI2_ACADDR(25) <= \<const0>\;
  S_AXI2_ACADDR(24) <= \<const0>\;
  S_AXI2_ACADDR(23) <= \<const0>\;
  S_AXI2_ACADDR(22) <= \<const0>\;
  S_AXI2_ACADDR(21) <= \<const0>\;
  S_AXI2_ACADDR(20) <= \<const0>\;
  S_AXI2_ACADDR(19) <= \<const0>\;
  S_AXI2_ACADDR(18) <= \<const0>\;
  S_AXI2_ACADDR(17) <= \<const0>\;
  S_AXI2_ACADDR(16) <= \<const0>\;
  S_AXI2_ACADDR(15) <= \<const0>\;
  S_AXI2_ACADDR(14) <= \<const0>\;
  S_AXI2_ACADDR(13) <= \<const0>\;
  S_AXI2_ACADDR(12) <= \<const0>\;
  S_AXI2_ACADDR(11) <= \<const0>\;
  S_AXI2_ACADDR(10) <= \<const0>\;
  S_AXI2_ACADDR(9) <= \<const0>\;
  S_AXI2_ACADDR(8) <= \<const0>\;
  S_AXI2_ACADDR(7) <= \<const0>\;
  S_AXI2_ACADDR(6) <= \<const0>\;
  S_AXI2_ACADDR(5) <= \<const0>\;
  S_AXI2_ACADDR(4) <= \<const0>\;
  S_AXI2_ACADDR(3) <= \<const0>\;
  S_AXI2_ACADDR(2) <= \<const0>\;
  S_AXI2_ACADDR(1) <= \<const0>\;
  S_AXI2_ACADDR(0) <= \<const0>\;
  S_AXI2_ACPROT(2) <= \<const0>\;
  S_AXI2_ACPROT(1) <= \<const0>\;
  S_AXI2_ACPROT(0) <= \<const0>\;
  S_AXI2_ACSNOOP(3) <= \<const0>\;
  S_AXI2_ACSNOOP(2) <= \<const0>\;
  S_AXI2_ACSNOOP(1) <= \<const0>\;
  S_AXI2_ACSNOOP(0) <= \<const0>\;
  S_AXI2_ACVALID <= \<const0>\;
  S_AXI2_ARREADY <= \^m_axi_arready\;
  S_AXI2_AWREADY <= \^m_axi_awready\;
  S_AXI2_BID(0) <= \^m_axi_bid\(0);
  S_AXI2_BRESP(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  S_AXI2_BUSER(0) <= \<const0>\;
  S_AXI2_BVALID <= \^m_axi_bvalid\;
  S_AXI2_CDREADY <= \<const0>\;
  S_AXI2_CRREADY <= \<const0>\;
  S_AXI2_RDATA(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  S_AXI2_RID(0) <= \^m_axi_rid\(0);
  S_AXI2_RLAST <= \^m_axi_rlast\;
  S_AXI2_RRESP(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  S_AXI2_RUSER(0) <= \<const0>\;
  S_AXI2_RVALID <= \^m_axi_rvalid\;
  S_AXI2_WREADY <= \^m_axi_wready\;
  S_AXI3_ACADDR(31) <= \<const0>\;
  S_AXI3_ACADDR(30) <= \<const0>\;
  S_AXI3_ACADDR(29) <= \<const0>\;
  S_AXI3_ACADDR(28) <= \<const0>\;
  S_AXI3_ACADDR(27) <= \<const0>\;
  S_AXI3_ACADDR(26) <= \<const0>\;
  S_AXI3_ACADDR(25) <= \<const0>\;
  S_AXI3_ACADDR(24) <= \<const0>\;
  S_AXI3_ACADDR(23) <= \<const0>\;
  S_AXI3_ACADDR(22) <= \<const0>\;
  S_AXI3_ACADDR(21) <= \<const0>\;
  S_AXI3_ACADDR(20) <= \<const0>\;
  S_AXI3_ACADDR(19) <= \<const0>\;
  S_AXI3_ACADDR(18) <= \<const0>\;
  S_AXI3_ACADDR(17) <= \<const0>\;
  S_AXI3_ACADDR(16) <= \<const0>\;
  S_AXI3_ACADDR(15) <= \<const0>\;
  S_AXI3_ACADDR(14) <= \<const0>\;
  S_AXI3_ACADDR(13) <= \<const0>\;
  S_AXI3_ACADDR(12) <= \<const0>\;
  S_AXI3_ACADDR(11) <= \<const0>\;
  S_AXI3_ACADDR(10) <= \<const0>\;
  S_AXI3_ACADDR(9) <= \<const0>\;
  S_AXI3_ACADDR(8) <= \<const0>\;
  S_AXI3_ACADDR(7) <= \<const0>\;
  S_AXI3_ACADDR(6) <= \<const0>\;
  S_AXI3_ACADDR(5) <= \<const0>\;
  S_AXI3_ACADDR(4) <= \<const0>\;
  S_AXI3_ACADDR(3) <= \<const0>\;
  S_AXI3_ACADDR(2) <= \<const0>\;
  S_AXI3_ACADDR(1) <= \<const0>\;
  S_AXI3_ACADDR(0) <= \<const0>\;
  S_AXI3_ACPROT(2) <= \<const0>\;
  S_AXI3_ACPROT(1) <= \<const0>\;
  S_AXI3_ACPROT(0) <= \<const0>\;
  S_AXI3_ACSNOOP(3) <= \<const0>\;
  S_AXI3_ACSNOOP(2) <= \<const0>\;
  S_AXI3_ACSNOOP(1) <= \<const0>\;
  S_AXI3_ACSNOOP(0) <= \<const0>\;
  S_AXI3_ACVALID <= \<const0>\;
  S_AXI3_ARREADY <= \^m_axi_arready\;
  S_AXI3_AWREADY <= \^m_axi_awready\;
  S_AXI3_BID(0) <= \^m_axi_bid\(0);
  S_AXI3_BRESP(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  S_AXI3_BUSER(0) <= \<const0>\;
  S_AXI3_BVALID <= \^m_axi_bvalid\;
  S_AXI3_CDREADY <= \<const0>\;
  S_AXI3_CRREADY <= \<const0>\;
  S_AXI3_RDATA(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  S_AXI3_RID(0) <= \^m_axi_rid\(0);
  S_AXI3_RLAST <= \^m_axi_rlast\;
  S_AXI3_RRESP(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  S_AXI3_RUSER(0) <= \<const0>\;
  S_AXI3_RVALID <= \^m_axi_rvalid\;
  S_AXI3_WREADY <= \^m_axi_wready\;
  S_AXIS1_TREADY <= \<const0>\;
  S_AXIS2_TREADY <= \<const0>\;
  S_AXIS3_TREADY <= \<const0>\;
  S_AXIS_TREADY <= \<const0>\;
  S_AXIS_TREADY_Test <= \<const0>\;
  S_AXI_ACADDR(31) <= \<const0>\;
  S_AXI_ACADDR(30) <= \<const0>\;
  S_AXI_ACADDR(29) <= \<const0>\;
  S_AXI_ACADDR(28) <= \<const0>\;
  S_AXI_ACADDR(27) <= \<const0>\;
  S_AXI_ACADDR(26) <= \<const0>\;
  S_AXI_ACADDR(25) <= \<const0>\;
  S_AXI_ACADDR(24) <= \<const0>\;
  S_AXI_ACADDR(23) <= \<const0>\;
  S_AXI_ACADDR(22) <= \<const0>\;
  S_AXI_ACADDR(21) <= \<const0>\;
  S_AXI_ACADDR(20) <= \<const0>\;
  S_AXI_ACADDR(19) <= \<const0>\;
  S_AXI_ACADDR(18) <= \<const0>\;
  S_AXI_ACADDR(17) <= \<const0>\;
  S_AXI_ACADDR(16) <= \<const0>\;
  S_AXI_ACADDR(15) <= \<const0>\;
  S_AXI_ACADDR(14) <= \<const0>\;
  S_AXI_ACADDR(13) <= \<const0>\;
  S_AXI_ACADDR(12) <= \<const0>\;
  S_AXI_ACADDR(11) <= \<const0>\;
  S_AXI_ACADDR(10) <= \<const0>\;
  S_AXI_ACADDR(9) <= \<const0>\;
  S_AXI_ACADDR(8) <= \<const0>\;
  S_AXI_ACADDR(7) <= \<const0>\;
  S_AXI_ACADDR(6) <= \<const0>\;
  S_AXI_ACADDR(5) <= \<const0>\;
  S_AXI_ACADDR(4) <= \<const0>\;
  S_AXI_ACADDR(3) <= \<const0>\;
  S_AXI_ACADDR(2) <= \<const0>\;
  S_AXI_ACADDR(1) <= \<const0>\;
  S_AXI_ACADDR(0) <= \<const0>\;
  S_AXI_ACPROT(2) <= \<const0>\;
  S_AXI_ACPROT(1) <= \<const0>\;
  S_AXI_ACPROT(0) <= \<const0>\;
  S_AXI_ACSNOOP(3) <= \<const0>\;
  S_AXI_ACSNOOP(2) <= \<const0>\;
  S_AXI_ACSNOOP(1) <= \<const0>\;
  S_AXI_ACSNOOP(0) <= \<const0>\;
  S_AXI_ACVALID <= \<const0>\;
  S_AXI_ARREADY <= \<const0>\;
  S_AXI_AWREADY <= \<const0>\;
  S_AXI_BID(0) <= \<const0>\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BUSER(0) <= \<const0>\;
  S_AXI_BVALID <= \<const0>\;
  S_AXI_CDREADY <= \<const0>\;
  S_AXI_CRREADY <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RID(0) <= \<const0>\;
  S_AXI_RLAST <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RUSER(0) <= \<const0>\;
  S_AXI_RVALID <= \<const0>\;
  S_AXI_WREADY <= \<const0>\;
  S_BRAM_Din(0) <= \<const0>\;
  S_BRAM_Din(1) <= \<const0>\;
  S_BRAM_Din(2) <= \<const0>\;
  S_BRAM_Din(3) <= \<const0>\;
  S_BRAM_Din(4) <= \<const0>\;
  S_BRAM_Din(5) <= \<const0>\;
  S_BRAM_Din(6) <= \<const0>\;
  S_BRAM_Din(7) <= \<const0>\;
  S_BRAM_Din(8) <= \<const0>\;
  S_BRAM_Din(9) <= \<const0>\;
  S_BRAM_Din(10) <= \<const0>\;
  S_BRAM_Din(11) <= \<const0>\;
  S_BRAM_Din(12) <= \<const0>\;
  S_BRAM_Din(13) <= \<const0>\;
  S_BRAM_Din(14) <= \<const0>\;
  S_BRAM_Din(15) <= \<const0>\;
  S_BRAM_Din(16) <= \<const0>\;
  S_BRAM_Din(17) <= \<const0>\;
  S_BRAM_Din(18) <= \<const0>\;
  S_BRAM_Din(19) <= \<const0>\;
  S_BRAM_Din(20) <= \<const0>\;
  S_BRAM_Din(21) <= \<const0>\;
  S_BRAM_Din(22) <= \<const0>\;
  S_BRAM_Din(23) <= \<const0>\;
  S_BRAM_Din(24) <= \<const0>\;
  S_BRAM_Din(25) <= \<const0>\;
  S_BRAM_Din(26) <= \<const0>\;
  S_BRAM_Din(27) <= \<const0>\;
  S_BRAM_Din(28) <= \<const0>\;
  S_BRAM_Din(29) <= \<const0>\;
  S_BRAM_Din(30) <= \<const0>\;
  S_BRAM_Din(31) <= \<const0>\;
  S_IRQ1_Ack(0) <= \<const0>\;
  S_IRQ1_Ack(1) <= \<const0>\;
  S_IRQ2_Ack(0) <= \<const0>\;
  S_IRQ2_Ack(1) <= \<const0>\;
  S_IRQ3_Ack(0) <= \<const0>\;
  S_IRQ3_Ack(1) <= \<const0>\;
  S_LMB1_ABus(0) <= \<const0>\;
  S_LMB1_ABus(1) <= \<const0>\;
  S_LMB1_ABus(2) <= \<const0>\;
  S_LMB1_ABus(3) <= \<const0>\;
  S_LMB1_ABus(4) <= \<const0>\;
  S_LMB1_ABus(5) <= \<const0>\;
  S_LMB1_ABus(6) <= \<const0>\;
  S_LMB1_ABus(7) <= \<const0>\;
  S_LMB1_ABus(8) <= \<const0>\;
  S_LMB1_ABus(9) <= \<const0>\;
  S_LMB1_ABus(10) <= \<const0>\;
  S_LMB1_ABus(11) <= \<const0>\;
  S_LMB1_ABus(12) <= \<const0>\;
  S_LMB1_ABus(13) <= \<const0>\;
  S_LMB1_ABus(14) <= \<const0>\;
  S_LMB1_ABus(15) <= \<const0>\;
  S_LMB1_ABus(16) <= \<const0>\;
  S_LMB1_ABus(17) <= \<const0>\;
  S_LMB1_ABus(18) <= \<const0>\;
  S_LMB1_ABus(19) <= \<const0>\;
  S_LMB1_ABus(20) <= \<const0>\;
  S_LMB1_ABus(21) <= \<const0>\;
  S_LMB1_ABus(22) <= \<const0>\;
  S_LMB1_ABus(23) <= \<const0>\;
  S_LMB1_ABus(24) <= \<const0>\;
  S_LMB1_ABus(25) <= \<const0>\;
  S_LMB1_ABus(26) <= \<const0>\;
  S_LMB1_ABus(27) <= \<const0>\;
  S_LMB1_ABus(28) <= \<const0>\;
  S_LMB1_ABus(29) <= \<const0>\;
  S_LMB1_ABus(30) <= \<const0>\;
  S_LMB1_ABus(31) <= \<const0>\;
  S_LMB1_AddrStrobe <= \<const0>\;
  S_LMB1_BE(0) <= \<const0>\;
  S_LMB1_BE(1) <= \<const0>\;
  S_LMB1_BE(2) <= \<const0>\;
  S_LMB1_BE(3) <= \<const0>\;
  S_LMB1_ReadStrobe <= \<const0>\;
  S_LMB1_WriteDBus(0) <= \<const0>\;
  S_LMB1_WriteDBus(1) <= \<const0>\;
  S_LMB1_WriteDBus(2) <= \<const0>\;
  S_LMB1_WriteDBus(3) <= \<const0>\;
  S_LMB1_WriteDBus(4) <= \<const0>\;
  S_LMB1_WriteDBus(5) <= \<const0>\;
  S_LMB1_WriteDBus(6) <= \<const0>\;
  S_LMB1_WriteDBus(7) <= \<const0>\;
  S_LMB1_WriteDBus(8) <= \<const0>\;
  S_LMB1_WriteDBus(9) <= \<const0>\;
  S_LMB1_WriteDBus(10) <= \<const0>\;
  S_LMB1_WriteDBus(11) <= \<const0>\;
  S_LMB1_WriteDBus(12) <= \<const0>\;
  S_LMB1_WriteDBus(13) <= \<const0>\;
  S_LMB1_WriteDBus(14) <= \<const0>\;
  S_LMB1_WriteDBus(15) <= \<const0>\;
  S_LMB1_WriteDBus(16) <= \<const0>\;
  S_LMB1_WriteDBus(17) <= \<const0>\;
  S_LMB1_WriteDBus(18) <= \<const0>\;
  S_LMB1_WriteDBus(19) <= \<const0>\;
  S_LMB1_WriteDBus(20) <= \<const0>\;
  S_LMB1_WriteDBus(21) <= \<const0>\;
  S_LMB1_WriteDBus(22) <= \<const0>\;
  S_LMB1_WriteDBus(23) <= \<const0>\;
  S_LMB1_WriteDBus(24) <= \<const0>\;
  S_LMB1_WriteDBus(25) <= \<const0>\;
  S_LMB1_WriteDBus(26) <= \<const0>\;
  S_LMB1_WriteDBus(27) <= \<const0>\;
  S_LMB1_WriteDBus(28) <= \<const0>\;
  S_LMB1_WriteDBus(29) <= \<const0>\;
  S_LMB1_WriteDBus(30) <= \<const0>\;
  S_LMB1_WriteDBus(31) <= \<const0>\;
  S_LMB1_WriteStrobe <= \<const0>\;
  S_LMB2_ABus(0) <= \<const0>\;
  S_LMB2_ABus(1) <= \<const0>\;
  S_LMB2_ABus(2) <= \<const0>\;
  S_LMB2_ABus(3) <= \<const0>\;
  S_LMB2_ABus(4) <= \<const0>\;
  S_LMB2_ABus(5) <= \<const0>\;
  S_LMB2_ABus(6) <= \<const0>\;
  S_LMB2_ABus(7) <= \<const0>\;
  S_LMB2_ABus(8) <= \<const0>\;
  S_LMB2_ABus(9) <= \<const0>\;
  S_LMB2_ABus(10) <= \<const0>\;
  S_LMB2_ABus(11) <= \<const0>\;
  S_LMB2_ABus(12) <= \<const0>\;
  S_LMB2_ABus(13) <= \<const0>\;
  S_LMB2_ABus(14) <= \<const0>\;
  S_LMB2_ABus(15) <= \<const0>\;
  S_LMB2_ABus(16) <= \<const0>\;
  S_LMB2_ABus(17) <= \<const0>\;
  S_LMB2_ABus(18) <= \<const0>\;
  S_LMB2_ABus(19) <= \<const0>\;
  S_LMB2_ABus(20) <= \<const0>\;
  S_LMB2_ABus(21) <= \<const0>\;
  S_LMB2_ABus(22) <= \<const0>\;
  S_LMB2_ABus(23) <= \<const0>\;
  S_LMB2_ABus(24) <= \<const0>\;
  S_LMB2_ABus(25) <= \<const0>\;
  S_LMB2_ABus(26) <= \<const0>\;
  S_LMB2_ABus(27) <= \<const0>\;
  S_LMB2_ABus(28) <= \<const0>\;
  S_LMB2_ABus(29) <= \<const0>\;
  S_LMB2_ABus(30) <= \<const0>\;
  S_LMB2_ABus(31) <= \<const0>\;
  S_LMB2_AddrStrobe <= \<const0>\;
  S_LMB2_BE(0) <= \<const0>\;
  S_LMB2_BE(1) <= \<const0>\;
  S_LMB2_BE(2) <= \<const0>\;
  S_LMB2_BE(3) <= \<const0>\;
  S_LMB2_ReadStrobe <= \<const0>\;
  S_LMB2_WriteDBus(0) <= \<const0>\;
  S_LMB2_WriteDBus(1) <= \<const0>\;
  S_LMB2_WriteDBus(2) <= \<const0>\;
  S_LMB2_WriteDBus(3) <= \<const0>\;
  S_LMB2_WriteDBus(4) <= \<const0>\;
  S_LMB2_WriteDBus(5) <= \<const0>\;
  S_LMB2_WriteDBus(6) <= \<const0>\;
  S_LMB2_WriteDBus(7) <= \<const0>\;
  S_LMB2_WriteDBus(8) <= \<const0>\;
  S_LMB2_WriteDBus(9) <= \<const0>\;
  S_LMB2_WriteDBus(10) <= \<const0>\;
  S_LMB2_WriteDBus(11) <= \<const0>\;
  S_LMB2_WriteDBus(12) <= \<const0>\;
  S_LMB2_WriteDBus(13) <= \<const0>\;
  S_LMB2_WriteDBus(14) <= \<const0>\;
  S_LMB2_WriteDBus(15) <= \<const0>\;
  S_LMB2_WriteDBus(16) <= \<const0>\;
  S_LMB2_WriteDBus(17) <= \<const0>\;
  S_LMB2_WriteDBus(18) <= \<const0>\;
  S_LMB2_WriteDBus(19) <= \<const0>\;
  S_LMB2_WriteDBus(20) <= \<const0>\;
  S_LMB2_WriteDBus(21) <= \<const0>\;
  S_LMB2_WriteDBus(22) <= \<const0>\;
  S_LMB2_WriteDBus(23) <= \<const0>\;
  S_LMB2_WriteDBus(24) <= \<const0>\;
  S_LMB2_WriteDBus(25) <= \<const0>\;
  S_LMB2_WriteDBus(26) <= \<const0>\;
  S_LMB2_WriteDBus(27) <= \<const0>\;
  S_LMB2_WriteDBus(28) <= \<const0>\;
  S_LMB2_WriteDBus(29) <= \<const0>\;
  S_LMB2_WriteDBus(30) <= \<const0>\;
  S_LMB2_WriteDBus(31) <= \<const0>\;
  S_LMB2_WriteStrobe <= \<const0>\;
  S_LMB3_ABus(0) <= \<const0>\;
  S_LMB3_ABus(1) <= \<const0>\;
  S_LMB3_ABus(2) <= \<const0>\;
  S_LMB3_ABus(3) <= \<const0>\;
  S_LMB3_ABus(4) <= \<const0>\;
  S_LMB3_ABus(5) <= \<const0>\;
  S_LMB3_ABus(6) <= \<const0>\;
  S_LMB3_ABus(7) <= \<const0>\;
  S_LMB3_ABus(8) <= \<const0>\;
  S_LMB3_ABus(9) <= \<const0>\;
  S_LMB3_ABus(10) <= \<const0>\;
  S_LMB3_ABus(11) <= \<const0>\;
  S_LMB3_ABus(12) <= \<const0>\;
  S_LMB3_ABus(13) <= \<const0>\;
  S_LMB3_ABus(14) <= \<const0>\;
  S_LMB3_ABus(15) <= \<const0>\;
  S_LMB3_ABus(16) <= \<const0>\;
  S_LMB3_ABus(17) <= \<const0>\;
  S_LMB3_ABus(18) <= \<const0>\;
  S_LMB3_ABus(19) <= \<const0>\;
  S_LMB3_ABus(20) <= \<const0>\;
  S_LMB3_ABus(21) <= \<const0>\;
  S_LMB3_ABus(22) <= \<const0>\;
  S_LMB3_ABus(23) <= \<const0>\;
  S_LMB3_ABus(24) <= \<const0>\;
  S_LMB3_ABus(25) <= \<const0>\;
  S_LMB3_ABus(26) <= \<const0>\;
  S_LMB3_ABus(27) <= \<const0>\;
  S_LMB3_ABus(28) <= \<const0>\;
  S_LMB3_ABus(29) <= \<const0>\;
  S_LMB3_ABus(30) <= \<const0>\;
  S_LMB3_ABus(31) <= \<const0>\;
  S_LMB3_AddrStrobe <= \<const0>\;
  S_LMB3_BE(0) <= \<const0>\;
  S_LMB3_BE(1) <= \<const0>\;
  S_LMB3_BE(2) <= \<const0>\;
  S_LMB3_BE(3) <= \<const0>\;
  S_LMB3_ReadStrobe <= \<const0>\;
  S_LMB3_WriteDBus(0) <= \<const0>\;
  S_LMB3_WriteDBus(1) <= \<const0>\;
  S_LMB3_WriteDBus(2) <= \<const0>\;
  S_LMB3_WriteDBus(3) <= \<const0>\;
  S_LMB3_WriteDBus(4) <= \<const0>\;
  S_LMB3_WriteDBus(5) <= \<const0>\;
  S_LMB3_WriteDBus(6) <= \<const0>\;
  S_LMB3_WriteDBus(7) <= \<const0>\;
  S_LMB3_WriteDBus(8) <= \<const0>\;
  S_LMB3_WriteDBus(9) <= \<const0>\;
  S_LMB3_WriteDBus(10) <= \<const0>\;
  S_LMB3_WriteDBus(11) <= \<const0>\;
  S_LMB3_WriteDBus(12) <= \<const0>\;
  S_LMB3_WriteDBus(13) <= \<const0>\;
  S_LMB3_WriteDBus(14) <= \<const0>\;
  S_LMB3_WriteDBus(15) <= \<const0>\;
  S_LMB3_WriteDBus(16) <= \<const0>\;
  S_LMB3_WriteDBus(17) <= \<const0>\;
  S_LMB3_WriteDBus(18) <= \<const0>\;
  S_LMB3_WriteDBus(19) <= \<const0>\;
  S_LMB3_WriteDBus(20) <= \<const0>\;
  S_LMB3_WriteDBus(21) <= \<const0>\;
  S_LMB3_WriteDBus(22) <= \<const0>\;
  S_LMB3_WriteDBus(23) <= \<const0>\;
  S_LMB3_WriteDBus(24) <= \<const0>\;
  S_LMB3_WriteDBus(25) <= \<const0>\;
  S_LMB3_WriteDBus(26) <= \<const0>\;
  S_LMB3_WriteDBus(27) <= \<const0>\;
  S_LMB3_WriteDBus(28) <= \<const0>\;
  S_LMB3_WriteDBus(29) <= \<const0>\;
  S_LMB3_WriteDBus(30) <= \<const0>\;
  S_LMB3_WriteDBus(31) <= \<const0>\;
  S_LMB3_WriteStrobe <= \<const0>\;
  S_Sl_CE <= \<const0>\;
  S_Sl_DBus(0) <= \<const0>\;
  S_Sl_DBus(1) <= \<const0>\;
  S_Sl_DBus(2) <= \<const0>\;
  S_Sl_DBus(3) <= \<const0>\;
  S_Sl_DBus(4) <= \<const0>\;
  S_Sl_DBus(5) <= \<const0>\;
  S_Sl_DBus(6) <= \<const0>\;
  S_Sl_DBus(7) <= \<const0>\;
  S_Sl_DBus(8) <= \<const0>\;
  S_Sl_DBus(9) <= \<const0>\;
  S_Sl_DBus(10) <= \<const0>\;
  S_Sl_DBus(11) <= \<const0>\;
  S_Sl_DBus(12) <= \<const0>\;
  S_Sl_DBus(13) <= \<const0>\;
  S_Sl_DBus(14) <= \<const0>\;
  S_Sl_DBus(15) <= \<const0>\;
  S_Sl_DBus(16) <= \<const0>\;
  S_Sl_DBus(17) <= \<const0>\;
  S_Sl_DBus(18) <= \<const0>\;
  S_Sl_DBus(19) <= \<const0>\;
  S_Sl_DBus(20) <= \<const0>\;
  S_Sl_DBus(21) <= \<const0>\;
  S_Sl_DBus(22) <= \<const0>\;
  S_Sl_DBus(23) <= \<const0>\;
  S_Sl_DBus(24) <= \<const0>\;
  S_Sl_DBus(25) <= \<const0>\;
  S_Sl_DBus(26) <= \<const0>\;
  S_Sl_DBus(27) <= \<const0>\;
  S_Sl_DBus(28) <= \<const0>\;
  S_Sl_DBus(29) <= \<const0>\;
  S_Sl_DBus(30) <= \<const0>\;
  S_Sl_DBus(31) <= \<const0>\;
  S_Sl_Ready <= \<const0>\;
  S_Sl_UE <= \<const0>\;
  S_Sl_Wait <= \<const0>\;
  Sl1_CE <= \<const0>\;
  Sl1_DBus(0) <= \<const0>\;
  Sl1_DBus(1) <= \<const0>\;
  Sl1_DBus(2) <= \<const0>\;
  Sl1_DBus(3) <= \<const0>\;
  Sl1_DBus(4) <= \<const0>\;
  Sl1_DBus(5) <= \<const0>\;
  Sl1_DBus(6) <= \<const0>\;
  Sl1_DBus(7) <= \<const0>\;
  Sl1_DBus(8) <= \<const0>\;
  Sl1_DBus(9) <= \<const0>\;
  Sl1_DBus(10) <= \<const0>\;
  Sl1_DBus(11) <= \<const0>\;
  Sl1_DBus(12) <= \<const0>\;
  Sl1_DBus(13) <= \<const0>\;
  Sl1_DBus(14) <= \<const0>\;
  Sl1_DBus(15) <= \<const0>\;
  Sl1_DBus(16) <= \<const0>\;
  Sl1_DBus(17) <= \<const0>\;
  Sl1_DBus(18) <= \<const0>\;
  Sl1_DBus(19) <= \<const0>\;
  Sl1_DBus(20) <= \<const0>\;
  Sl1_DBus(21) <= \<const0>\;
  Sl1_DBus(22) <= \<const0>\;
  Sl1_DBus(23) <= \<const0>\;
  Sl1_DBus(24) <= \<const0>\;
  Sl1_DBus(25) <= \<const0>\;
  Sl1_DBus(26) <= \<const0>\;
  Sl1_DBus(27) <= \<const0>\;
  Sl1_DBus(28) <= \<const0>\;
  Sl1_DBus(29) <= \<const0>\;
  Sl1_DBus(30) <= \<const0>\;
  Sl1_DBus(31) <= \<const0>\;
  Sl1_Ready <= \<const0>\;
  Sl1_UE <= \<const0>\;
  Sl1_Wait <= \<const0>\;
  Sl2_CE <= \<const0>\;
  Sl2_DBus(0) <= \<const0>\;
  Sl2_DBus(1) <= \<const0>\;
  Sl2_DBus(2) <= \<const0>\;
  Sl2_DBus(3) <= \<const0>\;
  Sl2_DBus(4) <= \<const0>\;
  Sl2_DBus(5) <= \<const0>\;
  Sl2_DBus(6) <= \<const0>\;
  Sl2_DBus(7) <= \<const0>\;
  Sl2_DBus(8) <= \<const0>\;
  Sl2_DBus(9) <= \<const0>\;
  Sl2_DBus(10) <= \<const0>\;
  Sl2_DBus(11) <= \<const0>\;
  Sl2_DBus(12) <= \<const0>\;
  Sl2_DBus(13) <= \<const0>\;
  Sl2_DBus(14) <= \<const0>\;
  Sl2_DBus(15) <= \<const0>\;
  Sl2_DBus(16) <= \<const0>\;
  Sl2_DBus(17) <= \<const0>\;
  Sl2_DBus(18) <= \<const0>\;
  Sl2_DBus(19) <= \<const0>\;
  Sl2_DBus(20) <= \<const0>\;
  Sl2_DBus(21) <= \<const0>\;
  Sl2_DBus(22) <= \<const0>\;
  Sl2_DBus(23) <= \<const0>\;
  Sl2_DBus(24) <= \<const0>\;
  Sl2_DBus(25) <= \<const0>\;
  Sl2_DBus(26) <= \<const0>\;
  Sl2_DBus(27) <= \<const0>\;
  Sl2_DBus(28) <= \<const0>\;
  Sl2_DBus(29) <= \<const0>\;
  Sl2_DBus(30) <= \<const0>\;
  Sl2_DBus(31) <= \<const0>\;
  Sl2_Ready <= \<const0>\;
  Sl2_UE <= \<const0>\;
  Sl2_Wait <= \<const0>\;
  Sl3_CE <= \<const0>\;
  Sl3_DBus(0) <= \<const0>\;
  Sl3_DBus(1) <= \<const0>\;
  Sl3_DBus(2) <= \<const0>\;
  Sl3_DBus(3) <= \<const0>\;
  Sl3_DBus(4) <= \<const0>\;
  Sl3_DBus(5) <= \<const0>\;
  Sl3_DBus(6) <= \<const0>\;
  Sl3_DBus(7) <= \<const0>\;
  Sl3_DBus(8) <= \<const0>\;
  Sl3_DBus(9) <= \<const0>\;
  Sl3_DBus(10) <= \<const0>\;
  Sl3_DBus(11) <= \<const0>\;
  Sl3_DBus(12) <= \<const0>\;
  Sl3_DBus(13) <= \<const0>\;
  Sl3_DBus(14) <= \<const0>\;
  Sl3_DBus(15) <= \<const0>\;
  Sl3_DBus(16) <= \<const0>\;
  Sl3_DBus(17) <= \<const0>\;
  Sl3_DBus(18) <= \<const0>\;
  Sl3_DBus(19) <= \<const0>\;
  Sl3_DBus(20) <= \<const0>\;
  Sl3_DBus(21) <= \<const0>\;
  Sl3_DBus(22) <= \<const0>\;
  Sl3_DBus(23) <= \<const0>\;
  Sl3_DBus(24) <= \<const0>\;
  Sl3_DBus(25) <= \<const0>\;
  Sl3_DBus(26) <= \<const0>\;
  Sl3_DBus(27) <= \<const0>\;
  Sl3_DBus(28) <= \<const0>\;
  Sl3_DBus(29) <= \<const0>\;
  Sl3_DBus(30) <= \<const0>\;
  Sl3_DBus(31) <= \<const0>\;
  Sl3_Ready <= \<const0>\;
  Sl3_UE <= \<const0>\;
  Sl3_Wait <= \<const0>\;
  Trace_DCache_Hit <= \<const0>\;
  Trace_DCache_Rdy <= \<const0>\;
  Trace_DCache_Read <= \<const0>\;
  Trace_DCache_Req <= \<const0>\;
  Trace_Data_Access <= \<const0>\;
  Trace_Data_Address(0) <= \<const0>\;
  Trace_Data_Address(1) <= \<const0>\;
  Trace_Data_Address(2) <= \<const0>\;
  Trace_Data_Address(3) <= \<const0>\;
  Trace_Data_Address(4) <= \<const0>\;
  Trace_Data_Address(5) <= \<const0>\;
  Trace_Data_Address(6) <= \<const0>\;
  Trace_Data_Address(7) <= \<const0>\;
  Trace_Data_Address(8) <= \<const0>\;
  Trace_Data_Address(9) <= \<const0>\;
  Trace_Data_Address(10) <= \<const0>\;
  Trace_Data_Address(11) <= \<const0>\;
  Trace_Data_Address(12) <= \<const0>\;
  Trace_Data_Address(13) <= \<const0>\;
  Trace_Data_Address(14) <= \<const0>\;
  Trace_Data_Address(15) <= \<const0>\;
  Trace_Data_Address(16) <= \<const0>\;
  Trace_Data_Address(17) <= \<const0>\;
  Trace_Data_Address(18) <= \<const0>\;
  Trace_Data_Address(19) <= \<const0>\;
  Trace_Data_Address(20) <= \<const0>\;
  Trace_Data_Address(21) <= \<const0>\;
  Trace_Data_Address(22) <= \<const0>\;
  Trace_Data_Address(23) <= \<const0>\;
  Trace_Data_Address(24) <= \<const0>\;
  Trace_Data_Address(25) <= \<const0>\;
  Trace_Data_Address(26) <= \<const0>\;
  Trace_Data_Address(27) <= \<const0>\;
  Trace_Data_Address(28) <= \<const0>\;
  Trace_Data_Address(29) <= \<const0>\;
  Trace_Data_Address(30) <= \<const0>\;
  Trace_Data_Address(31) <= \<const0>\;
  Trace_Data_Byte_Enable(0) <= \<const0>\;
  Trace_Data_Byte_Enable(1) <= \<const0>\;
  Trace_Data_Byte_Enable(2) <= \<const0>\;
  Trace_Data_Byte_Enable(3) <= \<const0>\;
  Trace_Data_Read <= \<const0>\;
  Trace_Data_Write <= \<const0>\;
  Trace_Data_Write_Value(0) <= \<const0>\;
  Trace_Data_Write_Value(1) <= \<const0>\;
  Trace_Data_Write_Value(2) <= \<const0>\;
  Trace_Data_Write_Value(3) <= \<const0>\;
  Trace_Data_Write_Value(4) <= \<const0>\;
  Trace_Data_Write_Value(5) <= \<const0>\;
  Trace_Data_Write_Value(6) <= \<const0>\;
  Trace_Data_Write_Value(7) <= \<const0>\;
  Trace_Data_Write_Value(8) <= \<const0>\;
  Trace_Data_Write_Value(9) <= \<const0>\;
  Trace_Data_Write_Value(10) <= \<const0>\;
  Trace_Data_Write_Value(11) <= \<const0>\;
  Trace_Data_Write_Value(12) <= \<const0>\;
  Trace_Data_Write_Value(13) <= \<const0>\;
  Trace_Data_Write_Value(14) <= \<const0>\;
  Trace_Data_Write_Value(15) <= \<const0>\;
  Trace_Data_Write_Value(16) <= \<const0>\;
  Trace_Data_Write_Value(17) <= \<const0>\;
  Trace_Data_Write_Value(18) <= \<const0>\;
  Trace_Data_Write_Value(19) <= \<const0>\;
  Trace_Data_Write_Value(20) <= \<const0>\;
  Trace_Data_Write_Value(21) <= \<const0>\;
  Trace_Data_Write_Value(22) <= \<const0>\;
  Trace_Data_Write_Value(23) <= \<const0>\;
  Trace_Data_Write_Value(24) <= \<const0>\;
  Trace_Data_Write_Value(25) <= \<const0>\;
  Trace_Data_Write_Value(26) <= \<const0>\;
  Trace_Data_Write_Value(27) <= \<const0>\;
  Trace_Data_Write_Value(28) <= \<const0>\;
  Trace_Data_Write_Value(29) <= \<const0>\;
  Trace_Data_Write_Value(30) <= \<const0>\;
  Trace_Data_Write_Value(31) <= \<const0>\;
  Trace_Delay_Slot <= \<const0>\;
  Trace_EX_PipeRun <= \<const0>\;
  Trace_Exception_Kind(0) <= \<const0>\;
  Trace_Exception_Kind(1) <= \<const0>\;
  Trace_Exception_Kind(2) <= \<const0>\;
  Trace_Exception_Kind(3) <= \<const0>\;
  Trace_Exception_Kind(4) <= \<const0>\;
  Trace_Exception_Taken <= \<const0>\;
  Trace_ICache_Hit <= \<const0>\;
  Trace_ICache_Rdy <= \<const0>\;
  Trace_ICache_Req <= \<const0>\;
  Trace_Instruction(0) <= \<const0>\;
  Trace_Instruction(1) <= \<const0>\;
  Trace_Instruction(2) <= \<const0>\;
  Trace_Instruction(3) <= \<const0>\;
  Trace_Instruction(4) <= \<const0>\;
  Trace_Instruction(5) <= \<const0>\;
  Trace_Instruction(6) <= \<const0>\;
  Trace_Instruction(7) <= \<const0>\;
  Trace_Instruction(8) <= \<const0>\;
  Trace_Instruction(9) <= \<const0>\;
  Trace_Instruction(10) <= \<const0>\;
  Trace_Instruction(11) <= \<const0>\;
  Trace_Instruction(12) <= \<const0>\;
  Trace_Instruction(13) <= \<const0>\;
  Trace_Instruction(14) <= \<const0>\;
  Trace_Instruction(15) <= \<const0>\;
  Trace_Instruction(16) <= \<const0>\;
  Trace_Instruction(17) <= \<const0>\;
  Trace_Instruction(18) <= \<const0>\;
  Trace_Instruction(19) <= \<const0>\;
  Trace_Instruction(20) <= \<const0>\;
  Trace_Instruction(21) <= \<const0>\;
  Trace_Instruction(22) <= \<const0>\;
  Trace_Instruction(23) <= \<const0>\;
  Trace_Instruction(24) <= \<const0>\;
  Trace_Instruction(25) <= \<const0>\;
  Trace_Instruction(26) <= \<const0>\;
  Trace_Instruction(27) <= \<const0>\;
  Trace_Instruction(28) <= \<const0>\;
  Trace_Instruction(29) <= \<const0>\;
  Trace_Instruction(30) <= \<const0>\;
  Trace_Instruction(31) <= \<const0>\;
  Trace_Jump_Hit <= \<const0>\;
  Trace_Jump_Taken <= \<const0>\;
  Trace_MB_Halted <= \<const0>\;
  Trace_MEM_PipeRun <= \<const0>\;
  Trace_MSR_Reg(0) <= \<const0>\;
  Trace_MSR_Reg(1) <= \<const0>\;
  Trace_MSR_Reg(2) <= \<const0>\;
  Trace_MSR_Reg(3) <= \<const0>\;
  Trace_MSR_Reg(4) <= \<const0>\;
  Trace_MSR_Reg(5) <= \<const0>\;
  Trace_MSR_Reg(6) <= \<const0>\;
  Trace_MSR_Reg(7) <= \<const0>\;
  Trace_MSR_Reg(8) <= \<const0>\;
  Trace_MSR_Reg(9) <= \<const0>\;
  Trace_MSR_Reg(10) <= \<const0>\;
  Trace_MSR_Reg(11) <= \<const0>\;
  Trace_MSR_Reg(12) <= \<const0>\;
  Trace_MSR_Reg(13) <= \<const0>\;
  Trace_MSR_Reg(14) <= \<const0>\;
  Trace_New_Reg_Value(0) <= \<const0>\;
  Trace_New_Reg_Value(1) <= \<const0>\;
  Trace_New_Reg_Value(2) <= \<const0>\;
  Trace_New_Reg_Value(3) <= \<const0>\;
  Trace_New_Reg_Value(4) <= \<const0>\;
  Trace_New_Reg_Value(5) <= \<const0>\;
  Trace_New_Reg_Value(6) <= \<const0>\;
  Trace_New_Reg_Value(7) <= \<const0>\;
  Trace_New_Reg_Value(8) <= \<const0>\;
  Trace_New_Reg_Value(9) <= \<const0>\;
  Trace_New_Reg_Value(10) <= \<const0>\;
  Trace_New_Reg_Value(11) <= \<const0>\;
  Trace_New_Reg_Value(12) <= \<const0>\;
  Trace_New_Reg_Value(13) <= \<const0>\;
  Trace_New_Reg_Value(14) <= \<const0>\;
  Trace_New_Reg_Value(15) <= \<const0>\;
  Trace_New_Reg_Value(16) <= \<const0>\;
  Trace_New_Reg_Value(17) <= \<const0>\;
  Trace_New_Reg_Value(18) <= \<const0>\;
  Trace_New_Reg_Value(19) <= \<const0>\;
  Trace_New_Reg_Value(20) <= \<const0>\;
  Trace_New_Reg_Value(21) <= \<const0>\;
  Trace_New_Reg_Value(22) <= \<const0>\;
  Trace_New_Reg_Value(23) <= \<const0>\;
  Trace_New_Reg_Value(24) <= \<const0>\;
  Trace_New_Reg_Value(25) <= \<const0>\;
  Trace_New_Reg_Value(26) <= \<const0>\;
  Trace_New_Reg_Value(27) <= \<const0>\;
  Trace_New_Reg_Value(28) <= \<const0>\;
  Trace_New_Reg_Value(29) <= \<const0>\;
  Trace_New_Reg_Value(30) <= \<const0>\;
  Trace_New_Reg_Value(31) <= \<const0>\;
  Trace_OF_PipeRun <= \<const0>\;
  Trace_PC(0) <= \<const0>\;
  Trace_PC(1) <= \<const0>\;
  Trace_PC(2) <= \<const0>\;
  Trace_PC(3) <= \<const0>\;
  Trace_PC(4) <= \<const0>\;
  Trace_PC(5) <= \<const0>\;
  Trace_PC(6) <= \<const0>\;
  Trace_PC(7) <= \<const0>\;
  Trace_PC(8) <= \<const0>\;
  Trace_PC(9) <= \<const0>\;
  Trace_PC(10) <= \<const0>\;
  Trace_PC(11) <= \<const0>\;
  Trace_PC(12) <= \<const0>\;
  Trace_PC(13) <= \<const0>\;
  Trace_PC(14) <= \<const0>\;
  Trace_PC(15) <= \<const0>\;
  Trace_PC(16) <= \<const0>\;
  Trace_PC(17) <= \<const0>\;
  Trace_PC(18) <= \<const0>\;
  Trace_PC(19) <= \<const0>\;
  Trace_PC(20) <= \<const0>\;
  Trace_PC(21) <= \<const0>\;
  Trace_PC(22) <= \<const0>\;
  Trace_PC(23) <= \<const0>\;
  Trace_PC(24) <= \<const0>\;
  Trace_PC(25) <= \<const0>\;
  Trace_PC(26) <= \<const0>\;
  Trace_PC(27) <= \<const0>\;
  Trace_PC(28) <= \<const0>\;
  Trace_PC(29) <= \<const0>\;
  Trace_PC(30) <= \<const0>\;
  Trace_PC(31) <= \<const0>\;
  Trace_PID_Reg(0) <= \<const0>\;
  Trace_PID_Reg(1) <= \<const0>\;
  Trace_PID_Reg(2) <= \<const0>\;
  Trace_PID_Reg(3) <= \<const0>\;
  Trace_PID_Reg(4) <= \<const0>\;
  Trace_PID_Reg(5) <= \<const0>\;
  Trace_PID_Reg(6) <= \<const0>\;
  Trace_PID_Reg(7) <= \<const0>\;
  Trace_Reg_Addr(0) <= \<const0>\;
  Trace_Reg_Addr(1) <= \<const0>\;
  Trace_Reg_Addr(2) <= \<const0>\;
  Trace_Reg_Addr(3) <= \<const0>\;
  Trace_Reg_Addr(4) <= \<const0>\;
  Trace_Reg_Write <= \<const0>\;
  Trace_Valid_Instr <= \<const0>\;
  UART1_CTSn <= \<const0>\;
  UART1_DCDn <= \<const0>\;
  UART1_DSRn <= \<const0>\;
  UART1_RCLK <= \<const0>\;
  UART1_RI <= \<const0>\;
  UART1_RxD <= \<const0>\;
  UART1_XIN <= \<const0>\;
  UART2_CTSn <= \<const0>\;
  UART2_DCDn <= \<const0>\;
  UART2_DSRn <= \<const0>\;
  UART2_RCLK <= \<const0>\;
  UART2_RI <= \<const0>\;
  UART2_RxD <= \<const0>\;
  UART2_XIN <= \<const0>\;
  UART3_CTSn <= \<const0>\;
  UART3_DCDn <= \<const0>\;
  UART3_DSRn <= \<const0>\;
  UART3_RCLK <= \<const0>\;
  UART3_RI <= \<const0>\;
  UART3_RxD <= \<const0>\;
  UART3_XIN <= \<const0>\;
  UART_BAUDOUTn <= \<const0>\;
  UART_DDIS <= \<const0>\;
  UART_DTRn <= \<const0>\;
  UART_OUT1n <= \<const0>\;
  UART_OUT2n <= \<const0>\;
  UART_RTSn <= \<const0>\;
  UART_RXRDYn <= \<const0>\;
  UART_TXRDYn <= \<const0>\;
  UART_TxD <= \<const0>\;
  UART_XOUT <= \<const0>\;
  \^m_axi_arready\ <= M_AXI_ARREADY;
  \^m_axi_awready\ <= M_AXI_AWREADY;
  \^m_axi_bid\(0) <= M_AXI_BID(0);
  \^m_axi_bresp\(1 downto 0) <= M_AXI_BRESP(1 downto 0);
  \^m_axi_bvalid\ <= M_AXI_BVALID;
  \^m_axi_rdata\(31 downto 0) <= M_AXI_RDATA(31 downto 0);
  \^m_axi_rid\(0) <= M_AXI_RID(0);
  \^m_axi_rlast\ <= M_AXI_RLAST;
  \^m_axi_rresp\(1 downto 0) <= M_AXI_RRESP(1 downto 0);
  \^m_axi_rvalid\ <= M_AXI_RVALID;
  \^m_axi_wready\ <= M_AXI_WREADY;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_g.axi_voter_i\: entity work.bd_hybrid_tmr_ecc_tmr_voter_3_0_axi_voter
     port map (
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARID(0) => M_AXI_ARID(0),
      M_AXI_ARLEN(7 downto 0) => M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARPROT(2 downto 0) => M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => M_AXI_ARQOS(3 downto 0),
      M_AXI_ARSIZE(2 downto 0) => M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(0) => M_AXI_AWID(0),
      M_AXI_AWLEN(7 downto 0) => M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWPROT(2 downto 0) => M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => M_AXI_AWQOS(3 downto 0),
      M_AXI_AWSIZE(2 downto 0) => M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => M_AXI_WVALID,
      S_AXI1_ARADDR(31 downto 0) => S_AXI1_ARADDR(31 downto 0),
      S_AXI1_ARBURST(1 downto 0) => S_AXI1_ARBURST(1 downto 0),
      S_AXI1_ARCACHE(3 downto 0) => S_AXI1_ARCACHE(3 downto 0),
      S_AXI1_ARID(0) => S_AXI1_ARID(0),
      S_AXI1_ARLEN(7 downto 0) => S_AXI1_ARLEN(7 downto 0),
      S_AXI1_ARLOCK => S_AXI1_ARLOCK,
      S_AXI1_ARPROT(2 downto 0) => S_AXI1_ARPROT(2 downto 0),
      S_AXI1_ARQOS(3 downto 0) => S_AXI1_ARQOS(3 downto 0),
      S_AXI1_ARSIZE(2 downto 0) => S_AXI1_ARSIZE(2 downto 0),
      S_AXI1_ARVALID => S_AXI1_ARVALID,
      S_AXI1_AWADDR(31 downto 0) => S_AXI1_AWADDR(31 downto 0),
      S_AXI1_AWBURST(1 downto 0) => S_AXI1_AWBURST(1 downto 0),
      S_AXI1_AWCACHE(3 downto 0) => S_AXI1_AWCACHE(3 downto 0),
      S_AXI1_AWID(0) => S_AXI1_AWID(0),
      S_AXI1_AWLEN(7 downto 0) => S_AXI1_AWLEN(7 downto 0),
      S_AXI1_AWLOCK => S_AXI1_AWLOCK,
      S_AXI1_AWPROT(2 downto 0) => S_AXI1_AWPROT(2 downto 0),
      S_AXI1_AWQOS(3 downto 0) => S_AXI1_AWQOS(3 downto 0),
      S_AXI1_AWSIZE(2 downto 0) => S_AXI1_AWSIZE(2 downto 0),
      S_AXI1_AWVALID => S_AXI1_AWVALID,
      S_AXI1_BREADY => S_AXI1_BREADY,
      S_AXI1_RREADY => S_AXI1_RREADY,
      S_AXI1_WDATA(31 downto 0) => S_AXI1_WDATA(31 downto 0),
      S_AXI1_WLAST => S_AXI1_WLAST,
      S_AXI1_WSTRB(3 downto 0) => S_AXI1_WSTRB(3 downto 0),
      S_AXI1_WVALID => S_AXI1_WVALID,
      S_AXI2_ARADDR(31 downto 0) => S_AXI2_ARADDR(31 downto 0),
      S_AXI2_ARBURST(1 downto 0) => S_AXI2_ARBURST(1 downto 0),
      S_AXI2_ARCACHE(3 downto 0) => S_AXI2_ARCACHE(3 downto 0),
      S_AXI2_ARID(0) => S_AXI2_ARID(0),
      S_AXI2_ARLEN(7 downto 0) => S_AXI2_ARLEN(7 downto 0),
      S_AXI2_ARLOCK => S_AXI2_ARLOCK,
      S_AXI2_ARPROT(2 downto 0) => S_AXI2_ARPROT(2 downto 0),
      S_AXI2_ARQOS(3 downto 0) => S_AXI2_ARQOS(3 downto 0),
      S_AXI2_ARSIZE(2 downto 0) => S_AXI2_ARSIZE(2 downto 0),
      S_AXI2_ARVALID => S_AXI2_ARVALID,
      S_AXI2_AWADDR(31 downto 0) => S_AXI2_AWADDR(31 downto 0),
      S_AXI2_AWBURST(1 downto 0) => S_AXI2_AWBURST(1 downto 0),
      S_AXI2_AWCACHE(3 downto 0) => S_AXI2_AWCACHE(3 downto 0),
      S_AXI2_AWID(0) => S_AXI2_AWID(0),
      S_AXI2_AWLEN(7 downto 0) => S_AXI2_AWLEN(7 downto 0),
      S_AXI2_AWLOCK => S_AXI2_AWLOCK,
      S_AXI2_AWPROT(2 downto 0) => S_AXI2_AWPROT(2 downto 0),
      S_AXI2_AWQOS(3 downto 0) => S_AXI2_AWQOS(3 downto 0),
      S_AXI2_AWSIZE(2 downto 0) => S_AXI2_AWSIZE(2 downto 0),
      S_AXI2_AWVALID => S_AXI2_AWVALID,
      S_AXI2_BREADY => S_AXI2_BREADY,
      S_AXI2_RREADY => S_AXI2_RREADY,
      S_AXI2_WDATA(31 downto 0) => S_AXI2_WDATA(31 downto 0),
      S_AXI2_WLAST => S_AXI2_WLAST,
      S_AXI2_WSTRB(3 downto 0) => S_AXI2_WSTRB(3 downto 0),
      S_AXI2_WVALID => S_AXI2_WVALID,
      S_AXI3_ARADDR(31 downto 0) => S_AXI3_ARADDR(31 downto 0),
      S_AXI3_ARBURST(1 downto 0) => S_AXI3_ARBURST(1 downto 0),
      S_AXI3_ARCACHE(3 downto 0) => S_AXI3_ARCACHE(3 downto 0),
      S_AXI3_ARID(0) => S_AXI3_ARID(0),
      S_AXI3_ARLEN(7 downto 0) => S_AXI3_ARLEN(7 downto 0),
      S_AXI3_ARLOCK => S_AXI3_ARLOCK,
      S_AXI3_ARPROT(2 downto 0) => S_AXI3_ARPROT(2 downto 0),
      S_AXI3_ARQOS(3 downto 0) => S_AXI3_ARQOS(3 downto 0),
      S_AXI3_ARSIZE(2 downto 0) => S_AXI3_ARSIZE(2 downto 0),
      S_AXI3_ARVALID => S_AXI3_ARVALID,
      S_AXI3_AWADDR(31 downto 0) => S_AXI3_AWADDR(31 downto 0),
      S_AXI3_AWBURST(1 downto 0) => S_AXI3_AWBURST(1 downto 0),
      S_AXI3_AWCACHE(3 downto 0) => S_AXI3_AWCACHE(3 downto 0),
      S_AXI3_AWID(0) => S_AXI3_AWID(0),
      S_AXI3_AWLEN(7 downto 0) => S_AXI3_AWLEN(7 downto 0),
      S_AXI3_AWLOCK => S_AXI3_AWLOCK,
      S_AXI3_AWPROT(2 downto 0) => S_AXI3_AWPROT(2 downto 0),
      S_AXI3_AWQOS(3 downto 0) => S_AXI3_AWQOS(3 downto 0),
      S_AXI3_AWSIZE(2 downto 0) => S_AXI3_AWSIZE(2 downto 0),
      S_AXI3_AWVALID => S_AXI3_AWVALID,
      S_AXI3_BREADY => S_AXI3_BREADY,
      S_AXI3_RREADY => S_AXI3_RREADY,
      S_AXI3_WDATA(31 downto 0) => S_AXI3_WDATA(31 downto 0),
      S_AXI3_WLAST => S_AXI3_WLAST,
      S_AXI3_WSTRB(3 downto 0) => S_AXI3_WSTRB(3 downto 0),
      S_AXI3_WVALID => S_AXI3_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hybrid_tmr_ecc_tmr_voter_3_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_hybrid_tmr_ecc_tmr_voter_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_hybrid_tmr_ecc_tmr_voter_3_0 : entity is "bd_ocm_tmr_tmr_voter_0_3,tmr_voter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_hybrid_tmr_ecc_tmr_voter_3_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_hybrid_tmr_ecc_tmr_voter_3_0 : entity is "tmr_voter,Vivado 2023.2";
end bd_hybrid_tmr_ecc_tmr_voter_3_0;

architecture STRUCTURE of bd_hybrid_tmr_ecc_tmr_voter_3_0 is
  signal NLW_U0_BRAM_Clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_BRAM_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_BRAM_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC1_scl_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC1_sda_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC2_scl_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC2_sda_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC3_scl_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC3_sda_i_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC_scl_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IIC_sda_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO1_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO2_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO3_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Addr_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Read_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IO_Write_Strobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IRQ1_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IRQ2_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_IRQ3_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_AddrStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_ReadStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_LMB_WriteStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_ACREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_ARLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_CDLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_CDVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_CRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_RACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_WACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI1_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_ACREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_ARLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_CDLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_CDVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_CRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_RACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_WACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI2_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_ACREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_ARLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_CDLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_CDVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_CRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_RACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_WACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI3_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS1_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS1_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS2_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS2_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS3_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS3_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS_TLAST_Test_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXIS_TVALID_Test_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_ACREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_CDLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_CDVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_CRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_RACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_WACK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_BRAM1_Clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_BRAM1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_BRAM1_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_BRAM_MisMatch_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI1_ACVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI1_CDREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI1_CRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI2_ACVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI2_CDREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI2_CRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI3_ACVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI3_CDREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI3_CRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXIS1_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXIS2_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXIS3_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXIS_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXIS_TREADY_Test_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_ACVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_CDREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_CRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB1_AddrStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB1_ReadStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB1_WriteStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB2_AddrStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB2_ReadStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB2_WriteStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB3_AddrStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB3_ReadStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_LMB3_WriteStrobe_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_Sl_CE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_Sl_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_Sl_UE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_Sl_Wait_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl1_CE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl1_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl1_UE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl1_Wait_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl2_CE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl2_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl2_UE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl2_Wait_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl3_CE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl3_Ready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl3_UE_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Sl3_Wait_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_DCache_Hit_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_DCache_Rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_DCache_Read_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_DCache_Req_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Data_Access_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Data_Read_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Data_Write_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Delay_Slot_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_EX_PipeRun_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Exception_Taken_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_ICache_Hit_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_ICache_Rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_ICache_Req_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Jump_Hit_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Jump_Taken_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_MB_Halted_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_MEM_PipeRun_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_OF_PipeRun_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Reg_Write_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Trace_Valid_Instr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_CTSn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_DCDn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_DSRn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_RCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_RI_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_RxD_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART1_XIN_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_CTSn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_DCDn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_DSRn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_RCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_RI_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_RxD_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART2_XIN_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_CTSn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_DCDn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_DSRn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_RCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_RI_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_RxD_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART3_XIN_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_BAUDOUTn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_DDIS_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_DTRn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_OUT1n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_OUT2n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_RTSn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_RXRDYn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_TXRDYn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_TxD_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_UART_XOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_BRAM1_Din_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_BRAM2_Din_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_BRAM3_Din_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_BRAM_Addr_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_BRAM_Dout_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_BRAM_WE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_Compare_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_Discrete_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_GPI1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPI2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPI3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_GPT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO1_Read_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO2_Read_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO3_Read_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IO_Byte_Enable_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_IO_Write_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_IRQ1_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_IRQ2_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_IRQ3_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_IRQ_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_U0_LMB_ABus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_LMB_BE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_LMB_WriteDBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_M_AXI1_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI1_ARBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_ARDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI1_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI1_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI1_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI1_ARSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI1_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI1_AWBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_AWDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI1_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI1_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI1_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI1_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI1_AWSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI1_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI1_CDDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI1_CRRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_M_AXI1_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI1_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI1_WUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI2_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI2_ARBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_ARDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI2_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI2_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI2_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI2_ARSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI2_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI2_AWBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_AWDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI2_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI2_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI2_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI2_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI2_AWSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI2_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI2_CDDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI2_CRRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_M_AXI2_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI2_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI2_WUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI3_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI3_ARBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_ARDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI3_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI3_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI3_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI3_ARSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI3_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI3_AWBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_AWDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI3_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI3_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_M_AXI3_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI3_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI3_AWSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI3_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI3_CDDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI3_CRRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_M_AXI3_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI3_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI3_WUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS1_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS1_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS1_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS1_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS1_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS1_TUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS2_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS2_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS2_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS2_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS2_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS2_TUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS3_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS3_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS3_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS3_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS3_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS3_TUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS_TDATA_Test_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXIS_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXIS_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXIS_TUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI_ARBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_ARDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_ARSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_M_AXI_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI_AWBAR_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_AWDOMAIN_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_M_AXI_AWSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_M_AXI_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_AXI_CDDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_CRRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_M_AXI_WUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_M_BRAM1_Addr_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_M_BRAM1_Dout_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_M_BRAM1_WE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_M_IRQ_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_AXI1_ACADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S_AXI1_ACPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_S_AXI1_ACSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_S_AXI1_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI1_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI2_ACADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S_AXI2_ACPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_S_AXI2_ACSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_S_AXI2_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI2_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI3_ACADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S_AXI3_ACPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_S_AXI3_ACSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_S_AXI3_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI3_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI_ACADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S_AXI_ACPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_S_AXI_ACSNOOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_S_AXI_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S_AXI_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S_AXI_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S_AXI_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_S_BRAM_Din_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_IRQ1_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_U0_S_IRQ2_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_U0_S_IRQ3_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_U0_S_LMB1_ABus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_LMB1_BE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_S_LMB1_WriteDBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_LMB2_ABus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_LMB2_BE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_S_LMB2_WriteDBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_LMB3_ABus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_LMB3_BE_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_S_LMB3_WriteDBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_S_Sl_DBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Sl1_DBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Sl2_DBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Sl3_DBus_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_Data_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_Data_Byte_Enable_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_U0_Trace_Data_Write_Value_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_Exception_Kind_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 4 );
  signal NLW_U0_Trace_Instruction_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_MSR_Reg_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 14 );
  signal NLW_U0_Trace_New_Reg_Value_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_PC_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_U0_Trace_PID_Reg_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_U0_Trace_Reg_Addr_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 4 );
  attribute C_ADDR_SIZE : integer;
  attribute C_ADDR_SIZE of U0 : label is 32;
  attribute C_AXIS_DATA_WIDTH : integer;
  attribute C_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_AXIS_DEST_WIDTH : integer;
  attribute C_AXIS_DEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_ID_WIDTH : integer;
  attribute C_AXIS_ID_WIDTH of U0 : label is 1;
  attribute C_AXIS_USER_WIDTH : integer;
  attribute C_AXIS_USER_WIDTH of U0 : label is 1;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMPARATOR : integer;
  attribute C_COMPARATOR of U0 : label is 0;
  attribute C_DATA_SIZE : integer;
  attribute C_DATA_SIZE of U0 : label is 32;
  attribute C_DISCRETE_WIDTH : integer;
  attribute C_DISCRETE_WIDTH of U0 : label is 1;
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_GPI_SIZE : integer;
  attribute C_GPI_SIZE of U0 : label is 32;
  attribute C_GPO_SIZE : integer;
  attribute C_GPO_SIZE of U0 : label is 32;
  attribute C_INCLUDE_MASK : string;
  attribute C_INCLUDE_MASK of U0 : label is "64'b1111111111111111111111111111111111111100011111111111111000111111";
  attribute C_INPUT_REGISTER : integer;
  attribute C_INPUT_REGISTER of U0 : label is 0;
  attribute C_INTERFACE : integer;
  attribute C_INTERFACE of U0 : label is 3;
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of U0 : label is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of U0 : label is 32;
  attribute C_LMB_PROTOCOL : integer;
  attribute C_LMB_PROTOCOL of U0 : label is 0;
  attribute C_LOW_LATENCY : integer;
  attribute C_LOW_LATENCY of U0 : label is 0;
  attribute C_TEMPORAL_DEPTH1 : integer;
  attribute C_TEMPORAL_DEPTH1 of U0 : label is 0;
  attribute C_TEMPORAL_DEPTH2 : integer;
  attribute C_TEMPORAL_DEPTH2 of U0 : label is 0;
  attribute C_TEST_AXIS_DATA_WIDTH : integer;
  attribute C_TEST_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_TEST_COMPARATOR : integer;
  attribute C_TEST_COMPARATOR of U0 : label is 0;
  attribute C_TEST_LAST_INTERFACE : integer;
  attribute C_TEST_LAST_INTERFACE of U0 : label is 0;
  attribute C_TMR : integer;
  attribute C_TMR of U0 : label is 1;
  attribute C_USE_TMR_DISABLE : integer;
  attribute C_USE_TMR_DISABLE of U0 : label is 0;
  attribute C_VOTER_CHECK : integer;
  attribute C_VOTER_CHECK of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.Clk, ASSOCIATED_BUSIF LMB1:LMB2:LMB3:LMB:S_LMB1:S_LMB2:S_LMB3:S_LMB:BRAM1:BRAM2:BRAM3:BRAM:M_BRAM1:M_BRAM2:M_BRAM3:S_BRAM:S_AXI1:S_AXI2:S_AXI3:M_AXI:M_AXI1:M_AXI2:M_AXI3:S_AXI:S_ACE1:S_ACE2:S_ACE3:M_ACE:M_ACE1:M_ACE2:M_ACE3:S_ACE:S_AXIS1:S_AXIS2:S_AXIS3:M_AXIS:M_AXIS1:M_AXIS2:M_AXIS3:S_AXIS:TRACE1:TRACE2:TRACE3:TRACE:IRQ1:IRQ2:IRA3:IRQ:S_IRQ1:S_IRQ2:S_IRQ3:M_IRQ:IO1:IO2:IO3:IO:GPIO1:GPIO2:GPIO3:GPIO:UART1:UART2:UART3:UART:S_AXIS_TEST:M_AXIS_TEST:IIC1:IIC2:IIC3:IIC, ASSOCIATED_RESET Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute x_interface_info of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute x_interface_info of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of S_AXI1_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARLOCK";
  attribute x_interface_info of S_AXI1_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARREADY";
  attribute x_interface_info of S_AXI1_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARVALID";
  attribute x_interface_info of S_AXI1_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWLOCK";
  attribute x_interface_info of S_AXI1_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWREADY";
  attribute x_interface_info of S_AXI1_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWVALID";
  attribute x_interface_info of S_AXI1_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 BREADY";
  attribute x_interface_info of S_AXI1_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 BVALID";
  attribute x_interface_info of S_AXI1_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RLAST";
  attribute x_interface_info of S_AXI1_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RREADY";
  attribute x_interface_info of S_AXI1_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RVALID";
  attribute x_interface_info of S_AXI1_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 WLAST";
  attribute x_interface_info of S_AXI1_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 WREADY";
  attribute x_interface_info of S_AXI1_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 WVALID";
  attribute x_interface_info of S_AXI2_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARLOCK";
  attribute x_interface_info of S_AXI2_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARREADY";
  attribute x_interface_info of S_AXI2_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARVALID";
  attribute x_interface_info of S_AXI2_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWLOCK";
  attribute x_interface_info of S_AXI2_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWREADY";
  attribute x_interface_info of S_AXI2_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWVALID";
  attribute x_interface_info of S_AXI2_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 BREADY";
  attribute x_interface_info of S_AXI2_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 BVALID";
  attribute x_interface_info of S_AXI2_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RLAST";
  attribute x_interface_info of S_AXI2_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RREADY";
  attribute x_interface_info of S_AXI2_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RVALID";
  attribute x_interface_info of S_AXI2_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 WLAST";
  attribute x_interface_info of S_AXI2_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 WREADY";
  attribute x_interface_info of S_AXI2_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 WVALID";
  attribute x_interface_info of S_AXI3_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARLOCK";
  attribute x_interface_info of S_AXI3_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARREADY";
  attribute x_interface_info of S_AXI3_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARVALID";
  attribute x_interface_info of S_AXI3_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWLOCK";
  attribute x_interface_info of S_AXI3_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWREADY";
  attribute x_interface_info of S_AXI3_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWVALID";
  attribute x_interface_info of S_AXI3_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 BREADY";
  attribute x_interface_info of S_AXI3_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 BVALID";
  attribute x_interface_info of S_AXI3_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RLAST";
  attribute x_interface_info of S_AXI3_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RREADY";
  attribute x_interface_info of S_AXI3_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RVALID";
  attribute x_interface_info of S_AXI3_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 WLAST";
  attribute x_interface_info of S_AXI3_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 WREADY";
  attribute x_interface_info of S_AXI3_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 WVALID";
  attribute x_interface_info of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_info of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute x_interface_info of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute x_interface_info of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute x_interface_info of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute x_interface_info of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute x_interface_info of M_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute x_interface_info of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_info of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute x_interface_info of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute x_interface_info of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute x_interface_parameter of M_AXI_AWID : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute x_interface_info of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of M_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute x_interface_info of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute x_interface_info of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute x_interface_info of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute x_interface_info of S_AXI1_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARADDR";
  attribute x_interface_info of S_AXI1_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARBURST";
  attribute x_interface_info of S_AXI1_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARCACHE";
  attribute x_interface_info of S_AXI1_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARID";
  attribute x_interface_info of S_AXI1_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARLEN";
  attribute x_interface_info of S_AXI1_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARPROT";
  attribute x_interface_info of S_AXI1_ARQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARQOS";
  attribute x_interface_info of S_AXI1_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 ARSIZE";
  attribute x_interface_info of S_AXI1_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWADDR";
  attribute x_interface_info of S_AXI1_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWBURST";
  attribute x_interface_info of S_AXI1_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWCACHE";
  attribute x_interface_info of S_AXI1_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWID";
  attribute x_interface_parameter of S_AXI1_AWID : signal is "XIL_INTERFACENAME S_AXI1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI1_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWLEN";
  attribute x_interface_info of S_AXI1_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWPROT";
  attribute x_interface_info of S_AXI1_AWQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWQOS";
  attribute x_interface_info of S_AXI1_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 AWSIZE";
  attribute x_interface_info of S_AXI1_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 BID";
  attribute x_interface_info of S_AXI1_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 BRESP";
  attribute x_interface_info of S_AXI1_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RDATA";
  attribute x_interface_info of S_AXI1_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RID";
  attribute x_interface_info of S_AXI1_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 RRESP";
  attribute x_interface_info of S_AXI1_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 WDATA";
  attribute x_interface_info of S_AXI1_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI1 WSTRB";
  attribute x_interface_info of S_AXI2_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARADDR";
  attribute x_interface_info of S_AXI2_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARBURST";
  attribute x_interface_info of S_AXI2_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARCACHE";
  attribute x_interface_info of S_AXI2_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARID";
  attribute x_interface_info of S_AXI2_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARLEN";
  attribute x_interface_info of S_AXI2_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARPROT";
  attribute x_interface_info of S_AXI2_ARQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARQOS";
  attribute x_interface_info of S_AXI2_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 ARSIZE";
  attribute x_interface_info of S_AXI2_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWADDR";
  attribute x_interface_info of S_AXI2_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWBURST";
  attribute x_interface_info of S_AXI2_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWCACHE";
  attribute x_interface_info of S_AXI2_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWID";
  attribute x_interface_parameter of S_AXI2_AWID : signal is "XIL_INTERFACENAME S_AXI2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI2_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWLEN";
  attribute x_interface_info of S_AXI2_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWPROT";
  attribute x_interface_info of S_AXI2_AWQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWQOS";
  attribute x_interface_info of S_AXI2_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 AWSIZE";
  attribute x_interface_info of S_AXI2_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 BID";
  attribute x_interface_info of S_AXI2_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 BRESP";
  attribute x_interface_info of S_AXI2_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RDATA";
  attribute x_interface_info of S_AXI2_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RID";
  attribute x_interface_info of S_AXI2_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 RRESP";
  attribute x_interface_info of S_AXI2_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 WDATA";
  attribute x_interface_info of S_AXI2_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI2 WSTRB";
  attribute x_interface_info of S_AXI3_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARADDR";
  attribute x_interface_info of S_AXI3_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARBURST";
  attribute x_interface_info of S_AXI3_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARCACHE";
  attribute x_interface_info of S_AXI3_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARID";
  attribute x_interface_info of S_AXI3_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARLEN";
  attribute x_interface_info of S_AXI3_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARPROT";
  attribute x_interface_info of S_AXI3_ARQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARQOS";
  attribute x_interface_info of S_AXI3_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 ARSIZE";
  attribute x_interface_info of S_AXI3_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWADDR";
  attribute x_interface_info of S_AXI3_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWBURST";
  attribute x_interface_info of S_AXI3_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWCACHE";
  attribute x_interface_info of S_AXI3_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWID";
  attribute x_interface_parameter of S_AXI3_AWID : signal is "XIL_INTERFACENAME S_AXI3, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI3_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWLEN";
  attribute x_interface_info of S_AXI3_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWPROT";
  attribute x_interface_info of S_AXI3_AWQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWQOS";
  attribute x_interface_info of S_AXI3_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 AWSIZE";
  attribute x_interface_info of S_AXI3_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 BID";
  attribute x_interface_info of S_AXI3_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 BRESP";
  attribute x_interface_info of S_AXI3_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RDATA";
  attribute x_interface_info of S_AXI3_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RID";
  attribute x_interface_info of S_AXI3_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 RRESP";
  attribute x_interface_info of S_AXI3_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 WDATA";
  attribute x_interface_info of S_AXI3_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI3 WSTRB";
begin
U0: entity work.bd_hybrid_tmr_ecc_tmr_voter_3_0_tmr_voter
     port map (
      BRAM1_Addr(0 to 31) => B"00000000000000000000000000000000",
      BRAM1_Clk => '0',
      BRAM1_Din(0 to 31) => NLW_U0_BRAM1_Din_UNCONNECTED(0 to 31),
      BRAM1_Dout(0 to 31) => B"00000000000000000000000000000000",
      BRAM1_EN => '0',
      BRAM1_Rst => '0',
      BRAM1_WE(0 to 3) => B"0000",
      BRAM2_Addr(0 to 31) => B"00000000000000000000000000000000",
      BRAM2_Clk => '0',
      BRAM2_Din(0 to 31) => NLW_U0_BRAM2_Din_UNCONNECTED(0 to 31),
      BRAM2_Dout(0 to 31) => B"00000000000000000000000000000000",
      BRAM2_EN => '0',
      BRAM2_Rst => '0',
      BRAM2_WE(0 to 3) => B"0000",
      BRAM3_Addr(0 to 31) => B"00000000000000000000000000000000",
      BRAM3_Clk => '0',
      BRAM3_Din(0 to 31) => NLW_U0_BRAM3_Din_UNCONNECTED(0 to 31),
      BRAM3_Dout(0 to 31) => B"00000000000000000000000000000000",
      BRAM3_EN => '0',
      BRAM3_Rst => '0',
      BRAM3_WE(0 to 3) => B"0000",
      BRAM_Addr(0 to 31) => NLW_U0_BRAM_Addr_UNCONNECTED(0 to 31),
      BRAM_Clk => NLW_U0_BRAM_Clk_UNCONNECTED,
      BRAM_Din(0 to 31) => B"00000000000000000000000000000000",
      BRAM_Dout(0 to 31) => NLW_U0_BRAM_Dout_UNCONNECTED(0 to 31),
      BRAM_EN => NLW_U0_BRAM_EN_UNCONNECTED,
      BRAM_Rst => NLW_U0_BRAM_Rst_UNCONNECTED,
      BRAM_WE(0 to 3) => NLW_U0_BRAM_WE_UNCONNECTED(0 to 3),
      Clk => '0',
      Compare(3 downto 0) => NLW_U0_Compare_UNCONNECTED(3 downto 0),
      Discrete(0) => NLW_U0_Discrete_UNCONNECTED(0),
      Discrete1(0) => '0',
      Discrete2(0) => '0',
      Discrete3(0) => '0',
      GPI(31 downto 0) => B"00000000000000000000000000000000",
      GPI1(31 downto 0) => NLW_U0_GPI1_UNCONNECTED(31 downto 0),
      GPI2(31 downto 0) => NLW_U0_GPI2_UNCONNECTED(31 downto 0),
      GPI3(31 downto 0) => NLW_U0_GPI3_UNCONNECTED(31 downto 0),
      GPO(31 downto 0) => NLW_U0_GPO_UNCONNECTED(31 downto 0),
      GPO1(31 downto 0) => B"00000000000000000000000000000000",
      GPO2(31 downto 0) => B"00000000000000000000000000000000",
      GPO3(31 downto 0) => B"00000000000000000000000000000000",
      GPT(31 downto 0) => NLW_U0_GPT_UNCONNECTED(31 downto 0),
      GPT1(31 downto 0) => B"00000000000000000000000000000000",
      GPT2(31 downto 0) => B"00000000000000000000000000000000",
      GPT3(31 downto 0) => B"00000000000000000000000000000000",
      IIC1_scl_i => NLW_U0_IIC1_scl_i_UNCONNECTED,
      IIC1_scl_o => '0',
      IIC1_scl_t => '0',
      IIC1_sda_i => NLW_U0_IIC1_sda_i_UNCONNECTED,
      IIC1_sda_o => '0',
      IIC1_sda_t => '0',
      IIC2_scl_i => NLW_U0_IIC2_scl_i_UNCONNECTED,
      IIC2_scl_o => '0',
      IIC2_scl_t => '0',
      IIC2_sda_i => NLW_U0_IIC2_sda_i_UNCONNECTED,
      IIC2_sda_o => '0',
      IIC2_sda_t => '0',
      IIC3_scl_i => NLW_U0_IIC3_scl_i_UNCONNECTED,
      IIC3_scl_o => '0',
      IIC3_scl_t => '0',
      IIC3_sda_i => NLW_U0_IIC3_sda_i_UNCONNECTED,
      IIC3_sda_o => '0',
      IIC3_sda_t => '0',
      IIC_scl_i => '0',
      IIC_scl_o => NLW_U0_IIC_scl_o_UNCONNECTED,
      IIC_scl_t => NLW_U0_IIC_scl_t_UNCONNECTED,
      IIC_sda_i => '0',
      IIC_sda_o => NLW_U0_IIC_sda_o_UNCONNECTED,
      IIC_sda_t => NLW_U0_IIC_sda_t_UNCONNECTED,
      IO1_Addr_Strobe => '0',
      IO1_Address(31 downto 0) => B"00000000000000000000000000000000",
      IO1_Byte_Enable(3 downto 0) => B"0000",
      IO1_Read_Data(31 downto 0) => NLW_U0_IO1_Read_Data_UNCONNECTED(31 downto 0),
      IO1_Read_Strobe => '0',
      IO1_Ready => NLW_U0_IO1_Ready_UNCONNECTED,
      IO1_Write_Data(31 downto 0) => B"00000000000000000000000000000000",
      IO1_Write_Strobe => '0',
      IO2_Addr_Strobe => '0',
      IO2_Address(31 downto 0) => B"00000000000000000000000000000000",
      IO2_Byte_Enable(3 downto 0) => B"0000",
      IO2_Read_Data(31 downto 0) => NLW_U0_IO2_Read_Data_UNCONNECTED(31 downto 0),
      IO2_Read_Strobe => '0',
      IO2_Ready => NLW_U0_IO2_Ready_UNCONNECTED,
      IO2_Write_Data(31 downto 0) => B"00000000000000000000000000000000",
      IO2_Write_Strobe => '0',
      IO3_Addr_Strobe => '0',
      IO3_Address(31 downto 0) => B"00000000000000000000000000000000",
      IO3_Byte_Enable(3 downto 0) => B"0000",
      IO3_Read_Data(31 downto 0) => NLW_U0_IO3_Read_Data_UNCONNECTED(31 downto 0),
      IO3_Read_Strobe => '0',
      IO3_Ready => NLW_U0_IO3_Ready_UNCONNECTED,
      IO3_Write_Data(31 downto 0) => B"00000000000000000000000000000000",
      IO3_Write_Strobe => '0',
      IO_Addr_Strobe => NLW_U0_IO_Addr_Strobe_UNCONNECTED,
      IO_Address(31 downto 0) => NLW_U0_IO_Address_UNCONNECTED(31 downto 0),
      IO_Byte_Enable(3 downto 0) => NLW_U0_IO_Byte_Enable_UNCONNECTED(3 downto 0),
      IO_Read_Data(31 downto 0) => B"00000000000000000000000000000000",
      IO_Read_Strobe => NLW_U0_IO_Read_Strobe_UNCONNECTED,
      IO_Ready => '0',
      IO_Write_Data(31 downto 0) => NLW_U0_IO_Write_Data_UNCONNECTED(31 downto 0),
      IO_Write_Strobe => NLW_U0_IO_Write_Strobe_UNCONNECTED,
      IRQ => '0',
      IRQ1 => NLW_U0_IRQ1_UNCONNECTED,
      IRQ1_Ack(0 to 1) => B"00",
      IRQ1_Address(0 to 31) => NLW_U0_IRQ1_Address_UNCONNECTED(0 to 31),
      IRQ2 => NLW_U0_IRQ2_UNCONNECTED,
      IRQ2_Ack(0 to 1) => B"00",
      IRQ2_Address(0 to 31) => NLW_U0_IRQ2_Address_UNCONNECTED(0 to 31),
      IRQ3 => NLW_U0_IRQ3_UNCONNECTED,
      IRQ3_Ack(0 to 1) => B"00",
      IRQ3_Address(0 to 31) => NLW_U0_IRQ3_Address_UNCONNECTED(0 to 31),
      IRQ_Ack(0 to 1) => NLW_U0_IRQ_Ack_UNCONNECTED(0 to 1),
      IRQ_Address(0 to 31) => B"00000000000000000000000000000000",
      LMB1_ABus(0 to 31) => B"00000000000000000000000000000000",
      LMB1_AddrStrobe => '0',
      LMB1_BE(0 to 3) => B"0000",
      LMB1_ReadStrobe => '0',
      LMB1_WriteDBus(0 to 31) => B"00000000000000000000000000000000",
      LMB1_WriteStrobe => '0',
      LMB2_ABus(0 to 31) => B"00000000000000000000000000000000",
      LMB2_AddrStrobe => '0',
      LMB2_BE(0 to 3) => B"0000",
      LMB2_ReadStrobe => '0',
      LMB2_WriteDBus(0 to 31) => B"00000000000000000000000000000000",
      LMB2_WriteStrobe => '0',
      LMB3_ABus(0 to 31) => B"00000000000000000000000000000000",
      LMB3_AddrStrobe => '0',
      LMB3_BE(0 to 3) => B"0000",
      LMB3_ReadStrobe => '0',
      LMB3_WriteDBus(0 to 31) => B"00000000000000000000000000000000",
      LMB3_WriteStrobe => '0',
      LMB_ABus(0 to 31) => NLW_U0_LMB_ABus_UNCONNECTED(0 to 31),
      LMB_AddrStrobe => NLW_U0_LMB_AddrStrobe_UNCONNECTED,
      LMB_BE(0 to 3) => NLW_U0_LMB_BE_UNCONNECTED(0 to 3),
      LMB_ReadStrobe => NLW_U0_LMB_ReadStrobe_UNCONNECTED,
      LMB_WriteDBus(0 to 31) => NLW_U0_LMB_WriteDBus_UNCONNECTED(0 to 31),
      LMB_WriteStrobe => NLW_U0_LMB_WriteStrobe_UNCONNECTED,
      M_AXI1_ACADDR(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI1_ACPROT(2 downto 0) => B"000",
      M_AXI1_ACREADY => NLW_U0_M_AXI1_ACREADY_UNCONNECTED,
      M_AXI1_ACSNOOP(3 downto 0) => B"0000",
      M_AXI1_ACVALID => '0',
      M_AXI1_ARADDR(31 downto 0) => NLW_U0_M_AXI1_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI1_ARBAR(1 downto 0) => NLW_U0_M_AXI1_ARBAR_UNCONNECTED(1 downto 0),
      M_AXI1_ARBURST(1 downto 0) => NLW_U0_M_AXI1_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI1_ARCACHE(3 downto 0) => NLW_U0_M_AXI1_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI1_ARDOMAIN(1 downto 0) => NLW_U0_M_AXI1_ARDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI1_ARID(0) => NLW_U0_M_AXI1_ARID_UNCONNECTED(0),
      M_AXI1_ARLEN(7 downto 0) => NLW_U0_M_AXI1_ARLEN_UNCONNECTED(7 downto 0),
      M_AXI1_ARLOCK => NLW_U0_M_AXI1_ARLOCK_UNCONNECTED,
      M_AXI1_ARPROT(2 downto 0) => NLW_U0_M_AXI1_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI1_ARQOS(3 downto 0) => NLW_U0_M_AXI1_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI1_ARREADY => '0',
      M_AXI1_ARSIZE(2 downto 0) => NLW_U0_M_AXI1_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI1_ARSNOOP(3 downto 0) => NLW_U0_M_AXI1_ARSNOOP_UNCONNECTED(3 downto 0),
      M_AXI1_ARUSER(0) => NLW_U0_M_AXI1_ARUSER_UNCONNECTED(0),
      M_AXI1_ARVALID => NLW_U0_M_AXI1_ARVALID_UNCONNECTED,
      M_AXI1_AWADDR(31 downto 0) => NLW_U0_M_AXI1_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI1_AWBAR(1 downto 0) => NLW_U0_M_AXI1_AWBAR_UNCONNECTED(1 downto 0),
      M_AXI1_AWBURST(1 downto 0) => NLW_U0_M_AXI1_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI1_AWCACHE(3 downto 0) => NLW_U0_M_AXI1_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI1_AWDOMAIN(1 downto 0) => NLW_U0_M_AXI1_AWDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI1_AWID(0) => NLW_U0_M_AXI1_AWID_UNCONNECTED(0),
      M_AXI1_AWLEN(7 downto 0) => NLW_U0_M_AXI1_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI1_AWLOCK => NLW_U0_M_AXI1_AWLOCK_UNCONNECTED,
      M_AXI1_AWPROT(2 downto 0) => NLW_U0_M_AXI1_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI1_AWQOS(3 downto 0) => NLW_U0_M_AXI1_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI1_AWREADY => '0',
      M_AXI1_AWSIZE(2 downto 0) => NLW_U0_M_AXI1_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI1_AWSNOOP(2 downto 0) => NLW_U0_M_AXI1_AWSNOOP_UNCONNECTED(2 downto 0),
      M_AXI1_AWUSER(0) => NLW_U0_M_AXI1_AWUSER_UNCONNECTED(0),
      M_AXI1_AWVALID => NLW_U0_M_AXI1_AWVALID_UNCONNECTED,
      M_AXI1_BID(0) => '0',
      M_AXI1_BREADY => NLW_U0_M_AXI1_BREADY_UNCONNECTED,
      M_AXI1_BRESP(1 downto 0) => B"00",
      M_AXI1_BUSER(0) => '0',
      M_AXI1_BVALID => '0',
      M_AXI1_CDDATA(31 downto 0) => NLW_U0_M_AXI1_CDDATA_UNCONNECTED(31 downto 0),
      M_AXI1_CDLAST => NLW_U0_M_AXI1_CDLAST_UNCONNECTED,
      M_AXI1_CDREADY => '0',
      M_AXI1_CDVALID => NLW_U0_M_AXI1_CDVALID_UNCONNECTED,
      M_AXI1_CRREADY => '0',
      M_AXI1_CRRESP(4 downto 0) => NLW_U0_M_AXI1_CRRESP_UNCONNECTED(4 downto 0),
      M_AXI1_CRVALID => NLW_U0_M_AXI1_CRVALID_UNCONNECTED,
      M_AXI1_RACK => NLW_U0_M_AXI1_RACK_UNCONNECTED,
      M_AXI1_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI1_RID(0) => '0',
      M_AXI1_RLAST => '0',
      M_AXI1_RREADY => NLW_U0_M_AXI1_RREADY_UNCONNECTED,
      M_AXI1_RRESP(1 downto 0) => B"00",
      M_AXI1_RUSER(0) => '0',
      M_AXI1_RVALID => '0',
      M_AXI1_WACK => NLW_U0_M_AXI1_WACK_UNCONNECTED,
      M_AXI1_WDATA(31 downto 0) => NLW_U0_M_AXI1_WDATA_UNCONNECTED(31 downto 0),
      M_AXI1_WLAST => NLW_U0_M_AXI1_WLAST_UNCONNECTED,
      M_AXI1_WREADY => '0',
      M_AXI1_WSTRB(3 downto 0) => NLW_U0_M_AXI1_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI1_WUSER(0) => NLW_U0_M_AXI1_WUSER_UNCONNECTED(0),
      M_AXI1_WVALID => NLW_U0_M_AXI1_WVALID_UNCONNECTED,
      M_AXI2_ACADDR(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI2_ACPROT(2 downto 0) => B"000",
      M_AXI2_ACREADY => NLW_U0_M_AXI2_ACREADY_UNCONNECTED,
      M_AXI2_ACSNOOP(3 downto 0) => B"0000",
      M_AXI2_ACVALID => '0',
      M_AXI2_ARADDR(31 downto 0) => NLW_U0_M_AXI2_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI2_ARBAR(1 downto 0) => NLW_U0_M_AXI2_ARBAR_UNCONNECTED(1 downto 0),
      M_AXI2_ARBURST(1 downto 0) => NLW_U0_M_AXI2_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI2_ARCACHE(3 downto 0) => NLW_U0_M_AXI2_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI2_ARDOMAIN(1 downto 0) => NLW_U0_M_AXI2_ARDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI2_ARID(0) => NLW_U0_M_AXI2_ARID_UNCONNECTED(0),
      M_AXI2_ARLEN(7 downto 0) => NLW_U0_M_AXI2_ARLEN_UNCONNECTED(7 downto 0),
      M_AXI2_ARLOCK => NLW_U0_M_AXI2_ARLOCK_UNCONNECTED,
      M_AXI2_ARPROT(2 downto 0) => NLW_U0_M_AXI2_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI2_ARQOS(3 downto 0) => NLW_U0_M_AXI2_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI2_ARREADY => '0',
      M_AXI2_ARSIZE(2 downto 0) => NLW_U0_M_AXI2_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI2_ARSNOOP(3 downto 0) => NLW_U0_M_AXI2_ARSNOOP_UNCONNECTED(3 downto 0),
      M_AXI2_ARUSER(0) => NLW_U0_M_AXI2_ARUSER_UNCONNECTED(0),
      M_AXI2_ARVALID => NLW_U0_M_AXI2_ARVALID_UNCONNECTED,
      M_AXI2_AWADDR(31 downto 0) => NLW_U0_M_AXI2_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI2_AWBAR(1 downto 0) => NLW_U0_M_AXI2_AWBAR_UNCONNECTED(1 downto 0),
      M_AXI2_AWBURST(1 downto 0) => NLW_U0_M_AXI2_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI2_AWCACHE(3 downto 0) => NLW_U0_M_AXI2_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI2_AWDOMAIN(1 downto 0) => NLW_U0_M_AXI2_AWDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI2_AWID(0) => NLW_U0_M_AXI2_AWID_UNCONNECTED(0),
      M_AXI2_AWLEN(7 downto 0) => NLW_U0_M_AXI2_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI2_AWLOCK => NLW_U0_M_AXI2_AWLOCK_UNCONNECTED,
      M_AXI2_AWPROT(2 downto 0) => NLW_U0_M_AXI2_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI2_AWQOS(3 downto 0) => NLW_U0_M_AXI2_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI2_AWREADY => '0',
      M_AXI2_AWSIZE(2 downto 0) => NLW_U0_M_AXI2_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI2_AWSNOOP(2 downto 0) => NLW_U0_M_AXI2_AWSNOOP_UNCONNECTED(2 downto 0),
      M_AXI2_AWUSER(0) => NLW_U0_M_AXI2_AWUSER_UNCONNECTED(0),
      M_AXI2_AWVALID => NLW_U0_M_AXI2_AWVALID_UNCONNECTED,
      M_AXI2_BID(0) => '0',
      M_AXI2_BREADY => NLW_U0_M_AXI2_BREADY_UNCONNECTED,
      M_AXI2_BRESP(1 downto 0) => B"00",
      M_AXI2_BUSER(0) => '0',
      M_AXI2_BVALID => '0',
      M_AXI2_CDDATA(31 downto 0) => NLW_U0_M_AXI2_CDDATA_UNCONNECTED(31 downto 0),
      M_AXI2_CDLAST => NLW_U0_M_AXI2_CDLAST_UNCONNECTED,
      M_AXI2_CDREADY => '0',
      M_AXI2_CDVALID => NLW_U0_M_AXI2_CDVALID_UNCONNECTED,
      M_AXI2_CRREADY => '0',
      M_AXI2_CRRESP(4 downto 0) => NLW_U0_M_AXI2_CRRESP_UNCONNECTED(4 downto 0),
      M_AXI2_CRVALID => NLW_U0_M_AXI2_CRVALID_UNCONNECTED,
      M_AXI2_RACK => NLW_U0_M_AXI2_RACK_UNCONNECTED,
      M_AXI2_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI2_RID(0) => '0',
      M_AXI2_RLAST => '0',
      M_AXI2_RREADY => NLW_U0_M_AXI2_RREADY_UNCONNECTED,
      M_AXI2_RRESP(1 downto 0) => B"00",
      M_AXI2_RUSER(0) => '0',
      M_AXI2_RVALID => '0',
      M_AXI2_WACK => NLW_U0_M_AXI2_WACK_UNCONNECTED,
      M_AXI2_WDATA(31 downto 0) => NLW_U0_M_AXI2_WDATA_UNCONNECTED(31 downto 0),
      M_AXI2_WLAST => NLW_U0_M_AXI2_WLAST_UNCONNECTED,
      M_AXI2_WREADY => '0',
      M_AXI2_WSTRB(3 downto 0) => NLW_U0_M_AXI2_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI2_WUSER(0) => NLW_U0_M_AXI2_WUSER_UNCONNECTED(0),
      M_AXI2_WVALID => NLW_U0_M_AXI2_WVALID_UNCONNECTED,
      M_AXI3_ACADDR(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI3_ACPROT(2 downto 0) => B"000",
      M_AXI3_ACREADY => NLW_U0_M_AXI3_ACREADY_UNCONNECTED,
      M_AXI3_ACSNOOP(3 downto 0) => B"0000",
      M_AXI3_ACVALID => '0',
      M_AXI3_ARADDR(31 downto 0) => NLW_U0_M_AXI3_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI3_ARBAR(1 downto 0) => NLW_U0_M_AXI3_ARBAR_UNCONNECTED(1 downto 0),
      M_AXI3_ARBURST(1 downto 0) => NLW_U0_M_AXI3_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI3_ARCACHE(3 downto 0) => NLW_U0_M_AXI3_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI3_ARDOMAIN(1 downto 0) => NLW_U0_M_AXI3_ARDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI3_ARID(0) => NLW_U0_M_AXI3_ARID_UNCONNECTED(0),
      M_AXI3_ARLEN(7 downto 0) => NLW_U0_M_AXI3_ARLEN_UNCONNECTED(7 downto 0),
      M_AXI3_ARLOCK => NLW_U0_M_AXI3_ARLOCK_UNCONNECTED,
      M_AXI3_ARPROT(2 downto 0) => NLW_U0_M_AXI3_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI3_ARQOS(3 downto 0) => NLW_U0_M_AXI3_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI3_ARREADY => '0',
      M_AXI3_ARSIZE(2 downto 0) => NLW_U0_M_AXI3_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI3_ARSNOOP(3 downto 0) => NLW_U0_M_AXI3_ARSNOOP_UNCONNECTED(3 downto 0),
      M_AXI3_ARUSER(0) => NLW_U0_M_AXI3_ARUSER_UNCONNECTED(0),
      M_AXI3_ARVALID => NLW_U0_M_AXI3_ARVALID_UNCONNECTED,
      M_AXI3_AWADDR(31 downto 0) => NLW_U0_M_AXI3_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI3_AWBAR(1 downto 0) => NLW_U0_M_AXI3_AWBAR_UNCONNECTED(1 downto 0),
      M_AXI3_AWBURST(1 downto 0) => NLW_U0_M_AXI3_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI3_AWCACHE(3 downto 0) => NLW_U0_M_AXI3_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI3_AWDOMAIN(1 downto 0) => NLW_U0_M_AXI3_AWDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI3_AWID(0) => NLW_U0_M_AXI3_AWID_UNCONNECTED(0),
      M_AXI3_AWLEN(7 downto 0) => NLW_U0_M_AXI3_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI3_AWLOCK => NLW_U0_M_AXI3_AWLOCK_UNCONNECTED,
      M_AXI3_AWPROT(2 downto 0) => NLW_U0_M_AXI3_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI3_AWQOS(3 downto 0) => NLW_U0_M_AXI3_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI3_AWREADY => '0',
      M_AXI3_AWSIZE(2 downto 0) => NLW_U0_M_AXI3_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI3_AWSNOOP(2 downto 0) => NLW_U0_M_AXI3_AWSNOOP_UNCONNECTED(2 downto 0),
      M_AXI3_AWUSER(0) => NLW_U0_M_AXI3_AWUSER_UNCONNECTED(0),
      M_AXI3_AWVALID => NLW_U0_M_AXI3_AWVALID_UNCONNECTED,
      M_AXI3_BID(0) => '0',
      M_AXI3_BREADY => NLW_U0_M_AXI3_BREADY_UNCONNECTED,
      M_AXI3_BRESP(1 downto 0) => B"00",
      M_AXI3_BUSER(0) => '0',
      M_AXI3_BVALID => '0',
      M_AXI3_CDDATA(31 downto 0) => NLW_U0_M_AXI3_CDDATA_UNCONNECTED(31 downto 0),
      M_AXI3_CDLAST => NLW_U0_M_AXI3_CDLAST_UNCONNECTED,
      M_AXI3_CDREADY => '0',
      M_AXI3_CDVALID => NLW_U0_M_AXI3_CDVALID_UNCONNECTED,
      M_AXI3_CRREADY => '0',
      M_AXI3_CRRESP(4 downto 0) => NLW_U0_M_AXI3_CRRESP_UNCONNECTED(4 downto 0),
      M_AXI3_CRVALID => NLW_U0_M_AXI3_CRVALID_UNCONNECTED,
      M_AXI3_RACK => NLW_U0_M_AXI3_RACK_UNCONNECTED,
      M_AXI3_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI3_RID(0) => '0',
      M_AXI3_RLAST => '0',
      M_AXI3_RREADY => NLW_U0_M_AXI3_RREADY_UNCONNECTED,
      M_AXI3_RRESP(1 downto 0) => B"00",
      M_AXI3_RUSER(0) => '0',
      M_AXI3_RVALID => '0',
      M_AXI3_WACK => NLW_U0_M_AXI3_WACK_UNCONNECTED,
      M_AXI3_WDATA(31 downto 0) => NLW_U0_M_AXI3_WDATA_UNCONNECTED(31 downto 0),
      M_AXI3_WLAST => NLW_U0_M_AXI3_WLAST_UNCONNECTED,
      M_AXI3_WREADY => '0',
      M_AXI3_WSTRB(3 downto 0) => NLW_U0_M_AXI3_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI3_WUSER(0) => NLW_U0_M_AXI3_WUSER_UNCONNECTED(0),
      M_AXI3_WVALID => NLW_U0_M_AXI3_WVALID_UNCONNECTED,
      M_AXIS1_TDATA(31 downto 0) => NLW_U0_M_AXIS1_TDATA_UNCONNECTED(31 downto 0),
      M_AXIS1_TDEST(0) => NLW_U0_M_AXIS1_TDEST_UNCONNECTED(0),
      M_AXIS1_TID(0) => NLW_U0_M_AXIS1_TID_UNCONNECTED(0),
      M_AXIS1_TKEEP(3 downto 0) => NLW_U0_M_AXIS1_TKEEP_UNCONNECTED(3 downto 0),
      M_AXIS1_TLAST => NLW_U0_M_AXIS1_TLAST_UNCONNECTED,
      M_AXIS1_TREADY => '0',
      M_AXIS1_TSTRB(3 downto 0) => NLW_U0_M_AXIS1_TSTRB_UNCONNECTED(3 downto 0),
      M_AXIS1_TUSER(0) => NLW_U0_M_AXIS1_TUSER_UNCONNECTED(0),
      M_AXIS1_TVALID => NLW_U0_M_AXIS1_TVALID_UNCONNECTED,
      M_AXIS2_TDATA(31 downto 0) => NLW_U0_M_AXIS2_TDATA_UNCONNECTED(31 downto 0),
      M_AXIS2_TDEST(0) => NLW_U0_M_AXIS2_TDEST_UNCONNECTED(0),
      M_AXIS2_TID(0) => NLW_U0_M_AXIS2_TID_UNCONNECTED(0),
      M_AXIS2_TKEEP(3 downto 0) => NLW_U0_M_AXIS2_TKEEP_UNCONNECTED(3 downto 0),
      M_AXIS2_TLAST => NLW_U0_M_AXIS2_TLAST_UNCONNECTED,
      M_AXIS2_TREADY => '0',
      M_AXIS2_TSTRB(3 downto 0) => NLW_U0_M_AXIS2_TSTRB_UNCONNECTED(3 downto 0),
      M_AXIS2_TUSER(0) => NLW_U0_M_AXIS2_TUSER_UNCONNECTED(0),
      M_AXIS2_TVALID => NLW_U0_M_AXIS2_TVALID_UNCONNECTED,
      M_AXIS3_TDATA(31 downto 0) => NLW_U0_M_AXIS3_TDATA_UNCONNECTED(31 downto 0),
      M_AXIS3_TDEST(0) => NLW_U0_M_AXIS3_TDEST_UNCONNECTED(0),
      M_AXIS3_TID(0) => NLW_U0_M_AXIS3_TID_UNCONNECTED(0),
      M_AXIS3_TKEEP(3 downto 0) => NLW_U0_M_AXIS3_TKEEP_UNCONNECTED(3 downto 0),
      M_AXIS3_TLAST => NLW_U0_M_AXIS3_TLAST_UNCONNECTED,
      M_AXIS3_TREADY => '0',
      M_AXIS3_TSTRB(3 downto 0) => NLW_U0_M_AXIS3_TSTRB_UNCONNECTED(3 downto 0),
      M_AXIS3_TUSER(0) => NLW_U0_M_AXIS3_TUSER_UNCONNECTED(0),
      M_AXIS3_TVALID => NLW_U0_M_AXIS3_TVALID_UNCONNECTED,
      M_AXIS_TDATA(31 downto 0) => NLW_U0_M_AXIS_TDATA_UNCONNECTED(31 downto 0),
      M_AXIS_TDATA_Test(31 downto 0) => NLW_U0_M_AXIS_TDATA_Test_UNCONNECTED(31 downto 0),
      M_AXIS_TDEST(0) => NLW_U0_M_AXIS_TDEST_UNCONNECTED(0),
      M_AXIS_TID(0) => NLW_U0_M_AXIS_TID_UNCONNECTED(0),
      M_AXIS_TKEEP(3 downto 0) => NLW_U0_M_AXIS_TKEEP_UNCONNECTED(3 downto 0),
      M_AXIS_TLAST => NLW_U0_M_AXIS_TLAST_UNCONNECTED,
      M_AXIS_TLAST_Test => NLW_U0_M_AXIS_TLAST_Test_UNCONNECTED,
      M_AXIS_TREADY => '0',
      M_AXIS_TREADY_Test => '0',
      M_AXIS_TSTRB(3 downto 0) => NLW_U0_M_AXIS_TSTRB_UNCONNECTED(3 downto 0),
      M_AXIS_TUSER(0) => NLW_U0_M_AXIS_TUSER_UNCONNECTED(0),
      M_AXIS_TVALID => NLW_U0_M_AXIS_TVALID_UNCONNECTED,
      M_AXIS_TVALID_Test => NLW_U0_M_AXIS_TVALID_Test_UNCONNECTED,
      M_AXI_ACADDR(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_ACPROT(2 downto 0) => B"000",
      M_AXI_ACREADY => NLW_U0_M_AXI_ACREADY_UNCONNECTED,
      M_AXI_ACSNOOP(3 downto 0) => B"0000",
      M_AXI_ACVALID => '0',
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBAR(1 downto 0) => NLW_U0_M_AXI_ARBAR_UNCONNECTED(1 downto 0),
      M_AXI_ARBURST(1 downto 0) => M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARDOMAIN(1 downto 0) => NLW_U0_M_AXI_ARDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI_ARID(0) => M_AXI_ARID(0),
      M_AXI_ARLEN(7 downto 0) => M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARPROT(2 downto 0) => M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => M_AXI_ARQOS(3 downto 0),
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARSIZE(2 downto 0) => M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARSNOOP(3 downto 0) => NLW_U0_M_AXI_ARSNOOP_UNCONNECTED(3 downto 0),
      M_AXI_ARUSER(0) => NLW_U0_M_AXI_ARUSER_UNCONNECTED(0),
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBAR(1 downto 0) => NLW_U0_M_AXI_AWBAR_UNCONNECTED(1 downto 0),
      M_AXI_AWBURST(1 downto 0) => M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWDOMAIN(1 downto 0) => NLW_U0_M_AXI_AWDOMAIN_UNCONNECTED(1 downto 0),
      M_AXI_AWID(0) => M_AXI_AWID(0),
      M_AXI_AWLEN(7 downto 0) => M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWPROT(2 downto 0) => M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => M_AXI_AWQOS(3 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWSNOOP(2 downto 0) => NLW_U0_M_AXI_AWSNOOP_UNCONNECTED(2 downto 0),
      M_AXI_AWUSER(0) => NLW_U0_M_AXI_AWUSER_UNCONNECTED(0),
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BID(0) => M_AXI_BID(0),
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => M_AXI_BRESP(1 downto 0),
      M_AXI_BUSER(0) => '0',
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_CDDATA(31 downto 0) => NLW_U0_M_AXI_CDDATA_UNCONNECTED(31 downto 0),
      M_AXI_CDLAST => NLW_U0_M_AXI_CDLAST_UNCONNECTED,
      M_AXI_CDREADY => '0',
      M_AXI_CDVALID => NLW_U0_M_AXI_CDVALID_UNCONNECTED,
      M_AXI_CRREADY => '0',
      M_AXI_CRRESP(4 downto 0) => NLW_U0_M_AXI_CRRESP_UNCONNECTED(4 downto 0),
      M_AXI_CRVALID => NLW_U0_M_AXI_CRVALID_UNCONNECTED,
      M_AXI_RACK => NLW_U0_M_AXI_RACK_UNCONNECTED,
      M_AXI_RDATA(31 downto 0) => M_AXI_RDATA(31 downto 0),
      M_AXI_RID(0) => M_AXI_RID(0),
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => M_AXI_RRESP(1 downto 0),
      M_AXI_RUSER(0) => '0',
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WACK => NLW_U0_M_AXI_WACK_UNCONNECTED,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      M_AXI_WUSER(0) => NLW_U0_M_AXI_WUSER_UNCONNECTED(0),
      M_AXI_WVALID => M_AXI_WVALID,
      M_BRAM1_Addr(0 to 31) => NLW_U0_M_BRAM1_Addr_UNCONNECTED(0 to 31),
      M_BRAM1_Clk => NLW_U0_M_BRAM1_Clk_UNCONNECTED,
      M_BRAM1_Din(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM1_Dout(0 to 31) => NLW_U0_M_BRAM1_Dout_UNCONNECTED(0 to 31),
      M_BRAM1_EN => NLW_U0_M_BRAM1_EN_UNCONNECTED,
      M_BRAM1_Rst => NLW_U0_M_BRAM1_Rst_UNCONNECTED,
      M_BRAM1_WE(0 to 3) => NLW_U0_M_BRAM1_WE_UNCONNECTED(0 to 3),
      M_BRAM2_Addr(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM2_Clk => '0',
      M_BRAM2_Din(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM2_Dout(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM2_EN => '0',
      M_BRAM2_Rst => '0',
      M_BRAM2_WE(0 to 3) => B"0000",
      M_BRAM3_Addr(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM3_Clk => '0',
      M_BRAM3_Din(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM3_Dout(0 to 31) => B"00000000000000000000000000000000",
      M_BRAM3_EN => '0',
      M_BRAM3_Rst => '0',
      M_BRAM3_WE(0 to 3) => B"0000",
      M_BRAM_MisMatch => NLW_U0_M_BRAM_MisMatch_UNCONNECTED,
      M_IRQ => NLW_U0_M_IRQ_UNCONNECTED,
      M_IRQ_Ack(0 to 1) => B"00",
      M_IRQ_Address(0 to 31) => NLW_U0_M_IRQ_Address_UNCONNECTED(0 to 31),
      Rst => '0',
      S_AXI1_ACADDR(31 downto 0) => NLW_U0_S_AXI1_ACADDR_UNCONNECTED(31 downto 0),
      S_AXI1_ACPROT(2 downto 0) => NLW_U0_S_AXI1_ACPROT_UNCONNECTED(2 downto 0),
      S_AXI1_ACREADY => '0',
      S_AXI1_ACSNOOP(3 downto 0) => NLW_U0_S_AXI1_ACSNOOP_UNCONNECTED(3 downto 0),
      S_AXI1_ACVALID => NLW_U0_S_AXI1_ACVALID_UNCONNECTED,
      S_AXI1_ARADDR(31 downto 0) => S_AXI1_ARADDR(31 downto 0),
      S_AXI1_ARBAR(1 downto 0) => B"00",
      S_AXI1_ARBURST(1 downto 0) => S_AXI1_ARBURST(1 downto 0),
      S_AXI1_ARCACHE(3 downto 0) => S_AXI1_ARCACHE(3 downto 0),
      S_AXI1_ARDOMAIN(1 downto 0) => B"00",
      S_AXI1_ARID(0) => S_AXI1_ARID(0),
      S_AXI1_ARLEN(7 downto 0) => S_AXI1_ARLEN(7 downto 0),
      S_AXI1_ARLOCK => S_AXI1_ARLOCK,
      S_AXI1_ARPROT(2 downto 0) => S_AXI1_ARPROT(2 downto 0),
      S_AXI1_ARQOS(3 downto 0) => S_AXI1_ARQOS(3 downto 0),
      S_AXI1_ARREADY => S_AXI1_ARREADY,
      S_AXI1_ARSIZE(2 downto 0) => S_AXI1_ARSIZE(2 downto 0),
      S_AXI1_ARSNOOP(3 downto 0) => B"0000",
      S_AXI1_ARUSER(0) => '0',
      S_AXI1_ARVALID => S_AXI1_ARVALID,
      S_AXI1_AWADDR(31 downto 0) => S_AXI1_AWADDR(31 downto 0),
      S_AXI1_AWBAR(1 downto 0) => B"00",
      S_AXI1_AWBURST(1 downto 0) => S_AXI1_AWBURST(1 downto 0),
      S_AXI1_AWCACHE(3 downto 0) => S_AXI1_AWCACHE(3 downto 0),
      S_AXI1_AWDOMAIN(1 downto 0) => B"00",
      S_AXI1_AWID(0) => S_AXI1_AWID(0),
      S_AXI1_AWLEN(7 downto 0) => S_AXI1_AWLEN(7 downto 0),
      S_AXI1_AWLOCK => S_AXI1_AWLOCK,
      S_AXI1_AWPROT(2 downto 0) => S_AXI1_AWPROT(2 downto 0),
      S_AXI1_AWQOS(3 downto 0) => S_AXI1_AWQOS(3 downto 0),
      S_AXI1_AWREADY => S_AXI1_AWREADY,
      S_AXI1_AWSIZE(2 downto 0) => S_AXI1_AWSIZE(2 downto 0),
      S_AXI1_AWSNOOP(2 downto 0) => B"000",
      S_AXI1_AWUSER(0) => '0',
      S_AXI1_AWVALID => S_AXI1_AWVALID,
      S_AXI1_BID(0) => S_AXI1_BID(0),
      S_AXI1_BREADY => S_AXI1_BREADY,
      S_AXI1_BRESP(1 downto 0) => S_AXI1_BRESP(1 downto 0),
      S_AXI1_BUSER(0) => NLW_U0_S_AXI1_BUSER_UNCONNECTED(0),
      S_AXI1_BVALID => S_AXI1_BVALID,
      S_AXI1_CDDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI1_CDLAST => '0',
      S_AXI1_CDREADY => NLW_U0_S_AXI1_CDREADY_UNCONNECTED,
      S_AXI1_CDVALID => '0',
      S_AXI1_CRREADY => NLW_U0_S_AXI1_CRREADY_UNCONNECTED,
      S_AXI1_CRRESP(4 downto 0) => B"00000",
      S_AXI1_CRVALID => '0',
      S_AXI1_RACK => '0',
      S_AXI1_RDATA(31 downto 0) => S_AXI1_RDATA(31 downto 0),
      S_AXI1_RID(0) => S_AXI1_RID(0),
      S_AXI1_RLAST => S_AXI1_RLAST,
      S_AXI1_RREADY => S_AXI1_RREADY,
      S_AXI1_RRESP(1 downto 0) => S_AXI1_RRESP(1 downto 0),
      S_AXI1_RUSER(0) => NLW_U0_S_AXI1_RUSER_UNCONNECTED(0),
      S_AXI1_RVALID => S_AXI1_RVALID,
      S_AXI1_WACK => '0',
      S_AXI1_WDATA(31 downto 0) => S_AXI1_WDATA(31 downto 0),
      S_AXI1_WLAST => S_AXI1_WLAST,
      S_AXI1_WREADY => S_AXI1_WREADY,
      S_AXI1_WSTRB(3 downto 0) => S_AXI1_WSTRB(3 downto 0),
      S_AXI1_WUSER(0) => '0',
      S_AXI1_WVALID => S_AXI1_WVALID,
      S_AXI2_ACADDR(31 downto 0) => NLW_U0_S_AXI2_ACADDR_UNCONNECTED(31 downto 0),
      S_AXI2_ACPROT(2 downto 0) => NLW_U0_S_AXI2_ACPROT_UNCONNECTED(2 downto 0),
      S_AXI2_ACREADY => '0',
      S_AXI2_ACSNOOP(3 downto 0) => NLW_U0_S_AXI2_ACSNOOP_UNCONNECTED(3 downto 0),
      S_AXI2_ACVALID => NLW_U0_S_AXI2_ACVALID_UNCONNECTED,
      S_AXI2_ARADDR(31 downto 0) => S_AXI2_ARADDR(31 downto 0),
      S_AXI2_ARBAR(1 downto 0) => B"00",
      S_AXI2_ARBURST(1 downto 0) => S_AXI2_ARBURST(1 downto 0),
      S_AXI2_ARCACHE(3 downto 0) => S_AXI2_ARCACHE(3 downto 0),
      S_AXI2_ARDOMAIN(1 downto 0) => B"00",
      S_AXI2_ARID(0) => S_AXI2_ARID(0),
      S_AXI2_ARLEN(7 downto 0) => S_AXI2_ARLEN(7 downto 0),
      S_AXI2_ARLOCK => S_AXI2_ARLOCK,
      S_AXI2_ARPROT(2 downto 0) => S_AXI2_ARPROT(2 downto 0),
      S_AXI2_ARQOS(3 downto 0) => S_AXI2_ARQOS(3 downto 0),
      S_AXI2_ARREADY => S_AXI2_ARREADY,
      S_AXI2_ARSIZE(2 downto 0) => S_AXI2_ARSIZE(2 downto 0),
      S_AXI2_ARSNOOP(3 downto 0) => B"0000",
      S_AXI2_ARUSER(0) => '0',
      S_AXI2_ARVALID => S_AXI2_ARVALID,
      S_AXI2_AWADDR(31 downto 0) => S_AXI2_AWADDR(31 downto 0),
      S_AXI2_AWBAR(1 downto 0) => B"00",
      S_AXI2_AWBURST(1 downto 0) => S_AXI2_AWBURST(1 downto 0),
      S_AXI2_AWCACHE(3 downto 0) => S_AXI2_AWCACHE(3 downto 0),
      S_AXI2_AWDOMAIN(1 downto 0) => B"00",
      S_AXI2_AWID(0) => S_AXI2_AWID(0),
      S_AXI2_AWLEN(7 downto 0) => S_AXI2_AWLEN(7 downto 0),
      S_AXI2_AWLOCK => S_AXI2_AWLOCK,
      S_AXI2_AWPROT(2 downto 0) => S_AXI2_AWPROT(2 downto 0),
      S_AXI2_AWQOS(3 downto 0) => S_AXI2_AWQOS(3 downto 0),
      S_AXI2_AWREADY => S_AXI2_AWREADY,
      S_AXI2_AWSIZE(2 downto 0) => S_AXI2_AWSIZE(2 downto 0),
      S_AXI2_AWSNOOP(2 downto 0) => B"000",
      S_AXI2_AWUSER(0) => '0',
      S_AXI2_AWVALID => S_AXI2_AWVALID,
      S_AXI2_BID(0) => S_AXI2_BID(0),
      S_AXI2_BREADY => S_AXI2_BREADY,
      S_AXI2_BRESP(1 downto 0) => S_AXI2_BRESP(1 downto 0),
      S_AXI2_BUSER(0) => NLW_U0_S_AXI2_BUSER_UNCONNECTED(0),
      S_AXI2_BVALID => S_AXI2_BVALID,
      S_AXI2_CDDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI2_CDLAST => '0',
      S_AXI2_CDREADY => NLW_U0_S_AXI2_CDREADY_UNCONNECTED,
      S_AXI2_CDVALID => '0',
      S_AXI2_CRREADY => NLW_U0_S_AXI2_CRREADY_UNCONNECTED,
      S_AXI2_CRRESP(4 downto 0) => B"00000",
      S_AXI2_CRVALID => '0',
      S_AXI2_RACK => '0',
      S_AXI2_RDATA(31 downto 0) => S_AXI2_RDATA(31 downto 0),
      S_AXI2_RID(0) => S_AXI2_RID(0),
      S_AXI2_RLAST => S_AXI2_RLAST,
      S_AXI2_RREADY => S_AXI2_RREADY,
      S_AXI2_RRESP(1 downto 0) => S_AXI2_RRESP(1 downto 0),
      S_AXI2_RUSER(0) => NLW_U0_S_AXI2_RUSER_UNCONNECTED(0),
      S_AXI2_RVALID => S_AXI2_RVALID,
      S_AXI2_WACK => '0',
      S_AXI2_WDATA(31 downto 0) => S_AXI2_WDATA(31 downto 0),
      S_AXI2_WLAST => S_AXI2_WLAST,
      S_AXI2_WREADY => S_AXI2_WREADY,
      S_AXI2_WSTRB(3 downto 0) => S_AXI2_WSTRB(3 downto 0),
      S_AXI2_WUSER(0) => '0',
      S_AXI2_WVALID => S_AXI2_WVALID,
      S_AXI3_ACADDR(31 downto 0) => NLW_U0_S_AXI3_ACADDR_UNCONNECTED(31 downto 0),
      S_AXI3_ACPROT(2 downto 0) => NLW_U0_S_AXI3_ACPROT_UNCONNECTED(2 downto 0),
      S_AXI3_ACREADY => '0',
      S_AXI3_ACSNOOP(3 downto 0) => NLW_U0_S_AXI3_ACSNOOP_UNCONNECTED(3 downto 0),
      S_AXI3_ACVALID => NLW_U0_S_AXI3_ACVALID_UNCONNECTED,
      S_AXI3_ARADDR(31 downto 0) => S_AXI3_ARADDR(31 downto 0),
      S_AXI3_ARBAR(1 downto 0) => B"00",
      S_AXI3_ARBURST(1 downto 0) => S_AXI3_ARBURST(1 downto 0),
      S_AXI3_ARCACHE(3 downto 0) => S_AXI3_ARCACHE(3 downto 0),
      S_AXI3_ARDOMAIN(1 downto 0) => B"00",
      S_AXI3_ARID(0) => S_AXI3_ARID(0),
      S_AXI3_ARLEN(7 downto 0) => S_AXI3_ARLEN(7 downto 0),
      S_AXI3_ARLOCK => S_AXI3_ARLOCK,
      S_AXI3_ARPROT(2 downto 0) => S_AXI3_ARPROT(2 downto 0),
      S_AXI3_ARQOS(3 downto 0) => S_AXI3_ARQOS(3 downto 0),
      S_AXI3_ARREADY => S_AXI3_ARREADY,
      S_AXI3_ARSIZE(2 downto 0) => S_AXI3_ARSIZE(2 downto 0),
      S_AXI3_ARSNOOP(3 downto 0) => B"0000",
      S_AXI3_ARUSER(0) => '0',
      S_AXI3_ARVALID => S_AXI3_ARVALID,
      S_AXI3_AWADDR(31 downto 0) => S_AXI3_AWADDR(31 downto 0),
      S_AXI3_AWBAR(1 downto 0) => B"00",
      S_AXI3_AWBURST(1 downto 0) => S_AXI3_AWBURST(1 downto 0),
      S_AXI3_AWCACHE(3 downto 0) => S_AXI3_AWCACHE(3 downto 0),
      S_AXI3_AWDOMAIN(1 downto 0) => B"00",
      S_AXI3_AWID(0) => S_AXI3_AWID(0),
      S_AXI3_AWLEN(7 downto 0) => S_AXI3_AWLEN(7 downto 0),
      S_AXI3_AWLOCK => S_AXI3_AWLOCK,
      S_AXI3_AWPROT(2 downto 0) => S_AXI3_AWPROT(2 downto 0),
      S_AXI3_AWQOS(3 downto 0) => S_AXI3_AWQOS(3 downto 0),
      S_AXI3_AWREADY => S_AXI3_AWREADY,
      S_AXI3_AWSIZE(2 downto 0) => S_AXI3_AWSIZE(2 downto 0),
      S_AXI3_AWSNOOP(2 downto 0) => B"000",
      S_AXI3_AWUSER(0) => '0',
      S_AXI3_AWVALID => S_AXI3_AWVALID,
      S_AXI3_BID(0) => S_AXI3_BID(0),
      S_AXI3_BREADY => S_AXI3_BREADY,
      S_AXI3_BRESP(1 downto 0) => S_AXI3_BRESP(1 downto 0),
      S_AXI3_BUSER(0) => NLW_U0_S_AXI3_BUSER_UNCONNECTED(0),
      S_AXI3_BVALID => S_AXI3_BVALID,
      S_AXI3_CDDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI3_CDLAST => '0',
      S_AXI3_CDREADY => NLW_U0_S_AXI3_CDREADY_UNCONNECTED,
      S_AXI3_CDVALID => '0',
      S_AXI3_CRREADY => NLW_U0_S_AXI3_CRREADY_UNCONNECTED,
      S_AXI3_CRRESP(4 downto 0) => B"00000",
      S_AXI3_CRVALID => '0',
      S_AXI3_RACK => '0',
      S_AXI3_RDATA(31 downto 0) => S_AXI3_RDATA(31 downto 0),
      S_AXI3_RID(0) => S_AXI3_RID(0),
      S_AXI3_RLAST => S_AXI3_RLAST,
      S_AXI3_RREADY => S_AXI3_RREADY,
      S_AXI3_RRESP(1 downto 0) => S_AXI3_RRESP(1 downto 0),
      S_AXI3_RUSER(0) => NLW_U0_S_AXI3_RUSER_UNCONNECTED(0),
      S_AXI3_RVALID => S_AXI3_RVALID,
      S_AXI3_WACK => '0',
      S_AXI3_WDATA(31 downto 0) => S_AXI3_WDATA(31 downto 0),
      S_AXI3_WLAST => S_AXI3_WLAST,
      S_AXI3_WREADY => S_AXI3_WREADY,
      S_AXI3_WSTRB(3 downto 0) => S_AXI3_WSTRB(3 downto 0),
      S_AXI3_WUSER(0) => '0',
      S_AXI3_WVALID => S_AXI3_WVALID,
      S_AXIS1_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXIS1_TDEST(0) => '0',
      S_AXIS1_TID(0) => '0',
      S_AXIS1_TKEEP(3 downto 0) => B"0000",
      S_AXIS1_TLAST => '0',
      S_AXIS1_TREADY => NLW_U0_S_AXIS1_TREADY_UNCONNECTED,
      S_AXIS1_TSTRB(3 downto 0) => B"0000",
      S_AXIS1_TUSER(0) => '0',
      S_AXIS1_TVALID => '0',
      S_AXIS2_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXIS2_TDEST(0) => '0',
      S_AXIS2_TID(0) => '0',
      S_AXIS2_TKEEP(3 downto 0) => B"0000",
      S_AXIS2_TLAST => '0',
      S_AXIS2_TREADY => NLW_U0_S_AXIS2_TREADY_UNCONNECTED,
      S_AXIS2_TSTRB(3 downto 0) => B"0000",
      S_AXIS2_TUSER(0) => '0',
      S_AXIS2_TVALID => '0',
      S_AXIS3_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXIS3_TDEST(0) => '0',
      S_AXIS3_TID(0) => '0',
      S_AXIS3_TKEEP(3 downto 0) => B"0000",
      S_AXIS3_TLAST => '0',
      S_AXIS3_TREADY => NLW_U0_S_AXIS3_TREADY_UNCONNECTED,
      S_AXIS3_TSTRB(3 downto 0) => B"0000",
      S_AXIS3_TUSER(0) => '0',
      S_AXIS3_TVALID => '0',
      S_AXIS_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXIS_TDATA_Test(31 downto 0) => B"00000000000000000000000000000000",
      S_AXIS_TDEST(0) => '0',
      S_AXIS_TID(0) => '0',
      S_AXIS_TKEEP(3 downto 0) => B"0000",
      S_AXIS_TLAST => '0',
      S_AXIS_TLAST_Test => '0',
      S_AXIS_TREADY => NLW_U0_S_AXIS_TREADY_UNCONNECTED,
      S_AXIS_TREADY_Test => NLW_U0_S_AXIS_TREADY_Test_UNCONNECTED,
      S_AXIS_TSTRB(3 downto 0) => B"0000",
      S_AXIS_TUSER(0) => '0',
      S_AXIS_TVALID => '0',
      S_AXIS_TVALID_Test => '0',
      S_AXI_ACADDR(31 downto 0) => NLW_U0_S_AXI_ACADDR_UNCONNECTED(31 downto 0),
      S_AXI_ACPROT(2 downto 0) => NLW_U0_S_AXI_ACPROT_UNCONNECTED(2 downto 0),
      S_AXI_ACREADY => '0',
      S_AXI_ACSNOOP(3 downto 0) => NLW_U0_S_AXI_ACSNOOP_UNCONNECTED(3 downto 0),
      S_AXI_ACVALID => NLW_U0_S_AXI_ACVALID_UNCONNECTED,
      S_AXI_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_ARBAR(1 downto 0) => B"00",
      S_AXI_ARBURST(1 downto 0) => B"00",
      S_AXI_ARCACHE(3 downto 0) => B"0000",
      S_AXI_ARDOMAIN(1 downto 0) => B"00",
      S_AXI_ARID(0) => '0',
      S_AXI_ARLEN(7 downto 0) => B"00000000",
      S_AXI_ARLOCK => '0',
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARQOS(3 downto 0) => B"0000",
      S_AXI_ARREADY => NLW_U0_S_AXI_ARREADY_UNCONNECTED,
      S_AXI_ARSIZE(2 downto 0) => B"000",
      S_AXI_ARSNOOP(3 downto 0) => B"0000",
      S_AXI_ARUSER(0) => '0',
      S_AXI_ARVALID => '0',
      S_AXI_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_AWBAR(1 downto 0) => B"00",
      S_AXI_AWBURST(1 downto 0) => B"00",
      S_AXI_AWCACHE(3 downto 0) => B"0000",
      S_AXI_AWDOMAIN(1 downto 0) => B"00",
      S_AXI_AWID(0) => '0',
      S_AXI_AWLEN(7 downto 0) => B"00000000",
      S_AXI_AWLOCK => '0',
      S_AXI_AWPROT(2 downto 0) => B"000",
      S_AXI_AWQOS(3 downto 0) => B"0000",
      S_AXI_AWREADY => NLW_U0_S_AXI_AWREADY_UNCONNECTED,
      S_AXI_AWSIZE(2 downto 0) => B"000",
      S_AXI_AWSNOOP(2 downto 0) => B"000",
      S_AXI_AWUSER(0) => '0',
      S_AXI_AWVALID => '0',
      S_AXI_BID(0) => NLW_U0_S_AXI_BID_UNCONNECTED(0),
      S_AXI_BREADY => '0',
      S_AXI_BRESP(1 downto 0) => NLW_U0_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BUSER(0) => NLW_U0_S_AXI_BUSER_UNCONNECTED(0),
      S_AXI_BVALID => NLW_U0_S_AXI_BVALID_UNCONNECTED,
      S_AXI_CDDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_CDLAST => '0',
      S_AXI_CDREADY => NLW_U0_S_AXI_CDREADY_UNCONNECTED,
      S_AXI_CDVALID => '0',
      S_AXI_CRREADY => NLW_U0_S_AXI_CRREADY_UNCONNECTED,
      S_AXI_CRRESP(4 downto 0) => B"00000",
      S_AXI_CRVALID => '0',
      S_AXI_RACK => '0',
      S_AXI_RDATA(31 downto 0) => NLW_U0_S_AXI_RDATA_UNCONNECTED(31 downto 0),
      S_AXI_RID(0) => NLW_U0_S_AXI_RID_UNCONNECTED(0),
      S_AXI_RLAST => NLW_U0_S_AXI_RLAST_UNCONNECTED,
      S_AXI_RREADY => '0',
      S_AXI_RRESP(1 downto 0) => NLW_U0_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RUSER(0) => NLW_U0_S_AXI_RUSER_UNCONNECTED(0),
      S_AXI_RVALID => NLW_U0_S_AXI_RVALID_UNCONNECTED,
      S_AXI_WACK => '0',
      S_AXI_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_WLAST => '0',
      S_AXI_WREADY => NLW_U0_S_AXI_WREADY_UNCONNECTED,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WUSER(0) => '0',
      S_AXI_WVALID => '0',
      S_BRAM_Addr(0 to 31) => B"00000000000000000000000000000000",
      S_BRAM_Clk => '0',
      S_BRAM_Din(0 to 31) => NLW_U0_S_BRAM_Din_UNCONNECTED(0 to 31),
      S_BRAM_Dout(0 to 31) => B"00000000000000000000000000000000",
      S_BRAM_EN => '0',
      S_BRAM_Rst => '0',
      S_BRAM_WE(0 to 3) => B"0000",
      S_IRQ1 => '0',
      S_IRQ1_Ack(0 to 1) => NLW_U0_S_IRQ1_Ack_UNCONNECTED(0 to 1),
      S_IRQ1_Address(0 to 31) => B"00000000000000000000000000000000",
      S_IRQ2 => '0',
      S_IRQ2_Ack(0 to 1) => NLW_U0_S_IRQ2_Ack_UNCONNECTED(0 to 1),
      S_IRQ2_Address(0 to 31) => B"00000000000000000000000000000000",
      S_IRQ3 => '0',
      S_IRQ3_Ack(0 to 1) => NLW_U0_S_IRQ3_Ack_UNCONNECTED(0 to 1),
      S_IRQ3_Address(0 to 31) => B"00000000000000000000000000000000",
      S_LMB1_ABus(0 to 31) => NLW_U0_S_LMB1_ABus_UNCONNECTED(0 to 31),
      S_LMB1_AddrStrobe => NLW_U0_S_LMB1_AddrStrobe_UNCONNECTED,
      S_LMB1_BE(0 to 3) => NLW_U0_S_LMB1_BE_UNCONNECTED(0 to 3),
      S_LMB1_ReadStrobe => NLW_U0_S_LMB1_ReadStrobe_UNCONNECTED,
      S_LMB1_WriteDBus(0 to 31) => NLW_U0_S_LMB1_WriteDBus_UNCONNECTED(0 to 31),
      S_LMB1_WriteStrobe => NLW_U0_S_LMB1_WriteStrobe_UNCONNECTED,
      S_LMB2_ABus(0 to 31) => NLW_U0_S_LMB2_ABus_UNCONNECTED(0 to 31),
      S_LMB2_AddrStrobe => NLW_U0_S_LMB2_AddrStrobe_UNCONNECTED,
      S_LMB2_BE(0 to 3) => NLW_U0_S_LMB2_BE_UNCONNECTED(0 to 3),
      S_LMB2_ReadStrobe => NLW_U0_S_LMB2_ReadStrobe_UNCONNECTED,
      S_LMB2_WriteDBus(0 to 31) => NLW_U0_S_LMB2_WriteDBus_UNCONNECTED(0 to 31),
      S_LMB2_WriteStrobe => NLW_U0_S_LMB2_WriteStrobe_UNCONNECTED,
      S_LMB3_ABus(0 to 31) => NLW_U0_S_LMB3_ABus_UNCONNECTED(0 to 31),
      S_LMB3_AddrStrobe => NLW_U0_S_LMB3_AddrStrobe_UNCONNECTED,
      S_LMB3_BE(0 to 3) => NLW_U0_S_LMB3_BE_UNCONNECTED(0 to 3),
      S_LMB3_ReadStrobe => NLW_U0_S_LMB3_ReadStrobe_UNCONNECTED,
      S_LMB3_WriteDBus(0 to 31) => NLW_U0_S_LMB3_WriteDBus_UNCONNECTED(0 to 31),
      S_LMB3_WriteStrobe => NLW_U0_S_LMB3_WriteStrobe_UNCONNECTED,
      S_LMB_ABus(0 to 31) => B"00000000000000000000000000000000",
      S_LMB_AddrStrobe => '0',
      S_LMB_BE(0 to 3) => B"0000",
      S_LMB_ReadStrobe => '0',
      S_LMB_WriteDBus(0 to 31) => B"00000000000000000000000000000000",
      S_LMB_WriteStrobe => '0',
      S_Sl1_CE => '0',
      S_Sl1_DBus(0 to 31) => B"00000000000000000000000000000000",
      S_Sl1_Ready => '0',
      S_Sl1_UE => '0',
      S_Sl1_Wait => '0',
      S_Sl2_CE => '0',
      S_Sl2_DBus(0 to 31) => B"00000000000000000000000000000000",
      S_Sl2_Ready => '0',
      S_Sl2_UE => '0',
      S_Sl2_Wait => '0',
      S_Sl3_CE => '0',
      S_Sl3_DBus(0 to 31) => B"00000000000000000000000000000000",
      S_Sl3_Ready => '0',
      S_Sl3_UE => '0',
      S_Sl3_Wait => '0',
      S_Sl_CE => NLW_U0_S_Sl_CE_UNCONNECTED,
      S_Sl_DBus(0 to 31) => NLW_U0_S_Sl_DBus_UNCONNECTED(0 to 31),
      S_Sl_Ready => NLW_U0_S_Sl_Ready_UNCONNECTED,
      S_Sl_UE => NLW_U0_S_Sl_UE_UNCONNECTED,
      S_Sl_Wait => NLW_U0_S_Sl_Wait_UNCONNECTED,
      Sl1_CE => NLW_U0_Sl1_CE_UNCONNECTED,
      Sl1_DBus(0 to 31) => NLW_U0_Sl1_DBus_UNCONNECTED(0 to 31),
      Sl1_Ready => NLW_U0_Sl1_Ready_UNCONNECTED,
      Sl1_UE => NLW_U0_Sl1_UE_UNCONNECTED,
      Sl1_Wait => NLW_U0_Sl1_Wait_UNCONNECTED,
      Sl2_CE => NLW_U0_Sl2_CE_UNCONNECTED,
      Sl2_DBus(0 to 31) => NLW_U0_Sl2_DBus_UNCONNECTED(0 to 31),
      Sl2_Ready => NLW_U0_Sl2_Ready_UNCONNECTED,
      Sl2_UE => NLW_U0_Sl2_UE_UNCONNECTED,
      Sl2_Wait => NLW_U0_Sl2_Wait_UNCONNECTED,
      Sl3_CE => NLW_U0_Sl3_CE_UNCONNECTED,
      Sl3_DBus(0 to 31) => NLW_U0_Sl3_DBus_UNCONNECTED(0 to 31),
      Sl3_Ready => NLW_U0_Sl3_Ready_UNCONNECTED,
      Sl3_UE => NLW_U0_Sl3_UE_UNCONNECTED,
      Sl3_Wait => NLW_U0_Sl3_Wait_UNCONNECTED,
      Sl_CE => '0',
      Sl_DBus(0 to 31) => B"00000000000000000000000000000000",
      Sl_Ready => '0',
      Sl_UE => '0',
      Sl_Wait => '0',
      TMR_Disable => '0',
      Test_Comparator(1 downto 0) => B"00",
      Trace1_DCache_Hit => '0',
      Trace1_DCache_Rdy => '0',
      Trace1_DCache_Read => '0',
      Trace1_DCache_Req => '0',
      Trace1_Data_Access => '0',
      Trace1_Data_Address(0 to 31) => B"00000000000000000000000000000000",
      Trace1_Data_Byte_Enable(0 to 3) => B"0000",
      Trace1_Data_Read => '0',
      Trace1_Data_Write => '0',
      Trace1_Data_Write_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace1_Delay_Slot => '0',
      Trace1_EX_PipeRun => '0',
      Trace1_Exception_Kind(0 to 4) => B"00000",
      Trace1_Exception_Taken => '0',
      Trace1_ICache_Hit => '0',
      Trace1_ICache_Rdy => '0',
      Trace1_ICache_Req => '0',
      Trace1_Instruction(0 to 31) => B"00000000000000000000000000000000",
      Trace1_Jump_Hit => '0',
      Trace1_Jump_Taken => '0',
      Trace1_MB_Halted => '0',
      Trace1_MEM_PipeRun => '0',
      Trace1_MSR_Reg(0 to 14) => B"000000000000000",
      Trace1_New_Reg_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace1_OF_PipeRun => '0',
      Trace1_PC(0 to 31) => B"00000000000000000000000000000000",
      Trace1_PID_Reg(0 to 7) => B"00000000",
      Trace1_Reg_Addr(0 to 4) => B"00000",
      Trace1_Reg_Write => '0',
      Trace1_Valid_Instr => '0',
      Trace2_DCache_Hit => '0',
      Trace2_DCache_Rdy => '0',
      Trace2_DCache_Read => '0',
      Trace2_DCache_Req => '0',
      Trace2_Data_Access => '0',
      Trace2_Data_Address(0 to 31) => B"00000000000000000000000000000000",
      Trace2_Data_Byte_Enable(0 to 3) => B"0000",
      Trace2_Data_Read => '0',
      Trace2_Data_Write => '0',
      Trace2_Data_Write_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace2_Delay_Slot => '0',
      Trace2_EX_PipeRun => '0',
      Trace2_Exception_Kind(0 to 4) => B"00000",
      Trace2_Exception_Taken => '0',
      Trace2_ICache_Hit => '0',
      Trace2_ICache_Rdy => '0',
      Trace2_ICache_Req => '0',
      Trace2_Instruction(0 to 31) => B"00000000000000000000000000000000",
      Trace2_Jump_Hit => '0',
      Trace2_Jump_Taken => '0',
      Trace2_MB_Halted => '0',
      Trace2_MEM_PipeRun => '0',
      Trace2_MSR_Reg(0 to 14) => B"000000000000000",
      Trace2_New_Reg_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace2_OF_PipeRun => '0',
      Trace2_PC(0 to 31) => B"00000000000000000000000000000000",
      Trace2_PID_Reg(0 to 7) => B"00000000",
      Trace2_Reg_Addr(0 to 4) => B"00000",
      Trace2_Reg_Write => '0',
      Trace2_Valid_Instr => '0',
      Trace3_DCache_Hit => '0',
      Trace3_DCache_Rdy => '0',
      Trace3_DCache_Read => '0',
      Trace3_DCache_Req => '0',
      Trace3_Data_Access => '0',
      Trace3_Data_Address(0 to 31) => B"00000000000000000000000000000000",
      Trace3_Data_Byte_Enable(0 to 3) => B"0000",
      Trace3_Data_Read => '0',
      Trace3_Data_Write => '0',
      Trace3_Data_Write_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace3_Delay_Slot => '0',
      Trace3_EX_PipeRun => '0',
      Trace3_Exception_Kind(0 to 4) => B"00000",
      Trace3_Exception_Taken => '0',
      Trace3_ICache_Hit => '0',
      Trace3_ICache_Rdy => '0',
      Trace3_ICache_Req => '0',
      Trace3_Instruction(0 to 31) => B"00000000000000000000000000000000",
      Trace3_Jump_Hit => '0',
      Trace3_Jump_Taken => '0',
      Trace3_MB_Halted => '0',
      Trace3_MEM_PipeRun => '0',
      Trace3_MSR_Reg(0 to 14) => B"000000000000000",
      Trace3_New_Reg_Value(0 to 31) => B"00000000000000000000000000000000",
      Trace3_OF_PipeRun => '0',
      Trace3_PC(0 to 31) => B"00000000000000000000000000000000",
      Trace3_PID_Reg(0 to 7) => B"00000000",
      Trace3_Reg_Addr(0 to 4) => B"00000",
      Trace3_Reg_Write => '0',
      Trace3_Valid_Instr => '0',
      Trace_DCache_Hit => NLW_U0_Trace_DCache_Hit_UNCONNECTED,
      Trace_DCache_Rdy => NLW_U0_Trace_DCache_Rdy_UNCONNECTED,
      Trace_DCache_Read => NLW_U0_Trace_DCache_Read_UNCONNECTED,
      Trace_DCache_Req => NLW_U0_Trace_DCache_Req_UNCONNECTED,
      Trace_Data_Access => NLW_U0_Trace_Data_Access_UNCONNECTED,
      Trace_Data_Address(0 to 31) => NLW_U0_Trace_Data_Address_UNCONNECTED(0 to 31),
      Trace_Data_Byte_Enable(0 to 3) => NLW_U0_Trace_Data_Byte_Enable_UNCONNECTED(0 to 3),
      Trace_Data_Read => NLW_U0_Trace_Data_Read_UNCONNECTED,
      Trace_Data_Write => NLW_U0_Trace_Data_Write_UNCONNECTED,
      Trace_Data_Write_Value(0 to 31) => NLW_U0_Trace_Data_Write_Value_UNCONNECTED(0 to 31),
      Trace_Delay_Slot => NLW_U0_Trace_Delay_Slot_UNCONNECTED,
      Trace_EX_PipeRun => NLW_U0_Trace_EX_PipeRun_UNCONNECTED,
      Trace_Exception_Kind(0 to 4) => NLW_U0_Trace_Exception_Kind_UNCONNECTED(0 to 4),
      Trace_Exception_Taken => NLW_U0_Trace_Exception_Taken_UNCONNECTED,
      Trace_ICache_Hit => NLW_U0_Trace_ICache_Hit_UNCONNECTED,
      Trace_ICache_Rdy => NLW_U0_Trace_ICache_Rdy_UNCONNECTED,
      Trace_ICache_Req => NLW_U0_Trace_ICache_Req_UNCONNECTED,
      Trace_Instruction(0 to 31) => NLW_U0_Trace_Instruction_UNCONNECTED(0 to 31),
      Trace_Jump_Hit => NLW_U0_Trace_Jump_Hit_UNCONNECTED,
      Trace_Jump_Taken => NLW_U0_Trace_Jump_Taken_UNCONNECTED,
      Trace_MB_Halted => NLW_U0_Trace_MB_Halted_UNCONNECTED,
      Trace_MEM_PipeRun => NLW_U0_Trace_MEM_PipeRun_UNCONNECTED,
      Trace_MSR_Reg(0 to 14) => NLW_U0_Trace_MSR_Reg_UNCONNECTED(0 to 14),
      Trace_New_Reg_Value(0 to 31) => NLW_U0_Trace_New_Reg_Value_UNCONNECTED(0 to 31),
      Trace_OF_PipeRun => NLW_U0_Trace_OF_PipeRun_UNCONNECTED,
      Trace_PC(0 to 31) => NLW_U0_Trace_PC_UNCONNECTED(0 to 31),
      Trace_PID_Reg(0 to 7) => NLW_U0_Trace_PID_Reg_UNCONNECTED(0 to 7),
      Trace_Reg_Addr(0 to 4) => NLW_U0_Trace_Reg_Addr_UNCONNECTED(0 to 4),
      Trace_Reg_Write => NLW_U0_Trace_Reg_Write_UNCONNECTED,
      Trace_Valid_Instr => NLW_U0_Trace_Valid_Instr_UNCONNECTED,
      UART1_BAUDOUTn => '0',
      UART1_CTSn => NLW_U0_UART1_CTSn_UNCONNECTED,
      UART1_DCDn => NLW_U0_UART1_DCDn_UNCONNECTED,
      UART1_DDIS => '0',
      UART1_DSRn => NLW_U0_UART1_DSRn_UNCONNECTED,
      UART1_DTRn => '0',
      UART1_OUT1n => '0',
      UART1_OUT2n => '0',
      UART1_RCLK => NLW_U0_UART1_RCLK_UNCONNECTED,
      UART1_RI => NLW_U0_UART1_RI_UNCONNECTED,
      UART1_RTSn => '0',
      UART1_RXRDYn => '0',
      UART1_RxD => NLW_U0_UART1_RxD_UNCONNECTED,
      UART1_TXRDYn => '0',
      UART1_TxD => '0',
      UART1_XIN => NLW_U0_UART1_XIN_UNCONNECTED,
      UART1_XOUT => '0',
      UART2_BAUDOUTn => '0',
      UART2_CTSn => NLW_U0_UART2_CTSn_UNCONNECTED,
      UART2_DCDn => NLW_U0_UART2_DCDn_UNCONNECTED,
      UART2_DDIS => '0',
      UART2_DSRn => NLW_U0_UART2_DSRn_UNCONNECTED,
      UART2_DTRn => '0',
      UART2_OUT1n => '0',
      UART2_OUT2n => '0',
      UART2_RCLK => NLW_U0_UART2_RCLK_UNCONNECTED,
      UART2_RI => NLW_U0_UART2_RI_UNCONNECTED,
      UART2_RTSn => '0',
      UART2_RXRDYn => '0',
      UART2_RxD => NLW_U0_UART2_RxD_UNCONNECTED,
      UART2_TXRDYn => '0',
      UART2_TxD => '0',
      UART2_XIN => NLW_U0_UART2_XIN_UNCONNECTED,
      UART2_XOUT => '0',
      UART3_BAUDOUTn => '0',
      UART3_CTSn => NLW_U0_UART3_CTSn_UNCONNECTED,
      UART3_DCDn => NLW_U0_UART3_DCDn_UNCONNECTED,
      UART3_DDIS => '0',
      UART3_DSRn => NLW_U0_UART3_DSRn_UNCONNECTED,
      UART3_DTRn => '0',
      UART3_OUT1n => '0',
      UART3_OUT2n => '0',
      UART3_RCLK => NLW_U0_UART3_RCLK_UNCONNECTED,
      UART3_RI => NLW_U0_UART3_RI_UNCONNECTED,
      UART3_RTSn => '0',
      UART3_RXRDYn => '0',
      UART3_RxD => NLW_U0_UART3_RxD_UNCONNECTED,
      UART3_TXRDYn => '0',
      UART3_TxD => '0',
      UART3_XIN => NLW_U0_UART3_XIN_UNCONNECTED,
      UART3_XOUT => '0',
      UART_BAUDOUTn => NLW_U0_UART_BAUDOUTn_UNCONNECTED,
      UART_CTSn => '0',
      UART_DCDn => '0',
      UART_DDIS => NLW_U0_UART_DDIS_UNCONNECTED,
      UART_DSRn => '0',
      UART_DTRn => NLW_U0_UART_DTRn_UNCONNECTED,
      UART_OUT1n => NLW_U0_UART_OUT1n_UNCONNECTED,
      UART_OUT2n => NLW_U0_UART_OUT2n_UNCONNECTED,
      UART_RCLK => '0',
      UART_RI => '0',
      UART_RTSn => NLW_U0_UART_RTSn_UNCONNECTED,
      UART_RXRDYn => NLW_U0_UART_RXRDYn_UNCONNECTED,
      UART_RxD => '0',
      UART_TXRDYn => NLW_U0_UART_TXRDYn_UNCONNECTED,
      UART_TxD => NLW_U0_UART_TxD_UNCONNECTED,
      UART_XIN => '0',
      UART_XOUT => NLW_U0_UART_XOUT_UNCONNECTED
    );
end STRUCTURE;
