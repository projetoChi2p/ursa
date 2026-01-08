-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon May 12 20:49:54 2025
-- Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_bram_tmr_ecc_axi_bram_ctrl_1_0 -prefix
--               bd_bram_tmr_ecc_axi_bram_ctrl_1_0_ bd_bram_ecc_axi_bram_ctrl_2_0_sim_netlist.vhdl
-- Design      : bd_bram_ecc_axi_bram_ctrl_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[31]\(0),
      I2 => \GEN_ECC.WrData_reg[31]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28 is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[31]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28 : entity is "Correct_One_Bit";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28 is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(31),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(31),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[31]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[30]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[30]\(0),
      I2 => \GEN_ECC.WrData_reg[30]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_MUXCY_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[30]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 30 to 30 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(30),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => Corr_MUXCY_0
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(30),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[30]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[29]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[29]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[29]\(0),
      I2 => \GEN_ECC.WrData_reg[29]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[20]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[20]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[20]\(0),
      I2 => \GEN_ECC.WrData_reg[20]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[20]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 20 to 20 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(20),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(20),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[20]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[19]\(0),
      I2 => \GEN_ECC.WrData_reg[19]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[19]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 19 to 19 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(19),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(19),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[19]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[18]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[18]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[18]\(0),
      I2 => \GEN_ECC.WrData_reg[18]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[18]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 18 to 18 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(18),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(18),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[18]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[17]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[17]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[17]\(0),
      I2 => \GEN_ECC.WrData_reg[17]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[17]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(17),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(17),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[17]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[16]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[16]\(0),
      I2 => \GEN_ECC.WrData_reg[16]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[16]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(16),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(16),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[16]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[15]\(0),
      I2 => \GEN_ECC.WrData_reg[15]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[15]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(15),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(15),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[15]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[14]\(0),
      I2 => \GEN_ECC.WrData_reg[14]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[14]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 14 to 14 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(14),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(14),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[14]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[13]\(0),
      I2 => \GEN_ECC.WrData_reg[13]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[13]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 13 to 13 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(13),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(13),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[13]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[12]\(0),
      I2 => \GEN_ECC.WrData_reg[12]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[12]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(12),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(12),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[12]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[11]\(0),
      I2 => \GEN_ECC.WrData_reg[11]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[11]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(11),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(11),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[11]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_MUXCY_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[29]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 29 to 29 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(29),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => Corr_MUXCY_0
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(29),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[29]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[28]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[28]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[28]\(0),
      I2 => \GEN_ECC.WrData_reg[28]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[10]\(0),
      I2 => \GEN_ECC.WrData_reg[10]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(10),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(10),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[10]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[9]\(0),
      I2 => \GEN_ECC.WrData_reg[9]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[9]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 9 to 9 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(9),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(9),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[9]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[8]\(0),
      I2 => \GEN_ECC.WrData_reg[8]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[8]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(8),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(8),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[8]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[7]\(0),
      I2 => \GEN_ECC.WrData_reg[7]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(7),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(7),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[7]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[6]\(0),
      I2 => \GEN_ECC.WrData_reg[6]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(6),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(6),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[6]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[5]\(0),
      I2 => \GEN_ECC.WrData_reg[5]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[5]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(5),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(5),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[5]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[4]\(0),
      I2 => \GEN_ECC.WrData_reg[4]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[4]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(4),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(4),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[4]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[3]\(0),
      I2 => \GEN_ECC.WrData_reg[3]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(3),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(3),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[3]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[2]\(0),
      I2 => \GEN_ECC.WrData_reg[2]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(2),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(2),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[2]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[1]\(0),
      I2 => \GEN_ECC.WrData_reg[1]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(1),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(1),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[1]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_MUXCY_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[28]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 28 to 28 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(28),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => Corr_MUXCY_0
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(28),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[28]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[27]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[27]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[27]\(0),
      I2 => \GEN_ECC.WrData_reg[27]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[0]\(0),
      I2 => \GEN_ECC.WrData_reg[0]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    s_axi_rdata_0_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal corr_c : STD_LOGIC;
  signal s_axi_rdata_0_sn_1 : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
  s_axi_rdata_0_sn_1 <= s_axi_rdata_0_sp_1;
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(0),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(0),
      I1 => Enable_ECC,
      I2 => s_axi_rdata_0_sn_1,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[27]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 27 to 27 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(27),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(27),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[27]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[26]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[26]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[26]\(0),
      I2 => \GEN_ECC.WrData_reg[26]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[26]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 26 to 26 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(26),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(26),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[26]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[25]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[25]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[25]\(0),
      I2 => \GEN_ECC.WrData_reg[25]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[25]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 25 to 25 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(25),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(25),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[25]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[24]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[24]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[24]\(0),
      I2 => \GEN_ECC.WrData_reg[24]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[24]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 24 to 24 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(24),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(24),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[24]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[23]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[23]\(0),
      I2 => \GEN_ECC.WrData_reg[23]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[23]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 23 to 23 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(23),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(23),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[23]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[22]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[22]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[22]\(0),
      I2 => \GEN_ECC.WrData_reg[22]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[22]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 22 to 22 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(22),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(22),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[22]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[21]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9\ is
  signal Corr_XORCY_n_0 : STD_LOGIC;
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => Corr_XORCY_n_0,
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\GEN_ECC.WrData[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => Corr_XORCY_n_0,
      I1 => \GEN_ECC.WrData_reg[21]\(0),
      I2 => \GEN_ECC.WrData_reg[21]_0\(0),
      I3 => p_4_in(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Corr_XORCY_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Enable_ECC : in STD_LOGIC;
    \s_axi_rdata[21]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29\ : entity is "Correct_One_Bit";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29\ is
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\ : STD_LOGIC_VECTOR ( 21 to 21 );
  signal corr_c : STD_LOGIC;
  signal NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Corr_MUXCY_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Corr_MUXCY_CARRY4 : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of Corr_MUXCY_CARRY4 : label is "LO:O";
  attribute box_type : string;
  attribute box_type of Corr_MUXCY_CARRY4 : label is "PRIMITIVE";
begin
Corr_MUXCY_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => corr_c,
      CYINIT => '0',
      DI(3 downto 1) => NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 2) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(21),
      O(0) => NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => Corr_XORCY_0(0),
      S(0) => S
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr\(21),
      I1 => Enable_ECC,
      I2 => \s_axi_rdata[21]\,
      I3 => Corr_XORCY_0(0),
      O => s_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    S_4 : out STD_LOGIC;
    S_5 : out STD_LOGIC;
    S_6 : out STD_LOGIC;
    S_7 : out STD_LOGIC;
    S_8 : out STD_LOGIC;
    S_9 : out STD_LOGIC;
    S_10 : out STD_LOGIC;
    S_11 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_ECC.syndrome_reg_i\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity is
  signal \^using_lut6.single_lut6.xor6_lut_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
  \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) <= \^using_lut6.single_lut6.xor6_lut_0\(0);
\Corr_MUXCY_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(2),
      O => S
    );
\Corr_MUXCY_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I2 => \GEN_ECC.syndrome_reg_i\(2),
      I3 => \GEN_ECC.syndrome_reg_i\(5),
      I4 => \GEN_ECC.syndrome_reg_i\(3),
      I5 => \GEN_ECC.syndrome_reg_i\(1),
      O => S_2
    );
\Corr_MUXCY_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I2 => \GEN_ECC.syndrome_reg_i\(2),
      I3 => \GEN_ECC.syndrome_reg_i\(5),
      I4 => \GEN_ECC.syndrome_reg_i\(3),
      I5 => \GEN_ECC.syndrome_reg_i\(1),
      O => S_3
    );
\Corr_MUXCY_i_1__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(3),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(2),
      O => S_4
    );
\Corr_MUXCY_i_1__21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(4),
      I1 => \GEN_ECC.syndrome_reg_i\(2),
      I2 => \GEN_ECC.syndrome_reg_i\(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(5),
      O => S_5
    );
\Corr_MUXCY_i_1__23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(3),
      I2 => \GEN_ECC.syndrome_reg_i\(1),
      I3 => \GEN_ECC.syndrome_reg_i\(4),
      I4 => \GEN_ECC.syndrome_reg_i\(2),
      I5 => \GEN_ECC.syndrome_reg_i\(0),
      O => S_6
    );
\Corr_MUXCY_i_1__25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(5),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(2),
      O => S_7
    );
\Corr_MUXCY_i_1__27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(2),
      O => S_8
    );
\Corr_MUXCY_i_1__28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(2),
      O => S_9
    );
\Corr_MUXCY_i_1__29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(2),
      I5 => \GEN_ECC.syndrome_reg_i\(1),
      O => S_10
    );
\Corr_MUXCY_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(0),
      I2 => \GEN_ECC.syndrome_reg_i\(2),
      I3 => \GEN_ECC.syndrome_reg_i\(1),
      I4 => \GEN_ECC.syndrome_reg_i\(3),
      I5 => \GEN_ECC.syndrome_reg_i\(4),
      O => S_0
    );
\Corr_MUXCY_i_1__30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => \GEN_ECC.syndrome_reg_i\(1),
      I2 => \GEN_ECC.syndrome_reg_i\(3),
      I3 => \GEN_ECC.syndrome_reg_i\(2),
      I4 => \GEN_ECC.syndrome_reg_i\(0),
      I5 => \GEN_ECC.syndrome_reg_i\(4),
      O => S_11
    );
\Corr_MUXCY_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(2),
      I1 => \GEN_ECC.syndrome_reg_i\(4),
      I2 => \GEN_ECC.syndrome_reg_i\(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => \GEN_ECC.syndrome_reg_i\(1),
      I5 => \GEN_ECC.syndrome_reg_i\(3),
      O => S_1
    );
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \^using_lut6.single_lut6.xor6_lut_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_0 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_0 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_0;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_0 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => bram_wrdata_a(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_10 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_10 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_10;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_10 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_11 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_11 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_11;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_11 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_13 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_13 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_13;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_13 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_14 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_14 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_14;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_14 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_15 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_15 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_15;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_15 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_21 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_21 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_21;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_21 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_22 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_22 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_22;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_22 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_23 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_23 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_23;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_23 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_6 is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_6 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_6;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_6 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_61 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2]\ : out STD_LOGIC;
    S : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    S_4 : out STD_LOGIC;
    S_5 : out STD_LOGIC;
    S_6 : out STD_LOGIC;
    S_7 : out STD_LOGIC;
    S_8 : out STD_LOGIC;
    S_9 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Corr_MUXCY : in STD_LOGIC_VECTOR ( 4 downto 0 );
    syndrome_reg_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_61 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_61;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_61 is
  signal \^using_lut6.single_lut6.xor6_lut_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
  \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) <= \^using_lut6.single_lut6.xor6_lut_0\(0);
\Corr_MUXCY_i_1__36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => Corr_MUXCY(1),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(3),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => Corr_MUXCY(0),
      I5 => syndrome_reg_i(0),
      O => S
    );
\Corr_MUXCY_i_1__38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(1),
      I3 => syndrome_reg_i(0),
      I4 => Corr_MUXCY(0),
      I5 => Corr_MUXCY(3),
      O => S_0
    );
\Corr_MUXCY_i_1__42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(0),
      I1 => Corr_MUXCY(4),
      I2 => Corr_MUXCY(2),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(1),
      O => S_1
    );
\Corr_MUXCY_i_1__43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(0),
      I1 => Corr_MUXCY(4),
      I2 => Corr_MUXCY(2),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => Corr_MUXCY(1),
      I5 => syndrome_reg_i(0),
      O => S_2
    );
\Corr_MUXCY_i_1__48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(1),
      O => S_3
    );
\Corr_MUXCY_i_1__49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => Corr_MUXCY(1),
      I5 => syndrome_reg_i(0),
      O => S_4
    );
\Corr_MUXCY_i_1__52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => Corr_MUXCY(1),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(2),
      O => S_5
    );
\Corr_MUXCY_i_1__53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => Corr_MUXCY(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(3),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(2),
      O => S_6
    );
\Corr_MUXCY_i_1__57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => Corr_MUXCY(1),
      I2 => Corr_MUXCY(4),
      I3 => syndrome_reg_i(0),
      I4 => Corr_MUXCY(2),
      I5 => Corr_MUXCY(0),
      O => S_7
    );
\Corr_MUXCY_i_1__58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => Corr_MUXCY(1),
      I2 => Corr_MUXCY(4),
      I3 => Corr_MUXCY(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(2),
      O => S_8
    );
\Corr_MUXCY_i_1__59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I1 => Corr_MUXCY(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(4),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(3),
      O => S_9
    );
\Corr_MUXCY_i_1__60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => Corr_MUXCY(0),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(2),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]\
    );
\Corr_MUXCY_i_1__61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => Corr_MUXCY(0),
      I1 => Corr_MUXCY(4),
      I2 => Corr_MUXCY(2),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0\
    );
\Corr_MUXCY_i_1__62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(0),
      I3 => \^using_lut6.single_lut6.xor6_lut_0\(0),
      I4 => syndrome_reg_i(0),
      I5 => Corr_MUXCY(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2]\
    );
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \^using_lut6.single_lut6.xor6_lut_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_63 is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_63 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_63;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_63 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_64 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_64 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_64;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_64 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_65 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_65 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_65;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_65 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_67 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_67 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_67;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_67 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_68 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_68 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_68;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_68 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_69 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_69 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_69;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_69 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_7 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_7 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_7;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_7 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_71 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_71 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_71;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_71 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_72 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_72 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_72;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_72 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_73 is
  port (
    \Decode_Bits.chk2_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_73 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_73;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_73 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk2_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_8 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_8 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_8;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_8 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_81 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_81 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_81;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_81 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_82 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_82 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_82;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_82 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_83 is
  port (
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_83 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_83;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_83 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_9 is
  port (
    \Decode_Bits.chk1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_9 : entity is "Parity";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_9;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_9 is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(0),
      I1 => bram_rddata_a(1),
      I2 => bram_rddata_a(2),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(4),
      I5 => bram_rddata_a(5),
      O => \Decode_Bits.chk1_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : in STD_LOGIC;
    \Using_LUT6.Single_LUT6.XOR6_LUT_1\ : in STD_LOGIC;
    Res : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Using_LUT6.Single_LUT6.XOR6_LUT_0\,
      I4 => \Using_LUT6.Single_LUT6.XOR6_LUT_1\,
      I5 => Res,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk1_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Decode_Bits.chk1_1\(0),
      I4 => \Decode_Bits.chk1_1\(1),
      I5 => \Decode_Bits.chk1_1\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk2_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Decode_Bits.chk2_1\(0),
      I4 => \Decode_Bits.chk2_1\(1),
      I5 => \Decode_Bits.chk2_1\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_LUT6.Single_LUT6.XOR6_LUT_0\ : in STD_LOGIC;
    \Using_LUT6.Single_LUT6.XOR6_LUT_1\ : in STD_LOGIC;
    Res : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Using_LUT6.Single_LUT6.XOR6_LUT_0\,
      I4 => \Using_LUT6.Single_LUT6.XOR6_LUT_1\,
      I5 => Res,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk1_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Decode_Bits.chk1_1\(0),
      I4 => \Decode_Bits.chk1_1\(1),
      I5 => \Decode_Bits.chk1_1\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk2_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => bram_rddata_a(0),
      I3 => \Decode_Bits.chk2_1\(0),
      I4 => \Decode_Bits.chk2_1\(1),
      I5 => \Decode_Bits.chk2_1\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4\ is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => Res,
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17\ is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => Res,
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19\ is
  port (
    \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20\ is
  port (
    \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75\ is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => Res,
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76\ is
  port (
    Res : out STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => Res,
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78\ is
  port (
    \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79\ is
  port (
    \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79\ is
  signal \Using_LUT6.Use_MUXF8.result6_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_1n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result6_2n\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF8.result7_1n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF7_LUT2\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT1\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT2_N\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT3\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF8.XOR6_LUT4_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF8.MUXF7_LUT1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_1\,
      I1 => \Using_LUT6.Use_MUXF8.result6_1n\,
      O => \Using_LUT6.Use_MUXF8.result7_1\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF7_LUT2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result6_2n\,
      I1 => \Using_LUT6.Use_MUXF8.result6_2\,
      O => \Using_LUT6.Use_MUXF8.result7_1n\,
      S => bram_rddata_a(1)
    );
\Using_LUT6.Use_MUXF8.MUXF8_LUT\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Using_LUT6.Use_MUXF8.result7_1\,
      I1 => \Using_LUT6.Use_MUXF8.result7_1n\,
      O => \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT2_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_1n\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2\
    );
\Using_LUT6.Use_MUXF8.XOR6_LUT4_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(2),
      I1 => bram_rddata_a(3),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(5),
      I4 => bram_rddata_a(6),
      I5 => bram_rddata_a(7),
      O => \Using_LUT6.Use_MUXF8.result6_2n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6\ is
  port (
    \GEN_ECC.syndrome_reg_i\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    \GEN_ECC.CE_Q\ : out STD_LOGIC;
    I1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    I0 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    S_4 : out STD_LOGIC;
    S_5 : out STD_LOGIC;
    S_6 : out STD_LOGIC;
    S_7 : out STD_LOGIC;
    S_8 : out STD_LOGIC;
    S_9 : out STD_LOGIC;
    S_10 : out STD_LOGIC;
    S_11 : out STD_LOGIC;
    S_12 : out STD_LOGIC;
    S_13 : out STD_LOGIC;
    S_14 : out STD_LOGIC;
    S_15 : out STD_LOGIC;
    S_16 : out STD_LOGIC;
    S_17 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Corr_MUXCY : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Enable_ECC : in STD_LOGIC;
    \GEN_ECC.CE_Q_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.Use_LUT6.UE_MUXF7\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6\ is
  signal \^gen_ecc.syndrome_reg_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
  \GEN_ECC.syndrome_reg_i\(0) <= \^gen_ecc.syndrome_reg_i\(0);
Corr_MUXCY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(4),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(3),
      I5 => Corr_MUXCY(1),
      O => S
    );
\Corr_MUXCY_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(4),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(3),
      O => S_0
    );
\Corr_MUXCY_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(5),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(4),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_5
    );
\Corr_MUXCY_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(4),
      I1 => Corr_MUXCY(1),
      I2 => Corr_MUXCY(2),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(3),
      I5 => Corr_MUXCY(0),
      O => S_6
    );
\Corr_MUXCY_i_1__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^gen_ecc.syndrome_reg_i\(0),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(3),
      I3 => Corr_MUXCY(4),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_7
    );
\Corr_MUXCY_i_1__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(5),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_8
    );
\Corr_MUXCY_i_1__17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => Corr_MUXCY(5),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(4),
      I5 => Corr_MUXCY(3),
      O => S_9
    );
\Corr_MUXCY_i_1__18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(5),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_10
    );
\Corr_MUXCY_i_1__19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => Corr_MUXCY(4),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_11
    );
\Corr_MUXCY_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(3),
      I3 => Corr_MUXCY(4),
      I4 => Corr_MUXCY(0),
      I5 => Corr_MUXCY(1),
      O => S_1
    );
\Corr_MUXCY_i_1__20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => Corr_MUXCY(2),
      I2 => Corr_MUXCY(4),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_12
    );
\Corr_MUXCY_i_1__22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(4),
      I3 => Corr_MUXCY(2),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(0),
      O => S_13
    );
\Corr_MUXCY_i_1__24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(4),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(2),
      I5 => Corr_MUXCY(1),
      O => S_14
    );
\Corr_MUXCY_i_1__26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(5),
      I4 => Corr_MUXCY(3),
      I5 => Corr_MUXCY(0),
      O => S_15
    );
\Corr_MUXCY_i_1__31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(4),
      I2 => \^gen_ecc.syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(5),
      O => S_16
    );
\Corr_MUXCY_i_1__32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => Corr_MUXCY(2),
      I1 => Corr_MUXCY(3),
      I2 => \^gen_ecc.syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(5),
      O => S_17
    );
\Corr_MUXCY_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(2),
      I5 => Corr_MUXCY(5),
      O => S_2
    );
\Corr_MUXCY_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => Corr_MUXCY(3),
      I1 => Corr_MUXCY(1),
      I2 => \^gen_ecc.syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(2),
      I5 => Corr_MUXCY(5),
      O => S_3
    );
\Corr_MUXCY_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => Corr_MUXCY(4),
      I1 => \^gen_ecc.syndrome_reg_i\(0),
      I2 => Corr_MUXCY(1),
      I3 => Corr_MUXCY(0),
      I4 => Corr_MUXCY(2),
      I5 => Corr_MUXCY(5),
      O => S_4
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => Enable_ECC,
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\,
      I2 => Corr_MUXCY(3),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      I4 => Corr_MUXCY(1),
      I5 => Corr_MUXCY(4),
      O => I0
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => Enable_ECC,
      I1 => Corr_MUXCY(1),
      I2 => Corr_MUXCY(2),
      I3 => \^gen_ecc.syndrome_reg_i\(0),
      O => I1
    );
\GEN_ECC.CE_Q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5700000000000000"
    )
        port map (
      I0 => Corr_MUXCY(1),
      I1 => Corr_MUXCY(2),
      I2 => \^gen_ecc.syndrome_reg_i\(0),
      I3 => Enable_ECC,
      I4 => \GEN_ECC.CE_Q_reg\(0),
      I5 => Corr_MUXCY(0),
      O => \GEN_ECC.CE_Q\
    );
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => '0',
      I4 => Q(0),
      I5 => Q(1),
      O => \^gen_ecc.syndrome_reg_i\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk3_1\ : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => '0',
      I4 => \Decode_Bits.chk3_1\(1),
      I5 => \Decode_Bits.chk3_1\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60\ is
  port (
    syndrome_reg_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    I0 : out STD_LOGIC;
    S : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\ : out STD_LOGIC;
    I1 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    S_4 : out STD_LOGIC;
    S_5 : out STD_LOGIC;
    S_6 : out STD_LOGIC;
    S_7 : out STD_LOGIC;
    S_8 : out STD_LOGIC;
    S_9 : out STD_LOGIC;
    S_10 : out STD_LOGIC;
    S_11 : out STD_LOGIC;
    S_12 : out STD_LOGIC;
    S_13 : out STD_LOGIC;
    S_14 : out STD_LOGIC;
    S_15 : out STD_LOGIC;
    S_16 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Enable_ECC : in STD_LOGIC;
    \Decode_Bits.Use_LUT6.UE_MUXF7\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Corr_MUXCY : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60\ is
  signal \Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0\ : STD_LOGIC;
  signal \^syndrome_reg_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
  syndrome_reg_i(0) <= \^syndrome_reg_i\(0);
\Corr_MUXCY_i_1__33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      O => S_1
    );
\Corr_MUXCY_i_1__34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      O => S_2
    );
\Corr_MUXCY_i_1__35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \^syndrome_reg_i\(0),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I5 => Corr_MUXCY(0),
      O => S_3
    );
\Corr_MUXCY_i_1__37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^syndrome_reg_i\(0),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I5 => Corr_MUXCY(0),
      O => S_4
    );
\Corr_MUXCY_i_1__39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      O => S_5
    );
\Corr_MUXCY_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \^syndrome_reg_i\(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => Corr_MUXCY(0),
      O => S
    );
\Corr_MUXCY_i_1__40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      O => S_6
    );
\Corr_MUXCY_i_1__41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^syndrome_reg_i\(0),
      I1 => Corr_MUXCY(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      O => S_7
    );
\Corr_MUXCY_i_1__44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      O => S_8
    );
\Corr_MUXCY_i_1__45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      O => S_9
    );
\Corr_MUXCY_i_1__46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \^syndrome_reg_i\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      O => S_10
    );
\Corr_MUXCY_i_1__47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      O => S_11
    );
\Corr_MUXCY_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \^syndrome_reg_i\(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => Corr_MUXCY(0),
      O => S_0
    );
\Corr_MUXCY_i_1__50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \^syndrome_reg_i\(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => Corr_MUXCY(0),
      O => S_12
    );
\Corr_MUXCY_i_1__51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \^syndrome_reg_i\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I5 => Corr_MUXCY(0),
      O => S_13
    );
\Corr_MUXCY_i_1__54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFFFF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I1 => \^syndrome_reg_i\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I4 => Corr_MUXCY(0),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      O => S_14
    );
\Corr_MUXCY_i_1__55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I1 => \^syndrome_reg_i\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I3 => Corr_MUXCY(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      O => S_15
    );
\Corr_MUXCY_i_1__56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFFF"
    )
        port map (
      I0 => \^syndrome_reg_i\(0),
      I1 => Corr_MUXCY(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      O => S_16
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => Enable_ECC,
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(3),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I3 => \Decode_Bits.Use_LUT6.UE_MUXF7\(4),
      I4 => \Decode_Bits.Use_LUT6.UE_MUXF7\(2),
      I5 => \Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0\,
      O => I0
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => Enable_ECC,
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I2 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I3 => \^syndrome_reg_i\(0),
      O => I1
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I1 => \^syndrome_reg_i\(0),
      O => \Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000570000000000"
    )
        port map (
      I0 => \Decode_Bits.Use_LUT6.UE_MUXF7\(0),
      I1 => \Decode_Bits.Use_LUT6.UE_MUXF7\(1),
      I2 => \^syndrome_reg_i\(0),
      I3 => Corr_MUXCY(0),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\,
      I5 => Enable_ECC,
      O => \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\
    );
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => '0',
      I4 => Q(0),
      I5 => Q(1),
      O => \^syndrome_reg_i\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Decode_Bits.chk3_1\ : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77\ is
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Single_LUT6.XOR6_LUT\ : label is "PRIMITIVE";
begin
\Using_LUT6.Single_LUT6.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => '0',
      I4 => \Decode_Bits.chk3_1\(1),
      I5 => \Decode_Bits.chk3_1\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => D(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(6),
      I1 => bram_rddata_a(5),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(2),
      I5 => bram_rddata_a(1),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(6),
      I1 => bram_rddata_a(5),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(2),
      I5 => bram_rddata_a(1),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => D(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(1),
      I1 => bram_rddata_a(2),
      I2 => bram_rddata_a(3),
      I3 => bram_rddata_a(4),
      I4 => bram_rddata_a(5),
      I5 => bram_rddata_a(6),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86\ is
  port (
    \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86\ : entity is "Parity";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86\ is
  signal \Using_LUT6.Use_MUXF7.result6\ : STD_LOGIC;
  signal \Using_LUT6.Use_MUXF7.result6n\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Using_LUT6.Use_MUXF7.MUXF7_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.Use_MUXF7.XOR6_LUT_N\ : label is "PRIMITIVE";
begin
\Using_LUT6.Use_MUXF7.MUXF7_LUT\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Using_LUT6.Use_MUXF7.result6\,
      I1 => \Using_LUT6.Use_MUXF7.result6n\,
      O => \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0),
      S => bram_rddata_a(0)
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => bram_rddata_a(6),
      I1 => bram_rddata_a(5),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(2),
      I5 => bram_rddata_a(1),
      O => \Using_LUT6.Use_MUXF7.result6\
    );
\Using_LUT6.Use_MUXF7.XOR6_LUT_N\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => bram_rddata_a(6),
      I1 => bram_rddata_a(5),
      I2 => bram_rddata_a(4),
      I3 => bram_rddata_a(3),
      I4 => bram_rddata_a(2),
      I5 => bram_rddata_a(1),
      O => \Using_LUT6.Use_MUXF7.result6n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_SRL_FIFO is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bid_gets_fifo_load : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aw_active_re : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bid_gets_fifo_load_d1_reg : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    aw_active_d1 : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_SRL_FIFO;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_ecc.wr_data_ecc_sm_cs_reg[4]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[12]_i_3_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[10].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[10].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[10].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I ";
  attribute box_type of \FIFO_RAM[11].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[11].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[11].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I ";
  attribute box_type of \FIFO_RAM[12].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[12].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[12].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[12].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I ";
  attribute box_type of \FIFO_RAM[8].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[8].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[8].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I ";
  attribute box_type of \FIFO_RAM[9].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[9].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[9].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_bid_int[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \axi_bid_int[10]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \axi_bid_int[11]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \axi_bid_int[12]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \axi_bid_int[12]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \axi_bid_int[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \axi_bid_int[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \axi_bid_int[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axi_bid_int[5]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axi_bid_int[6]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axi_bid_int[7]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axi_bid_int[8]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \axi_bid_int[9]_i_1\ : label is "soft_lutpair90";
begin
  \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4]\(0) <= \^fsm_onehot_gen_wdata_sm_ecc.wr_data_ecc_sm_cs_reg[4]\(0);
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[12]_i_3_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      I5 => \axi_bid_int[12]_i_3_n_0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[12]_i_3_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[12]_i_3_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[12]_i_3_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => bid_fifo_not_empty,
      R => SR(0)
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => Arb2AW_Active,
      I1 => aw_active_d1,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F707F7F7"
    )
        port map (
      I0 => s_axi_bready,
      I1 => Data_Exists_DFF_0,
      I2 => bid_gets_fifo_load_d1_i_2_n_0,
      I3 => axi_wr_burst,
      I4 => Q(0),
      I5 => bid_gets_fifo_load_d1,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(12),
      Q => bid_fifo_rd(12)
    );
\FIFO_RAM[10].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(2),
      Q => bid_fifo_rd(2)
    );
\FIFO_RAM[11].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[12].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(11),
      Q => bid_fifo_rd(11)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(10),
      Q => bid_fifo_rd(10)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(9),
      Q => bid_fifo_rd(9)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(8),
      Q => bid_fifo_rd(8)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(7),
      Q => bid_fifo_rd(7)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(6),
      Q => bid_fifo_rd(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(5),
      Q => bid_fifo_rd(5)
    );
\FIFO_RAM[8].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(4),
      Q => bid_fifo_rd(4)
    );
\FIFO_RAM[9].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(3),
      Q => bid_fifo_rd(3)
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => axi_wr_burst,
      O => \^fsm_onehot_gen_wdata_sm_ecc.wr_data_ecc_sm_cs_reg[4]\(0)
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(0),
      O => D(0)
    );
\axi_bid_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(10),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(10),
      O => D(10)
    );
\axi_bid_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(11),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(11),
      O => D(11)
    );
\axi_bid_int[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_bid_int[12]_i_3_n_0\,
      I1 => \^bid_gets_fifo_load\,
      O => E(0)
    );
\axi_bid_int[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(12),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(12),
      O => D(12)
    );
\axi_bid_int[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA888A888A888"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => \^fsm_onehot_gen_wdata_sm_ecc.wr_data_ecc_sm_cs_reg[4]\(0),
      I3 => bid_gets_fifo_load_d1_i_2_n_0,
      I4 => Data_Exists_DFF_0,
      I5 => s_axi_bready,
      O => \axi_bid_int[12]_i_3_n_0\
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(1),
      O => D(1)
    );
\axi_bid_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(2),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(2),
      O => D(2)
    );
\axi_bid_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(3),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(3),
      O => D(3)
    );
\axi_bid_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(4),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(4),
      O => D(4)
    );
\axi_bid_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(5),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(5),
      O => D(5)
    );
\axi_bid_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(6),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(6),
      O => D(6)
    );
\axi_bid_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(7),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(7),
      O => D(7)
    );
\axi_bid_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(8),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(8),
      O => D(8)
    );
\axi_bid_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(9),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(9),
      O => D(9)
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000A0008000800"
    )
        port map (
      I0 => aw_active_re,
      I1 => bid_gets_fifo_load_d1_i_2_n_0,
      I2 => axi_wr_burst,
      I3 => Q(0),
      I4 => bid_fifo_not_empty,
      I5 => bid_gets_fifo_load_d1_reg,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_1 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_1 : entity is "XOR18";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_1;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_1 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_2 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_2 : entity is "XOR18";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_2;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_2 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_3 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_3 : entity is "XOR18";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_3;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_3 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(6),
      I4 => Q(7),
      I5 => Q(8),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      I2 => Q(11),
      I3 => Q(12),
      I4 => Q(13),
      I5 => Q(14),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_4 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_4 : entity is "XOR18";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_4;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_4 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '0',
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(6),
      I4 => Q(7),
      I5 => Q(8),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      I2 => Q(11),
      I3 => Q(12),
      I4 => Q(13),
      I5 => Q(14),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_5 is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_5 : entity is "XOR18";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_5;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_5 is
  signal \Using_LUT6.xor18_c1\ : STD_LOGIC;
  signal \Using_LUT6.xor18_c2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_1\ : STD_LOGIC;
  signal \Using_LUT6.xor6_2\ : STD_LOGIC;
  signal \Using_LUT6.xor6_3\ : STD_LOGIC;
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Using_LUT6.XOR6_1_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_2_LUT\ : label is "PRIMITIVE";
  attribute box_type of \Using_LUT6.XOR6_3_LUT\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "LO:O";
  attribute box_type of \Using_LUT6.XOR_1st_MUXCY_CARRY4\ : label is "PRIMITIVE";
begin
\Using_LUT6.XOR6_1_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \Using_LUT6.xor6_1\
    );
\Using_LUT6.XOR6_2_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => \Using_LUT6.xor6_2\
    );
\Using_LUT6.XOR6_3_LUT\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => \Using_LUT6.xor6_3\
    );
\Using_LUT6.XOR_1st_MUXCY_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Using_LUT6.xor18_c2\,
      CO(0) => \Using_LUT6.xor18_c1\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \Using_LUT6.xor6_1\,
      DI(0) => '1',
      O(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(3),
      O(2) => bram_wrdata_a(0),
      O(1 downto 0) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED\(3),
      S(2) => \Using_LUT6.xor6_3\,
      S(1) => \Using_LUT6.xor6_2\,
      S(0) => \Using_LUT6.xor6_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_lite_if is
  port (
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ongoing_write_reg_0 : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    \RegWrData_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RegAddr_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RegWr_reg_0 : out STD_LOGIC;
    \RegWrData_reg[30]_0\ : out STD_LOGIC;
    \RegWrData_reg[31]_1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    Wr_Sl_UE : in STD_LOGIC;
    Rd_Sl_UE : in STD_LOGIC;
    \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31]\ : in STD_LOGIC;
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_in1_in : in STD_LOGIC;
    p_2_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \CE_COUNTER.CE_CounterReg_reg[27]\ : in STD_LOGIC;
    \CE_COUNTER.CE_CounterReg_reg[26]\ : in STD_LOGIC;
    Rd_Sl_CE : in STD_LOGIC;
    Wr_Sl_CE : in STD_LOGIC;
    \CE_COUNTER.CE_CounterReg_reg[31]\ : in STD_LOGIC;
    \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31]\ : in STD_LOGIC;
    \CE_COUNTER.CE_CounterReg_reg[24]\ : in STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_lite_if;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_lite_if is
  signal CE : STD_LOGIC;
  signal \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \RegAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \RegAddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \RegAddr[7]_i_1_n_0\ : STD_LOGIC;
  signal RegAddr_i : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \^regaddr_reg[6]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RegRdData : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \RegWrData_reg_n_0_[24]\ : STD_LOGIC;
  signal \RegWrData_reg_n_0_[25]\ : STD_LOGIC;
  signal \RegWrData_reg_n_0_[26]\ : STD_LOGIC;
  signal \RegWrData_reg_n_0_[27]\ : STD_LOGIC;
  signal \RegWrData_reg_n_0_[28]\ : STD_LOGIC;
  signal \RegWrData_reg_n_0_[29]\ : STD_LOGIC;
  signal RegWr_i : STD_LOGIC;
  signal \^regwr_reg_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\ : STD_LOGIC;
  signal S_AXI_RVALID_i_i_1_n_0 : STD_LOGIC;
  signal ongoing_read_i_1_n_0 : STD_LOGIC;
  signal ongoing_write_i_1_n_0 : STD_LOGIC;
  signal \^ongoing_write_reg_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_arready\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CE_COUNTER.CE_CounterReg[24]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CE_COUNTER.CE_CounterReg[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CE_COUNTER.CE_CounterReg[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_ECC_ONOFF.ECC_OnOffReg[31]_i_1\ : label is "soft_lutpair3";
  attribute box_type : string;
  attribute box_type of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2\ : label is "soft_lutpair11";
  attribute box_type of \S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair7";
  attribute box_type of \S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair8";
  attribute box_type of \S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair9";
  attribute box_type of \S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair10";
  attribute box_type of \S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair11";
  attribute box_type of \S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair12";
  attribute box_type of \S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair12";
  attribute box_type of \S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair13";
  attribute box_type of \S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair13";
  attribute box_type of \S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair14";
  attribute box_type of \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair14";
  attribute box_type of \S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair15";
  attribute box_type of \S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair15";
  attribute box_type of \S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair16";
  attribute box_type of \S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair16";
  attribute box_type of \S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair17";
  attribute box_type of \S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair17";
  attribute box_type of \S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair18";
  attribute box_type of \S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair18";
  attribute box_type of \S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair19";
  attribute box_type of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair5";
  attribute box_type of \S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair19";
  attribute box_type of \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair6";
  attribute box_type of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair7";
  attribute box_type of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair8";
  attribute box_type of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair9";
  attribute box_type of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair10";
  attribute box_type of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair5";
  attribute box_type of \S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE_i_1\ : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  \RegAddr_reg[6]_0\(1 downto 0) <= \^regaddr_reg[6]_0\(1 downto 0);
  RegWr_reg_0 <= \^regwr_reg_0\;
  ongoing_write_reg_0 <= \^ongoing_write_reg_0\;
  s_axi_ctrl_arready <= \^s_axi_ctrl_arready\;
  s_axi_ctrl_rvalid <= \^s_axi_ctrl_rvalid\;
\CE_COUNTER.CE_CounterReg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEE0EEEEE"
    )
        port map (
      I0 => Rd_Sl_CE,
      I1 => Wr_Sl_CE,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(7),
      I3 => \CE_COUNTER.CE_CounterReg_reg[31]\,
      I4 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(6),
      I5 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\(0)
    );
\CE_COUNTER.CE_CounterReg[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000BFFFBFFF8000"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[24]\,
      I1 => \^regaddr_reg[6]_0\(0),
      I2 => \^regwr_reg_0\,
      I3 => \^regaddr_reg[6]_0\(1),
      I4 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(7),
      I5 => \CE_COUNTER.CE_CounterReg_reg[24]\,
      O => D(7)
    );
\CE_COUNTER.CE_CounterReg[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^regwr_reg_0\,
      I1 => \^regaddr_reg[6]_0\(0),
      I2 => \^regaddr_reg[6]_0\(1),
      O => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\
    );
\CE_COUNTER.CE_CounterReg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF80008000BFFF"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[25]\,
      I1 => \^regaddr_reg[6]_0\(0),
      I2 => \^regwr_reg_0\,
      I3 => \^regaddr_reg[6]_0\(1),
      I4 => \CE_COUNTER.CE_CounterReg_reg[31]\,
      I5 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(6),
      O => D(6)
    );
\CE_COUNTER.CE_CounterReg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[26]\,
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(5),
      I3 => \CE_COUNTER.CE_CounterReg_reg[26]\,
      O => D(5)
    );
\CE_COUNTER.CE_CounterReg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[27]\,
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(4),
      I3 => \CE_COUNTER.CE_CounterReg_reg[27]\,
      O => D(4)
    );
\CE_COUNTER.CE_CounterReg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[28]\,
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(3),
      I3 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(1),
      I4 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0),
      I5 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(2),
      O => D(3)
    );
\CE_COUNTER.CE_CounterReg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \RegWrData_reg_n_0_[29]\,
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(2),
      I3 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0),
      I4 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(1),
      O => D(2)
    );
\CE_COUNTER.CE_CounterReg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0),
      I3 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(1),
      O => D(1)
    );
\CE_COUNTER.CE_CounterReg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0),
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_4_n_0\,
      I2 => \^q\(0),
      O => D(0)
    );
\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => RegWr_i,
      I1 => RegAddr_i(2),
      I2 => RegAddr_i(1),
      I3 => RegAddr_i(3),
      I4 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\,
      O => \^regwr_reg_0\
    );
\ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777333000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0\,
      I2 => Rd_Sl_CE,
      I3 => Wr_Sl_CE,
      I4 => p_0_in1_in,
      I5 => s_axi_aresetn,
      O => \RegWrData_reg[30]_0\
    );
\ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^regwr_reg_0\,
      I1 => \^regaddr_reg[6]_0\(0),
      I2 => \^regaddr_reg[6]_0\(1),
      O => \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0\
    );
\ECC_STATUS_REGISTERS.ECC_StatusReg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777333000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0\,
      I2 => Wr_Sl_UE,
      I3 => Rd_Sl_UE,
      I4 => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31]\,
      I5 => s_axi_aresetn,
      O => \RegWrData_reg[31]_0\
    );
\GEN_ECC_ONOFF.ECC_OnOffReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^regwr_reg_0\,
      I2 => \^regaddr_reg[6]_0\(1),
      I3 => \^regaddr_reg[6]_0\(0),
      I4 => \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31]\,
      O => \RegWrData_reg[31]_1\
    );
\RegAddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_ctrl_awvalid,
      I1 => s_axi_ctrl_wvalid,
      I2 => \^ongoing_write_reg_0\,
      I3 => CE,
      I4 => s_axi_ctrl_arvalid,
      O => \RegAddr[0]_i_1_n_0\
    );
\RegAddr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(7),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(7),
      O => \RegAddr[0]_i_2_n_0\
    );
\RegAddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(6),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(6),
      O => \RegAddr[1]_i_1_n_0\
    );
\RegAddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(5),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(5),
      O => \RegAddr[2]_i_1_n_0\
    );
\RegAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(4),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(4),
      O => \RegAddr[3]_i_1_n_0\
    );
\RegAddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(3),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(3),
      O => \RegAddr[4]_i_1_n_0\
    );
\RegAddr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(2),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(2),
      O => \RegAddr[5]_i_1_n_0\
    );
\RegAddr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(1),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(1),
      O => \RegAddr[6]_i_1_n_0\
    );
\RegAddr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_awaddr(0),
      I1 => s_axi_ctrl_wvalid,
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_araddr(0),
      O => \RegAddr[7]_i_1_n_0\
    );
\RegAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[0]_i_2_n_0\,
      Q => RegAddr_i(0),
      R => SR(0)
    );
\RegAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[1]_i_1_n_0\,
      Q => RegAddr_i(1),
      R => SR(0)
    );
\RegAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[2]_i_1_n_0\,
      Q => RegAddr_i(2),
      R => SR(0)
    );
\RegAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[3]_i_1_n_0\,
      Q => RegAddr_i(3),
      R => SR(0)
    );
\RegAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[4]_i_1_n_0\,
      Q => RegAddr_i(4),
      R => SR(0)
    );
\RegAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[5]_i_1_n_0\,
      Q => RegAddr_i(5),
      R => SR(0)
    );
\RegAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[6]_i_1_n_0\,
      Q => \^regaddr_reg[6]_0\(1),
      R => SR(0)
    );
\RegAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \RegAddr[0]_i_1_n_0\,
      D => \RegAddr[7]_i_1_n_0\,
      Q => \^regaddr_reg[6]_0\(0),
      R => SR(0)
    );
\RegWrData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(7),
      Q => \RegWrData_reg_n_0_[24]\,
      R => SR(0)
    );
\RegWrData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(6),
      Q => \RegWrData_reg_n_0_[25]\,
      R => SR(0)
    );
\RegWrData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(5),
      Q => \RegWrData_reg_n_0_[26]\,
      R => SR(0)
    );
\RegWrData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(4),
      Q => \RegWrData_reg_n_0_[27]\,
      R => SR(0)
    );
\RegWrData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(3),
      Q => \RegWrData_reg_n_0_[28]\,
      R => SR(0)
    );
\RegWrData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(2),
      Q => \RegWrData_reg_n_0_[29]\,
      R => SR(0)
    );
\RegWrData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\RegWrData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_ctrl_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
RegWr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^e\(0),
      Q => RegWr_i,
      R => '0'
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(31),
      Q => s_axi_ctrl_rdata(0),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F0FF44004400"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I1 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0),
      I2 => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31]\,
      I3 => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0\,
      I4 => \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0\,
      I5 => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0\,
      O => RegRdData(31)
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31]\,
      O => \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0\
    );
\S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(21),
      Q => s_axi_ctrl_rdata(10),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(8),
      O => RegRdData(21)
    );
\S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(20),
      Q => s_axi_ctrl_rdata(11),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(9),
      O => RegRdData(20)
    );
\S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(19),
      Q => s_axi_ctrl_rdata(12),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(10),
      O => RegRdData(19)
    );
\S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(18),
      Q => s_axi_ctrl_rdata(13),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(11),
      O => RegRdData(18)
    );
\S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(17),
      Q => s_axi_ctrl_rdata(14),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(12),
      O => RegRdData(17)
    );
\S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(16),
      Q => s_axi_ctrl_rdata(15),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(13),
      O => RegRdData(16)
    );
\S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(15),
      Q => s_axi_ctrl_rdata(16),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(14),
      O => RegRdData(15)
    );
\S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(14),
      Q => s_axi_ctrl_rdata(17),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(15),
      O => RegRdData(14)
    );
\S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(13),
      Q => s_axi_ctrl_rdata(18),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(16),
      O => RegRdData(13)
    );
\S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(12),
      Q => s_axi_ctrl_rdata(19),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(17),
      O => RegRdData(12)
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(30),
      Q => s_axi_ctrl_rdata(1),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0F0C00AA000C00"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_2_in(1),
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0\,
      I4 => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0\,
      I5 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(1),
      O => RegRdData(30)
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => RegAddr_i(2),
      I1 => RegAddr_i(1),
      I2 => RegAddr_i(3),
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\,
      I4 => \^regaddr_reg[6]_0\(0),
      I5 => \^regaddr_reg[6]_0\(1),
      O => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0\
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000081"
    )
        port map (
      I0 => RegAddr_i(2),
      I1 => RegAddr_i(1),
      I2 => RegAddr_i(3),
      I3 => \^regaddr_reg[6]_0\(1),
      I4 => \^regaddr_reg[6]_0\(0),
      I5 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\,
      O => \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0\
    );
\S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(11),
      Q => s_axi_ctrl_rdata(20),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(18),
      O => RegRdData(11)
    );
\S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(10),
      Q => s_axi_ctrl_rdata(21),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(19),
      O => RegRdData(10)
    );
\S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(9),
      Q => s_axi_ctrl_rdata(22),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(20),
      O => RegRdData(9)
    );
\S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(8),
      Q => s_axi_ctrl_rdata(23),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(21),
      O => RegRdData(8)
    );
\S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(7),
      Q => s_axi_ctrl_rdata(24),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(22),
      O => RegRdData(7)
    );
\S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(6),
      Q => s_axi_ctrl_rdata(25),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(23),
      O => RegRdData(6)
    );
\S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(5),
      Q => s_axi_ctrl_rdata(26),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(24),
      O => RegRdData(5)
    );
\S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(4),
      Q => s_axi_ctrl_rdata(27),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(25),
      O => RegRdData(4)
    );
\S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(3),
      Q => s_axi_ctrl_rdata(28),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(26),
      O => RegRdData(3)
    );
\S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(2),
      Q => s_axi_ctrl_rdata(29),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(27),
      O => RegRdData(2)
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(29),
      Q => s_axi_ctrl_rdata(2),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(2),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(0),
      O => RegRdData(29)
    );
\S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(1),
      Q => s_axi_ctrl_rdata(30),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(28),
      O => RegRdData(1)
    );
\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(0),
      Q => s_axi_ctrl_rdata(31),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(29),
      O => RegRdData(0)
    );
\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000008"
    )
        port map (
      I0 => \^regaddr_reg[6]_0\(1),
      I1 => \^regaddr_reg[6]_0\(0),
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\,
      I3 => RegAddr_i(3),
      I4 => RegAddr_i(1),
      I5 => RegAddr_i(2),
      O => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\
    );
\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000181"
    )
        port map (
      I0 => RegAddr_i(2),
      I1 => RegAddr_i(1),
      I2 => RegAddr_i(3),
      I3 => \^regaddr_reg[6]_0\(1),
      I4 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\,
      I5 => \^regaddr_reg[6]_0\(0),
      O => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\
    );
\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RegAddr_i(4),
      I1 => RegAddr_i(0),
      I2 => RegAddr_i(5),
      O => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0\
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(28),
      Q => s_axi_ctrl_rdata(3),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(3),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(1),
      O => RegRdData(28)
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(27),
      Q => s_axi_ctrl_rdata(4),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(4),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(2),
      O => RegRdData(27)
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(26),
      Q => s_axi_ctrl_rdata(5),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(5),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(3),
      O => RegRdData(26)
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(25),
      Q => s_axi_ctrl_rdata(6),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(6),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(4),
      O => RegRdData(25)
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(24),
      Q => s_axi_ctrl_rdata(7),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(7),
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I3 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(5),
      O => RegRdData(24)
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(23),
      Q => s_axi_ctrl_rdata(8),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(6),
      O => RegRdData(23)
    );
\S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => RegRdData(22),
      Q => s_axi_ctrl_rdata(9),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0\,
      I1 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0\,
      I2 => \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(7),
      O => RegRdData(22)
    );
S_AXI_RVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000028A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^s_axi_ctrl_rvalid\,
      I2 => CE,
      I3 => s_axi_ctrl_rready,
      I4 => \^s_axi_ctrl_arready\,
      O => S_AXI_RVALID_i_i_1_n_0
    );
S_AXI_RVALID_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => S_AXI_RVALID_i_i_1_n_0,
      Q => \^s_axi_ctrl_rvalid\,
      R => '0'
    );
ongoing_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777000077770F00"
    )
        port map (
      I0 => \^s_axi_ctrl_rvalid\,
      I1 => s_axi_ctrl_rready,
      I2 => \^e\(0),
      I3 => s_axi_ctrl_arvalid,
      I4 => CE,
      I5 => \^ongoing_write_reg_0\,
      O => ongoing_read_i_1_n_0
    );
ongoing_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ongoing_read_i_1_n_0,
      Q => CE,
      R => SR(0)
    );
ongoing_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550055C0"
    )
        port map (
      I0 => s_axi_ctrl_bready,
      I1 => s_axi_ctrl_awvalid,
      I2 => s_axi_ctrl_wvalid,
      I3 => \^ongoing_write_reg_0\,
      I4 => CE,
      O => ongoing_write_i_1_n_0
    );
ongoing_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ongoing_write_i_1_n_0,
      Q => \^ongoing_write_reg_0\,
      R => SR(0)
    );
s_axi_ctrl_arready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000002A"
    )
        port map (
      I0 => s_axi_ctrl_arvalid,
      I1 => s_axi_ctrl_awvalid,
      I2 => s_axi_ctrl_wvalid,
      I3 => \^ongoing_write_reg_0\,
      I4 => CE,
      O => \^s_axi_ctrl_arready\
    );
s_axi_ctrl_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => CE,
      I1 => \^ongoing_write_reg_0\,
      I2 => s_axi_ctrl_wvalid,
      I3 => s_axi_ctrl_awvalid,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Arb2AR_Active : out STD_LOGIC;
    Arb2AW_Active : out STD_LOGIC;
    s_axi_arlen_3_sp_1 : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_d1_reg : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    ar_active_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.brst_zero_reg\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    AW2Arb_Active_Clr : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aw_active_d1 : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_0\ : in STD_LOGIC;
    BRAM_WE_A_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ar_active_reg_1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_sng_port_arb;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_sng_port_arb is
  signal \^arb2ar_active\ : STD_LOGIC;
  signal \^arb2aw_active\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal ar_active_i_4_n_0 : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal axi_awready_int_i_3_n_0 : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal last_arb_won_cmb : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
  signal last_arb_won_i_2_n_0 : STD_LOGIC;
  signal s_axi_arlen_3_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[31]_i_5\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ar_active_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ar_active_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[31]_i_1__0\ : label is "soft_lutpair2";
begin
  Arb2AR_Active <= \^arb2ar_active\;
  Arb2AW_Active <= \^arb2aw_active\;
  ar_active_re <= \^ar_active_re\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  s_axi_arlen_3_sp_1 <= s_axi_arlen_3_sn_1;
\ADDR_SNG_PORT.bram_addr_int[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => aw_active_d1,
      I1 => \^arb2aw_active\,
      I2 => ar_active_d1,
      I3 => \^arb2ar_active\,
      O => aw_active_d1_reg
    );
\FSM_sequential_arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FC0C0000F5454"
    )
        port map (
      I0 => axi_awready_int_i_3_n_0,
      I1 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I2 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I3 => AW2Arb_Active_Clr,
      I4 => \^arb_sm_cs\(0),
      I5 => \^arb_sm_cs\(1),
      O => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      I1 => s_axi_rready,
      I2 => \^arb_sm_cs\(1),
      I3 => \^arb_sm_cs\(0),
      O => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202FFFF8AAA0000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^arb_sm_cs\(0),
      I2 => s_axi_awvalid,
      I3 => last_arb_won,
      I4 => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\,
      I5 => \^arb_sm_cs\(1),
      O => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFEAAAAAAAEAAA"
    )
        port map (
      I0 => last_arb_won_i_2_n_0,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      I2 => s_axi_rready,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      I5 => AW2Arb_Active_Clr,
      O => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\,
      Q => \^arb_sm_cs\(0),
      R => SR(0)
    );
\FSM_sequential_arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\,
      Q => \^arb_sm_cs\(1),
      R => SR(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      O => ar_active_reg_0
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => \GEN_NO_RD_CMD_OPT.brst_zero_reg\,
      I5 => \^ar_active_re\,
      O => s_axi_arlen_3_sn_1
    );
ar_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => last_arb_won_cmb,
      I1 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I2 => s_axi_arvalid,
      I3 => ar_active_reg_1,
      I4 => ar_active_i_4_n_0,
      I5 => \^arb2ar_active\,
      O => ar_active_i_1_n_0
    );
ar_active_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"082A0A2A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^arb_sm_cs\(0),
      I2 => \^arb_sm_cs\(1),
      I3 => s_axi_awvalid,
      I4 => last_arb_won,
      O => last_arb_won_cmb
    );
ar_active_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
        port map (
      I0 => \^arb_sm_cs\(1),
      I1 => \^arb_sm_cs\(0),
      I2 => s_axi_awvalid,
      I3 => last_arb_won,
      I4 => s_axi_arvalid,
      O => ar_active_i_4_n_0
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_i_1_n_0,
      Q => \^arb2ar_active\,
      R => SR(0)
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0ACFFF0A0A0000"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I1 => \^arb_sm_cs\(1),
      I2 => \^arb_sm_cs\(0),
      I3 => AW2Arb_Active_Clr,
      I4 => axi_awready_cmb,
      I5 => \^arb2aw_active\,
      O => aw_active_i_1_n_0
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_i_1_n_0,
      Q => \^arb2aw_active\,
      R => SR(0)
    );
axi_arready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000002A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => last_arb_won,
      I2 => s_axi_awvalid,
      I3 => \^arb_sm_cs\(0),
      I4 => \^arb_sm_cs\(1),
      I5 => axi_arready_int_i_2_n_0,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F22200000000"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I1 => s_axi_awvalid,
      I2 => AW2Arb_Active_Clr,
      I3 => \^arb_sm_cs\(0),
      I4 => \^arb_sm_cs\(1),
      I5 => s_axi_arvalid,
      O => axi_arready_int_i_2_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready_cmb,
      Q => s_axi_arready,
      R => SR(0)
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A000200020002"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I1 => \^arb_sm_cs\(1),
      I2 => \^arb_sm_cs\(0),
      I3 => axi_awready_int_i_3_n_0,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      I5 => s_axi_rready,
      O => axi_awready_cmb
    );
axi_awready_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => last_arb_won,
      I2 => s_axi_awvalid,
      O => axi_awready_int_i_3_n_0
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_cmb,
      Q => s_axi_awready,
      R => SR(0)
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => BRAM_WE_A_i(0),
      O => bram_we_a(0)
    );
last_arb_won_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => last_arb_won_cmb,
      I1 => last_arb_won_i_2_n_0,
      I2 => axi_arready_int_i_2_n_0,
      I3 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I4 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I5 => last_arb_won,
      O => last_arb_won_i_1_n_0
    );
last_arb_won_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010111011101110"
    )
        port map (
      I0 => \^arb_sm_cs\(1),
      I1 => \^arb_sm_cs\(0),
      I2 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I3 => s_axi_arvalid,
      I4 => last_arb_won,
      I5 => s_axi_awvalid,
      O => last_arb_won_i_2_n_0
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_i_1_n_0,
      Q => last_arb_won,
      R => SR(0)
    );
\save_init_bram_addr_ld[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => aw_active_d1,
      O => aw_active_re
    );
\save_init_bram_addr_ld[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => ar_active_d1,
      O => \^ar_active_re\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst is
  port (
    s_axi_awaddr_2_sp_1 : out STD_LOGIC;
    s_axi_awaddr_3_sp_1 : out STD_LOGIC;
    s_axi_awaddr_4_sp_1 : out STD_LOGIC;
    s_axi_awaddr_5_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 25 downto 0 );
    curr_wrap_burst_reg_reg : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    aw_active_d1 : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[31]_0\ : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \save_init_bram_addr_ld[31]_i_3_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aw_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst is
  signal \^d\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal data0 : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal s_axi_awaddr_2_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_3_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_4_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_5_sn_1 : STD_LOGIC;
  signal \save_init_bram_addr_ld[31]_i_3_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[31]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[31]_i_5_n_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[2]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[15]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[16]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[17]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[18]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[19]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[20]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[21]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[22]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[23]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[24]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[25]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[26]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[27]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[28]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[29]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[30]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[6]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1\ : label is "soft_lutpair95";
begin
  D(25 downto 0) <= \^d\(25 downto 0);
  s_axi_awaddr_2_sp_1 <= s_axi_awaddr_2_sn_1;
  s_axi_awaddr_3_sp_1 <= s_axi_awaddr_3_sn_1;
  s_axi_awaddr_4_sp_1 <= s_axi_awaddr_4_sn_1;
  s_axi_awaddr_5_sp_1 <= s_axi_awaddr_5_sn_1;
\ADDR_SNG_PORT.bram_addr_int[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      O => s_axi_awaddr_2_sn_1
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \save_init_bram_addr_ld[31]_i_5_n_0\,
      I2 => \save_init_bram_addr_ld_reg[31]_0\,
      I3 => wrap_burst_total(0),
      I4 => wrap_burst_total(2),
      I5 => wrap_burst_total(1),
      O => curr_wrap_burst_reg_reg
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4477477777774477"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => wrap_burst_total(0),
      I3 => data0(1),
      I4 => wrap_burst_total(1),
      I5 => wrap_burst_total(2),
      O => s_axi_awaddr_3_sn_1
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474474477777777"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(1),
      I5 => data0(2),
      O => s_axi_awaddr_4_sn_1
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444474477777777"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(1),
      I5 => data0(3),
      O => s_axi_awaddr_5_sn_1
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(8),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(9),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(10),
      O => \^d\(6)
    );
\save_init_bram_addr_ld[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(11),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(12),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(13),
      O => \^d\(9)
    );
\save_init_bram_addr_ld[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(14),
      O => \^d\(10)
    );
\save_init_bram_addr_ld[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(15),
      O => \^d\(11)
    );
\save_init_bram_addr_ld[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(16),
      O => \^d\(12)
    );
\save_init_bram_addr_ld[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(17),
      O => \^d\(13)
    );
\save_init_bram_addr_ld[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(18),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(18),
      O => \^d\(14)
    );
\save_init_bram_addr_ld[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(19),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(19),
      O => \^d\(15)
    );
\save_init_bram_addr_ld[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(20),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(20),
      O => \^d\(16)
    );
\save_init_bram_addr_ld[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(21),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(21),
      O => \^d\(17)
    );
\save_init_bram_addr_ld[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(22),
      O => \^d\(18)
    );
\save_init_bram_addr_ld[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(23),
      O => \^d\(19)
    );
\save_init_bram_addr_ld[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(24),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(24),
      O => \^d\(20)
    );
\save_init_bram_addr_ld[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(25),
      O => \^d\(21)
    );
\save_init_bram_addr_ld[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(26),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(26),
      O => \^d\(22)
    );
\save_init_bram_addr_ld[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(27),
      O => \^d\(23)
    );
\save_init_bram_addr_ld[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(28),
      O => \^d\(24)
    );
\save_init_bram_addr_ld[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(29),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(29),
      O => \^d\(25)
    );
\save_init_bram_addr_ld[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FF4FFFFFFFFF"
    )
        port map (
      I0 => aw_active_d1,
      I1 => Arb2AW_Active,
      I2 => \save_init_bram_addr_ld[31]_i_4_n_0\,
      I3 => \save_init_bram_addr_ld_reg[31]_0\,
      I4 => \save_init_bram_addr_ld[31]_i_5_n_0\,
      I5 => curr_wrap_burst_reg,
      O => \save_init_bram_addr_ld[31]_i_3_n_0\
    );
\save_init_bram_addr_ld[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(0),
      O => \save_init_bram_addr_ld[31]_i_4_n_0\
    );
\save_init_bram_addr_ld[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FA00000"
    )
        port map (
      I0 => \save_init_bram_addr_ld[31]_i_3_0\(1),
      I1 => \save_init_bram_addr_ld[31]_i_3_0\(2),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(0),
      I4 => \save_init_bram_addr_ld[31]_i_3_0\(0),
      I5 => wrap_burst_total(2),
      O => \save_init_bram_addr_ld[31]_i_5_n_0\
    );
\save_init_bram_addr_ld[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB0900000B090"
    )
        port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(1),
      I2 => data0(1),
      I3 => wrap_burst_total(0),
      I4 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I5 => s_axi_awaddr(1),
      O => WrChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA28A0000A28A"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(1),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(0),
      I4 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I5 => s_axi_awaddr(2),
      O => WrChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA8A0000AA8A"
    )
        port map (
      I0 => data0(3),
      I1 => wrap_burst_total(1),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(0),
      I4 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I5 => s_axi_awaddr(3),
      O => WrChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(4),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(5),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(6),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \save_init_bram_addr_ld[31]_i_3_n_0\,
      I2 => data0(7),
      O => \^d\(3)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(4),
      Q => data0(8),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(5),
      Q => data0(9),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(6),
      Q => data0(10),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(7),
      Q => data0(11),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(8),
      Q => data0(12),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(9),
      Q => data0(13),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(10),
      Q => data0(14),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(11),
      Q => data0(15),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(12),
      Q => data0(16),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(13),
      Q => data0(17),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(14),
      Q => data0(18),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(15),
      Q => data0(19),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(16),
      Q => data0(20),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(17),
      Q => data0(21),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(18),
      Q => data0(22),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(19),
      Q => data0(23),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(20),
      Q => data0(24),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(21),
      Q => data0(25),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(22),
      Q => data0(26),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(23),
      Q => data0(27),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(24),
      Q => data0(28),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(25),
      Q => data0(29),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(1),
      Q => data0(1),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(2),
      Q => data0(2),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(3),
      Q => data0(3),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(0),
      Q => data0(4),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(1),
      Q => data0(5),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(2),
      Q => data0(6),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(3),
      Q => data0(7),
      R => SR(0)
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00900000"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(3),
      I4 => s_axi_awlen(0),
      O => \wrap_burst_total[0]_i_1__0_n_0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(3),
      O => \wrap_burst_total[1]_i_1__0_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(3),
      I3 => s_axi_awvalid,
      I4 => s_axi_awlen(2),
      O => \wrap_burst_total[2]_i_1_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[0]_i_1__0_n_0\,
      Q => wrap_burst_total(0),
      R => SR(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[1]_i_1__0_n_0\,
      Q => wrap_burst_total(1),
      R => SR(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[2]_i_1_n_0\,
      Q => wrap_burst_total(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst_62 is
  port (
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_burst : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Arb2AR_Active : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[3]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ : in STD_LOGIC;
    curr_fixed_burst_reg_0 : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1\ : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst_62 : entity is "wrap_brst";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst_62;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst_62 is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[2]\ : STD_LOGIC;
  signal \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \save_init_bram_addr_ld[11]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[3]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[5]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[10]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[11]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[12]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[13]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[14]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[15]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[16]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[17]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[18]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[19]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[20]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[21]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[22]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[23]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[24]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[25]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[26]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[27]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[28]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[29]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[30]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[31]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[3]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[4]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[5]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[6]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[7]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[8]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_9\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[16]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[17]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[18]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[19]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[23]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[24]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[25]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[26]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[27]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[28]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[30]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[31]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[4]_i_5\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[15]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[16]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[17]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[18]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[19]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[20]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[21]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[22]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[23]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[24]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[25]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[26]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[27]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[28]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[29]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[30]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[31]_i_2__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[3]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1__0\ : label is "soft_lutpair59";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[2]\ <= \^addr_sng_port.bram_addr_int_reg[2]\;
  \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ <= \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\;
  SR(0) <= \^sr\(0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(8),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(8),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(4),
      O => D(8)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04F40404FFFFFFFF"
    )
        port map (
      I0 => curr_fixed_burst_reg,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\,
      I2 => Arb2AR_Active,
      I3 => curr_fixed_burst_reg_0,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I5 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      O => E(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(9),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(9),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(5),
      O => D(9)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222323200000200"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\,
      O => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EFF"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0\,
      I2 => Q(1),
      I3 => Q(0),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1\,
      I2 => brst_zero,
      I3 => end_brst_rd,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(6),
      O => D(10)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(7),
      O => D(11)
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[14]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(8),
      O => D(12)
    );
\ADDR_SNG_PORT.bram_addr_int[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[15]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(9),
      O => D(13)
    );
\ADDR_SNG_PORT.bram_addr_int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[16]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(10),
      O => D(14)
    );
\ADDR_SNG_PORT.bram_addr_int[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[17]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(11),
      O => D(15)
    );
\ADDR_SNG_PORT.bram_addr_int[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[18]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(12),
      O => D(16)
    );
\ADDR_SNG_PORT.bram_addr_int[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[19]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(13),
      O => D(17)
    );
\ADDR_SNG_PORT.bram_addr_int[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[20]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(14),
      O => D(18)
    );
\ADDR_SNG_PORT.bram_addr_int[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[21]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(15),
      O => D(19)
    );
\ADDR_SNG_PORT.bram_addr_int[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[22]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(16),
      O => D(20)
    );
\ADDR_SNG_PORT.bram_addr_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[23]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(17),
      O => D(21)
    );
\ADDR_SNG_PORT.bram_addr_int[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[24]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(18),
      O => D(22)
    );
\ADDR_SNG_PORT.bram_addr_int[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[25]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(19),
      O => D(23)
    );
\ADDR_SNG_PORT.bram_addr_int[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[26]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(20),
      O => D(24)
    );
\ADDR_SNG_PORT.bram_addr_int[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[27]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(21),
      O => D(25)
    );
\ADDR_SNG_PORT.bram_addr_int[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[28]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(22),
      O => D(26)
    );
\ADDR_SNG_PORT.bram_addr_int[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[29]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(23),
      O => D(27)
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008F80FFFF8F80"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => Arb2AR_Active,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[30]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(24),
      O => D(28)
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      O => E(1)
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[31]\,
      I3 => Arb2AR_Active,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(25),
      O => D(29)
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007F007F007F"
    )
        port map (
      I0 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I1 => curr_wrap_burst_reg,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\,
      O => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F777F7"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I1 => curr_wrap_burst_reg,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0\,
      I3 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I4 => \^addr_sng_port.bram_addr_int_reg[2]\,
      O => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFBFFFBFEFBFFFBF"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[2]\,
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      I3 => \wrap_burst_total_reg_n_0_[1]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2),
      O => \ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F606F6060606F"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1),
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[3]\,
      I4 => Arb2AR_Active,
      I5 => RdChnl_BRAM_Addr_Ld(1),
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606F6F6F606F"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\,
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\,
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5551555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0\,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"18FF"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[1]\,
      I2 => \wrap_burst_total_reg_n_0_[2]\,
      I3 => \save_init_bram_addr_ld_reg_n_0_[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F909F9090909F"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(3),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\,
      I4 => Arb2AR_Active,
      I5 => RdChnl_BRAM_Addr_Ld(3),
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(4),
      I1 => \^addr_sng_port.bram_addr_int_reg[2]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(4),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(0),
      O => D(4)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2),
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(3),
      O => \^addr_sng_port.bram_addr_int_reg[2]\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(5),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(5),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(1),
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(6),
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(6),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(2),
      O => D(6)
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(7),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(7),
      I4 => Arb2AR_Active,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(3),
      O => D(7)
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[10]\,
      O => RdChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[11]\,
      O => RdChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => \^addr_sng_port.bram_addr_int_reg[2]\,
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => \wrap_burst_total_reg_n_0_[2]\,
      I3 => \wrap_burst_total_reg_n_0_[1]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0\,
      O => \save_init_bram_addr_ld[11]_i_2_n_0\
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      O => RdChnl_BRAM_Addr_Ld(10)
    );
\save_init_bram_addr_ld[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      O => RdChnl_BRAM_Addr_Ld(11)
    );
\save_init_bram_addr_ld[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[14]\,
      O => RdChnl_BRAM_Addr_Ld(12)
    );
\save_init_bram_addr_ld[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[15]\,
      O => RdChnl_BRAM_Addr_Ld(13)
    );
\save_init_bram_addr_ld[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[16]\,
      O => RdChnl_BRAM_Addr_Ld(14)
    );
\save_init_bram_addr_ld[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[17]\,
      O => RdChnl_BRAM_Addr_Ld(15)
    );
\save_init_bram_addr_ld[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[18]\,
      O => RdChnl_BRAM_Addr_Ld(16)
    );
\save_init_bram_addr_ld[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[19]\,
      O => RdChnl_BRAM_Addr_Ld(17)
    );
\save_init_bram_addr_ld[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[20]\,
      O => RdChnl_BRAM_Addr_Ld(18)
    );
\save_init_bram_addr_ld[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[21]\,
      O => RdChnl_BRAM_Addr_Ld(19)
    );
\save_init_bram_addr_ld[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[22]\,
      O => RdChnl_BRAM_Addr_Ld(20)
    );
\save_init_bram_addr_ld[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[23]\,
      O => RdChnl_BRAM_Addr_Ld(21)
    );
\save_init_bram_addr_ld[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[24]\,
      O => RdChnl_BRAM_Addr_Ld(22)
    );
\save_init_bram_addr_ld[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[25]\,
      O => RdChnl_BRAM_Addr_Ld(23)
    );
\save_init_bram_addr_ld[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[26]\,
      O => RdChnl_BRAM_Addr_Ld(24)
    );
\save_init_bram_addr_ld[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[27]\,
      O => RdChnl_BRAM_Addr_Ld(25)
    );
\save_init_bram_addr_ld[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[28]\,
      O => RdChnl_BRAM_Addr_Ld(26)
    );
\save_init_bram_addr_ld[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[29]\,
      O => RdChnl_BRAM_Addr_Ld(27)
    );
\save_init_bram_addr_ld[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[30]\,
      O => RdChnl_BRAM_Addr_Ld(28)
    );
\save_init_bram_addr_ld[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld_reg_n_0_[31]\,
      O => RdChnl_BRAM_Addr_Ld(29)
    );
\save_init_bram_addr_ld[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld[3]_i_2_n_0\,
      O => RdChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CB00"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \save_init_bram_addr_ld_reg_n_0_[3]\,
      O => \save_init_bram_addr_ld[3]_i_2_n_0\
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8AA200008AA2"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[4]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \wrap_burst_total_reg_n_0_[0]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0\,
      I5 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAAEAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[5]\,
      I5 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      O => RdChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      O => \save_init_bram_addr_ld[5]_i_2_n_0\
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[6]\,
      O => RdChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[7]\,
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[8]\,
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => curr_wrap_burst_reg,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => \save_init_bram_addr_ld_reg_n_0_[9]\,
      O => RdChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(8),
      Q => \save_init_bram_addr_ld_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(9),
      Q => \save_init_bram_addr_ld_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(10),
      Q => \save_init_bram_addr_ld_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(11),
      Q => \save_init_bram_addr_ld_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(12),
      Q => \save_init_bram_addr_ld_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(13),
      Q => \save_init_bram_addr_ld_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(14),
      Q => \save_init_bram_addr_ld_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(15),
      Q => \save_init_bram_addr_ld_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(16),
      Q => \save_init_bram_addr_ld_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(17),
      Q => \save_init_bram_addr_ld_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(18),
      Q => \save_init_bram_addr_ld_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(19),
      Q => \save_init_bram_addr_ld_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(20),
      Q => \save_init_bram_addr_ld_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(21),
      Q => \save_init_bram_addr_ld_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(22),
      Q => \save_init_bram_addr_ld_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(23),
      Q => \save_init_bram_addr_ld_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(24),
      Q => \save_init_bram_addr_ld_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(25),
      Q => \save_init_bram_addr_ld_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(26),
      Q => \save_init_bram_addr_ld_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(27),
      Q => \save_init_bram_addr_ld_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(28),
      Q => \save_init_bram_addr_ld_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(29),
      Q => \save_init_bram_addr_ld_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(1),
      Q => \save_init_bram_addr_ld_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(2),
      Q => \save_init_bram_addr_ld_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(3),
      Q => \save_init_bram_addr_ld_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(4),
      Q => \save_init_bram_addr_ld_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(5),
      Q => \save_init_bram_addr_ld_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(6),
      Q => \save_init_bram_addr_ld_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(7),
      Q => \save_init_bram_addr_ld_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(1),
      O => \wrap_burst_total[0]_i_1_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      O => \wrap_burst_total[1]_i_1_n_0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(0),
      O => \wrap_burst_total[2]_i_1__0_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[0]_i_1_n_0\,
      Q => \wrap_burst_total_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[1]_i_1_n_0\,
      Q => \wrap_burst_total_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[2]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[2]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler is
  port (
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler is
begin
\Encode_Bits.Parity_chk5_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_0
     port map (
      Q(5 downto 0) => Q(5 downto 0),
      bram_wrdata_a(0) => bram_wrdata_a(1)
    );
\Encode_Bits.XOR18_I0\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18
     port map (
      Q(17 downto 16) => Q(31 downto 30),
      Q(15 downto 14) => Q(28 downto 27),
      Q(13) => Q(25),
      Q(12) => Q(23),
      Q(11 downto 10) => Q(21 downto 20),
      Q(9) => Q(18),
      Q(8) => Q(16),
      Q(7) => Q(14),
      Q(6) => Q(12),
      Q(5) => Q(10),
      Q(4) => Q(8),
      Q(3 downto 2) => Q(6 downto 5),
      Q(1) => Q(3),
      Q(0) => Q(1),
      bram_wrdata_a(0) => bram_wrdata_a(6)
    );
\Encode_Bits.XOR18_I1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_1
     port map (
      Q(17) => Q(31),
      Q(16 downto 15) => Q(29 downto 28),
      Q(14 downto 13) => Q(26 downto 25),
      Q(12 downto 11) => Q(22 downto 21),
      Q(10 downto 9) => Q(19 downto 18),
      Q(8 downto 7) => Q(15 downto 14),
      Q(6 downto 5) => Q(11 downto 10),
      Q(4 downto 3) => Q(7 downto 6),
      Q(2 downto 1) => Q(4 downto 3),
      Q(0) => Q(0),
      bram_wrdata_a(0) => bram_wrdata_a(5)
    );
\Encode_Bits.XOR18_I2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_2
     port map (
      Q(17 downto 15) => Q(30 downto 28),
      Q(14 downto 11) => Q(24 downto 21),
      Q(10 downto 7) => Q(17 downto 14),
      Q(6 downto 3) => Q(9 downto 6),
      Q(2 downto 0) => Q(2 downto 0),
      bram_wrdata_a(0) => bram_wrdata_a(4)
    );
\Encode_Bits.XOR18_I3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_3
     port map (
      Q(14 downto 8) => Q(27 downto 21),
      Q(7 downto 0) => Q(13 downto 6),
      bram_wrdata_a(0) => bram_wrdata_a(3)
    );
\Encode_Bits.XOR18_I4\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_4
     port map (
      Q(14 downto 0) => Q(20 downto 6),
      bram_wrdata_a(0) => bram_wrdata_a(2)
    );
\Encode_Bits.XOR18_I6\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_XOR18_5
     port map (
      Q(17 downto 15) => Q(31 downto 29),
      Q(14 downto 13) => Q(27 downto 26),
      Q(12) => Q(24),
      Q(11 downto 9) => Q(21 downto 19),
      Q(8) => Q(17),
      Q(7 downto 6) => Q(14 downto 13),
      Q(5) => Q(10),
      Q(4 downto 3) => Q(8 downto 7),
      Q(2 downto 1) => Q(5 downto 4),
      Q(0) => Q(2),
      bram_wrdata_a(0) => bram_wrdata_a(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \Using_LUT6.Single_LUT6.XOR6_LUT\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    UE_Q : out STD_LOGIC;
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3]\ : out STD_LOGIC;
    \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    \GEN_ECC.syndrome_reg_i\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0\ : entity is "checkbit_handler";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0\ is
  signal \Decode_Bits.Parity_chk0_2_n_0\ : STD_LOGIC;
  signal \Decode_Bits.Parity_chk0_3_n_0\ : STD_LOGIC;
  signal \Decode_Bits.chk1_1\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \Decode_Bits.chk2_1\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \Decode_Bits.chk3_1\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \GEN_ECC.Sl_UE_i\ : STD_LOGIC;
  signal Res : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Decode_Bits.Use_LUT6.UE_MUXF7\ : label is "PRIMITIVE";
begin
\Decode_Bits.Parity_chk0_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_6
     port map (
      Res => Res,
      bram_rddata_a(5 downto 4) => bram_rddata_a(38 downto 37),
      bram_rddata_a(3 downto 2) => bram_rddata_a(35 downto 34),
      bram_rddata_a(1) => bram_rddata_a(32),
      bram_rddata_a(0) => bram_rddata_a(30)
    );
\Decode_Bits.Parity_chk0_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_7
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_2_n_0\,
      bram_rddata_a(5 downto 4) => bram_rddata_a(28 downto 27),
      bram_rddata_a(3) => bram_rddata_a(25),
      bram_rddata_a(2) => bram_rddata_a(23),
      bram_rddata_a(1) => bram_rddata_a(21),
      bram_rddata_a(0) => bram_rddata_a(19)
    );
\Decode_Bits.Parity_chk0_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_8
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_3_n_0\,
      bram_rddata_a(5) => bram_rddata_a(17),
      bram_rddata_a(4) => bram_rddata_a(15),
      bram_rddata_a(3 downto 2) => bram_rddata_a(13 downto 12),
      bram_rddata_a(1) => bram_rddata_a(10),
      bram_rddata_a(0) => bram_rddata_a(8)
    );
\Decode_Bits.Parity_chk0_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2\
     port map (
      D(0) => D(4),
      Res => Res,
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_3_n_0\,
      \Using_LUT6.Single_LUT6.XOR6_LUT_1\ => \Decode_Bits.Parity_chk0_2_n_0\,
      bram_rddata_a(0) => bram_rddata_a(6)
    );
\Decode_Bits.Parity_chk1_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_9
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(0),
      bram_rddata_a(5) => bram_rddata_a(38),
      bram_rddata_a(4 downto 3) => bram_rddata_a(36 downto 35),
      bram_rddata_a(2 downto 1) => bram_rddata_a(33 downto 32),
      bram_rddata_a(0) => bram_rddata_a(29)
    );
\Decode_Bits.Parity_chk1_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_10
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(1),
      bram_rddata_a(5) => bram_rddata_a(28),
      bram_rddata_a(4 downto 3) => bram_rddata_a(26 downto 25),
      bram_rddata_a(2 downto 1) => bram_rddata_a(22 downto 21),
      bram_rddata_a(0) => bram_rddata_a(18)
    );
\Decode_Bits.Parity_chk1_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_11
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(2),
      bram_rddata_a(5) => bram_rddata_a(17),
      bram_rddata_a(4 downto 3) => bram_rddata_a(14 downto 13),
      bram_rddata_a(2 downto 1) => bram_rddata_a(11 downto 10),
      bram_rddata_a(0) => bram_rddata_a(7)
    );
\Decode_Bits.Parity_chk1_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12\
     port map (
      D(0) => D(3),
      \Decode_Bits.chk1_1\(2) => \Decode_Bits.chk1_1\(0),
      \Decode_Bits.chk1_1\(1) => \Decode_Bits.chk1_1\(1),
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(2),
      bram_rddata_a(0) => bram_rddata_a(5)
    );
\Decode_Bits.Parity_chk2_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_13
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(0),
      bram_rddata_a(5 downto 3) => bram_rddata_a(37 downto 35),
      bram_rddata_a(2 downto 0) => bram_rddata_a(31 downto 29)
    );
\Decode_Bits.Parity_chk2_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_14
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(1),
      bram_rddata_a(5) => bram_rddata_a(28),
      bram_rddata_a(4 downto 1) => bram_rddata_a(24 downto 21),
      bram_rddata_a(0) => bram_rddata_a(16)
    );
\Decode_Bits.Parity_chk2_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_15
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(2),
      bram_rddata_a(5 downto 3) => bram_rddata_a(15 downto 13),
      bram_rddata_a(2 downto 0) => bram_rddata_a(9 downto 7)
    );
\Decode_Bits.Parity_chk2_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16\
     port map (
      D(0) => D(2),
      \Decode_Bits.chk2_1\(2) => \Decode_Bits.chk2_1\(0),
      \Decode_Bits.chk2_1\(1) => \Decode_Bits.chk2_1\(1),
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(2),
      bram_rddata_a(0) => bram_rddata_a(4)
    );
\Decode_Bits.Parity_chk3_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4\
     port map (
      Res => \Decode_Bits.chk3_1\(0),
      bram_rddata_a(7 downto 1) => bram_rddata_a(34 downto 28),
      bram_rddata_a(0) => bram_rddata_a(20)
    );
\Decode_Bits.Parity_chk3_2\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17\
     port map (
      Res => \Decode_Bits.chk3_1\(1),
      bram_rddata_a(7 downto 1) => bram_rddata_a(19 downto 13),
      bram_rddata_a(0) => bram_rddata_a(3)
    );
\Decode_Bits.Parity_chk3_3\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18\
     port map (
      D(0) => D(1),
      \Decode_Bits.chk3_1\(0 to 1) => \Decode_Bits.chk3_1\(0 to 1)
    );
\Decode_Bits.Parity_chk4_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19\
     port map (
      \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0) => \Using_LUT6.Use_MUXF8.MUXF8_LUT\(1),
      bram_rddata_a(7 downto 0) => bram_rddata_a(27 downto 20)
    );
\Decode_Bits.Parity_chk4_2\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20\
     port map (
      \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0) => \Using_LUT6.Use_MUXF8.MUXF8_LUT\(0),
      bram_rddata_a(7 downto 1) => bram_rddata_a(19 downto 13),
      bram_rddata_a(0) => bram_rddata_a(2)
    );
\Decode_Bits.Parity_chk5_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8\
     port map (
      D(0) => D(0),
      bram_rddata_a(6 downto 1) => bram_rddata_a(12 downto 7),
      bram_rddata_a(0) => bram_rddata_a(1)
    );
\Decode_Bits.Parity_chk6_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_21
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(5),
      bram_rddata_a(5 downto 0) => bram_rddata_a(38 downto 33)
    );
\Decode_Bits.Parity_chk6_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_22
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(4),
      bram_rddata_a(5 downto 0) => bram_rddata_a(32 downto 27)
    );
\Decode_Bits.Parity_chk6_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_23
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(3),
      bram_rddata_a(5 downto 0) => bram_rddata_a(26 downto 21)
    );
\Decode_Bits.Parity_chk6_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(2),
      bram_rddata_a(6 downto 0) => bram_rddata_a(20 downto 14)
    );
\Decode_Bits.Parity_chk6_5\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(1),
      bram_rddata_a(6 downto 0) => bram_rddata_a(13 downto 7)
    );
\Decode_Bits.Parity_chk6_6\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(0),
      bram_rddata_a(6 downto 0) => bram_rddata_a(6 downto 0)
    );
\Decode_Bits.Use_LUT6.UE_MUXF7\: unisim.vcomponents.MUXF7
     port map (
      I0 => I0,
      I1 => I1,
      O => \GEN_ECC.Sl_UE_i\,
      S => \GEN_ECC.syndrome_reg_i\(0)
    );
\Decode_Bits.Use_LUT6.UE_MUXF7_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GEN_ECC.syndrome_reg_i\(1),
      I1 => \GEN_ECC.syndrome_reg_i\(2),
      O => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3]\
    );
\GEN_ECC.UE_Q_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \GEN_ECC.Sl_UE_i\,
      O => UE_Q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27\ is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \Using_LUT6.Single_LUT6.XOR6_LUT\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Decode_Bits.Use_LUT6.UE_MUXF7_0\ : out STD_LOGIC;
    UE_Q : out STD_LOGIC;
    \Using_LUT6.Use_MUXF8.MUXF8_LUT\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    syndrome_reg_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Enable_ECC : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27\ : entity is "checkbit_handler";
end \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27\;

architecture STRUCTURE of \bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27\ is
  signal \Decode_Bits.Parity_chk0_2_n_0\ : STD_LOGIC;
  signal \Decode_Bits.Parity_chk0_3_n_0\ : STD_LOGIC;
  signal \^decode_bits.use_lut6.ue_muxf7_0\ : STD_LOGIC;
  signal \Decode_Bits.chk1_1\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \Decode_Bits.chk2_1\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \Decode_Bits.chk3_1\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal Res : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \Decode_Bits.Use_LUT6.UE_MUXF7\ : label is "PRIMITIVE";
begin
  \Decode_Bits.Use_LUT6.UE_MUXF7_0\ <= \^decode_bits.use_lut6.ue_muxf7_0\;
\Decode_Bits.Parity_chk0_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_63
     port map (
      Res => Res,
      bram_rddata_a(5 downto 4) => bram_rddata_a(38 downto 37),
      bram_rddata_a(3 downto 2) => bram_rddata_a(35 downto 34),
      bram_rddata_a(1) => bram_rddata_a(32),
      bram_rddata_a(0) => bram_rddata_a(30)
    );
\Decode_Bits.Parity_chk0_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_64
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_2_n_0\,
      bram_rddata_a(5 downto 4) => bram_rddata_a(28 downto 27),
      bram_rddata_a(3) => bram_rddata_a(25),
      bram_rddata_a(2) => bram_rddata_a(23),
      bram_rddata_a(1) => bram_rddata_a(21),
      bram_rddata_a(0) => bram_rddata_a(19)
    );
\Decode_Bits.Parity_chk0_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_65
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_3_n_0\,
      bram_rddata_a(5) => bram_rddata_a(17),
      bram_rddata_a(4) => bram_rddata_a(15),
      bram_rddata_a(3 downto 2) => bram_rddata_a(13 downto 12),
      bram_rddata_a(1) => bram_rddata_a(10),
      bram_rddata_a(0) => bram_rddata_a(8)
    );
\Decode_Bits.Parity_chk0_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66\
     port map (
      D(0) => D(4),
      Res => Res,
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\ => \Decode_Bits.Parity_chk0_3_n_0\,
      \Using_LUT6.Single_LUT6.XOR6_LUT_1\ => \Decode_Bits.Parity_chk0_2_n_0\,
      bram_rddata_a(0) => bram_rddata_a(6)
    );
\Decode_Bits.Parity_chk1_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_67
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(0),
      bram_rddata_a(5) => bram_rddata_a(38),
      bram_rddata_a(4 downto 3) => bram_rddata_a(36 downto 35),
      bram_rddata_a(2 downto 1) => bram_rddata_a(33 downto 32),
      bram_rddata_a(0) => bram_rddata_a(29)
    );
\Decode_Bits.Parity_chk1_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_68
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(1),
      bram_rddata_a(5) => bram_rddata_a(28),
      bram_rddata_a(4 downto 3) => bram_rddata_a(26 downto 25),
      bram_rddata_a(2 downto 1) => bram_rddata_a(22 downto 21),
      bram_rddata_a(0) => bram_rddata_a(18)
    );
\Decode_Bits.Parity_chk1_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_69
     port map (
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(2),
      bram_rddata_a(5) => bram_rddata_a(17),
      bram_rddata_a(4 downto 3) => bram_rddata_a(14 downto 13),
      bram_rddata_a(2 downto 1) => bram_rddata_a(11 downto 10),
      bram_rddata_a(0) => bram_rddata_a(7)
    );
\Decode_Bits.Parity_chk1_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70\
     port map (
      D(0) => D(3),
      \Decode_Bits.chk1_1\(2) => \Decode_Bits.chk1_1\(0),
      \Decode_Bits.chk1_1\(1) => \Decode_Bits.chk1_1\(1),
      \Decode_Bits.chk1_1\(0) => \Decode_Bits.chk1_1\(2),
      bram_rddata_a(0) => bram_rddata_a(5)
    );
\Decode_Bits.Parity_chk2_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_71
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(0),
      bram_rddata_a(5 downto 3) => bram_rddata_a(37 downto 35),
      bram_rddata_a(2 downto 0) => bram_rddata_a(31 downto 29)
    );
\Decode_Bits.Parity_chk2_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_72
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(1),
      bram_rddata_a(5) => bram_rddata_a(28),
      bram_rddata_a(4 downto 1) => bram_rddata_a(24 downto 21),
      bram_rddata_a(0) => bram_rddata_a(16)
    );
\Decode_Bits.Parity_chk2_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_73
     port map (
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(2),
      bram_rddata_a(5 downto 3) => bram_rddata_a(15 downto 13),
      bram_rddata_a(2 downto 0) => bram_rddata_a(9 downto 7)
    );
\Decode_Bits.Parity_chk2_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74\
     port map (
      D(0) => D(2),
      \Decode_Bits.chk2_1\(2) => \Decode_Bits.chk2_1\(0),
      \Decode_Bits.chk2_1\(1) => \Decode_Bits.chk2_1\(1),
      \Decode_Bits.chk2_1\(0) => \Decode_Bits.chk2_1\(2),
      bram_rddata_a(0) => bram_rddata_a(4)
    );
\Decode_Bits.Parity_chk3_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75\
     port map (
      Res => \Decode_Bits.chk3_1\(0),
      bram_rddata_a(7 downto 1) => bram_rddata_a(34 downto 28),
      bram_rddata_a(0) => bram_rddata_a(20)
    );
\Decode_Bits.Parity_chk3_2\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76\
     port map (
      Res => \Decode_Bits.chk3_1\(1),
      bram_rddata_a(7 downto 1) => bram_rddata_a(19 downto 13),
      bram_rddata_a(0) => bram_rddata_a(3)
    );
\Decode_Bits.Parity_chk3_3\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77\
     port map (
      D(0) => D(1),
      \Decode_Bits.chk3_1\(0 to 1) => \Decode_Bits.chk3_1\(0 to 1)
    );
\Decode_Bits.Parity_chk4_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78\
     port map (
      \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0) => \Using_LUT6.Use_MUXF8.MUXF8_LUT\(1),
      bram_rddata_a(7 downto 0) => bram_rddata_a(27 downto 20)
    );
\Decode_Bits.Parity_chk4_2\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79\
     port map (
      \Using_LUT6.Use_MUXF8.MUXF8_LUT_0\(0) => \Using_LUT6.Use_MUXF8.MUXF8_LUT\(0),
      bram_rddata_a(7 downto 1) => bram_rddata_a(19 downto 13),
      bram_rddata_a(0) => bram_rddata_a(2)
    );
\Decode_Bits.Parity_chk5_1\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80\
     port map (
      D(0) => D(0),
      bram_rddata_a(6 downto 1) => bram_rddata_a(12 downto 7),
      bram_rddata_a(0) => bram_rddata_a(1)
    );
\Decode_Bits.Parity_chk6_1\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_81
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(5),
      bram_rddata_a(5 downto 0) => bram_rddata_a(38 downto 33)
    );
\Decode_Bits.Parity_chk6_2\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_82
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(4),
      bram_rddata_a(5 downto 0) => bram_rddata_a(32 downto 27)
    );
\Decode_Bits.Parity_chk6_3\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_83
     port map (
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(3),
      bram_rddata_a(5 downto 0) => bram_rddata_a(26 downto 21)
    );
\Decode_Bits.Parity_chk6_4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(2),
      bram_rddata_a(6 downto 0) => bram_rddata_a(20 downto 14)
    );
\Decode_Bits.Parity_chk6_5\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(1),
      bram_rddata_a(6 downto 0) => bram_rddata_a(13 downto 7)
    );
\Decode_Bits.Parity_chk6_6\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86\
     port map (
      \Using_LUT6.Use_MUXF7.MUXF7_LUT_0\(0) => \Using_LUT6.Single_LUT6.XOR6_LUT\(0),
      bram_rddata_a(6 downto 0) => bram_rddata_a(6 downto 0)
    );
\Decode_Bits.Use_LUT6.UE_MUXF7\: unisim.vcomponents.MUXF7
     port map (
      I0 => I0,
      I1 => I1,
      O => \^decode_bits.use_lut6.ue_muxf7_0\,
      S => syndrome_reg_i(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^decode_bits.use_lut6.ue_muxf7_0\,
      I1 => Enable_ECC,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg\,
      I3 => s_axi_rready,
      O => UE_Q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_lite_ecc_reg is
  port (
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ongoing_write_reg : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    Enable_ECC : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    Wr_Sl_CE : in STD_LOGIC;
    Rd_Sl_CE : in STD_LOGIC;
    Wr_Sl_UE : in STD_LOGIC;
    Rd_Sl_UE : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_Addr_A : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Active_Wr : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_lite_ecc_reg;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_lite_ecc_reg is
  signal BRAM_Addr_A_d1 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal BRAM_Addr_A_d2 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \CE_COUNTER.CE_CounterReg[24]_i_3_n_0\ : STD_LOGIC;
  signal \CE_COUNTER.CE_CounterReg[24]_i_5_n_0\ : STD_LOGIC;
  signal \CE_COUNTER.CE_CounterReg[26]_i_2_n_0\ : STD_LOGIC;
  signal \CE_COUNTER.CE_CounterReg[27]_i_2_n_0\ : STD_LOGIC;
  signal CE_CounterReg : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0\ : STD_LOGIC;
  signal \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0\ : STD_LOGIC;
  signal CE_FailingAddress : STD_LOGIC_VECTOR ( 0 to 29 );
  signal \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0\ : STD_LOGIC;
  signal \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0\ : STD_LOGIC;
  signal \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0\ : STD_LOGIC;
  signal \^enable_ecc\ : STD_LOGIC;
  signal FailingAddr_Ld : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9]\ : STD_LOGIC;
  signal I_AXI_LITE_IF_n_36 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_41 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_42 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_43 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_44 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_45 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_46 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_47 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_48 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_49 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_50 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_51 : STD_LOGIC;
  signal I_AXI_LITE_IF_n_52 : STD_LOGIC;
  signal RegAddr_i : STD_LOGIC_VECTOR ( 6 to 7 );
  signal RegWrData_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ecc_ue\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CE_COUNTER.CE_CounterReg[26]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \CE_COUNTER.CE_CounterReg[27]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1\ : label is "soft_lutpair31";
begin
  Enable_ECC <= \^enable_ecc\;
  ecc_ue <= \^ecc_ue\;
\CE_COUNTER.CE_CounterReg[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => CE_CounterReg(27),
      I1 => CE_CounterReg(29),
      I2 => CE_CounterReg(31),
      I3 => CE_CounterReg(30),
      I4 => CE_CounterReg(28),
      I5 => CE_CounterReg(26),
      O => \CE_COUNTER.CE_CounterReg[24]_i_3_n_0\
    );
\CE_COUNTER.CE_CounterReg[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CE_CounterReg(25),
      I1 => \CE_COUNTER.CE_CounterReg[24]_i_3_n_0\,
      O => \CE_COUNTER.CE_CounterReg[24]_i_5_n_0\
    );
\CE_COUNTER.CE_CounterReg[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => CE_CounterReg(28),
      I1 => CE_CounterReg(30),
      I2 => CE_CounterReg(31),
      I3 => CE_CounterReg(29),
      I4 => CE_CounterReg(27),
      O => \CE_COUNTER.CE_CounterReg[26]_i_2_n_0\
    );
\CE_COUNTER.CE_CounterReg[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => CE_CounterReg(29),
      I1 => CE_CounterReg(31),
      I2 => CE_CounterReg(30),
      I3 => CE_CounterReg(28),
      O => \CE_COUNTER.CE_CounterReg[27]_i_2_n_0\
    );
\CE_COUNTER.CE_CounterReg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_41,
      Q => CE_CounterReg(24),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_42,
      Q => CE_CounterReg(25),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_43,
      Q => CE_CounterReg(26),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_44,
      Q => CE_CounterReg(27),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_45,
      Q => CE_CounterReg(28),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_46,
      Q => CE_CounterReg(29),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_47,
      Q => CE_CounterReg(30),
      R => SR(0)
    );
\CE_COUNTER.CE_CounterReg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_AXI_LITE_IF_n_49,
      D => I_AXI_LITE_IF_n_48,
      Q => CE_CounterReg(31),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => Wr_Sl_CE,
      I2 => Rd_Sl_CE,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(31),
      I1 => Active_Wr,
      I2 => p_1_in,
      O => FailingAddr_Ld(31)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(21),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(20),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(19),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(18),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(17),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(16),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(15),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(14),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(13),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(12),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(30),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(11),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(10),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(9),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(8),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(7),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(6),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(5),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(4),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(3),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(2),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(29),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(28),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(27),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(26),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(25),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(24),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(23),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => BRAM_Addr_A_d1(22),
      I1 => Active_Wr,
      I2 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22]\,
      O => \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0\
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => FailingAddr_Ld(31),
      Q => CE_FailingAddress(0),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0\,
      Q => CE_FailingAddress(10),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0\,
      Q => CE_FailingAddress(11),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0\,
      Q => CE_FailingAddress(12),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0\,
      Q => CE_FailingAddress(13),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0\,
      Q => CE_FailingAddress(14),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0\,
      Q => CE_FailingAddress(15),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0\,
      Q => CE_FailingAddress(16),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0\,
      Q => CE_FailingAddress(17),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0\,
      Q => CE_FailingAddress(18),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0\,
      Q => CE_FailingAddress(19),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0\,
      Q => CE_FailingAddress(1),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0\,
      Q => CE_FailingAddress(20),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0\,
      Q => CE_FailingAddress(21),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0\,
      Q => CE_FailingAddress(22),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0\,
      Q => CE_FailingAddress(23),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0\,
      Q => CE_FailingAddress(24),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0\,
      Q => CE_FailingAddress(25),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0\,
      Q => CE_FailingAddress(26),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0\,
      Q => CE_FailingAddress(27),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0\,
      Q => CE_FailingAddress(28),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0\,
      Q => CE_FailingAddress(29),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0\,
      Q => CE_FailingAddress(2),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0\,
      Q => CE_FailingAddress(3),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0\,
      Q => CE_FailingAddress(4),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0\,
      Q => CE_FailingAddress(5),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0\,
      Q => CE_FailingAddress(6),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0\,
      Q => CE_FailingAddress(7),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0\,
      Q => CE_FailingAddress(8),
      R => SR(0)
    );
\CE_FAILING_REGISTERS.CE_FailingAddress_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0\,
      D => \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0\,
      Q => CE_FailingAddress(9),
      R => SR(0)
    );
\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => RegWrData_i(1),
      I1 => I_AXI_LITE_IF_n_50,
      I2 => RegAddr_i(7),
      I3 => RegAddr_i(6),
      I4 => p_2_in(1),
      O => \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0\
    );
\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => RegWrData_i(0),
      I1 => I_AXI_LITE_IF_n_50,
      I2 => RegAddr_i(7),
      I3 => RegAddr_i(6),
      I4 => p_2_in(0),
      O => \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0\
    );
\ECC_STATUS_REGISTERS.ECC_EnableIRQReg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0\,
      Q => p_2_in(1),
      R => SR(0)
    );
\ECC_STATUS_REGISTERS.ECC_EnableIRQReg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0\,
      Q => p_2_in(0),
      R => SR(0)
    );
\ECC_STATUS_REGISTERS.ECC_StatusReg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_AXI_LITE_IF_n_51,
      Q => p_0_in1_in,
      R => '0'
    );
\ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_AXI_LITE_IF_n_36,
      Q => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31]\,
      R => '0'
    );
\ECC_STATUS_REGISTERS.ECC_UE_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8000000000000"
    )
        port map (
      I0 => \^ecc_ue\,
      I1 => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31]\,
      I2 => Wr_Sl_UE,
      I3 => Rd_Sl_UE,
      I4 => s_axi_aresetn,
      I5 => \^enable_ecc\,
      O => \ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0\
    );
\ECC_STATUS_REGISTERS.ECC_UE_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0\,
      Q => \^ecc_ue\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(8),
      Q => BRAM_Addr_A_d1(10),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(9),
      Q => BRAM_Addr_A_d1(11),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(10),
      Q => BRAM_Addr_A_d1(12),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(11),
      Q => BRAM_Addr_A_d1(13),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(12),
      Q => BRAM_Addr_A_d1(14),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(13),
      Q => BRAM_Addr_A_d1(15),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(14),
      Q => BRAM_Addr_A_d1(16),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(15),
      Q => BRAM_Addr_A_d1(17),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(16),
      Q => BRAM_Addr_A_d1(18),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(17),
      Q => BRAM_Addr_A_d1(19),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(18),
      Q => BRAM_Addr_A_d1(20),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(19),
      Q => BRAM_Addr_A_d1(21),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(20),
      Q => BRAM_Addr_A_d1(22),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(21),
      Q => BRAM_Addr_A_d1(23),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(22),
      Q => BRAM_Addr_A_d1(24),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(23),
      Q => BRAM_Addr_A_d1(25),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(24),
      Q => BRAM_Addr_A_d1(26),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(25),
      Q => BRAM_Addr_A_d1(27),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(26),
      Q => BRAM_Addr_A_d1(28),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(27),
      Q => BRAM_Addr_A_d1(29),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(0),
      Q => BRAM_Addr_A_d1(2),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(28),
      Q => BRAM_Addr_A_d1(30),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(29),
      Q => BRAM_Addr_A_d1(31),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(1),
      Q => BRAM_Addr_A_d1(3),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(2),
      Q => BRAM_Addr_A_d1(4),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(3),
      Q => BRAM_Addr_A_d1(5),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(4),
      Q => BRAM_Addr_A_d1(6),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(5),
      Q => BRAM_Addr_A_d1(7),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(6),
      Q => BRAM_Addr_A_d1(8),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A(7),
      Q => BRAM_Addr_A_d1(9),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(10),
      Q => BRAM_Addr_A_d2(10),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(11),
      Q => BRAM_Addr_A_d2(11),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(12),
      Q => BRAM_Addr_A_d2(12),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(13),
      Q => BRAM_Addr_A_d2(13),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(14),
      Q => BRAM_Addr_A_d2(14),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(15),
      Q => BRAM_Addr_A_d2(15),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(16),
      Q => BRAM_Addr_A_d2(16),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(17),
      Q => BRAM_Addr_A_d2(17),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(18),
      Q => BRAM_Addr_A_d2(18),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(19),
      Q => BRAM_Addr_A_d2(19),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(20),
      Q => BRAM_Addr_A_d2(20),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(21),
      Q => BRAM_Addr_A_d2(21),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(22),
      Q => BRAM_Addr_A_d2(22),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(23),
      Q => BRAM_Addr_A_d2(23),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(24),
      Q => BRAM_Addr_A_d2(24),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(25),
      Q => BRAM_Addr_A_d2(25),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(26),
      Q => BRAM_Addr_A_d2(26),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(27),
      Q => BRAM_Addr_A_d2(27),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(28),
      Q => BRAM_Addr_A_d2(28),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(29),
      Q => BRAM_Addr_A_d2(29),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(2),
      Q => BRAM_Addr_A_d2(2),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(30),
      Q => BRAM_Addr_A_d2(30),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(31),
      Q => BRAM_Addr_A_d2(31),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(3),
      Q => BRAM_Addr_A_d2(3),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(4),
      Q => BRAM_Addr_A_d2(4),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(5),
      Q => BRAM_Addr_A_d2(5),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(6),
      Q => BRAM_Addr_A_d2(6),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(7),
      Q => BRAM_Addr_A_d2(7),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(8),
      Q => BRAM_Addr_A_d2(8),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d1(9),
      Q => BRAM_Addr_A_d2(9),
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(10),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(11),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(12),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(13),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(14),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(15),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(16),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(17),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(18),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(19),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(20),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(21),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(22),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(23),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(24),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(25),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(26),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(27),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(28),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(29),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(2),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(30),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(31),
      Q => p_1_in,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(3),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(4),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(5),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(6),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(7),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(8),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8]\,
      R => '0'
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0),
      D => BRAM_Addr_A_d2(9),
      Q => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9]\,
      R => '0'
    );
\GEN_ECC_ONOFF.ECC_OnOffReg_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_AXI_LITE_IF_n_52,
      Q => \^enable_ecc\,
      S => SR(0)
    );
I_AXI_LITE_IF: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_lite_if
     port map (
      \CE_COUNTER.CE_CounterReg_reg[24]\ => \CE_COUNTER.CE_CounterReg[24]_i_5_n_0\,
      \CE_COUNTER.CE_CounterReg_reg[26]\ => \CE_COUNTER.CE_CounterReg[26]_i_2_n_0\,
      \CE_COUNTER.CE_CounterReg_reg[27]\ => \CE_COUNTER.CE_CounterReg[27]_i_2_n_0\,
      \CE_COUNTER.CE_CounterReg_reg[31]\ => \CE_COUNTER.CE_CounterReg[24]_i_3_n_0\,
      D(7) => I_AXI_LITE_IF_n_41,
      D(6) => I_AXI_LITE_IF_n_42,
      D(5) => I_AXI_LITE_IF_n_43,
      D(4) => I_AXI_LITE_IF_n_44,
      D(3) => I_AXI_LITE_IF_n_45,
      D(2) => I_AXI_LITE_IF_n_46,
      D(1) => I_AXI_LITE_IF_n_47,
      D(0) => I_AXI_LITE_IF_n_48,
      E(0) => E(0),
      \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31]\ => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31]\,
      \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31]\ => \^enable_ecc\,
      \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\(0) => I_AXI_LITE_IF_n_49,
      Q(1 downto 0) => RegWrData_i(1 downto 0),
      Rd_Sl_CE => Rd_Sl_CE,
      Rd_Sl_UE => Rd_Sl_UE,
      \RegAddr_reg[6]_0\(1) => RegAddr_i(6),
      \RegAddr_reg[6]_0\(0) => RegAddr_i(7),
      \RegWrData_reg[30]_0\ => I_AXI_LITE_IF_n_51,
      \RegWrData_reg[31]_0\ => I_AXI_LITE_IF_n_36,
      \RegWrData_reg[31]_1\ => I_AXI_LITE_IF_n_52,
      RegWr_reg_0 => I_AXI_LITE_IF_n_50,
      SR(0) => SR(0),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(29) => CE_FailingAddress(0),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(28) => CE_FailingAddress(1),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(27) => CE_FailingAddress(2),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(26) => CE_FailingAddress(3),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(25) => CE_FailingAddress(4),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(24) => CE_FailingAddress(5),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(23) => CE_FailingAddress(6),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(22) => CE_FailingAddress(7),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(21) => CE_FailingAddress(8),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(20) => CE_FailingAddress(9),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(19) => CE_FailingAddress(10),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(18) => CE_FailingAddress(11),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(17) => CE_FailingAddress(12),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(16) => CE_FailingAddress(13),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(15) => CE_FailingAddress(14),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(14) => CE_FailingAddress(15),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(13) => CE_FailingAddress(16),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(12) => CE_FailingAddress(17),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(11) => CE_FailingAddress(18),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(10) => CE_FailingAddress(19),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(9) => CE_FailingAddress(20),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(8) => CE_FailingAddress(21),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(7) => CE_FailingAddress(22),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(6) => CE_FailingAddress(23),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(5) => CE_FailingAddress(24),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(4) => CE_FailingAddress(25),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(3) => CE_FailingAddress(26),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(2) => CE_FailingAddress(27),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(1) => CE_FailingAddress(28),
      \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0\(0) => CE_FailingAddress(29),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(7) => CE_CounterReg(24),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(6) => CE_CounterReg(25),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(5) => CE_CounterReg(26),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(4) => CE_CounterReg(27),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(3) => CE_CounterReg(28),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(2) => CE_CounterReg(29),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(1) => CE_CounterReg(30),
      \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0\(0) => CE_CounterReg(31),
      Wr_Sl_CE => Wr_Sl_CE,
      Wr_Sl_UE => Wr_Sl_UE,
      ongoing_write_reg_0 => ongoing_write_reg,
      p_0_in1_in => p_0_in1_in,
      p_2_in(1 downto 0) => p_2_in(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid
    );
ecc_interrupt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31]\,
      I2 => p_2_in(1),
      I3 => p_0_in1_in,
      O => ecc_interrupt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_rd_chnl is
  port (
    \Decode_Bits.Use_LUT6.UE_MUXF7\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Rd_Sl_CE : out STD_LOGIC;
    Rd_Sl_UE : out STD_LOGIC;
    ar_active_d1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen_7_sp_1 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Arb2AR_Active : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[3]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\ : in STD_LOGIC;
    Enable_ECC : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_En_A_i : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_rd_chnl;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_rd_chnl is
  signal BRAM_En_B_i : STD_LOGIC;
  signal \^decode_bits.use_lut6.ue_muxf7\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\ : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_0 : STD_LOGIC;
  signal S_1 : STD_LOGIC;
  signal S_10 : STD_LOGIC;
  signal S_11 : STD_LOGIC;
  signal S_12 : STD_LOGIC;
  signal S_13 : STD_LOGIC;
  signal S_14 : STD_LOGIC;
  signal S_15 : STD_LOGIC;
  signal S_16 : STD_LOGIC;
  signal S_17 : STD_LOGIC;
  signal S_18 : STD_LOGIC;
  signal S_19 : STD_LOGIC;
  signal S_2 : STD_LOGIC;
  signal S_20 : STD_LOGIC;
  signal S_21 : STD_LOGIC;
  signal S_22 : STD_LOGIC;
  signal S_23 : STD_LOGIC;
  signal S_24 : STD_LOGIC;
  signal S_25 : STD_LOGIC;
  signal S_26 : STD_LOGIC;
  signal S_27 : STD_LOGIC;
  signal S_3 : STD_LOGIC;
  signal S_4 : STD_LOGIC;
  signal S_5 : STD_LOGIC;
  signal S_6 : STD_LOGIC;
  signal S_7 : STD_LOGIC;
  signal S_8 : STD_LOGIC;
  signal S_9 : STD_LOGIC;
  signal Syndrome : STD_LOGIC_VECTOR ( 0 to 5 );
  signal Syndrome_4 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal Syndrome_6 : STD_LOGIC_VECTOR ( 0 to 5 );
  signal UE_Q : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal brst_cnt_max : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg_0 : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pend_rd_op : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_arlen_7_sn_1 : STD_LOGIC;
  signal syndrome_reg : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal syndrome_reg_i : STD_LOGIC_VECTOR ( 4 to 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7\ : label is "soft_lutpair65";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute SOFT_HLUTNM of \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.bram_en_int_i_8\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_zero_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1\ : label is "soft_lutpair66";
begin
  \Decode_Bits.Use_LUT6.UE_MUXF7\ <= \^decode_bits.use_lut6.ue_muxf7\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\;
  \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\;
  SR(0) <= \^sr\(0);
  ar_active_d1 <= \^ar_active_d1\;
  s_axi_arlen_7_sp_1 <= s_axi_arlen_7_sn_1;
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A0A2A0B2B0B2A"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\,
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440FFFF4444FFFF"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => pend_rd_op,
      I3 => ar_active_re,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F7000000"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(2),
      I4 => act_rd_burst,
      I5 => act_rd_burst_two,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4454455544444444"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      I2 => rd_data_sm_cs(2),
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\,
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404440445054"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I4 => brst_zero,
      I5 => end_brst_rd,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => s_axi_rready,
      I4 => act_rd_burst,
      I5 => act_rd_burst_two,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444544444445544"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\,
      I3 => rd_data_sm_cs(0),
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0\,
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888FFFC8888"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => brst_zero,
      I3 => end_brst_rd,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0155555555555555"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => act_rd_burst_two,
      I2 => act_rd_burst,
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => ar_active_re,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I2 => axi_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0075007500750375"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200220000000020"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I2 => ar_active_re,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0\,
      I5 => rd_data_sm_cs(1),
      O => rd_data_sm_ns(3)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F11FF000000FF0F"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(1),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(0),
      Q => rd_data_sm_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\,
      Q => rd_data_sm_cs(1),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\,
      Q => rd_data_sm_cs(2),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(3),
      Q => rd_data_sm_cs(3),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CC15FF00CC10"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => rlast_sm_cs(1),
      I3 => rlast_sm_cs(0),
      I4 => rlast_sm_cs(2),
      I5 => last_bram_addr,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500005555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => act_rd_burst_two,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I5 => axi_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0C0D5F0F0C0D0"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => rlast_sm_cs(1),
      I3 => rlast_sm_cs(0),
      I4 => rlast_sm_cs(2),
      I5 => last_bram_addr,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515150015155555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => act_rd_burst_two,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I5 => axi_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC300AFFFC3000"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => rlast_sm_cs(1),
      I3 => rlast_sm_cs(0),
      I4 => rlast_sm_cs(2),
      I5 => last_bram_addr,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\,
      Q => rlast_sm_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\,
      Q => rlast_sm_cs(1),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\,
      Q => rlast_sm_cs(2),
      R => \^sr\(0)
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\,
      I1 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]\(0),
      I2 => s_axi_rready,
      I3 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0\,
      O => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1]\(0)
    );
\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => axi_rd_burst,
      I2 => BRAM_En_B_i,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2\,
      O => \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\,
      Q => \^ar_active_d1\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2000000F000F000"
    )
        port map (
      I0 => brst_zero,
      I1 => pend_rd_op,
      I2 => brst_cnt_max,
      I3 => s_axi_aresetn,
      I4 => \^ar_active_d1\,
      I5 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\,
      Q => brst_cnt_max,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\,
      Q => Rd_Sl_CE,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27\
     port map (
      D(4) => Syndrome(0),
      D(3) => Syndrome(1),
      D(2) => Syndrome(2),
      D(1) => Syndrome(3),
      D(0) => Syndrome(5),
      \Decode_Bits.Use_LUT6.UE_MUXF7_0\ => \^decode_bits.use_lut6.ue_muxf7\,
      Enable_ECC => Enable_ECC,
      \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg\ => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I0 => I0,
      I1 => I1,
      UE_Q => UE_Q,
      \Using_LUT6.Single_LUT6.XOR6_LUT\(5) => Syndrome_6(0),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(4) => Syndrome_6(1),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(3) => Syndrome_6(2),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(2) => Syndrome_6(3),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(1) => Syndrome_6(4),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(0) => Syndrome_6(5),
      \Using_LUT6.Use_MUXF8.MUXF8_LUT\(1) => Syndrome_4(0),
      \Using_LUT6.Use_MUXF8.MUXF8_LUT\(0) => Syndrome_4(1),
      bram_rddata_a(38 downto 0) => bram_rddata_a(38 downto 0),
      s_axi_rready => s_axi_rready,
      syndrome_reg_i(0) => syndrome_reg_i(6)
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => UE_Q,
      Q => Rd_Sl_UE,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BRAM_En_B_i,
      Q => \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[0].CORR_ONE_BIT_32\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_12,
      s_axi_rdata(0) => s_axi_rdata(31),
      \s_axi_rdata[31]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[10].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_22,
      s_axi_rdata(0) => s_axi_rdata(21),
      \s_axi_rdata[21]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[11].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_13,
      s_axi_rdata(0) => s_axi_rdata(20),
      \s_axi_rdata[20]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[12].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_14,
      s_axi_rdata(0) => s_axi_rdata(19),
      \s_axi_rdata[19]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[13].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S,
      s_axi_rdata(0) => s_axi_rdata(18),
      \s_axi_rdata[18]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[14].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(4),
      S => S_8,
      s_axi_rdata(0) => s_axi_rdata(17),
      \s_axi_rdata[17]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[15].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_0,
      s_axi_rdata(0) => s_axi_rdata(16),
      \s_axi_rdata[16]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[16].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_19,
      s_axi_rdata(0) => s_axi_rdata(15),
      \s_axi_rdata[15]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[17].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_4,
      s_axi_rdata(0) => s_axi_rdata(14),
      \s_axi_rdata[14]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[18].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(3),
      S => S_9,
      s_axi_rdata(0) => s_axi_rdata(13),
      \s_axi_rdata[13]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[19].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_10,
      s_axi_rdata(0) => s_axi_rdata(12),
      \s_axi_rdata[12]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[1].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39\
     port map (
      Corr_MUXCY_0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1\,
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      s_axi_rdata(0) => s_axi_rdata(30),
      \s_axi_rdata[30]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[20].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_6,
      s_axi_rdata(0) => s_axi_rdata(11),
      \s_axi_rdata[11]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[21].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_3,
      s_axi_rdata(0) => s_axi_rdata(10),
      \s_axi_rdata[10]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[22].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(4),
      S => S_7,
      s_axi_rdata(0) => s_axi_rdata(9),
      \s_axi_rdata[9]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[23].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_26,
      s_axi_rdata(0) => s_axi_rdata(8),
      \s_axi_rdata[8]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[24].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_25,
      s_axi_rdata(0) => s_axi_rdata(7),
      \s_axi_rdata[7]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[25].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_23,
      s_axi_rdata(0) => s_axi_rdata(6),
      \s_axi_rdata[6]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[26].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_20,
      s_axi_rdata(0) => s_axi_rdata(5),
      \s_axi_rdata[5]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[27].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_15,
      s_axi_rdata(0) => s_axi_rdata(4),
      \s_axi_rdata[4]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[28].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_16,
      s_axi_rdata(0) => s_axi_rdata(3),
      \s_axi_rdata[3]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[29].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(4),
      S => S_17,
      s_axi_rdata(0) => s_axi_rdata(2),
      \s_axi_rdata[2]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[2].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50\
     port map (
      Corr_MUXCY_0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2\,
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      s_axi_rdata(0) => s_axi_rdata(29),
      \s_axi_rdata[29]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[30].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_1,
      s_axi_rdata(0) => s_axi_rdata(1),
      \s_axi_rdata[1]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[31].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_18,
      s_axi_rdata(0) => s_axi_rdata(0),
      s_axi_rdata_0_sp_1 => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[3].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53\
     port map (
      Corr_MUXCY_0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3\,
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      s_axi_rdata(0) => s_axi_rdata(28),
      \s_axi_rdata[28]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[4].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_21,
      s_axi_rdata(0) => s_axi_rdata(27),
      \s_axi_rdata[27]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[5].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_2,
      s_axi_rdata(0) => s_axi_rdata(26),
      \s_axi_rdata[26]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[6].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_27,
      s_axi_rdata(0) => s_axi_rdata(25),
      \s_axi_rdata[25]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[7].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(4),
      S => S_5,
      s_axi_rdata(0) => s_axi_rdata(24),
      \s_axi_rdata[24]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[8].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(6),
      S => S_11,
      s_axi_rdata(0) => s_axi_rdata(23),
      \s_axi_rdata[23]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[9].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59\
     port map (
      Corr_XORCY_0(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22]\,
      Enable_ECC => Enable_ECC,
      Q(0) => syndrome_reg(5),
      S => S_24,
      s_axi_rdata(0) => s_axi_rdata(22),
      \s_axi_rdata[22]\ => \^decode_bits.use_lut6.ue_muxf7\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60\
     port map (
      Corr_MUXCY(0) => syndrome_reg_i(6),
      \Decode_Bits.Use_LUT6.UE_MUXF7\(4 downto 1) => syndrome_reg(6 downto 3),
      \Decode_Bits.Use_LUT6.UE_MUXF7\(0) => syndrome_reg(1),
      Enable_ECC => Enable_ECC,
      \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\ => \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q\,
      \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I0 => I0,
      I1 => I1,
      Q(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0]\,
      Q(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1]\,
      S => S_16,
      S_0 => S_15,
      S_1 => S_14,
      S_10 => S_5,
      S_11 => S_4,
      S_12 => S_3,
      S_13 => S_2,
      S_14 => S_1,
      S_15 => S_0,
      S_16 => S,
      S_2 => S_13,
      S_3 => S_12,
      S_4 => S_11,
      S_5 => S_10,
      S_6 => S_9,
      S_7 => S_8,
      S_8 => S_7,
      S_9 => S_6,
      syndrome_reg_i(0) => syndrome_reg_i(4)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity_61
     port map (
      Corr_MUXCY(4 downto 1) => syndrome_reg(6 downto 3),
      Corr_MUXCY(0) => syndrome_reg(1),
      \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2]\ => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3\,
      \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]\ => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1\,
      \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0\ => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2\,
      Q(5) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0]\,
      Q(4) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1]\,
      Q(3) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2]\,
      Q(2) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3]\,
      Q(1) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4]\,
      Q(0) => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5]\,
      S => S_27,
      S_0 => S_26,
      S_1 => S_25,
      S_2 => S_24,
      S_3 => S_23,
      S_4 => S_22,
      S_5 => S_21,
      S_6 => S_20,
      S_7 => S_19,
      S_8 => S_18,
      S_9 => S_17,
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => syndrome_reg_i(6),
      syndrome_reg_i(0) => syndrome_reg_i(4)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_4(0),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_4(1),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(0),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(1),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(2),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(3),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(4),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome_6(5),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011202211330022"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => axi_rdata_en
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome(0),
      Q => syndrome_reg(6),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome(1),
      Q => syndrome_reg(5),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome(2),
      Q => syndrome_reg(4),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome(3),
      Q => syndrome_reg(3),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => Syndrome(5),
      Q => syndrome_reg(1),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(0),
      I1 => bram_rddata_a(7),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(10),
      I1 => bram_rddata_a(17),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(11),
      I1 => bram_rddata_a(18),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(12),
      I1 => bram_rddata_a(19),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(13),
      I1 => bram_rddata_a(20),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(14),
      I1 => bram_rddata_a(21),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(15),
      I1 => bram_rddata_a(22),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(16),
      I1 => bram_rddata_a(23),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(17),
      I1 => bram_rddata_a(24),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(18),
      I1 => bram_rddata_a(25),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(19),
      I1 => bram_rddata_a(26),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(1),
      I1 => bram_rddata_a(8),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(20),
      I1 => bram_rddata_a(27),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(21),
      I1 => bram_rddata_a(28),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(22),
      I1 => bram_rddata_a(29),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(23),
      I1 => bram_rddata_a(30),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(24),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(25),
      I1 => bram_rddata_a(32),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(26),
      I1 => bram_rddata_a(33),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(27),
      I1 => bram_rddata_a(34),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(28),
      I1 => bram_rddata_a(35),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(29),
      I1 => bram_rddata_a(36),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(2),
      I1 => bram_rddata_a(9),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(30),
      I1 => bram_rddata_a(37),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(31),
      I1 => bram_rddata_a(38),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(3),
      I1 => bram_rddata_a(10),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(4),
      I1 => bram_rddata_a(11),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(5),
      I1 => bram_rddata_a(12),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(6),
      I1 => bram_rddata_a(13),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(7),
      I1 => bram_rddata_a(14),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(8),
      I1 => bram_rddata_a(15),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(9),
      I1 => bram_rddata_a(16),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9]\,
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => rd_skid_buf_ld
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(7),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(0),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(17),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(10),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(18),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(11),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(19),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(12),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(20),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(13),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(21),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(14),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(22),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(15),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(23),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(16),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(24),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(17),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(25),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(18),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(26),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(19),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(8),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(1),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(27),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(20),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(28),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(21),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(29),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(22),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(30),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(23),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(31),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(24),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(32),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(25),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(33),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(26),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(34),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(27),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(35),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(28),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(36),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(29),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(9),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(2),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(37),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(30),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(38),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(31),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(10),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(3),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(11),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(4),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(12),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(5),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(13),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(6),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(14),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(7),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(15),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(8),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(16),
      Q => \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg\(9),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030003000000AA00"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst_two,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0\,
      I3 => s_axi_aresetn,
      I4 => brst_zero,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen_7_sn_1,
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(2),
      O => axi_rd_burst_two
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_arlen_7_sn_1,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\,
      Q => axi_rd_burst,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => axi_rd_burst_two,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(10),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(10),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(11),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(11),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_rvalid_set,
      I1 => \^ar_active_d1\,
      I2 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(12),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(12),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(4),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(4),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(5),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(5),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(6),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(6),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(7),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(7),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(8),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(8),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(9),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(9),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\,
      Q => s_axi_rid(0),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\,
      Q => s_axi_rid(10),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\,
      Q => s_axi_rid(11),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0\,
      Q => s_axi_rid(12),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\,
      Q => s_axi_rid(1),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\,
      Q => s_axi_rid(2),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\,
      Q => s_axi_rid(3),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\,
      Q => s_axi_rid(4),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\,
      Q => s_axi_rid(5),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\,
      Q => s_axi_rid(6),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\,
      Q => s_axi_rid(7),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\,
      Q => s_axi_rid(8),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\,
      Q => s_axi_rid(9),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(0),
      Q => axi_rid_temp(0),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(10),
      Q => axi_rid_temp(10),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(11),
      Q => axi_rid_temp(11),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(12),
      Q => axi_rid_temp(12),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(1),
      Q => axi_rid_temp(1),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(2),
      Q => axi_rid_temp(2),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(3),
      Q => axi_rid_temp(3),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(4),
      Q => axi_rid_temp(4),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(5),
      Q => axi_rid_temp(5),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(6),
      Q => axi_rid_temp(6),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(7),
      Q => axi_rid_temp(7),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(8),
      Q => axi_rid_temp(8),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(9),
      Q => axi_rid_temp(9),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.I_WRAP_BRST\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst_62
     port map (
      \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1\ => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(9 downto 0) => Q(9 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[11]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[31]\(25 downto 0) => \ADDR_SNG_PORT.bram_addr_int_reg[31]\(25 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\ => \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\,
      \ADDR_SNG_PORT.bram_addr_int_reg[3]\ => \ADDR_SNG_PORT.bram_addr_int_reg[3]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      Arb2AR_Active => Arb2AR_Active,
      D(29 downto 0) => D(29 downto 0),
      E(1 downto 0) => E(1 downto 0),
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\,
      Q(3 downto 0) => rd_data_sm_cs(3 downto 0),
      SR(0) => \^sr\(0),
      ar_active_re => ar_active_re,
      axi_rd_burst => axi_rd_burst,
      brst_zero => brst_zero,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_0 => curr_fixed_burst_reg_0,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      end_brst_rd => end_brst_rd,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(29 downto 0) => s_axi_araddr(29 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_rready => s_axi_rready
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101010001"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I4 => rd_data_sm_cs(0),
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      O => act_rd_burst_set
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000010FFFFFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(1),
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      I2 => s_axi_rready,
      I3 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\,
      Q => act_rd_burst,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\,
      Q => act_rd_burst_two,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFC000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => rlast_sm_cs(2),
      I2 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\,
      I4 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => s_axi_rready,
      I3 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I2 => disable_b2b_brst,
      I3 => last_bram_addr,
      I4 => axi_rvalid_clr_ok,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\,
      Q => axi_rvalid_clr_ok,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I2 => axi_rvalid_clr_ok,
      I3 => axi_rvalid_set,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(3),
      O => axi_rvalid_set_cmb
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFB0B000B0B"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\,
      I2 => rd_data_sm_cs(3),
      I3 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\,
      I5 => BRAM_En_B_i,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => act_rd_burst_two,
      I2 => act_rd_burst,
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBFBBBB"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEF2FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => brst_zero,
      I4 => end_brst_rd,
      I5 => rd_data_sm_cs(0),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515555555FF5555"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0\,
      I2 => brst_one,
      I3 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0\,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333ABAA3333BBBB"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880000000"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      I2 => pend_rd_op,
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFF3CFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => \^ar_active_d1\,
      I4 => Arb2AR_Active,
      I5 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFB"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => brst_zero,
      I3 => end_brst_rd,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\,
      Q => BRAM_En_B_i,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(1)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      O => p_0_in(2)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => ar_active_re,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      O => p_0_in(3)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      O => p_0_in(4)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      O => p_0_in(5)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => ar_active_re,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      O => p_0_in(6)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\,
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_cnt_max,
      Q => brst_cnt_max_d1,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA0AA808"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => brst_one,
      I2 => ar_active_re,
      I3 => axi_rd_burst_two,
      I4 => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I3 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\,
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\,
      Q => brst_one,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I1 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\,
      I2 => brst_zero,
      I3 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(6),
      I3 => s_axi_arlen(5),
      O => s_axi_arlen_7_sn_1
    );
\GEN_NO_RD_CMD_OPT.brst_zero_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\,
      Q => brst_zero,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => curr_fixed_burst
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg_0,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0\,
      Q => curr_wrap_burst_reg,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABABABAAABA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => disable_b2b_brst,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(1),
      O => disable_b2b_brst_cmb
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFBBB"
    )
        port map (
      I0 => disable_b2b_brst,
      I1 => rd_data_sm_cs(1),
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0\,
      I4 => brst_one,
      I5 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF10FFFFFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => axi_rd_burst,
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD03000000"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\,
      Q => end_brst_rd_clr,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55300000"
    )
        port map (
      I0 => end_brst_rd_clr,
      I1 => brst_cnt_max_d1,
      I2 => brst_cnt_max,
      I3 => end_brst_rd,
      I4 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\,
      Q => end_brst_rd,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAB"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      O => last_bram_addr0
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I3 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33\,
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777770777777"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CC00EC00CC"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I1 => ar_active_re,
      I2 => pend_rd_op,
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(2),
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444F040F0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\,
      I1 => ar_active_re,
      I2 => pend_rd_op,
      I3 => axi_rvalid_set_cmb,
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF0E"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(3),
      I3 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\,
      I4 => pend_rd_op,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001000100"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => ar_active_re,
      I4 => pend_rd_op,
      I5 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\,
      Q => pend_rd_op,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000080F0F00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(2),
      O => rd_skid_buf_ld_cmb
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^sr\(0)
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\,
      I3 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F1FF3F3F333"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(0),
      I3 => act_rd_burst_two,
      I4 => act_rd_burst,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A015A0BFA0BFA0BF"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => s_axi_rready,
      I5 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\,
      Q => rddata_mux_sel,
      R => \^sr\(0)
    );
bram_en_a_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BRAM_En_B_i,
      I1 => BRAM_En_A_i,
      O => bram_en_a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    AW2Arb_Active_Clr : out STD_LOGIC;
    Wr_Sl_UE : out STD_LOGIC;
    Wr_Sl_CE : out STD_LOGIC;
    curr_fixed_burst_reg : out STD_LOGIC;
    BRAM_En_A_i : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg_0 : out STD_LOGIC;
    Active_Wr : out STD_LOGIC;
    BRAM_WE_A_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wr_burst_reg_0 : out STD_LOGIC;
    s_axi_awaddr_2_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_awaddr_3_sp_1 : out STD_LOGIC;
    s_axi_awaddr_4_sp_1 : out STD_LOGIC;
    s_axi_awaddr_5_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wr_burst_reg_1 : out STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : out STD_LOGIC;
    \bvalid_cnt_reg[2]_0\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ECC.WrData_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    Arb2AW_Active : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \save_init_bram_addr_ld_reg[31]\ : in STD_LOGIC;
    Enable_ECC : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \save_init_bram_addr_ld[31]_i_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wr_chnl;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wr_chnl is
  signal \^aw2arb_active_clr\ : STD_LOGIC;
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal AW2Arb_Busy : STD_LOGIC;
  signal \^active_wr\ : STD_LOGIC;
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_10 : STD_LOGIC;
  signal BID_FIFO_n_11 : STD_LOGIC;
  signal BID_FIFO_n_12 : STD_LOGIC;
  signal BID_FIFO_n_13 : STD_LOGIC;
  signal BID_FIFO_n_14 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_4 : STD_LOGIC;
  signal BID_FIFO_n_5 : STD_LOGIC;
  signal BID_FIFO_n_6 : STD_LOGIC;
  signal BID_FIFO_n_7 : STD_LOGIC;
  signal BID_FIFO_n_8 : STD_LOGIC;
  signal BID_FIFO_n_9 : STD_LOGIC;
  signal \^bram_we_a_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\ : STD_LOGIC;
  signal FaultInjectClr : STD_LOGIC;
  signal \GEN_BRESP_ECC.UE_Q_reg\ : STD_LOGIC;
  signal \GEN_BRESP_ECC.UE_Q_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ECC.CE_Q\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12\ : STD_LOGIC;
  signal \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\ : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \GEN_ECC.Syndrome\ : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \GEN_ECC.Syndrome_4\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \GEN_ECC.Syndrome_6\ : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \^gen_ecc.wrdata_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \GEN_ECC.syndrome_reg_i\ : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WR_ECC.bram_we_int[3]_i_1_n_0\ : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RdModifyWr_Modify : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S_0 : STD_LOGIC;
  signal S_1 : STD_LOGIC;
  signal S_10 : STD_LOGIC;
  signal S_11 : STD_LOGIC;
  signal S_12 : STD_LOGIC;
  signal S_13 : STD_LOGIC;
  signal S_14 : STD_LOGIC;
  signal S_15 : STD_LOGIC;
  signal S_16 : STD_LOGIC;
  signal S_17 : STD_LOGIC;
  signal S_18 : STD_LOGIC;
  signal S_19 : STD_LOGIC;
  signal S_2 : STD_LOGIC;
  signal S_20 : STD_LOGIC;
  signal S_21 : STD_LOGIC;
  signal S_22 : STD_LOGIC;
  signal S_23 : STD_LOGIC;
  signal S_24 : STD_LOGIC;
  signal S_25 : STD_LOGIC;
  signal S_26 : STD_LOGIC;
  signal S_27 : STD_LOGIC;
  signal S_28 : STD_LOGIC;
  signal S_29 : STD_LOGIC;
  signal S_3 : STD_LOGIC;
  signal S_30 : STD_LOGIC;
  signal S_4 : STD_LOGIC;
  signal S_5 : STD_LOGIC;
  signal S_6 : STD_LOGIC;
  signal S_7 : STD_LOGIC;
  signal S_8 : STD_LOGIC;
  signal S_9 : STD_LOGIC;
  signal UE_Q : STD_LOGIC;
  signal WrData_cmb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wr_sl_ue\ : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal \^axi_bvalid_int_reg_0\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_2_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_3_n_0 : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal curr_wrap_burst_reg_i_1_n_0 : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_awaddr_2_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_3_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_4_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_5_sn_1 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal set_bram_we : STD_LOGIC;
  signal set_bram_we_cmb : STD_LOGIC;
  signal wrdata_reg_ld : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1\ : label is "soft_lutpair113";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[0]\ : label is "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1]\ : label is "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[2]\ : label is "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[3]\ : label is "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4]\ : label is "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_ECC.active_wr_reg_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_ECC.bram_en_int_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_ECC.wr_busy_reg_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of ar_active_i_3 : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_2 : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of axi_wr_burst_i_2 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of bid_gets_fifo_load_d1_i_3 : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_1 : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_1 : label is "soft_lutpair114";
begin
  AW2Arb_Active_Clr <= \^aw2arb_active_clr\;
  Active_Wr <= \^active_wr\;
  BRAM_WE_A_i(0) <= \^bram_we_a_i\(0);
  \GEN_ECC.WrData_reg[31]_0\(31 downto 0) <= \^gen_ecc.wrdata_reg[31]_0\(31 downto 0);
  Q(0) <= \^q\(0);
  Wr_Sl_UE <= \^wr_sl_ue\;
  aw_active_d1 <= \^aw_active_d1\;
  axi_bvalid_int_reg_0 <= \^axi_bvalid_int_reg_0\;
  s_axi_awaddr_2_sp_1 <= s_axi_awaddr_2_sn_1;
  s_axi_awaddr_3_sp_1 <= s_axi_awaddr_3_sn_1;
  s_axi_awaddr_4_sp_1 <= s_axi_awaddr_4_sn_1;
  s_axi_awaddr_5_sp_1 <= s_axi_awaddr_5_sn_1;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      O => axi_wr_burst_reg_1
    );
BID_FIFO: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      Arb2AW_Active => Arb2AW_Active,
      D(12) => BID_FIFO_n_2,
      D(11) => BID_FIFO_n_3,
      D(10) => BID_FIFO_n_4,
      D(9) => BID_FIFO_n_5,
      D(8) => BID_FIFO_n_6,
      D(7) => BID_FIFO_n_7,
      D(6) => BID_FIFO_n_8,
      D(5) => BID_FIFO_n_9,
      D(4) => BID_FIFO_n_10,
      D(3) => BID_FIFO_n_11,
      D(2) => BID_FIFO_n_12,
      D(1) => BID_FIFO_n_13,
      D(0) => BID_FIFO_n_14,
      Data_Exists_DFF_0 => \^axi_bvalid_int_reg_0\,
      E(0) => BID_FIFO_n_0,
      \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4]\(0) => \^aw2arb_active_clr\,
      Q(0) => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      SR(0) => SR(0),
      aw_active_d1 => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bid_gets_fifo_load_d1_reg => bid_gets_fifo_load_d1_i_3_n_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(12 downto 0) => s_axi_awid(12 downto 0),
      s_axi_bready => s_axi_bready
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FFF8F8F8F8"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I2 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I3 => axi_wdata_full_reg,
      I4 => s_axi_wvalid,
      I5 => \^q\(0),
      O => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_wvalid,
      I2 => axi_wdata_full_reg,
      O => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => RdModifyWr_Modify,
      I1 => set_bram_we_cmb,
      I2 => \^q\(0),
      I3 => Arb2AW_Active,
      I4 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I5 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      O => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\,
      D => \^aw2arb_active_clr\,
      Q => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\,
      D => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\,
      D => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0\,
      Q => set_bram_we_cmb,
      R => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\,
      D => set_bram_we_cmb,
      Q => RdModifyWr_Modify,
      R => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0\,
      D => RdModifyWr_Modify,
      Q => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      R => SR(0)
    );
\GEN_BRESP_ECC.UE_Q_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A8A8A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \GEN_BRESP_ECC.UE_Q_reg\,
      I2 => \^wr_sl_ue\,
      I3 => s_axi_bready,
      I4 => \^axi_bvalid_int_reg_0\,
      I5 => aw_active_re,
      O => \GEN_BRESP_ECC.UE_Q_reg_i_1_n_0\
    );
\GEN_BRESP_ECC.UE_Q_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BRESP_ECC.UE_Q_reg_i_1_n_0\,
      Q => \GEN_BRESP_ECC.UE_Q_reg\,
      R => '0'
    );
\GEN_BRESP_ECC.axi_bresp_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \GEN_BRESP_ECC.UE_Q_reg\,
      I1 => \^wr_sl_ue\,
      I2 => FaultInjectClr,
      I3 => \^s_axi_bresp\(0),
      O => \GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0\
    );
\GEN_BRESP_ECC.axi_bresp_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => SR(0)
    );
\GEN_ECC.AXI_WSTRB_Q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000FFF80000"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I4 => s_axi_wvalid,
      I5 => axi_wdata_full_reg,
      O => wrdata_reg_ld
    );
\GEN_ECC.AXI_WSTRB_Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      R => SR(0)
    );
\GEN_ECC.AXI_WSTRB_Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => p_1_in,
      R => SR(0)
    );
\GEN_ECC.AXI_WSTRB_Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => p_0_in11_in,
      R => SR(0)
    );
\GEN_ECC.AXI_WSTRB_Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => p_10_in,
      R => SR(0)
    );
\GEN_ECC.CE_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.CE_Q\,
      Q => Wr_Sl_CE,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(38),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(28),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(27),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(26),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(25),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(24),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(23),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(22),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(21),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(20),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(19),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(37),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(18),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(17),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(16),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(15),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(14),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(13),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(12),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(11),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(10),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(9),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(36),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(8),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(7),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(35),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(34),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(33),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(32),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(31),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(30),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8]\,
      R => '0'
    );
\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_rddata_a(29),
      Q => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9]\,
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0\
     port map (
      D(4) => \GEN_ECC.Syndrome\(0),
      D(3) => \GEN_ECC.Syndrome\(1),
      D(2) => \GEN_ECC.Syndrome\(2),
      D(1) => \GEN_ECC.Syndrome\(3),
      D(0) => \GEN_ECC.Syndrome\(5),
      \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3]\ => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12\,
      \GEN_ECC.syndrome_reg_i\(2) => \GEN_ECC.syndrome_reg_i\(0),
      \GEN_ECC.syndrome_reg_i\(1) => \GEN_ECC.syndrome_reg_i\(3),
      \GEN_ECC.syndrome_reg_i\(0) => \GEN_ECC.syndrome_reg_i\(6),
      I0 => I0,
      I1 => I1,
      Q(0) => RdModifyWr_Modify,
      UE_Q => UE_Q,
      \Using_LUT6.Single_LUT6.XOR6_LUT\(5) => \GEN_ECC.Syndrome_6\(0),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(4) => \GEN_ECC.Syndrome_6\(1),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(3) => \GEN_ECC.Syndrome_6\(2),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(2) => \GEN_ECC.Syndrome_6\(3),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(1) => \GEN_ECC.Syndrome_6\(4),
      \Using_LUT6.Single_LUT6.XOR6_LUT\(0) => \GEN_ECC.Syndrome_6\(5),
      \Using_LUT6.Use_MUXF8.MUXF8_LUT\(1) => \GEN_ECC.Syndrome_4\(0),
      \Using_LUT6.Use_MUXF8.MUXF8_LUT\(0) => \GEN_ECC.Syndrome_4\(1),
      bram_rddata_a(38 downto 0) => bram_rddata_a(38 downto 0)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_WR_32\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_checkbit_handler
     port map (
      Q(31 downto 0) => \^gen_ecc.wrdata_reg[31]_0\(31 downto 0),
      bram_wrdata_a(6 downto 0) => bram_wrdata_a(6 downto 0)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[0].CORR_ONE_BIT_32\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0]\,
      D(0) => WrData_cmb(31),
      \GEN_ECC.WrData_reg[31]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[31]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_29,
      p_4_in(0) => p_4_in(31)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[10].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10]\,
      D(0) => WrData_cmb(21),
      \GEN_ECC.WrData_reg[21]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[21]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_19,
      p_4_in(0) => p_4_in(21)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[11].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11]\,
      D(0) => WrData_cmb(20),
      \GEN_ECC.WrData_reg[20]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[20]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_4,
      p_4_in(0) => p_4_in(20)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[12].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12]\,
      D(0) => WrData_cmb(19),
      \GEN_ECC.WrData_reg[19]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[19]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_6,
      p_4_in(0) => p_4_in(19)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[13].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13]\,
      D(0) => WrData_cmb(18),
      \GEN_ECC.WrData_reg[18]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[18]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_9,
      p_4_in(0) => p_4_in(18)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[14].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14]\,
      D(0) => WrData_cmb(17),
      \GEN_ECC.WrData_reg[17]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[17]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(2),
      S => S_11,
      p_4_in(0) => p_4_in(17)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[15].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15]\,
      D(0) => WrData_cmb(16),
      \GEN_ECC.WrData_reg[16]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[16]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_2,
      p_4_in(0) => p_4_in(16)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[16].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16]\,
      D(0) => WrData_cmb(15),
      \GEN_ECC.WrData_reg[15]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[15]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_27,
      p_4_in(0) => p_4_in(15)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[17].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17]\,
      D(0) => WrData_cmb(14),
      \GEN_ECC.WrData_reg[14]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[14]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_20,
      p_4_in(0) => p_4_in(14)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[18].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18]\,
      D(0) => WrData_cmb(13),
      \GEN_ECC.WrData_reg[13]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[13]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(3),
      S => S_7,
      p_4_in(0) => p_4_in(13)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[19].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19]\,
      D(0) => WrData_cmb(12),
      \GEN_ECC.WrData_reg[12]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[12]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_5,
      p_4_in(0) => p_4_in(12)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[1].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1]\,
      D(0) => WrData_cmb(30),
      \GEN_ECC.WrData_reg[30]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[30]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_23,
      p_4_in(0) => p_4_in(30)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[20].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20]\,
      D(0) => WrData_cmb(11),
      \GEN_ECC.WrData_reg[11]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[11]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_8,
      p_4_in(0) => p_4_in(11)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[21].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21]\,
      D(0) => WrData_cmb(10),
      \GEN_ECC.WrData_reg[10]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[10]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_25,
      p_4_in(0) => p_4_in(10)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[22].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22]\,
      D(0) => WrData_cmb(9),
      \GEN_ECC.WrData_reg[9]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[9]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(2),
      S => S_24,
      p_4_in(0) => p_4_in(9)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[23].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23]\,
      D(0) => WrData_cmb(8),
      \GEN_ECC.WrData_reg[8]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[8]_0\(0) => p_1_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_10,
      p_4_in(0) => p_4_in(8)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[24].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24]\,
      D(0) => WrData_cmb(7),
      \GEN_ECC.WrData_reg[7]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[7]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_22,
      p_4_in(0) => p_4_in(7)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[25].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25]\,
      D(0) => WrData_cmb(6),
      \GEN_ECC.WrData_reg[6]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[6]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_21,
      p_4_in(0) => p_4_in(6)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[26].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26]\,
      D(0) => WrData_cmb(5),
      \GEN_ECC.WrData_reg[5]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[5]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_16,
      p_4_in(0) => p_4_in(5)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[27].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27]\,
      D(0) => WrData_cmb(4),
      \GEN_ECC.WrData_reg[4]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[4]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_14,
      p_4_in(0) => p_4_in(4)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[28].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28]\,
      D(0) => WrData_cmb(3),
      \GEN_ECC.WrData_reg[3]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[3]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_15,
      p_4_in(0) => p_4_in(3)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[29].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29]\,
      D(0) => WrData_cmb(2),
      \GEN_ECC.WrData_reg[2]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[2]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(2),
      S => S_12,
      p_4_in(0) => p_4_in(2)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[2].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2]\,
      D(0) => WrData_cmb(29),
      \GEN_ECC.WrData_reg[29]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[29]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_26,
      p_4_in(0) => p_4_in(29)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[30].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30]\,
      D(0) => WrData_cmb(1),
      \GEN_ECC.WrData_reg[1]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[1]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_17,
      p_4_in(0) => p_4_in(1)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[31].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31]\,
      D(0) => WrData_cmb(0),
      \GEN_ECC.WrData_reg[0]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[0]_0\(0) => \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0]\,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_13,
      p_4_in(0) => p_4_in(0)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[3].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3]\,
      D(0) => WrData_cmb(28),
      \GEN_ECC.WrData_reg[28]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[28]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_30,
      p_4_in(0) => p_4_in(28)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[4].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4]\,
      D(0) => WrData_cmb(27),
      \GEN_ECC.WrData_reg[27]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[27]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_28,
      p_4_in(0) => p_4_in(27)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[5].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5]\,
      D(0) => WrData_cmb(26),
      \GEN_ECC.WrData_reg[26]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[26]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S,
      p_4_in(0) => p_4_in(26)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[6].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6]\,
      D(0) => WrData_cmb(25),
      \GEN_ECC.WrData_reg[25]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[25]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_18,
      p_4_in(0) => p_4_in(25)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[7].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7]\,
      D(0) => WrData_cmb(24),
      \GEN_ECC.WrData_reg[24]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[24]_0\(0) => p_10_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(2),
      S => S_0,
      p_4_in(0) => p_4_in(24)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[8].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8]\,
      D(0) => WrData_cmb(23),
      \GEN_ECC.WrData_reg[23]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[23]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(0),
      S => S_3,
      p_4_in(0) => p_4_in(23)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[9].CORR_ONE_BIT_32\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8\
     port map (
      Corr_XORCY_0(0) => \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9]\,
      D(0) => WrData_cmb(22),
      \GEN_ECC.WrData_reg[22]\(0) => RdModifyWr_Modify,
      \GEN_ECC.WrData_reg[22]_0\(0) => p_0_in11_in,
      Q(0) => \GEN_ECC.syndrome_reg_i\(1),
      S => S_1,
      p_4_in(0) => p_4_in(22)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.PARITY_CHK4\: entity work.\bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity__parameterized6\
     port map (
      Corr_MUXCY(5) => \GEN_ECC.syndrome_reg_i\(0),
      Corr_MUXCY(4) => \GEN_ECC.syndrome_reg_i\(1),
      Corr_MUXCY(3) => \GEN_ECC.syndrome_reg_i\(2),
      Corr_MUXCY(2) => \GEN_ECC.syndrome_reg_i\(3),
      Corr_MUXCY(1) => \GEN_ECC.syndrome_reg_i\(5),
      Corr_MUXCY(0) => \GEN_ECC.syndrome_reg_i\(6),
      \Decode_Bits.Use_LUT6.UE_MUXF7\ => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12\,
      Enable_ECC => Enable_ECC,
      \GEN_ECC.CE_Q\ => \GEN_ECC.CE_Q\,
      \GEN_ECC.CE_Q_reg\(0) => RdModifyWr_Modify,
      \GEN_ECC.syndrome_reg_i\(0) => \GEN_ECC.syndrome_reg_i\(4),
      I0 => I0,
      I1 => I1,
      Q(1) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg\(0),
      Q(0) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg\(1),
      S => S_17,
      S_0 => S_16,
      S_1 => S_15,
      S_10 => S_6,
      S_11 => S_5,
      S_12 => S_4,
      S_13 => S_3,
      S_14 => S_2,
      S_15 => S_1,
      S_16 => S_0,
      S_17 => S,
      S_2 => S_14,
      S_3 => S_13,
      S_4 => S_12,
      S_5 => S_11,
      S_6 => S_10,
      S_7 => S_9,
      S_8 => S_8,
      S_9 => S_7
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.PARITY_CHK6\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_Parity
     port map (
      \GEN_ECC.syndrome_reg_i\(5) => \GEN_ECC.syndrome_reg_i\(0),
      \GEN_ECC.syndrome_reg_i\(4) => \GEN_ECC.syndrome_reg_i\(1),
      \GEN_ECC.syndrome_reg_i\(3) => \GEN_ECC.syndrome_reg_i\(2),
      \GEN_ECC.syndrome_reg_i\(2) => \GEN_ECC.syndrome_reg_i\(3),
      \GEN_ECC.syndrome_reg_i\(1) => \GEN_ECC.syndrome_reg_i\(4),
      \GEN_ECC.syndrome_reg_i\(0) => \GEN_ECC.syndrome_reg_i\(5),
      Q(5) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(0),
      Q(4) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(1),
      Q(3) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(2),
      Q(2) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(3),
      Q(1) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(4),
      Q(0) => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(5),
      S => S_30,
      S_0 => S_29,
      S_1 => S_28,
      S_10 => S_19,
      S_11 => S_18,
      S_2 => S_27,
      S_3 => S_26,
      S_4 => S_25,
      S_5 => S_24,
      S_6 => S_23,
      S_7 => S_22,
      S_8 => S_21,
      S_9 => S_20,
      \Using_LUT6.Single_LUT6.XOR6_LUT_0\(0) => \GEN_ECC.syndrome_reg_i\(6)
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_4\(0),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg\(0),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_4\(1),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg\(1),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(0),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(0),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(1),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(1),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(2),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(2),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(3),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(3),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(4),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(4),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome_6\(5),
      Q => \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg\(5),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome\(0),
      Q => \GEN_ECC.syndrome_reg_i\(0),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome\(1),
      Q => \GEN_ECC.syndrome_reg_i\(1),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome\(2),
      Q => \GEN_ECC.syndrome_reg_i\(2),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome\(3),
      Q => \GEN_ECC.syndrome_reg_i\(3),
      R => '0'
    );
\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ECC.Syndrome\(5),
      Q => \GEN_ECC.syndrome_reg_i\(5),
      R => '0'
    );
\GEN_ECC.UE_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => UE_Q,
      Q => \^wr_sl_ue\,
      R => '0'
    );
\GEN_ECC.WrData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(0),
      Q => \^gen_ecc.wrdata_reg[31]_0\(0),
      R => '0'
    );
\GEN_ECC.WrData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(10),
      Q => \^gen_ecc.wrdata_reg[31]_0\(10),
      R => '0'
    );
\GEN_ECC.WrData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(11),
      Q => \^gen_ecc.wrdata_reg[31]_0\(11),
      R => '0'
    );
\GEN_ECC.WrData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(12),
      Q => \^gen_ecc.wrdata_reg[31]_0\(12),
      R => '0'
    );
\GEN_ECC.WrData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(13),
      Q => \^gen_ecc.wrdata_reg[31]_0\(13),
      R => '0'
    );
\GEN_ECC.WrData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(14),
      Q => \^gen_ecc.wrdata_reg[31]_0\(14),
      R => '0'
    );
\GEN_ECC.WrData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(15),
      Q => \^gen_ecc.wrdata_reg[31]_0\(15),
      R => '0'
    );
\GEN_ECC.WrData_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(16),
      Q => \^gen_ecc.wrdata_reg[31]_0\(16),
      R => '0'
    );
\GEN_ECC.WrData_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(17),
      Q => \^gen_ecc.wrdata_reg[31]_0\(17),
      R => '0'
    );
\GEN_ECC.WrData_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(18),
      Q => \^gen_ecc.wrdata_reg[31]_0\(18),
      R => '0'
    );
\GEN_ECC.WrData_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(19),
      Q => \^gen_ecc.wrdata_reg[31]_0\(19),
      R => '0'
    );
\GEN_ECC.WrData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(1),
      Q => \^gen_ecc.wrdata_reg[31]_0\(1),
      R => '0'
    );
\GEN_ECC.WrData_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(20),
      Q => \^gen_ecc.wrdata_reg[31]_0\(20),
      R => '0'
    );
\GEN_ECC.WrData_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(21),
      Q => \^gen_ecc.wrdata_reg[31]_0\(21),
      R => '0'
    );
\GEN_ECC.WrData_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(22),
      Q => \^gen_ecc.wrdata_reg[31]_0\(22),
      R => '0'
    );
\GEN_ECC.WrData_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(23),
      Q => \^gen_ecc.wrdata_reg[31]_0\(23),
      R => '0'
    );
\GEN_ECC.WrData_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(24),
      Q => \^gen_ecc.wrdata_reg[31]_0\(24),
      R => '0'
    );
\GEN_ECC.WrData_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(25),
      Q => \^gen_ecc.wrdata_reg[31]_0\(25),
      R => '0'
    );
\GEN_ECC.WrData_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(26),
      Q => \^gen_ecc.wrdata_reg[31]_0\(26),
      R => '0'
    );
\GEN_ECC.WrData_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(27),
      Q => \^gen_ecc.wrdata_reg[31]_0\(27),
      R => '0'
    );
\GEN_ECC.WrData_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(28),
      Q => \^gen_ecc.wrdata_reg[31]_0\(28),
      R => '0'
    );
\GEN_ECC.WrData_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(29),
      Q => \^gen_ecc.wrdata_reg[31]_0\(29),
      R => '0'
    );
\GEN_ECC.WrData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(2),
      Q => \^gen_ecc.wrdata_reg[31]_0\(2),
      R => '0'
    );
\GEN_ECC.WrData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(30),
      Q => \^gen_ecc.wrdata_reg[31]_0\(30),
      R => '0'
    );
\GEN_ECC.WrData_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(31),
      Q => \^gen_ecc.wrdata_reg[31]_0\(31),
      R => '0'
    );
\GEN_ECC.WrData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(3),
      Q => \^gen_ecc.wrdata_reg[31]_0\(3),
      R => '0'
    );
\GEN_ECC.WrData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(4),
      Q => \^gen_ecc.wrdata_reg[31]_0\(4),
      R => '0'
    );
\GEN_ECC.WrData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(5),
      Q => \^gen_ecc.wrdata_reg[31]_0\(5),
      R => '0'
    );
\GEN_ECC.WrData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(6),
      Q => \^gen_ecc.wrdata_reg[31]_0\(6),
      R => '0'
    );
\GEN_ECC.WrData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(7),
      Q => \^gen_ecc.wrdata_reg[31]_0\(7),
      R => '0'
    );
\GEN_ECC.WrData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(8),
      Q => \^gen_ecc.wrdata_reg[31]_0\(8),
      R => '0'
    );
\GEN_ECC.WrData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => WrData_cmb(9),
      Q => \^gen_ecc.wrdata_reg[31]_0\(9),
      R => '0'
    );
\GEN_ECC.bvalid_cnt_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^aw2arb_active_clr\,
      Q => FaultInjectClr,
      R => SR(0)
    );
\GEN_WDATA_SM_ECC.active_wr_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEFFF202020"
    )
        port map (
      I0 => \GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0\,
      I1 => axi_wr_burst,
      I2 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I3 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I4 => Arb2AW_Active,
      I5 => \^active_wr\,
      O => \GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0\
    );
\GEN_WDATA_SM_ECC.active_wr_reg_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => set_bram_we_cmb,
      I2 => RdModifyWr_Modify,
      O => \GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0\
    );
\GEN_WDATA_SM_ECC.active_wr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0\,
      Q => \^active_wr\,
      R => SR(0)
    );
\GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F454F4F4F45454"
    )
        port map (
      I0 => \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0\,
      I1 => s_axi_wvalid,
      I2 => axi_wdata_full_reg,
      I3 => axi_wr_burst,
      I4 => set_bram_we_cmb,
      I5 => RdModifyWr_Modify,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I3 => axi_wr_burst,
      O => \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0\
    );
\GEN_WDATA_SM_ECC.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => SR(0)
    );
\GEN_WDATA_SM_ECC.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => RdModifyWr_Modify,
      I1 => Arb2AW_Active,
      I2 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I3 => axi_wr_burst,
      I4 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      O => bram_en_cmb
    );
\GEN_WDATA_SM_ECC.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => BRAM_En_A_i,
      R => SR(0)
    );
\GEN_WDATA_SM_ECC.set_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => set_bram_we_cmb,
      Q => set_bram_we,
      R => SR(0)
    );
\GEN_WDATA_SM_ECC.wr_busy_reg_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I1 => axi_wr_burst,
      I2 => AW2Arb_Busy,
      O => \GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0\
    );
\GEN_WDATA_SM_ECC.wr_busy_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0\,
      Q => AW2Arb_Busy,
      R => SR(0)
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => p_4_in(0),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => p_4_in(10),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => p_4_in(11),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => p_4_in(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => p_4_in(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => p_4_in(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => p_4_in(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => p_4_in(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => p_4_in(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => p_4_in(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => p_4_in(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => p_4_in(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => p_4_in(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => p_4_in(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => p_4_in(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => p_4_in(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => p_4_in(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => p_4_in(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => p_4_in(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => p_4_in(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => p_4_in(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => p_4_in(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => p_4_in(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => p_4_in(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => p_4_in(31),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => p_4_in(3),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => p_4_in(4),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => p_4_in(5),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => p_4_in(6),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => p_4_in(7),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => p_4_in(8),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => p_4_in(9),
      R => '0'
    );
\GEN_WR_ECC.bram_we_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Arb2AW_Active,
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      I2 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I3 => set_bram_we,
      I4 => \^bram_we_a_i\(0),
      I5 => s_axi_aresetn,
      O => \GEN_WR_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WR_ECC.bram_we_int[3]_i_1_n_0\,
      Q => \^bram_we_a_i\(0),
      R => '0'
    );
I_WRAP_BRST: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wrap_brst
     port map (
      Arb2AW_Active => Arb2AW_Active,
      D(25 downto 0) => D(25 downto 0),
      SR(0) => SR(0),
      aw_active_d1 => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_reg_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(29 downto 0),
      s_axi_awaddr_2_sp_1 => s_axi_awaddr_2_sn_1,
      s_axi_awaddr_3_sp_1 => s_axi_awaddr_3_sn_1,
      s_axi_awaddr_4_sp_1 => s_axi_awaddr_4_sn_1,
      s_axi_awaddr_5_sp_1 => s_axi_awaddr_5_sn_1,
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      \save_init_bram_addr_ld[31]_i_3_0\(2 downto 0) => \save_init_bram_addr_ld[31]_i_3\(2 downto 0),
      \save_init_bram_addr_ld_reg[31]_0\ => \save_init_bram_addr_ld_reg[31]\
    );
ar_active_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      I2 => arb_sm_cs(0),
      I3 => arb_sm_cs(1),
      O => axi_wr_burst_reg_0
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Arb2AW_Active,
      Q => \^aw_active_d1\,
      R => SR(0)
    );
axi_awready_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => s_axi_awvalid,
      I4 => AW2Arb_Busy,
      O => \bvalid_cnt_reg[2]_0\
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_14,
      Q => s_axi_bid(0),
      R => SR(0)
    );
\axi_bid_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_4,
      Q => s_axi_bid(10),
      R => SR(0)
    );
\axi_bid_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_3,
      Q => s_axi_bid(11),
      R => SR(0)
    );
\axi_bid_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_2,
      Q => s_axi_bid(12),
      R => SR(0)
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_13,
      Q => s_axi_bid(1),
      R => SR(0)
    );
\axi_bid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_12,
      Q => s_axi_bid(2),
      R => SR(0)
    );
\axi_bid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_11,
      Q => s_axi_bid(3),
      R => SR(0)
    );
\axi_bid_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_10,
      Q => s_axi_bid(4),
      R => SR(0)
    );
\axi_bid_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_9,
      Q => s_axi_bid(5),
      R => SR(0)
    );
\axi_bid_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_8,
      Q => s_axi_bid(6),
      R => SR(0)
    );
\axi_bid_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_7,
      Q => s_axi_bid(7),
      R => SR(0)
    );
\axi_bid_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_6,
      Q => s_axi_bid(8),
      R => SR(0)
    );
\axi_bid_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_5,
      Q => s_axi_bid(9),
      R => SR(0)
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA08"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => axi_bvalid_int_i_2_n_0,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => \^aw2arb_active_clr\,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_int_reg_0\,
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^axi_bvalid_int_reg_0\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5511FF11FD01FF00"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst_i_2_n_0,
      I2 => axi_wdata_full_reg,
      I3 => axi_wr_burst,
      I4 => s_axi_wvalid,
      I5 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4]\,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0]\,
      O => axi_wr_burst_i_2_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => SR(0)
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => s_axi_wready,
      R => '0'
    );
bid_gets_fifo_load_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => s_axi_bready,
      I3 => \^axi_bvalid_int_reg_0\,
      I4 => AW2Arb_BVALID_Cnt(0),
      O => bid_gets_fifo_load_d1_i_3_n_0
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => SR(0)
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88887777777F8880"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => \^aw2arb_active_clr\,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC9866CC66CC66CC"
    )
        port map (
      I0 => \^aw2arb_active_clr\,
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E078F078F078F0"
    )
        port map (
      I0 => \^aw2arb_active_clr\,
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => SR(0)
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => SR(0)
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => SR(0)
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg,
      R => SR(0)
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      O => curr_wrap_burst_reg_i_1_n_0
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => curr_wrap_burst_reg_i_1_n_0,
      Q => curr_wrap_burst_reg,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_full_axi is
  port (
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \Decode_Bits.Use_LUT6.UE_MUXF7\ : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ongoing_write_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_ue : out STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    ecc_interrupt : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_full_axi;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.sng_bram_addr_ld_en\ : STD_LOGIC;
  signal AW2Arb_Active_Clr : STD_LOGIC;
  signal Active_Wr : STD_LOGIC;
  signal Arb2AR_Active : STD_LOGIC;
  signal Arb2AW_Active : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal BRAM_Addr_En : STD_LOGIC;
  signal BRAM_En_A_i : STD_LOGIC;
  signal BRAM_WE_A_i : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Enable_ECC : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_11\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_4\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_8\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg\ : STD_LOGIC;
  signal I_RD_CHNL_n_10 : STD_LOGIC;
  signal I_RD_CHNL_n_11 : STD_LOGIC;
  signal I_RD_CHNL_n_12 : STD_LOGIC;
  signal I_RD_CHNL_n_13 : STD_LOGIC;
  signal I_RD_CHNL_n_14 : STD_LOGIC;
  signal I_RD_CHNL_n_15 : STD_LOGIC;
  signal I_RD_CHNL_n_16 : STD_LOGIC;
  signal I_RD_CHNL_n_17 : STD_LOGIC;
  signal I_RD_CHNL_n_18 : STD_LOGIC;
  signal I_RD_CHNL_n_19 : STD_LOGIC;
  signal I_RD_CHNL_n_20 : STD_LOGIC;
  signal I_RD_CHNL_n_21 : STD_LOGIC;
  signal I_RD_CHNL_n_22 : STD_LOGIC;
  signal I_RD_CHNL_n_23 : STD_LOGIC;
  signal I_RD_CHNL_n_24 : STD_LOGIC;
  signal I_RD_CHNL_n_25 : STD_LOGIC;
  signal I_RD_CHNL_n_26 : STD_LOGIC;
  signal I_RD_CHNL_n_27 : STD_LOGIC;
  signal I_RD_CHNL_n_28 : STD_LOGIC;
  signal I_RD_CHNL_n_29 : STD_LOGIC;
  signal I_RD_CHNL_n_30 : STD_LOGIC;
  signal I_RD_CHNL_n_31 : STD_LOGIC;
  signal I_RD_CHNL_n_32 : STD_LOGIC;
  signal I_RD_CHNL_n_33 : STD_LOGIC;
  signal I_RD_CHNL_n_34 : STD_LOGIC;
  signal I_RD_CHNL_n_35 : STD_LOGIC;
  signal I_RD_CHNL_n_36 : STD_LOGIC;
  signal I_RD_CHNL_n_37 : STD_LOGIC;
  signal I_RD_CHNL_n_39 : STD_LOGIC;
  signal I_RD_CHNL_n_41 : STD_LOGIC;
  signal I_RD_CHNL_n_7 : STD_LOGIC;
  signal I_RD_CHNL_n_8 : STD_LOGIC;
  signal I_RD_CHNL_n_9 : STD_LOGIC;
  signal I_WR_CHNL_n_10 : STD_LOGIC;
  signal I_WR_CHNL_n_11 : STD_LOGIC;
  signal I_WR_CHNL_n_38 : STD_LOGIC;
  signal I_WR_CHNL_n_39 : STD_LOGIC;
  signal I_WR_CHNL_n_40 : STD_LOGIC;
  signal I_WR_CHNL_n_42 : STD_LOGIC;
  signal I_WR_CHNL_n_43 : STD_LOGIC;
  signal I_WR_CHNL_n_44 : STD_LOGIC;
  signal Rd_Sl_CE : STD_LOGIC;
  signal Rd_Sl_UE : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 29 downto 4 );
  signal Wr_BRAM_Addr_En : STD_LOGIC;
  signal Wr_Sl_CE : STD_LOGIC;
  signal Wr_Sl_UE : STD_LOGIC;
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_2\ : label is "soft_lutpair115";
begin
  BRAM_Addr_A(29 downto 0) <= \^bram_addr_a\(29 downto 0);
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg\;
  SR(0) <= \^sr\(0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^bram_addr_a\(7),
      I1 => \^bram_addr_a\(4),
      I2 => I_RD_CHNL_n_37,
      I3 => \^bram_addr_a\(5),
      I4 => \^bram_addr_a\(6),
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^bram_addr_a\(8),
      I1 => \^bram_addr_a\(6),
      I2 => \^bram_addr_a\(5),
      I3 => I_RD_CHNL_n_37,
      I4 => \^bram_addr_a\(4),
      I5 => \^bram_addr_a\(7),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bram_addr_a\(0),
      I1 => \^bram_addr_a\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^bram_addr_a\(2),
      I1 => \^bram_addr_a\(1),
      I2 => \^bram_addr_a\(0),
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^bram_addr_a\(3),
      I1 => \^bram_addr_a\(2),
      I2 => \^bram_addr_a\(1),
      I3 => \^bram_addr_a\(0),
      I4 => \^bram_addr_a\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bram_addr_a\(4),
      I1 => \^bram_addr_a\(0),
      I2 => \^bram_addr_a\(1),
      I3 => \^bram_addr_a\(2),
      I4 => \^bram_addr_a\(3),
      I5 => \^bram_addr_a\(5),
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^bram_addr_a\(6),
      I1 => \^bram_addr_a\(5),
      I2 => I_RD_CHNL_n_37,
      I3 => \^bram_addr_a\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_28,
      Q => \^bram_addr_a\(8),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_27,
      Q => \^bram_addr_a\(9),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_26,
      Q => \^bram_addr_a\(10),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_25,
      Q => \^bram_addr_a\(11),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_24,
      Q => \^bram_addr_a\(12),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_23,
      Q => \^bram_addr_a\(13),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_22,
      Q => \^bram_addr_a\(14),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_21,
      Q => \^bram_addr_a\(15),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_20,
      Q => \^bram_addr_a\(16),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_19,
      Q => \^bram_addr_a\(17),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_18,
      Q => \^bram_addr_a\(18),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_17,
      Q => \^bram_addr_a\(19),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_16,
      Q => \^bram_addr_a\(20),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_15,
      Q => \^bram_addr_a\(21),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_14,
      Q => \^bram_addr_a\(22),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_13,
      Q => \^bram_addr_a\(23),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_12,
      Q => \^bram_addr_a\(24),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_11,
      Q => \^bram_addr_a\(25),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_10,
      Q => \^bram_addr_a\(26),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_9,
      Q => \^bram_addr_a\(27),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_36,
      Q => \^bram_addr_a\(0),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_8,
      Q => \^bram_addr_a\(28),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => I_RD_CHNL_n_7,
      Q => \^bram_addr_a\(29),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_35,
      Q => \^bram_addr_a\(1),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_34,
      Q => \^bram_addr_a\(2),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_33,
      Q => \^bram_addr_a\(3),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_32,
      Q => \^bram_addr_a\(4),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_31,
      Q => \^bram_addr_a\(5),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_30,
      Q => \^bram_addr_a\(6),
      R => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_39,
      D => I_RD_CHNL_n_29,
      Q => \^bram_addr_a\(7),
      R => \^sr\(0)
    );
\GEN_ARB.I_SNG_PORT\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_sng_port_arb
     port map (
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      BRAM_WE_A_i(0) => BRAM_WE_A_i(3),
      \FSM_sequential_arb_sm_cs_reg[0]_0\ => I_WR_CHNL_n_44,
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg\ => I_RD_CHNL_n_41,
      SR(0) => \^sr\(0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      ar_active_reg_0 => \GEN_ARB.I_SNG_PORT_n_11\,
      ar_active_reg_1 => I_WR_CHNL_n_10,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_d1 => aw_active_d1,
      aw_active_d1_reg => \GEN_ARB.I_SNG_PORT_n_8\,
      aw_active_re => aw_active_re,
      bram_we_a(0) => bram_we_a(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlen_3_sp_1 => \GEN_ARB.I_SNG_PORT_n_4\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready
    );
\GEN_REGS.I_LITE_ECC_REG_NO_RL.I_LITE_ECC_REG\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_lite_ecc_reg
     port map (
      Active_Wr => Active_Wr,
      BRAM_Addr_A(29 downto 0) => \^bram_addr_a\(29 downto 0),
      E(0) => E(0),
      Enable_ECC => Enable_ECC,
      \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0\(0) => BRAM_Addr_En,
      Rd_Sl_CE => Rd_Sl_CE,
      Rd_Sl_UE => Rd_Sl_UE,
      SR(0) => \^sr\(0),
      Wr_Sl_CE => Wr_Sl_CE,
      Wr_Sl_UE => Wr_Sl_UE,
      ecc_interrupt => ecc_interrupt,
      ecc_ue => ecc_ue,
      ongoing_write_reg => ongoing_write_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid
    );
I_RD_CHNL: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => I_WR_CHNL_n_42,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => I_RD_CHNL_n_37,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => I_WR_CHNL_n_11,
      \ADDR_SNG_PORT.bram_addr_int_reg[31]\(25 downto 0) => WrChnl_BRAM_Addr_Ld(29 downto 4),
      \ADDR_SNG_PORT.bram_addr_int_reg[31]_0\ => \GEN_ARB.I_SNG_PORT_n_8\,
      \ADDR_SNG_PORT.bram_addr_int_reg[31]_1\ => I_WR_CHNL_n_43,
      \ADDR_SNG_PORT.bram_addr_int_reg[3]\ => I_WR_CHNL_n_38,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ => I_WR_CHNL_n_39,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ => I_WR_CHNL_n_40,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\,
      Arb2AR_Active => Arb2AR_Active,
      BRAM_En_A_i => BRAM_En_A_i,
      D(29) => I_RD_CHNL_n_7,
      D(28) => I_RD_CHNL_n_8,
      D(27) => I_RD_CHNL_n_9,
      D(26) => I_RD_CHNL_n_10,
      D(25) => I_RD_CHNL_n_11,
      D(24) => I_RD_CHNL_n_12,
      D(23) => I_RD_CHNL_n_13,
      D(22) => I_RD_CHNL_n_14,
      D(21) => I_RD_CHNL_n_15,
      D(20) => I_RD_CHNL_n_16,
      D(19) => I_RD_CHNL_n_17,
      D(18) => I_RD_CHNL_n_18,
      D(17) => I_RD_CHNL_n_19,
      D(16) => I_RD_CHNL_n_20,
      D(15) => I_RD_CHNL_n_21,
      D(14) => I_RD_CHNL_n_22,
      D(13) => I_RD_CHNL_n_23,
      D(12) => I_RD_CHNL_n_24,
      D(11) => I_RD_CHNL_n_25,
      D(10) => I_RD_CHNL_n_26,
      D(9) => I_RD_CHNL_n_27,
      D(8) => I_RD_CHNL_n_28,
      D(7) => I_RD_CHNL_n_29,
      D(6) => I_RD_CHNL_n_30,
      D(5) => I_RD_CHNL_n_31,
      D(4) => I_RD_CHNL_n_32,
      D(3) => I_RD_CHNL_n_33,
      D(2) => I_RD_CHNL_n_34,
      D(1) => I_RD_CHNL_n_35,
      D(0) => I_RD_CHNL_n_36,
      \Decode_Bits.Use_LUT6.UE_MUXF7\ => \Decode_Bits.Use_LUT6.UE_MUXF7\,
      E(1) => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      E(0) => I_RD_CHNL_n_39,
      Enable_ECC => Enable_ECC,
      \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1]\(0) => BRAM_Addr_En,
      \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]\(0) => Wr_BRAM_Addr_En,
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ => \GEN_ARB.I_SNG_PORT_n_11\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ => \GEN_ARB.I_SNG_PORT_n_4\,
      Q(9 downto 0) => \^bram_addr_a\(9 downto 0),
      Rd_Sl_CE => Rd_Sl_CE,
      Rd_Sl_UE => Rd_Sl_UE,
      SR(0) => \^sr\(0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      bram_en_a => bram_en_a,
      bram_rddata_a(38 downto 0) => bram_rddata_a(38 downto 0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(29 downto 0) => s_axi_araddr(29 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(12 downto 0) => s_axi_arid(12 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlen_7_sp_1 => I_RD_CHNL_n_41,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(12 downto 0) => s_axi_rid(12 downto 0),
      s_axi_rready => s_axi_rready
    );
I_WR_CHNL: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_wr_chnl
     port map (
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Active_Wr => Active_Wr,
      Arb2AW_Active => Arb2AW_Active,
      BRAM_En_A_i => BRAM_En_A_i,
      BRAM_WE_A_i(0) => BRAM_WE_A_i(3),
      D(25 downto 0) => WrChnl_BRAM_Addr_Ld(29 downto 4),
      Enable_ECC => Enable_ECC,
      \GEN_ECC.WrData_reg[31]_0\(31 downto 0) => Q(31 downto 0),
      Q(0) => Wr_BRAM_Addr_En,
      SR(0) => \^sr\(0),
      Wr_Sl_CE => Wr_Sl_CE,
      Wr_Sl_UE => Wr_Sl_UE,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_bvalid_int_reg_0 => axi_bvalid_int_reg,
      axi_wr_burst_reg_0 => I_WR_CHNL_n_10,
      axi_wr_burst_reg_1 => I_WR_CHNL_n_42,
      bram_rddata_a(38 downto 0) => bram_rddata_a(38 downto 0),
      bram_wrdata_a(6 downto 0) => bram_wrdata_a(6 downto 0),
      \bvalid_cnt_reg[2]_0\ => I_WR_CHNL_n_44,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_wrap_burst_reg_reg_0 => I_WR_CHNL_n_43,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(29 downto 0),
      s_axi_awaddr_2_sp_1 => I_WR_CHNL_n_11,
      s_axi_awaddr_3_sp_1 => I_WR_CHNL_n_38,
      s_axi_awaddr_4_sp_1 => I_WR_CHNL_n_39,
      s_axi_awaddr_5_sp_1 => I_WR_CHNL_n_40,
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(12 downto 0) => s_axi_awid(12 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(12 downto 0) => s_axi_bid(12 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld[31]_i_3\(2 downto 0) => \^bram_addr_a\(2 downto 0),
      \save_init_bram_addr_ld_reg[31]\ => I_RD_CHNL_n_37
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top is
  port (
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 38 downto 0 );
    \Decode_Bits.Use_LUT6.UE_MUXF7\ : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ongoing_write_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_ue : out STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 0 to 0 );
    ecc_interrupt : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC
  );
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_full_axi
     port map (
      BRAM_Addr_A(29 downto 0) => Q(29 downto 0),
      \Decode_Bits.Use_LUT6.UE_MUXF7\ => \Decode_Bits.Use_LUT6.UE_MUXF7\,
      E(0) => E(0),
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      Q(31 downto 0) => bram_wrdata_a(38 downto 7),
      SR(0) => SR(0),
      axi_bvalid_int_reg => axi_bvalid_int_reg,
      bram_en_a => bram_en_a,
      bram_rddata_a(38 downto 0) => bram_rddata_a(38 downto 0),
      bram_we_a(0) => bram_we_a(0),
      bram_wrdata_a(6 downto 0) => bram_wrdata_a(6 downto 0),
      ecc_interrupt => ecc_interrupt,
      ecc_ue => ecc_ue,
      ongoing_write_reg => ongoing_write_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(29 downto 0) => s_axi_araddr(29 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(12 downto 0) => s_axi_arid(12 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(29 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(12 downto 0) => s_axi_awid(12 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(12 downto 0) => s_axi_bid(12 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(12 downto 0) => s_axi_rid(12 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 4 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 39 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 39 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 39 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 12;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 4096;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 13;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "yes";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^bram_we_a\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^bram_wrdata_a\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \^s_axi_aclk\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_ctrl_awready\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(31 downto 2) <= \^bram_addr_a\(31 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(31) <= \<const0>\;
  bram_addr_b(30) <= \<const0>\;
  bram_addr_b(29) <= \<const0>\;
  bram_addr_b(28) <= \<const0>\;
  bram_addr_b(27) <= \<const0>\;
  bram_addr_b(26) <= \<const0>\;
  bram_addr_b(25) <= \<const0>\;
  bram_addr_b(24) <= \<const0>\;
  bram_addr_b(23) <= \<const0>\;
  bram_addr_b(22) <= \<const0>\;
  bram_addr_b(21) <= \<const0>\;
  bram_addr_b(20) <= \<const0>\;
  bram_addr_b(19) <= \<const0>\;
  bram_addr_b(18) <= \<const0>\;
  bram_addr_b(17) <= \<const0>\;
  bram_addr_b(16) <= \<const0>\;
  bram_addr_b(15) <= \<const0>\;
  bram_addr_b(14) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_a(4) <= \^bram_we_a\(4);
  bram_we_a(3) <= \^bram_we_a\(4);
  bram_we_a(2) <= \^bram_we_a\(4);
  bram_we_a(1) <= \^bram_we_a\(4);
  bram_we_a(0) <= \^bram_we_a\(4);
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_a(39 downto 8) <= \^bram_wrdata_a\(39 downto 8);
  bram_wrdata_a(7) <= \<const0>\;
  bram_wrdata_a(6 downto 0) <= \^bram_wrdata_a\(6 downto 0);
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_awready <= \^s_axi_ctrl_awready\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_wready <= \^s_axi_ctrl_awready\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top
     port map (
      \Decode_Bits.Use_LUT6.UE_MUXF7\ => \^s_axi_rresp\(1),
      E(0) => \^s_axi_ctrl_awready\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => s_axi_rlast,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => s_axi_rvalid,
      Q(29 downto 0) => \^bram_addr_a\(31 downto 2),
      SR(0) => bram_rst_a,
      axi_bvalid_int_reg => s_axi_bvalid,
      bram_en_a => bram_en_a,
      bram_rddata_a(38 downto 7) => bram_rddata_a(39 downto 8),
      bram_rddata_a(6 downto 0) => bram_rddata_a(6 downto 0),
      bram_we_a(0) => \^bram_we_a\(4),
      bram_wrdata_a(38 downto 7) => \^bram_wrdata_a\(39 downto 8),
      bram_wrdata_a(6 downto 0) => \^bram_wrdata_a\(6 downto 0),
      ecc_interrupt => ecc_interrupt,
      ecc_ue => ecc_ue,
      ongoing_write_reg => s_axi_ctrl_bvalid,
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(29 downto 0) => s_axi_araddr(31 downto 2),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(12 downto 0) => s_axi_arid(12 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(31 downto 2),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(12 downto 0) => s_axi_awid(12 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(12 downto 0) => s_axi_bid(12 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(9 downto 2),
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(9 downto 2),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(12 downto 0) => s_axi_rid(12 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_bram_tmr_ecc_axi_bram_ctrl_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 4 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 39 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_bram_tmr_ecc_axi_bram_ctrl_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0 : entity is "bd_bram_ecc_axi_bram_ctrl_2_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_bram_tmr_ecc_axi_bram_ctrl_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_bram_tmr_ecc_axi_bram_ctrl_1_0 : entity is "axi_bram_ctrl,Vivado 2023.2";
end bd_bram_tmr_ecc_axi_bram_ctrl_1_0;

architecture STRUCTURE of bd_bram_tmr_ecc_axi_bram_ctrl_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^bram_wrdata_a\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_a_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_bram_wrdata_a_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 12;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 1;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 1;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 4096;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of U0 : label is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of U0 : label is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 13;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of bram_en_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of bram_rst_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_rst_a : signal is "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 16384, MEM_WIDTH 40, MEM_ECC ECCH32-7, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of ecc_interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPTIF INTERRUPT";
  attribute x_interface_parameter of ecc_interrupt : signal is "XIL_INTERFACENAME INTERRUPTIF, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY";
  attribute x_interface_info of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID";
  attribute x_interface_info of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY";
  attribute x_interface_info of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID";
  attribute x_interface_parameter of s_axi_ctrl_awvalid : signal is "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY";
  attribute x_interface_info of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID";
  attribute x_interface_info of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY";
  attribute x_interface_info of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID";
  attribute x_interface_info of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY";
  attribute x_interface_info of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of bram_addr_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of bram_rddata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of bram_we_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of bram_wrdata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 13, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR";
  attribute x_interface_info of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR";
  attribute x_interface_info of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP";
  attribute x_interface_info of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA";
  attribute x_interface_info of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP";
  attribute x_interface_info of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  bram_addr_a(31 downto 2) <= \^bram_addr_a\(31 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_wrdata_a(39 downto 8) <= \^bram_wrdata_a\(39 downto 8);
  bram_wrdata_a(7) <= \<const0>\;
  bram_wrdata_a(6 downto 0) <= \^bram_wrdata_a\(6 downto 0);
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.bd_bram_tmr_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl
     port map (
      bram_addr_a(31 downto 2) => \^bram_addr_a\(31 downto 2),
      bram_addr_a(1 downto 0) => NLW_U0_bram_addr_a_UNCONNECTED(1 downto 0),
      bram_addr_b(31 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(31 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(39 downto 8) => bram_rddata_a(39 downto 8),
      bram_rddata_a(7) => '0',
      bram_rddata_a(6 downto 0) => bram_rddata_a(6 downto 0),
      bram_rddata_b(39 downto 0) => B"0000000000000000000000000000000000000000",
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(4 downto 0) => bram_we_a(4 downto 0),
      bram_we_b(4 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(4 downto 0),
      bram_wrdata_a(39 downto 8) => \^bram_wrdata_a\(39 downto 8),
      bram_wrdata_a(7) => NLW_U0_bram_wrdata_a_UNCONNECTED(7),
      bram_wrdata_a(6 downto 0) => \^bram_wrdata_a\(6 downto 0),
      bram_wrdata_b(39 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(39 downto 0),
      ecc_interrupt => ecc_interrupt,
      ecc_ue => ecc_ue,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 2) => s_axi_araddr(31 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(12 downto 0) => s_axi_arid(12 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 2) => s_axi_awaddr(31 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(12 downto 0) => s_axi_awid(12 downto 0),
      s_axi_awlen(7 downto 4) => B"0000",
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(12 downto 0) => s_axi_bid(12 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 10) => B"0000000000000000000000",
      s_axi_ctrl_araddr(9 downto 2) => s_axi_ctrl_araddr(9 downto 2),
      s_axi_ctrl_araddr(1 downto 0) => B"00",
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(31 downto 10) => B"0000000000000000000000",
      s_axi_ctrl_awaddr(9 downto 2) => s_axi_ctrl_awaddr(9 downto 2),
      s_axi_ctrl_awaddr(1 downto 0) => B"00",
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(31 downto 8) => B"000000000000000000000000",
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wready => s_axi_ctrl_wready,
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(12 downto 0) => s_axi_rid(12 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
