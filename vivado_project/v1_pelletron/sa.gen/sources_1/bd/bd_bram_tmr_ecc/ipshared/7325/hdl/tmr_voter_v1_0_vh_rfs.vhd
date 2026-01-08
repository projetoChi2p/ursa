-------------------------------------------------------------------------------
-- temporal_bit.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        temporal_bit.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              temporal_bit
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2021-12-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity temporal_bit is
  generic(
    C_TEMPORAL_DEPTH : natural   := 2;
    C_RESET_VALUE    : std_logic := '0');
  port(
    Clk      : in  std_logic;
    Rst      : in  std_logic;
    Nominal  : in  std_logic;
    Temporal : out std_logic);
end entity temporal_bit;

architecture IMP of temporal_bit is
begin

  -- Generate synchronizer DFFs
  Multi_Temporal : if C_TEMPORAL_DEPTH > 1 generate
    signal temporal_flops : std_logic_vector(1 to C_TEMPORAL_DEPTH) := (others => C_RESET_VALUE);
  begin
    
    Temporal_DFFs : process(Clk)
    begin
      if Clk'event and Clk = '1' then
        if Rst = '1' then
          temporal_flops <= (temporal_flops'range  => C_RESET_VALUE); 
        else
          for I in C_TEMPORAL_DEPTH downto 2 loop
            temporal_flops(I) <= temporal_flops(I-1);
          end loop;
          temporal_flops(1) <= Nominal;
        end if;
      end if;
    end process;

    Temporal <= temporal_flops(C_TEMPORAL_DEPTH);
    
  end generate Multi_Temporal;

  Single_Temporal : if C_TEMPORAL_DEPTH = 1 generate
  begin
    
    Temporal_DFF : process(Clk)
    begin
      if Clk'event and Clk = '1' then
        if Rst = '1' then
          Temporal <= C_RESET_VALUE; 
        else
          Temporal <= Nominal;
        end if;
      end if;
    end process;
    
  end generate Single_Temporal;

  Null_Temporal : if C_TEMPORAL_DEPTH = 0 generate
  begin
    
     Temporal <= Nominal;
    
  end generate Null_Temporal;

end architecture IMP;


-------------------------------------------------------------------------------
-- temporal_vec.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        temporal_vec.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              temporal_vec
--                 temporal_bit
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2021-12-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity temporal_vec is
  generic(
    C_TEMPORAL_DEPTH : natural   := 2;
    C_WIDTH          : natural;
    C_RESET_VALUE    : std_logic := '0');
  port(
    Clk      : in  std_logic;
    Rst      : in  std_logic;
    Nominal  : in  std_logic_vector(0 to C_WIDTH-1);
    Temporal : out std_logic_vector(0 to C_WIDTH-1));
end entity temporal_vec;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.temporal_bit;

architecture IMP of temporal_vec is

  component temporal_bit is
  generic(
    C_TEMPORAL_DEPTH : natural   := 2;
    C_RESET_VALUE    : std_logic := '0');
  port(
    Clk      : in  std_logic;
    Rst      : in  std_logic;
    Nominal  : in  std_logic;
    Temporal : out std_logic);
  end component temporal_bit;

begin

  temporal_bits: for I in 0 to C_WIDTH-1 generate
  begin
    
    temporal_bit_i : temporal_bit
      generic map(
        C_TEMPORAL_DEPTH => C_TEMPORAL_DEPTH,
        C_RESET_VALUE    => C_RESET_VALUE)
      port map (
        Clk      => Clk,
        Rst      => Rst,
        Nominal  => Nominal(I),
        Temporal => Temporal(I));
    
  end generate temporal_bits;  

end architecture IMP;


-------------------------------------------------------------------------------
-- voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              voter.vhd
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Voter is
  generic (
    C_WIDTH           : integer;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable : in std_logic_vector(3 downto 0);
    Vote1       : in  std_logic_vector(C_WIDTH-1 downto 0);
    Vote2       : in  std_logic_vector(C_WIDTH-1 downto 0);
    Vote3       : in  std_logic_vector(C_WIDTH-1 downto 0);
    Voted       : out std_logic_vector(C_WIDTH-1 downto 0));
end entity Voter;

architecture IMP of Voter is

begin

  voter_g : for I in C_WIDTH-1 downto 0 generate
  begin

    no_tmr_disable_g: if (C_USE_TMR_DISABLE = 0) generate
    begin
      Voted(I) <= (Vote1(I) and Vote2(I)) or
                  (Vote1(I) and Vote3(I)) or
                  (Vote2(I) and Vote3(I));
    end generate;

    tmr_disable_g: if (C_USE_TMR_DISABLE = 1) generate
    begin
      Voted(I) <= (Vote1(I) and TMR_Disable(0)) or
                  (Vote1(I) and Vote2(I) and not TMR_Disable(1)) or
                  (Vote1(I) and Vote3(I) and not TMR_Disable(2)) or
                  (Vote2(I) and Vote3(I) and not TMR_Disable(3));
    end generate;

  end generate;
end architecture IMP;


-------------------------------------------------------------------------------
-- lmb_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        lmb_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              lmb_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.voter;

entity lmb_voter is
  generic (
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable      : in std_logic_vector(3 downto 0);
    -- LMB #1
    LMB1_ABus        : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB1_WriteDBus   : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB1_AddrStrobe  : in  std_logic;
    LMB1_ReadStrobe  : in  std_logic;
    LMB1_WriteStrobe : in  std_logic;
    LMB1_BE          : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl1_DBus         : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl1_Ready        : out std_logic;
    Sl1_Wait         : out std_logic;
    Sl1_UE           : out std_logic;
    Sl1_CE           : out std_logic;
    -- LMB #2
    LMB2_ABus        : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB2_WriteDBus   : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB2_AddrStrobe  : in  std_logic;
    LMB2_ReadStrobe  : in  std_logic;
    LMB2_WriteStrobe : in  std_logic;
    LMB2_BE          : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl2_DBus         : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl2_Ready        : out std_logic;
    Sl2_Wait         : out std_logic;
    Sl2_UE           : out std_logic;
    Sl2_CE           : out std_logic;
    -- LMB #3
    LMB3_ABus        : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB3_WriteDBus   : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB3_AddrStrobe  : in  std_logic;
    LMB3_ReadStrobe  : in  std_logic;
    LMB3_WriteStrobe : in  std_logic;
    LMB3_BE          : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl3_DBus         : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl3_Ready        : out std_logic;
    Sl3_Wait         : out std_logic;
    Sl3_UE           : out std_logic;
    Sl3_CE           : out std_logic;
    -- LMB Voted
    LMB_ABus         : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB_WriteDBus    : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB_AddrStrobe   : out std_logic;
    LMB_ReadStrobe   : out std_logic;
    LMB_WriteStrobe  : out std_logic;
    LMB_BE           : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl_DBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl_Ready         : in  std_logic;
    Sl_Wait          : in  std_logic;
    Sl_UE            : in  std_logic;
    Sl_CE            : in  std_logic);
end entity lmb_voter;

architecture imp of lmb_voter is

  -- Positions for signals used in voting
  subtype  LMB_ABus_Pos       is natural range 0 to LMB_ABus'length-1;
  subtype  LMB_WriteDBus_Pos  is natural range LMB_ABus_Pos'high+1 to LMB_ABus_Pos'high+LMB_WriteDBus'length;
  constant LMB_AddrStrobe_Pos  : natural := LMB_WriteDBus_Pos'high+1;
  constant LMB_ReadStrobe_Pos  : natural := LMB_AddrStrobe_Pos+1;
  constant LMB_WriteStrobe_Pos : natural := LMB_ReadStrobe_Pos+1;
  subtype  LMB_BE_Pos         is natural range LMB_WriteStrobe_Pos+1 to LMB_WriteStrobe_Pos+LMB_BE'length;
  constant C_WIDTH             : natural := LMB_BE_Pos'high+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- LMB #1
    vote1(LMB_ABus_Pos)        <= LMB1_ABus;
    vote1(LMB_WriteDBus_Pos)   <= LMB1_WriteDBus;
    vote1(LMB_AddrStrobe_Pos)  <= LMB1_AddrStrobe;
    vote1(LMB_ReadStrobe_Pos)  <= LMB1_ReadStrobe;
    vote1(LMB_WriteStrobe_Pos) <= LMB1_WriteStrobe;
    vote1(LMB_BE_Pos)          <= LMB1_BE;
    Sl1_DBus                   <= Sl_DBus;
    Sl1_Ready                  <= Sl_Ready;
    Sl1_Wait                   <= Sl_Wait;
    Sl1_UE                     <= Sl_UE;
    Sl1_CE                     <= Sl_CE;
    -- BRAM #2
    vote2(LMB_ABus_Pos)        <= LMB2_ABus;
    vote2(LMB_WriteDBus_Pos)   <= LMB2_WriteDBus;
    vote2(LMB_AddrStrobe_Pos)  <= LMB2_AddrStrobe;
    vote2(LMB_ReadStrobe_Pos)  <= LMB2_ReadStrobe;
    vote2(LMB_WriteStrobe_Pos) <= LMB2_WriteStrobe;
    vote2(LMB_BE_Pos)          <= LMB3_BE;
    Sl2_DBus                   <= Sl_DBus;
    Sl2_Ready                  <= Sl_Ready;
    Sl2_Wait                   <= Sl_Wait;
    Sl2_UE                     <= Sl_UE;
    Sl2_CE                     <= Sl_CE;
    -- BRAM #3
    vote3(LMB_ABus_Pos)        <= LMB3_ABus;
    vote3(LMB_WriteDBus_Pos)   <= LMB3_WriteDBus;
    vote3(LMB_AddrStrobe_Pos)  <= LMB3_AddrStrobe;
    vote3(LMB_ReadStrobe_Pos)  <= LMB3_ReadStrobe;
    vote3(LMB_WriteStrobe_Pos) <= LMB3_WriteStrobe;
    vote3(LMB_BE_Pos)          <= LMB3_BE;
    Sl3_DBus                   <= Sl_DBus;
    Sl3_Ready                  <= Sl_Ready;
    Sl3_Wait                   <= Sl_Wait;
    Sl3_UE                     <= Sl_UE;
    Sl3_CE                     <= Sl_CE;
    -- BRAM Voted
    LMB_ABus        <= voted(LMB_ABus_Pos);
    LMB_WriteDBus   <= voted(LMB_WriteDBus_Pos);
    LMB_AddrStrobe  <= voted(LMB_AddrStrobe_Pos);
    LMB_ReadStrobe  <= voted(LMB_ReadStrobe_Pos);
    LMB_WriteStrobe <= voted(LMB_WriteStrobe_Pos);
    LMB_BE          <= voted(LMB_BE_Pos);
    --Sl_DBus
    --Sl_Ready
    --Sl_Wait
    --Sl_UE
    --Sl_CE
    --BRAM_Din

end architecture imp;


-------------------------------------------------------------------------------
-- s_lmb_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_lmb_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_lmb_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.voter;

entity s_lmb_voter is
  generic (
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable      : in std_logic_vector(3 downto 0);
    -- S_LMB #1
    S_LMB1_ABus        : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB1_WriteDBus   : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB1_AddrStrobe  : out std_logic;
    S_LMB1_ReadStrobe  : out std_logic;
    S_LMB1_WriteStrobe : out std_logic;
    S_LMB1_BE          : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl1_DBus         : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl1_Ready        : in  std_logic;
    S_Sl1_Wait         : in  std_logic;
    S_Sl1_UE           : in  std_logic;
    S_Sl1_CE           : in  std_logic;
    -- S_LMB #2
    S_LMB2_ABus        : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB2_WriteDBus   : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB2_AddrStrobe  : out std_logic;
    S_LMB2_ReadStrobe  : out std_logic;
    S_LMB2_WriteStrobe : out std_logic;
    S_LMB2_BE          : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl2_DBus         : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl2_Ready        : in  std_logic;
    S_Sl2_Wait         : in  std_logic;
    S_Sl2_UE           : in  std_logic;
    S_Sl2_CE           : in  std_logic;
    -- S_LMB #3
    S_LMB3_ABus        : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB3_WriteDBus   : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB3_AddrStrobe  : out std_logic;
    S_LMB3_ReadStrobe  : out std_logic;
    S_LMB3_WriteStrobe : out std_logic;
    S_LMB3_BE          : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl3_DBus         : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl3_Ready        : in  std_logic;
    S_Sl3_Wait         : in  std_logic;
    S_Sl3_UE           : in  std_logic;
    S_Sl3_CE           : in  std_logic;
    -- S_LMB Voted
    S_LMB_ABus         : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB_WriteDBus    : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB_AddrStrobe   : in  std_logic;
    S_LMB_ReadStrobe   : in  std_logic;
    S_LMB_WriteStrobe  : in  std_logic;
    S_LMB_BE           : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl_DBus          : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl_Ready         : out std_logic;
    S_Sl_Wait          : out std_logic;
    S_Sl_UE            : out std_logic;
    S_Sl_CE            : out std_logic);
end entity s_lmb_voter;

architecture imp of s_lmb_voter is

  -- Positions for signals used in voting
  subtype  S_LMB_ReadDBus_Pos  is natural range 0 to S_Sl1_DBus'length-1;
  constant S_LMB_Ready_Pos      : natural := S_LMB_ReadDBus_Pos'high+1;
  constant S_LMB_Wait_Pos       : natural := S_LMB_Ready_Pos+1;
  constant S_LMB_UE_Pos         : natural := S_LMB_Wait_Pos+1;
  constant S_LMB_CE_Pos         : natural := S_LMB_UE_Pos+1;
  constant C_WIDTH              : natural := S_LMB_CE_Pos+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- S_LMB #1
    S_LMB1_ABus               <= S_LMB_ABus;
    S_LMB1_WriteDBus          <= S_LMB_WriteDBus;
    S_LMB1_AddrStrobe         <= S_LMB_AddrStrobe;
    S_LMB1_ReadStrobe         <= S_LMB_ReadStrobe;
    S_LMB1_WriteStrobe        <= S_LMB_WriteStrobe;
    S_LMB1_BE                 <= S_LMB_BE;
    vote1(S_LMB_ReadDBus_Pos) <= S_Sl1_DBus;
    vote1(S_LMB_Ready_Pos)    <= S_Sl1_Ready;
    vote1(S_LMB_Wait_Pos)     <= S_Sl1_Wait;
    vote1(S_LMB_UE_Pos)       <= S_Sl1_UE;
    vote1(S_LMB_CE_Pos)       <= S_Sl1_CE;
    -- S_LMB #2
    S_LMB2_ABus               <= S_LMB_ABus;
    S_LMB2_WriteDBus          <= S_LMB_WriteDBus;
    S_LMB2_AddrStrobe         <= S_LMB_AddrStrobe;
    S_LMB2_ReadStrobe         <= S_LMB_ReadStrobe;
    S_LMB2_WriteStrobe        <= S_LMB_WriteStrobe;
    S_LMB2_BE                 <= S_LMB_BE;
    vote2(S_LMB_ReadDBus_Pos) <= S_Sl2_DBus;
    vote2(S_LMB_Ready_Pos)    <= S_Sl2_Ready;
    vote2(S_LMB_Wait_Pos)     <= S_Sl2_Wait;
    vote2(S_LMB_UE_Pos)       <= S_Sl2_UE;
    vote2(S_LMB_CE_Pos)       <= S_Sl2_CE;
    -- S_LMB #3
    S_LMB3_ABus               <= S_LMB_ABus;
    S_LMB3_WriteDBus          <= S_LMB_WriteDBus;
    S_LMB3_AddrStrobe         <= S_LMB_AddrStrobe;
    S_LMB3_ReadStrobe         <= S_LMB_ReadStrobe;
    S_LMB3_WriteStrobe        <= S_LMB_WriteStrobe;
    S_LMB3_BE                 <= S_LMB_BE;
    vote3(S_LMB_ReadDBus_Pos) <= S_Sl3_DBus;
    vote3(S_LMB_Ready_Pos)    <= S_Sl3_Ready;
    vote3(S_LMB_Wait_Pos)     <= S_Sl3_Wait;
    vote3(S_LMB_UE_Pos)       <= S_Sl3_UE;
    vote3(S_LMB_CE_Pos)       <= S_Sl3_CE;
    -- S_LMB Voted
    -- S_LMB_ABus
    -- S_LMB_WriteDBus
    -- S_LMB_AddrStrobe
    -- S_LMB_ReadStrobe
    -- S_LMB_WriteStrobe
    -- S_LMB_BE
    S_Sl_DBus  <= voted(S_LMB_ReadDBus_Pos);
    S_Sl_Ready <= voted(S_LMB_Ready_Pos);
    S_Sl_Wait  <= voted(S_LMB_Wait_Pos);
    S_Sl_UE    <= voted(S_LMB_UE_Pos);
    S_Sl_CE    <= voted(S_LMB_CE_Pos);

end architecture imp;


-------------------------------------------------------------------------------
-- bram_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        bram_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              bram_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity bram_voter is
  generic (
    C_ECC             : integer := 0;
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable : in std_logic_vector(3 downto 0);
    Clk         : in  std_logic;
    -- BRAM #1
    BRAM1_Rst  : in  std_logic;
    BRAM1_Clk  : in  std_logic;
    BRAM1_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM1_EN   : in  std_logic;
    BRAM1_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM1_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM1_Din  : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #2
    BRAM2_Rst  : in  std_logic;
    BRAM2_Clk  : in  std_logic;
    BRAM2_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM2_EN   : in  std_logic;
    BRAM2_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM2_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM2_Din  : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #3
    BRAM3_Rst  : in  std_logic;
    BRAM3_Clk  : in  std_logic;
    BRAM3_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM3_EN   : in  std_logic;
    BRAM3_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM3_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM3_Din  : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM Voted
    BRAM_Rst   : out std_logic;
    BRAM_Clk   : out std_logic;
    BRAM_Addr  : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM_EN    : out std_logic;
    BRAM_WE    : out std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM_Dout  : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM_Din   : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1));
end entity bram_voter;

architecture imp  of bram_voter is

  -- Positions for signals used in voting and lockstep
  constant BRAM_Rst_Pos          : natural :=       0;
  subtype  BRAM_Addr_Pos           is natural range BRAM_Rst_Pos+1 to BRAM_Rst_Pos+BRAM_Addr'length;
  constant BRAM_EN_Pos           : natural :=       BRAM_Addr_Pos'high+1;
  subtype  BRAM_WE_Pos             is natural range BRAM_EN_Pos+1 to BRAM_EN_Pos+BRAM_WE'length;
  subtype  BRAM_Dout_Pos           is natural range BRAM_WE_Pos'high+1 to BRAM_WE_Pos'high+BRAM_Dout'length;
  constant C_WIDTH               : natural :=       BRAM_Dout_Pos'high+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- BRAM #1
    vote1(BRAM_Rst_Pos)  <= BRAM1_Rst;
    vote1(BRAM_Addr_Pos) <= BRAM1_Addr;
    vote1(BRAM_EN_Pos)   <= BRAM1_EN;
    vote1(BRAM_WE_Pos)   <= BRAM1_WE;
    vote1(BRAM_Dout_Pos) <= BRAM1_Dout;
    BRAM1_Din            <= BRAM_Din;
    -- BRAM #2
    vote2(BRAM_Rst_Pos)  <= BRAM2_Rst;
    vote2(BRAM_Addr_Pos) <= BRAM2_Addr;
    vote2(BRAM_EN_Pos)   <= BRAM2_EN;
    vote2(BRAM_WE_Pos)   <= BRAM2_WE;
    vote2(BRAM_Dout_Pos) <= BRAM2_Dout;
    BRAM2_Din            <= BRAM_Din;
    -- BRAM #3
    vote3(BRAM_Rst_Pos)  <= BRAM3_Rst;
    vote3(BRAM_Addr_Pos) <= BRAM3_Addr;
    vote3(BRAM_EN_Pos)   <= BRAM3_EN;
    vote3(BRAM_WE_Pos)   <= BRAM3_WE;
    vote3(BRAM_Dout_Pos) <= BRAM3_Dout;
    BRAM3_Din            <= BRAM_Din;
    -- BRAM Voted
    BRAM_Rst  <= voted(BRAM_Rst_Pos);
    BRAM_Clk  <= Clk;
    BRAM_Addr <= voted(BRAM_Addr_Pos);
    BRAM_EN   <= voted(BRAM_EN_Pos);
    BRAM_WE   <= voted(BRAM_WE_Pos);
    BRAM_Dout <= voted(BRAM_Dout_Pos);
    --BRAM_Din;

end architecture imp ;


-------------------------------------------------------------------------------
-- m_bram_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        m_bram_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              m_bram_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity m_bram_voter is
  generic (
    C_ECC             : integer := 0;
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable  : in std_logic_vector(3 downto 0);
    -- M_BRAM1
    M_BRAM1_Rst  : out std_logic;
    M_BRAM1_Clk  : out std_logic;
    M_BRAM1_Addr : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM1_EN   : out std_logic;
    M_BRAM1_WE   : out std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM1_Dout : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM1_Din  : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM2
    M_BRAM2_Rst  : in  std_logic;
    M_BRAM2_Clk  : in  std_logic;
    M_BRAM2_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM2_EN   : in  std_logic;
    M_BRAM2_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM2_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM2_Din  : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM3
    M_BRAM3_Rst  : in  std_logic;
    M_BRAM3_Clk  : in  std_logic;
    M_BRAM3_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM3_EN   : in  std_logic;
    M_BRAM3_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM3_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM3_Din  : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM Voted, BRAM slave interface
    S_BRAM_Rst   : in  std_logic;
    S_BRAM_Clk   : in  std_logic;
    S_BRAM_Addr  : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_BRAM_EN    : in  std_logic;
    S_BRAM_WE    : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    S_BRAM_Dout  : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    S_BRAM_Din   : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1));
end entity m_bram_voter;

architecture imp  of m_bram_voter is

  -- Positions for signals used in voting and lockstep
  subtype  S_BRAM_Din_Pos            is natural range 0 to S_BRAM_Din'length-1;
  constant C_WIDTH               : natural :=       S_BRAM_Din_Pos'high+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1 => vote1,
        Vote2 => vote2,
        Vote3 => vote3,
        Voted => voted);

    -- M_BRAM #1
    vote1(S_BRAM_Din_Pos) <= M_BRAM1_Din;
    -- M_BRAM #2
    vote2(S_BRAM_Din_Pos) <= M_BRAM2_Din;
    -- M_BRAM #3
    vote3(S_BRAM_Din_Pos) <= M_BRAM3_Din;
    -- S_BRAM Voted
    M_BRAM1_Rst  <= S_BRAM_Rst;
    M_BRAM1_Clk  <= S_BRAM_Clk;
    M_BRAM1_Addr <= S_BRAM_Addr;
    M_BRAM1_EN   <= S_BRAM_EN;
    M_BRAM1_WE   <= S_BRAM_WE;
    M_BRAM1_Dout <= S_BRAM_Dout;
    S_BRAM_Din   <= voted(S_BRAM_Din_Pos);

end architecture imp ;


-------------------------------------------------------------------------------
-- axi_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axi_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              axi_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity axi_voter is
  generic (
    C_INTERFACE        : integer := 0;
    C_AXI_ID_WIDTH     : integer := 1;
    C_AXI_DATA_WIDTH   : integer := 32;
    C_AXI_ADDR_WIDTH   : integer := 32;
    C_AXI_AWUSER_WIDTH : integer := 5;
    C_AXI_ARUSER_WIDTH : integer := 5;
    C_AXI_WUSER_WIDTH  : integer := 1;
    C_AXI_RUSER_WIDTH  : integer := 1;
    C_AXI_BUSER_WIDTH  : integer := 1;
    C_USE_TMR_DISABLE  : integer := 0);
  port (
    TMR_Disable      : in std_logic_vector(3 downto 0);
    -- AXI #1
    S_AXI1_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_AWADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_AWLEN    : in  std_logic_vector(7 downto 0);
    S_AXI1_AWSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBURST  : in  std_logic_vector(1 downto 0);
    S_AXI1_AWLOCK   : in  std_logic;
    S_AXI1_AWCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI1_AWPROT   : in  std_logic_vector(2 downto 0);
    S_AXI1_AWQOS    : in  std_logic_vector(3 downto 0);
    S_AXI1_AWVALID  : in  std_logic;
    S_AXI1_AWREADY  : out std_logic;
    S_AXI1_AWUSER   : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI1_AWDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_AWSNOOP  : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI1_AWBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_WDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_WSTRB    : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI1_WLAST    : in  std_logic;
    S_AXI1_WVALID   : in  std_logic;
    S_AXI1_WREADY   : out std_logic;
    S_AXI1_WUSER    : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI1_BID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);  -- unused
    S_AXI1_BRESP    : out std_logic_vector(1 downto 0);
    S_AXI1_BVALID   : out std_logic;
    S_AXI1_BREADY   : in  std_logic;
    S_AXI1_BUSER    : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI1_WACK     : in  std_logic;                                         -- For ACE
    S_AXI1_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_ARADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ARLEN    : in  std_logic_vector(7 downto 0);
    S_AXI1_ARSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI1_ARBURST  : in  std_logic_vector(1 downto 0);
    S_AXI1_ARLOCK   : in  std_logic;
    S_AXI1_ARCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI1_ARPROT   : in  std_logic_vector(2 downto 0);
    S_AXI1_ARQOS    : in  std_logic_vector(3 downto 0);
    S_AXI1_ARVALID  : in  std_logic;
    S_AXI1_ARREADY  : out std_logic;
    S_AXI1_ARUSER   : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI1_ARDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_ARSNOOP  : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI1_ARBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_RID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    S_AXI1_RDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_RRESP    : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) + 1 downto 0);
    S_AXI1_RLAST    : out std_logic;
    S_AXI1_RVALID   : out std_logic;
    S_AXI1_RREADY   : in  std_logic;
    S_AXI1_RUSER    : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI1_RACK     : in  std_logic;                                         -- For ACE
    S_AXI1_ACVALID  : out std_logic;                                         -- For ACE
    S_AXI1_ACADDR   : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    S_AXI1_ACSNOOP  : out std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI1_ACPROT   : out std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI1_ACREADY  : in  std_logic;                                         -- For ACE
    S_AXI1_CRVALID  : in  std_logic;                                         -- For ACE
    S_AXI1_CRRESP   : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI1_CRREADY  : out std_logic;                                         -- For ACE
    S_AXI1_CDVALID  : in  std_logic;                                         -- For ACE
    S_AXI1_CDDATA   : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI1_CDLAST   : in  std_logic;                                         -- For ACE
    S_AXI1_CDREADY  : out std_logic;                                         -- For ACE
    -- AXI #2
    S_AXI2_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_AWADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_AWLEN    : in  std_logic_vector(7 downto 0);
    S_AXI2_AWSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBURST  : in  std_logic_vector(1 downto 0);
    S_AXI2_AWLOCK   : in  std_logic;
    S_AXI2_AWCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI2_AWPROT   : in  std_logic_vector(2 downto 0);
    S_AXI2_AWQOS    : in  std_logic_vector(3 downto 0);
    S_AXI2_AWVALID  : in  std_logic;
    S_AXI2_AWREADY  : out std_logic;
    S_AXI2_AWUSER   : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI2_AWDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_AWSNOOP  : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI2_AWBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_WDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_WSTRB    : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI2_WLAST    : in  std_logic;
    S_AXI2_WVALID   : in  std_logic;
    S_AXI2_WREADY   : out std_logic;
    S_AXI2_WUSER    : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI2_BID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    S_AXI2_BRESP    : out std_logic_vector(1 downto 0);
    S_AXI2_BVALID   : out std_logic;
    S_AXI2_BREADY   : in  std_logic;
    S_AXI2_BUSER    : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI2_WACK     : in  std_logic;                                         -- For ACE
    S_AXI2_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_ARADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ARLEN    : in  std_logic_vector(7 downto 0);
    S_AXI2_ARSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI2_ARBURST  : in  std_logic_vector(1 downto 0);
    S_AXI2_ARLOCK   : in  std_logic;
    S_AXI2_ARCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI2_ARPROT   : in  std_logic_vector(2 downto 0);
    S_AXI2_ARQOS    : in  std_logic_vector(3 downto 0);
    S_AXI2_ARVALID  : in  std_logic;
    S_AXI2_ARREADY  : out std_logic;
    S_AXI2_ARUSER   : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI2_ARDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_ARSNOOP  : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI2_ARBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_RID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    S_AXI2_RDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_RRESP    : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) + 1 downto 0);
    S_AXI2_RLAST    : out std_logic;
    S_AXI2_RVALID   : out std_logic;
    S_AXI2_RREADY   : in  std_logic;
    S_AXI2_RUSER    : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI2_RACK     : in  std_logic;                                         -- For ACE
    S_AXI2_ACVALID  : out std_logic;                                         -- For ACE
    S_AXI2_ACADDR   : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    S_AXI2_ACSNOOP  : out std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI2_ACPROT   : out std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI2_ACREADY  : in  std_logic;                                         -- For ACE
    S_AXI2_CRVALID  : in  std_logic;                                         -- For ACE
    S_AXI2_CRRESP   : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI2_CRREADY  : out std_logic;                                         -- For ACE
    S_AXI2_CDVALID  : in  std_logic;                                         -- For ACE
    S_AXI2_CDDATA   : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI2_CDLAST   : in  std_logic;                                         -- For ACE
    S_AXI2_CDREADY  : out std_logic;                                         -- For ACE
    -- AXI #3
    S_AXI3_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_AWADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_AWLEN    : in  std_logic_vector(7 downto 0);
    S_AXI3_AWSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI3_AWBURST  : in  std_logic_vector(1 downto 0);
    S_AXI3_AWLOCK   : in  std_logic;
    S_AXI3_AWCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI3_AWPROT   : in  std_logic_vector(2 downto 0);
    S_AXI3_AWQOS    : in  std_logic_vector(3 downto 0);
    S_AXI3_AWVALID  : in  std_logic;
    S_AXI3_AWREADY  : out std_logic;
    S_AXI3_AWDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI3_AWSNOOP  : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI3_AWBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI3_AWUSER   : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI3_WDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_WSTRB    : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI3_WLAST    : in  std_logic;
    S_AXI3_WVALID   : in  std_logic;
    S_AXI3_WREADY   : out std_logic;
    S_AXI3_WUSER    : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI3_BID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    S_AXI3_BRESP    : out std_logic_vector(1 downto 0);
    S_AXI3_BVALID   : out std_logic;
    S_AXI3_BREADY   : in  std_logic;
    S_AXI3_BUSER    : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI3_WACK     : in  std_logic;                                         -- For ACE
    S_AXI3_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_ARADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_ARLEN    : in  std_logic_vector(7 downto 0);
    S_AXI3_ARSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI3_ARBURST  : in  std_logic_vector(1 downto 0);
    S_AXI3_ARLOCK   : in  std_logic;
    S_AXI3_ARCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI3_ARPROT   : in  std_logic_vector(2 downto 0);
    S_AXI3_ARQOS    : in  std_logic_vector(3 downto 0);
    S_AXI3_ARVALID  : in  std_logic;
    S_AXI3_ARREADY  : out std_logic;
    S_AXI3_ARUSER   : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI3_ARDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI3_ARSNOOP  : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI3_ARBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI3_RID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    S_AXI3_RDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_RRESP    : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) + 1 downto 0);
    S_AXI3_RLAST    : out std_logic;
    S_AXI3_RVALID   : out std_logic;
    S_AXI3_RREADY   : in  std_logic;
    S_AXI3_RUSER    : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI3_RACK     : in  std_logic;                                         -- For ACE
    S_AXI3_ACVALID  : out std_logic;                                         -- For ACE
    S_AXI3_ACADDR   : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    S_AXI3_ACSNOOP  : out std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI3_ACPROT   : out std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI3_ACREADY  : in  std_logic;                                         -- For ACE
    S_AXI3_CRVALID  : in  std_logic;                                         -- For ACE
    S_AXI3_CRRESP   : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI3_CRREADY  : out std_logic;                                         -- For ACE
    S_AXI3_CDVALID  : in  std_logic;                                         -- For ACE
    S_AXI3_CDDATA   : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI3_CDLAST   : in  std_logic;                                         -- For ACE
    S_AXI3_CDREADY  : out std_logic;                                         -- For ACE
    -- AXI Voted
    M_AXI_AWID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN     : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE    : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST   : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK    : out std_logic;
    M_AXI_AWCACHE   : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT    : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS     : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID   : out std_logic;
    M_AXI_AWREADY   : in  std_logic;
    M_AXI_AWUSER    : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI_AWDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI_AWSNOOP   : out std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI_AWBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI_WDATA     : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB     : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST     : out std_logic;
    M_AXI_WVALID    : out std_logic;
    M_AXI_WREADY    : in  std_logic;
    M_AXI_WUSER     : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI_BID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    M_AXI_BRESP     : in  std_logic_vector(1 downto 0);
    M_AXI_BVALID    : in  std_logic;
    M_AXI_BREADY    : out std_logic;
    M_AXI_BUSER     : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI_WACK      : out std_logic;                                         -- For ACE
    M_AXI_ARID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN     : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE    : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST   : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK    : out std_logic;
    M_AXI_ARCACHE   : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT    : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS     : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID   : out std_logic;
    M_AXI_ARREADY   : in  std_logic;
    M_AXI_ARUSER    : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI_ARDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI_ARSNOOP   : out std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI_ARBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI_RID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);-- unused
    M_AXI_RDATA     : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP     : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) + 1 downto 0);
    M_AXI_RLAST     : in  std_logic;
    M_AXI_RVALID    : in  std_logic;
    M_AXI_RREADY    : out std_logic;
    M_AXI_RUSER     : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI_RACK      : out std_logic;                                         -- For ACE
    M_AXI_ACVALID   : in  std_logic;                                         -- For ACE
    M_AXI_ACADDR    : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    M_AXI_ACSNOOP   : in  std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI_ACPROT    : in  std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI_ACREADY   : out std_logic;                                         -- For ACE
    M_AXI_CRVALID   : out std_logic;                                         -- For ACE
    M_AXI_CRRESP    : out std_logic_vector(4 downto 0);                      -- For ACE
    M_AXI_CRREADY   : in  std_logic;                                         -- For ACE
    M_AXI_CDVALID   : out std_logic;                                         -- For ACE
    M_AXI_CDDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    M_AXI_CDLAST    : out std_logic;                                         -- For ACE
    M_AXI_CDREADY   : in  std_logic);                                        -- For ACE
end entity axi_voter;

architecture imp of axi_voter is

  -- Positions for signals used in voter
  subtype  AXI_AWID_Pos     is natural range 0 to M_AXI_AWID'length-1;
  subtype  AXI_AWADDR_Pos   is natural range AXI_AWID_Pos'high+1     to AXI_AWID_Pos'high     + M_AXI_AWADDR'length;
  subtype  AXI_AWLEN_Pos    is natural range AXI_AWADDR_Pos'high+1   to AXI_AWADDR_Pos'high   + M_AXI_AWLEN'length;
  subtype  AXI_AWSIZE_Pos   is natural range AXI_AWLEN_Pos'high+1    to AXI_AWLEN_Pos'high    + M_AXI_AWSIZE'length;
  subtype  AXI_AWBURST_Pos  is natural range AXI_AWSIZE_Pos'high+1   to AXI_AWSIZE_Pos'high   + M_AXI_AWBURST'length;
  constant AXI_AWLOCK_Pos    : natural :=    AXI_AWBURST_Pos'high+1;
  subtype  AXI_AWCACHE_Pos  is natural range AXI_AWLOCK_Pos+1        to AXI_AWLOCK_Pos        + M_AXI_AWCACHE'length;
  subtype  AXI_AWPROT_Pos   is natural range AXI_AWCACHE_Pos'high+1  to AXI_AWCACHE_Pos'high  + M_AXI_AWPROT'length;
  subtype  AXI_AWQOS_Pos    is natural range AXI_AWPROT_Pos'high+1   to AXI_AWPROT_Pos'high   + M_AXI_AWQOS'length;
  constant AXI_AWVALID_Pos   : natural :=    AXI_AWQOS_Pos'high+1;
  subtype  AXI_AWUSER_Pos   is natural range AXI_AWVALID_Pos+1       to AXI_AWVALID_Pos       + M_AXI_AWUSER'length;
  subtype  AXI_WDATA_Pos    is natural range AXI_AWUSER_Pos'high+1   to AXI_AWUSER_Pos'high   + M_AXI_WDATA'length;
  subtype  AXI_WSTRB_Pos    is natural range AXI_WDATA_Pos'high+1    to AXI_WDATA_Pos'high    + M_AXI_WSTRB'length;
  constant AXI_WLAST_Pos     : natural :=    AXI_WSTRB_Pos'high+1;
  constant AXI_WVALID_Pos    : natural :=    AXI_WLAST_Pos+1;
  subtype  AXI_WUSER_Pos    is natural range AXI_WVALID_Pos+1        to AXI_WVALID_Pos        + M_AXI_WUSER'length;
  constant AXI_BREADY_Pos    : natural :=    AXI_WUSER_Pos'high+1;
  subtype  AXI_ARID_Pos     is natural range AXI_BREADY_Pos+1        to AXI_BREADY_Pos        + M_AXI_ARID'length;
  subtype  AXI_ARADDR_Pos   is natural range AXI_ARID_Pos'high+1     to AXI_ARID_Pos'high     + M_AXI_ARADDR'length;
  subtype  AXI_ARLEN_Pos    is natural range AXI_ARADDR_Pos'high+1   to AXI_ARADDR_Pos'high   + M_AXI_ARLEN'length;
  subtype  AXI_ARSIZE_Pos   is natural range AXI_ARLEN_Pos'high+1    to AXI_ARLEN_Pos'high    + M_AXI_ARSIZE'length;
  subtype  AXI_ARBURST_Pos  is natural range AXI_ARSIZE_Pos'high+1   to AXI_ARSIZE_Pos'high   + M_AXI_ARBURST'length;
  constant AXI_ARLOCK_Pos    : natural :=    AXI_ARBURST_Pos'high+1;
  subtype  AXI_ARCACHE_Pos  is natural range AXI_ARLOCK_Pos+1        to AXI_ARLOCK_Pos        + M_AXI_ARCACHE'length;
  subtype  AXI_ARPROT_Pos   is natural range AXI_ARCACHE_Pos'high+1  to AXI_ARCACHE_Pos'high  + M_AXI_ARPROT'length;
  subtype  AXI_ARQOS_Pos    is natural range AXI_ARPROT_Pos'high+1   to AXI_ARPROT_Pos'high   + M_AXI_ARQOS'length;
  constant AXI_ARVALID_Pos   : natural :=    AXI_ARQOS_Pos'high+1;
  subtype  AXI_ARUSER_Pos   is natural range AXI_ARVALID_Pos+1       to AXI_ARVALID_Pos       + M_AXI_ARUSER'length;
  constant AXI_RREADY_Pos    : natural :=    AXI_ARUSER_Pos'high+1;
  subtype  AXI_AWDOMAIN_Pos is natural range AXI_RREADY_Pos+1        to AXI_RREADY_Pos        + M_AXI_AWDOMAIN'length;
  subtype  AXI_AWSNOOP_Pos  is natural range AXI_AWDOMAIN_Pos'high+1 to AXI_AWDOMAIN_Pos'high + M_AXI_AWSNOOP'length;
  subtype  AXI_AWBAR_Pos    is natural range AXI_AWSNOOP_Pos'high+1  to AXI_AWSNOOP_Pos'high  + M_AXI_AWBAR'length;
  constant AXI_WACK_Pos      : natural :=    AXI_AWBAR_Pos'high+1;
  subtype  AXI_ARDOMAIN_Pos is natural range AXI_WACK_Pos+1          to AXI_WACK_Pos          + M_AXI_ARDOMAIN'length;
  subtype  AXI_ARSNOOP_Pos  is natural range AXI_ARDOMAIN_Pos'high+1 to AXI_ARDOMAIN_Pos'high + M_AXI_ARSNOOP'length;
  subtype  AXI_ARBAR_Pos    is natural range AXI_ARSNOOP_Pos'high+1  to AXI_ARSNOOP_Pos'high  + M_AXI_ARBAR'length;
  constant AXI_RACK_Pos      : natural :=    AXI_ARBAR_Pos'high+1;
  constant AXI_ACREADY_Pos   : natural :=    AXI_RACK_Pos+1;
  constant AXI_CRVALID_Pos   : natural :=    AXI_ACREADY_Pos+1;
  subtype  AXI_CRRESP_Pos   is natural range AXI_CRVALID_Pos+1       to AXI_CRVALID_Pos        + M_AXI_CRRESP'length;
  constant AXI_CDVALID_Pos   : natural :=    AXI_CRRESP_Pos'high+1;
  subtype  AXI_CDDATA_Pos   is natural range AXI_CDVALID_Pos+1       to AXI_CDVALID_Pos        + M_AXI_CDDATA'length;
  constant AXI_CDLAST_Pos    : natural :=    AXI_CDDATA_Pos'high+1;
  constant C_WIDTH           : natural :=    AXI_CDLAST_Pos+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin  -- architecture imp

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- AXI #1
    vote1(AXI_AWID_Pos)    <= S_AXI1_AWID;
    vote1(AXI_AWADDR_Pos)  <= S_AXI1_AWADDR;
    vote1(AXI_AWLEN_Pos)   <= S_AXI1_AWLEN;
    vote1(AXI_AWSIZE_Pos)  <= S_AXI1_AWSIZE;
    vote1(AXI_AWBURST_Pos) <= S_AXI1_AWBURST;
    vote1(AXI_AWLOCK_Pos)  <= S_AXI1_AWLOCK;
    vote1(AXI_AWCACHE_Pos) <= S_AXI1_AWCACHE;
    vote1(AXI_AWPROT_Pos)  <= S_AXI1_AWPROT;
    vote1(AXI_AWQOS_Pos)   <= S_AXI1_AWQOS;
    vote1(AXI_AWVALID_Pos) <= S_AXI1_AWVALID;
    S_AXI1_AWREADY         <= M_AXI_AWREADY;
    vote1(AXI_AWUSER_Pos)  <= S_AXI1_AWUSER;
    vote1(AXI_AWDOMAIN_Pos)<= S_AXI1_AWDOMAIN;
    vote1(AXI_AWSNOOP_Pos) <= S_AXI1_AWSNOOP;
    vote1(AXI_AWBAR_Pos)   <= S_AXI1_AWBAR;
    vote1(AXI_WDATA_Pos)   <= S_AXI1_WDATA;
    vote1(AXI_WSTRB_Pos)   <= S_AXI1_WSTRB;
    vote1(AXI_WLAST_Pos)   <= S_AXI1_WLAST;
    vote1(AXI_WVALID_Pos)  <= S_AXI1_WVALID;
    S_AXI1_WREADY          <= M_AXI_WREADY;
    vote1(AXI_WUSER_Pos)   <= S_AXI1_WUSER;
    S_AXI1_BID             <= M_AXI_BID;
    S_AXI1_BRESP           <= M_AXI_BRESP;
    S_AXI1_BVALID          <= M_AXI_BVALID;
    vote1(AXI_BREADY_Pos)  <= S_AXI1_BREADY;
    S_AXI1_BUSER           <= M_AXI_BUSER;
    vote1(AXI_WACK_Pos)    <= S_AXI1_WACK;
    vote1(AXI_ARID_Pos)    <= S_AXI1_ARID;
    vote1(AXI_ARADDR_Pos)  <= S_AXI1_ARADDR;
    vote1(AXI_ARLEN_Pos)   <= S_AXI1_ARLEN;
    vote1(AXI_ARSIZE_Pos)  <= S_AXI1_ARSIZE;
    vote1(AXI_ARBURST_Pos) <= S_AXI1_ARBURST;
    vote1(AXI_ARLOCK_Pos)  <= S_AXI1_ARLOCK;
    vote1(AXI_ARCACHE_Pos) <= S_AXI1_ARCACHE;
    vote1(AXI_ARPROT_Pos)  <= S_AXI1_ARPROT;
    vote1(AXI_ARQOS_Pos)   <= S_AXI1_ARQOS;
    vote1(AXI_ARVALID_Pos) <= S_AXI1_ARVALID;
    S_AXI1_ARREADY         <= M_AXI_ARREADY;
    vote1(AXI_ARUSER_Pos)  <= S_AXI1_ARUSER;
    vote1(AXI_ARDOMAIN_Pos)<= S_AXI1_ARDOMAIN;
    vote1(AXI_ARSNOOP_Pos) <= S_AXI1_ARSNOOP;
    vote1(AXI_ARBAR_Pos)   <= S_AXI1_ARBAR;
    S_AXI1_RID             <= M_AXI_RID;
    S_AXI1_RDATA           <= M_AXI_RDATA;
    S_AXI1_RRESP           <= M_AXI_RRESP;
    S_AXI1_RLAST           <= M_AXI_RLAST;
    S_AXI1_RVALID          <= M_AXI_RVALID;
    vote1(AXI_RREADY_Pos)  <= S_AXI1_RREADY;
    S_AXI1_RUSER           <= M_AXI_RUSER;
    vote1(AXI_RACK_Pos)    <= S_AXI1_RACK;
    S_AXI1_ACVALID         <= M_AXI_ACVALID;
    S_AXI1_ACADDR          <= M_AXI_ACADDR;
    S_AXI1_ACSNOOP         <= M_AXI_ACSNOOP;
    S_AXI1_ACPROT          <= M_AXI_ACPROT;
    vote1(AXI_ACREADY_Pos) <= S_AXI1_ACREADY;
    vote1(AXI_CRVALID_Pos) <= S_AXI1_CRVALID;
    vote1(AXI_CRRESP_Pos)  <= S_AXI1_CRRESP;
    S_AXI1_CRREADY         <= M_AXI_CRREADY;
    vote1(AXI_CDVALID_Pos) <= S_AXI1_CDVALID;
    vote1(AXI_CDDATA_Pos)  <= S_AXI1_CDDATA;
    vote1(AXI_CDLAST_Pos)  <= S_AXI1_CDLAST;
    S_AXI1_CDREADY         <= M_AXI_CDREADY;
    -- AXI #2
    vote2(AXI_AWID_Pos)    <= S_AXI2_AWID;
    vote2(AXI_AWADDR_Pos)  <= S_AXI2_AWADDR;
    vote2(AXI_AWLEN_Pos)   <= S_AXI2_AWLEN;
    vote2(AXI_AWSIZE_Pos)  <= S_AXI2_AWSIZE;
    vote2(AXI_AWBURST_Pos) <= S_AXI2_AWBURST;
    vote2(AXI_AWLOCK_Pos)  <= S_AXI2_AWLOCK;
    vote2(AXI_AWCACHE_Pos) <= S_AXI2_AWCACHE;
    vote2(AXI_AWPROT_Pos)  <= S_AXI2_AWPROT;
    vote2(AXI_AWQOS_Pos)   <= S_AXI2_AWQOS;
    vote2(AXI_AWVALID_Pos) <= S_AXI2_AWVALID;
    S_AXI2_AWREADY         <= M_AXI_AWREADY;
    vote2(AXI_AWUSER_Pos)  <= S_AXI2_AWUSER;
    vote2(AXI_AWDOMAIN_Pos)<= S_AXI2_AWDOMAIN;
    vote2(AXI_AWSNOOP_Pos) <= S_AXI2_AWSNOOP;
    vote2(AXI_AWBAR_Pos)   <= S_AXI2_AWBAR;
    vote2(AXI_WDATA_Pos)   <= S_AXI2_WDATA;
    vote2(AXI_WSTRB_Pos)   <= S_AXI2_WSTRB;
    vote2(AXI_WLAST_Pos)   <= S_AXI2_WLAST;
    vote2(AXI_WVALID_Pos)  <= S_AXI2_WVALID;
    S_AXI2_WREADY          <= M_AXI_WREADY;
    vote2(AXI_WUSER_Pos)   <= S_AXI2_WUSER;
    S_AXI2_BID             <= M_AXI_BID;
    S_AXI2_BRESP           <= M_AXI_BRESP;
    S_AXI2_BVALID          <= M_AXI_BVALID;
    vote2(AXI_BREADY_Pos)  <= S_AXI2_BREADY;
    S_AXI2_BUSER           <= M_AXI_BUSER;
    vote2(AXI_WACK_Pos)    <= S_AXI2_WACK;
    vote2(AXI_ARID_Pos)    <= S_AXI2_ARID;
    vote2(AXI_ARADDR_Pos)  <= S_AXI2_ARADDR;
    vote2(AXI_ARLEN_Pos)   <= S_AXI2_ARLEN;
    vote2(AXI_ARSIZE_Pos)  <= S_AXI2_ARSIZE;
    vote2(AXI_ARBURST_Pos) <= S_AXI2_ARBURST;
    vote2(AXI_ARLOCK_Pos)  <= S_AXI2_ARLOCK;
    vote2(AXI_ARCACHE_Pos) <= S_AXI2_ARCACHE;
    vote2(AXI_ARPROT_Pos)  <= S_AXI2_ARPROT;
    vote2(AXI_ARQOS_Pos)   <= S_AXI2_ARQOS;
    vote2(AXI_ARVALID_Pos) <= S_AXI2_ARVALID;
    S_AXI2_ARREADY         <= M_AXI_ARREADY;
    vote2(AXI_ARUSER_Pos)  <= S_AXI2_ARUSER;
    vote2(AXI_ARDOMAIN_Pos)<= S_AXI2_ARDOMAIN;
    vote2(AXI_ARSNOOP_Pos) <= S_AXI2_ARSNOOP;
    vote2(AXI_ARBAR_Pos)   <= S_AXI2_ARBAR;
    S_AXI2_RID             <= M_AXI_RID;
    S_AXI2_RDATA           <= M_AXI_RDATA;
    S_AXI2_RRESP           <= M_AXI_RRESP;
    S_AXI2_RLAST           <= M_AXI_RLAST;
    S_AXI2_RVALID          <= M_AXI_RVALID;
    vote2(AXI_RREADY_Pos)  <= S_AXI2_RREADY;
    S_AXI2_RUSER           <= M_AXI_RUSER;
    vote2(AXI_RACK_Pos)    <= S_AXI2_RACK;
    S_AXI2_ACVALID         <= M_AXI_ACVALID;
    S_AXI2_ACADDR          <= M_AXI_ACADDR;
    S_AXI2_ACSNOOP         <= M_AXI_ACSNOOP;
    S_AXI2_ACPROT          <= M_AXI_ACPROT;
    vote2(AXI_ACREADY_Pos) <= S_AXI2_ACREADY;
    vote2(AXI_CRVALID_Pos) <= S_AXI2_CRVALID;
    vote2(AXI_CRRESP_Pos)  <= S_AXI2_CRRESP;
    S_AXI2_CRREADY         <= M_AXI_CRREADY;
    vote2(AXI_CDVALID_Pos) <= S_AXI2_CDVALID;
    vote2(AXI_CDDATA_Pos)  <= S_AXI2_CDDATA;
    vote2(AXI_CDLAST_Pos)  <= S_AXI2_CDLAST;
    S_AXI2_CDREADY         <= M_AXI_CDREADY;
    -- AXI #3
    vote3(AXI_AWID_Pos)    <= S_AXI3_AWID;
    vote3(AXI_AWADDR_Pos)  <= S_AXI3_AWADDR;
    vote3(AXI_AWLEN_Pos)   <= S_AXI3_AWLEN;
    vote3(AXI_AWSIZE_Pos)  <= S_AXI3_AWSIZE;
    vote3(AXI_AWBURST_Pos) <= S_AXI3_AWBURST;
    vote3(AXI_AWLOCK_Pos)  <= S_AXI3_AWLOCK;
    vote3(AXI_AWCACHE_Pos) <= S_AXI3_AWCACHE;
    vote3(AXI_AWPROT_Pos)  <= S_AXI3_AWPROT;
    vote3(AXI_AWQOS_Pos)   <= S_AXI3_AWQOS;
    vote3(AXI_AWVALID_Pos) <= S_AXI3_AWVALID;
    S_AXI3_AWREADY         <= M_AXI_AWREADY;
    vote3(AXI_AWUSER_Pos)  <= S_AXI3_AWUSER;
    vote3(AXI_AWDOMAIN_Pos)<= S_AXI3_AWDOMAIN;
    vote3(AXI_AWSNOOP_Pos) <= S_AXI3_AWSNOOP;
    vote3(AXI_AWBAR_Pos)   <= S_AXI3_AWBAR;
    vote3(AXI_WDATA_Pos)   <= S_AXI3_WDATA;
    vote3(AXI_WSTRB_Pos)   <= S_AXI3_WSTRB;
    vote3(AXI_WLAST_Pos)   <= S_AXI3_WLAST;
    vote3(AXI_WVALID_Pos)  <= S_AXI3_WVALID;
    S_AXI3_WREADY          <= M_AXI_WREADY;
    vote3(AXI_WUSER_Pos)   <= S_AXI3_WUSER;
    S_AXI3_BID             <= M_AXI_BID;
    S_AXI3_BRESP           <= M_AXI_BRESP;
    S_AXI3_BVALID          <= M_AXI_BVALID;
    vote3(AXI_BREADY_Pos)  <= S_AXI3_BREADY;
    S_AXI3_BUSER           <= M_AXI_BUSER;
    vote3(AXI_WACK_Pos)    <= S_AXI3_WACK;
    vote3(AXI_ARID_Pos)    <= S_AXI3_ARID;
    vote3(AXI_ARADDR_Pos)  <= S_AXI3_ARADDR;
    vote3(AXI_ARLEN_Pos)   <= S_AXI3_ARLEN;
    vote3(AXI_ARSIZE_Pos)  <= S_AXI3_ARSIZE;
    vote3(AXI_ARBURST_Pos) <= S_AXI3_ARBURST;
    vote3(AXI_ARLOCK_Pos)  <= S_AXI3_ARLOCK;
    vote3(AXI_ARCACHE_Pos) <= S_AXI3_ARCACHE;
    vote3(AXI_ARPROT_Pos)  <= S_AXI3_ARPROT;
    vote3(AXI_ARQOS_Pos)   <= S_AXI3_ARQOS;
    vote3(AXI_ARVALID_Pos) <= S_AXI3_ARVALID;
    S_AXI3_ARREADY         <= M_AXI_ARREADY;
    vote3(AXI_ARUSER_Pos)  <= S_AXI3_ARUSER;
    vote3(AXI_ARDOMAIN_Pos)<= S_AXI3_ARDOMAIN;
    vote3(AXI_ARSNOOP_Pos) <= S_AXI3_ARSNOOP;
    vote3(AXI_ARBAR_Pos)   <= S_AXI3_ARBAR;
    S_AXI3_RID             <= M_AXI_RID;
    S_AXI3_RDATA           <= M_AXI_RDATA;
    S_AXI3_RRESP           <= M_AXI_RRESP;
    S_AXI3_RLAST           <= M_AXI_RLAST;
    S_AXI3_RVALID          <= M_AXI_RVALID;
    vote3(AXI_RREADY_Pos)  <= S_AXI3_RREADY;
    S_AXI3_RUSER           <= M_AXI_RUSER;
    vote3(AXI_RACK_Pos)    <= S_AXI3_RACK;
    S_AXI3_ACVALID         <= M_AXI_ACVALID;
    S_AXI3_ACADDR          <= M_AXI_ACADDR;
    S_AXI3_ACSNOOP         <= M_AXI_ACSNOOP;
    S_AXI3_ACPROT          <= M_AXI_ACPROT;
    vote3(AXI_ACREADY_Pos) <= S_AXI3_ACREADY;
    vote3(AXI_CRVALID_Pos) <= S_AXI3_CRVALID;
    vote3(AXI_CRRESP_Pos)  <= S_AXI3_CRRESP;
    S_AXI3_CRREADY         <= M_AXI_CRREADY;
    vote3(AXI_CDVALID_Pos) <= S_AXI3_CDVALID;
    vote3(AXI_CDDATA_Pos)  <= S_AXI3_CDDATA;
    vote3(AXI_CDLAST_Pos)  <= S_AXI3_CDLAST;
    S_AXI3_CDREADY         <= M_AXI_CDREADY;
    -- AXI Voted
    M_AXI_AWID    <= voted(AXI_AWID_Pos);
    M_AXI_AWADDR  <= voted(AXI_AWADDR_Pos);
    M_AXI_AWLEN   <= voted(AXI_AWLEN_Pos);
    M_AXI_AWSIZE  <= voted(AXI_AWSIZE_Pos);
    M_AXI_AWBURST <= voted(AXI_AWBURST_Pos);
    M_AXI_AWLOCK  <= voted(AXI_AWLOCK_Pos);
    M_AXI_AWCACHE <= voted(AXI_AWCACHE_Pos);
    M_AXI_AWPROT  <= voted(AXI_AWPROT_Pos);
    M_AXI_AWQOS   <= voted(AXI_AWQOS_Pos);
    M_AXI_AWVALID <= voted(AXI_AWVALID_Pos);
    M_AXI_AWUSER  <= voted(AXI_AWUSER_Pos);
    M_AXI_AWDOMAIN<= voted(AXI_AWDOMAIN_Pos);
    M_AXI_AWSNOOP <= voted(AXI_AWSNOOP_Pos);
    M_AXI_AWBAR   <= voted(AXI_AWBAR_Pos);
    M_AXI_WDATA   <= voted(AXI_WDATA_Pos);
    M_AXI_WSTRB   <= voted(AXI_WSTRB_Pos);
    M_AXI_WLAST   <= voted(AXI_WLAST_Pos);
    M_AXI_WVALID  <= voted(AXI_WVALID_Pos);
    M_AXI_WUSER   <= voted(AXI_WUSER_Pos);
    M_AXI_BREADY  <= voted(AXI_BREADY_Pos);
    M_AXI_WACK    <= voted(AXI_WACK_Pos);
    M_AXI_ARID    <= voted(AXI_ARID_Pos);
    M_AXI_ARADDR  <= voted(AXI_ARADDR_Pos);
    M_AXI_ARLEN   <= voted(AXI_ARLEN_Pos);
    M_AXI_ARSIZE  <= voted(AXI_ARSIZE_Pos);
    M_AXI_ARBURST <= voted(AXI_ARBURST_Pos);
    M_AXI_ARLOCK  <= voted(AXI_ARLOCK_Pos);
    M_AXI_ARCACHE <= voted(AXI_ARCACHE_Pos);
    M_AXI_ARPROT  <= voted(AXI_ARPROT_Pos);
    M_AXI_ARQOS   <= voted(AXI_ARQOS_Pos);
    M_AXI_ARVALID <= voted(AXI_ARVALID_Pos);
    M_AXI_ARUSER  <= voted(AXI_ARUSER_Pos);
    M_AXI_ARDOMAIN<= voted(AXI_ARDOMAIN_Pos);
    M_AXI_ARSNOOP <= voted(AXI_ARSNOOP_Pos);
    M_AXI_ARBAR   <= voted(AXI_ARBAR_Pos);
    M_AXI_RREADY  <= voted(AXI_RREADY_Pos);
    M_AXI_RACK    <= voted(AXI_RACK_Pos);
    M_AXI_ACREADY <= voted(AXI_ACREADY_Pos);
    M_AXI_CRVALID <= voted(AXI_CRVALID_Pos);
    M_AXI_CRRESP  <= voted(AXI_CRRESP_Pos);
    M_AXI_CDVALID <= voted(AXI_CDVALID_Pos);
    M_AXI_CDDATA  <= voted(AXI_CDDATA_Pos);
    M_AXI_CDLAST  <= voted(AXI_CDLAST_Pos);

end architecture imp ;


-------------------------------------------------------------------------------
-- s_axi_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2017,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_axi_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_axi_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2017-03-23    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity s_axi_voter is
  generic (
    C_INTERFACE        : integer := 0;
    C_AXI_ID_WIDTH     : integer := 1;
    C_AXI_DATA_WIDTH   : integer := 32;
    C_AXI_ADDR_WIDTH   : integer := 32;
    C_AXI_AWUSER_WIDTH : integer := 5;
    C_AXI_ARUSER_WIDTH : integer := 5;
    C_AXI_WUSER_WIDTH  : integer := 1;
    C_AXI_RUSER_WIDTH  : integer := 1;
    C_AXI_BUSER_WIDTH  : integer := 1;
    C_USE_TMR_DISABLE  : integer := 0);
  port (
    TMR_Disable      : in std_logic_vector(3 downto 0);
    M_AXI1_AWID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_AWADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI1_AWLEN     : out std_logic_vector(7 downto 0);
    M_AXI1_AWSIZE    : out std_logic_vector(2 downto 0);
    M_AXI1_AWBURST   : out std_logic_vector(1 downto 0);
    M_AXI1_AWLOCK    : out std_logic;
    M_AXI1_AWCACHE   : out std_logic_vector(3 downto 0);
    M_AXI1_AWPROT    : out std_logic_vector(2 downto 0);
    M_AXI1_AWQOS     : out std_logic_vector(3 downto 0);
    M_AXI1_AWVALID   : out std_logic;
    M_AXI1_AWREADY   : in  std_logic;
    M_AXI1_AWUSER    : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI1_AWDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI1_AWSNOOP   : out std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI1_AWBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI1_WDATA     : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI1_WSTRB     : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI1_WLAST     : out std_logic;
    M_AXI1_WVALID    : out std_logic;
    M_AXI1_WREADY    : in  std_logic;
    M_AXI1_WUSER     : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI1_BID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_BRESP     : in  std_logic_vector(1 downto 0);
    M_AXI1_BVALID    : in  std_logic;
    M_AXI1_BREADY    : out std_logic;
    M_AXI1_BUSER     : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI1_WACK      : out std_logic;                                         -- For ACE
    M_AXI1_ARID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_ARADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI1_ARLEN     : out std_logic_vector(7 downto 0);
    M_AXI1_ARSIZE    : out std_logic_vector(2 downto 0);
    M_AXI1_ARBURST   : out std_logic_vector(1 downto 0);
    M_AXI1_ARLOCK    : out std_logic;
    M_AXI1_ARCACHE   : out std_logic_vector(3 downto 0);
    M_AXI1_ARPROT    : out std_logic_vector(2 downto 0);
    M_AXI1_ARQOS     : out std_logic_vector(3 downto 0);
    M_AXI1_ARVALID   : out std_logic;
    M_AXI1_ARREADY   : in  std_logic;
    M_AXI1_ARUSER    : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI1_ARDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI1_ARSNOOP   : out std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI1_ARBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI1_RID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_RDATA     : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI1_RRESP     : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI1_RLAST     : in  std_logic;
    M_AXI1_RVALID    : in  std_logic;
    M_AXI1_RREADY    : out std_logic;
    M_AXI1_RUSER     : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI1_RACK      : out std_logic;                                         -- For ACE
    M_AXI1_ACVALID   : in  std_logic;                                         -- For ACE
    M_AXI1_ACADDR    : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    M_AXI1_ACSNOOP   : in  std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI1_ACPROT    : in  std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI1_ACREADY   : out std_logic;                                         -- For ACE
    M_AXI1_CRVALID   : out std_logic;                                         -- For ACE
    M_AXI1_CRRESP    : out std_logic_vector(4 downto 0);                      -- For ACE
    M_AXI1_CRREADY   : in  std_logic;                                         -- For ACE
    M_AXI1_CDVALID   : out std_logic;                                         -- For ACE
    M_AXI1_CDDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    M_AXI1_CDLAST    : out std_logic;                                         -- For ACE
    M_AXI1_CDREADY   : in  std_logic;                                         -- For ACE
    -- AXI #2
    M_AXI2_AWID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_AWADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI2_AWLEN     : out std_logic_vector(7 downto 0);
    M_AXI2_AWSIZE    : out std_logic_vector(2 downto 0);
    M_AXI2_AWBURST   : out std_logic_vector(1 downto 0);
    M_AXI2_AWLOCK    : out std_logic;
    M_AXI2_AWCACHE   : out std_logic_vector(3 downto 0);
    M_AXI2_AWPROT    : out std_logic_vector(2 downto 0);
    M_AXI2_AWQOS     : out std_logic_vector(3 downto 0);
    M_AXI2_AWVALID   : out std_logic;
    M_AXI2_AWREADY   : in  std_logic;
    M_AXI2_AWUSER    : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI2_AWDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI2_AWSNOOP   : out std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI2_AWBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI2_WDATA     : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI2_WSTRB     : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI2_WLAST     : out std_logic;
    M_AXI2_WVALID    : out std_logic;
    M_AXI2_WREADY    : in  std_logic;
    M_AXI2_WUSER     : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI2_BID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_BRESP     : in  std_logic_vector(1 downto 0);
    M_AXI2_BVALID    : in  std_logic;
    M_AXI2_BREADY    : out std_logic;
    M_AXI2_BUSER     : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI2_WACK      : out std_logic;                                         -- For ACE
    M_AXI2_ARID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_ARADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI2_ARLEN     : out std_logic_vector(7 downto 0);
    M_AXI2_ARSIZE    : out std_logic_vector(2 downto 0);
    M_AXI2_ARBURST   : out std_logic_vector(1 downto 0);
    M_AXI2_ARLOCK    : out std_logic;
    M_AXI2_ARCACHE   : out std_logic_vector(3 downto 0);
    M_AXI2_ARPROT    : out std_logic_vector(2 downto 0);
    M_AXI2_ARQOS     : out std_logic_vector(3 downto 0);
    M_AXI2_ARVALID   : out std_logic;
    M_AXI2_ARREADY   : in  std_logic;
    M_AXI2_ARUSER    : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI2_ARDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI2_ARSNOOP   : out std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI2_ARBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI2_RID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_RDATA     : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI2_RRESP     : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI2_RLAST     : in  std_logic;
    M_AXI2_RVALID    : in  std_logic;
    M_AXI2_RREADY    : out std_logic;
    M_AXI2_RUSER     : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI2_RACK      : out std_logic;                                         -- For ACE
    M_AXI2_ACVALID   : in  std_logic;                                         -- For ACE
    M_AXI2_ACADDR    : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    M_AXI2_ACSNOOP   : in  std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI2_ACPROT    : in  std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI2_ACREADY   : out std_logic;                                         -- For ACE
    M_AXI2_CRVALID   : out std_logic;                                         -- For ACE
    M_AXI2_CRRESP    : out std_logic_vector(4 downto 0);                      -- For ACE
    M_AXI2_CRREADY   : in  std_logic;                                         -- For ACE
    M_AXI2_CDVALID   : out std_logic;                                         -- For ACE
    M_AXI2_CDDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    M_AXI2_CDLAST    : out std_logic;                                         -- For ACE
    M_AXI2_CDREADY   : in  std_logic;                                         -- For ACE
    -- AXI #3
    M_AXI3_AWID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_AWADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI3_AWLEN     : out std_logic_vector(7 downto 0);
    M_AXI3_AWSIZE    : out std_logic_vector(2 downto 0);
    M_AXI3_AWBURST   : out std_logic_vector(1 downto 0);
    M_AXI3_AWLOCK    : out std_logic;
    M_AXI3_AWCACHE   : out std_logic_vector(3 downto 0);
    M_AXI3_AWPROT    : out std_logic_vector(2 downto 0);
    M_AXI3_AWQOS     : out std_logic_vector(3 downto 0);
    M_AXI3_AWVALID   : out std_logic;
    M_AXI3_AWREADY   : in  std_logic;
    M_AXI3_AWDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI3_AWSNOOP   : out std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI3_AWBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI3_AWUSER    : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI3_WDATA     : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI3_WSTRB     : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI3_WLAST     : out std_logic;
    M_AXI3_WVALID    : out std_logic;
    M_AXI3_WREADY    : in  std_logic;
    M_AXI3_WUSER     : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI3_BID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_BRESP     : in  std_logic_vector(1 downto 0);
    M_AXI3_BVALID    : in  std_logic;
    M_AXI3_BREADY    : out std_logic;
    M_AXI3_BUSER     : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI3_WACK      : out std_logic;                                         -- For ACE
    M_AXI3_ARID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_ARADDR    : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI3_ARLEN     : out std_logic_vector(7 downto 0);
    M_AXI3_ARSIZE    : out std_logic_vector(2 downto 0);
    M_AXI3_ARBURST   : out std_logic_vector(1 downto 0);
    M_AXI3_ARLOCK    : out std_logic;
    M_AXI3_ARCACHE   : out std_logic_vector(3 downto 0);
    M_AXI3_ARPROT    : out std_logic_vector(2 downto 0);
    M_AXI3_ARQOS     : out std_logic_vector(3 downto 0);
    M_AXI3_ARVALID   : out std_logic;
    M_AXI3_ARREADY   : in  std_logic;
    M_AXI3_ARUSER    : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI3_ARDOMAIN  : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI3_ARSNOOP   : out std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI3_ARBAR     : out std_logic_vector(1 downto 0);                      -- For ACE
    M_AXI3_RID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_RDATA     : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI3_RRESP     : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI3_RLAST     : in  std_logic;
    M_AXI3_RVALID    : in  std_logic;
    M_AXI3_RREADY    : out std_logic;
    M_AXI3_RUSER     : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI3_RACK      : out std_logic;                                         -- For ACE
    M_AXI3_ACVALID   : in  std_logic;                                         -- For ACE
    M_AXI3_ACADDR    : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    M_AXI3_ACSNOOP   : in  std_logic_vector(3 downto 0);                      -- For ACE
    M_AXI3_ACPROT    : in  std_logic_vector(2 downto 0);                      -- For ACE
    M_AXI3_ACREADY   : out std_logic;                                         -- For ACE
    M_AXI3_CRVALID   : out std_logic;                                         -- For ACE
    M_AXI3_CRRESP    : out std_logic_vector(4 downto 0);                      -- For ACE
    M_AXI3_CRREADY   : in  std_logic;                                         -- For ACE
    M_AXI3_CDVALID   : out std_logic;                                         -- For ACE
    M_AXI3_CDDATA    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    M_AXI3_CDLAST    : out std_logic;                                         -- For ACE
    M_AXI3_CDREADY   : in  std_logic;                                         -- For ACE
    -- AXI Voted
    S_AXI_AWID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_AWADDR     : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWLEN      : in  std_logic_vector(7 downto 0);
    S_AXI_AWSIZE     : in  std_logic_vector(2 downto 0);
    S_AXI_AWBURST    : in  std_logic_vector(1 downto 0);
    S_AXI_AWLOCK     : in  std_logic;
    S_AXI_AWCACHE    : in  std_logic_vector(3 downto 0);
    S_AXI_AWPROT     : in  std_logic_vector(2 downto 0);
    S_AXI_AWQOS      : in  std_logic_vector(3 downto 0);
    S_AXI_AWVALID    : in  std_logic;
    S_AXI_AWREADY    : out std_logic;
    S_AXI_AWUSER     : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI_AWDOMAIN   : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI_AWSNOOP    : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI_AWBAR      : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI_WDATA      : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB      : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WLAST      : in  std_logic;
    S_AXI_WVALID     : in  std_logic;
    S_AXI_WREADY     : out std_logic;
    S_AXI_WUSER      : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI_BID        : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S_AXI_BVALID     : out std_logic;
    S_AXI_BREADY     : in  std_logic;
    S_AXI_BUSER      : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI_WACK       : in  std_logic;                                         -- For ACE
    S_AXI_ARID       : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_ARADDR     : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARLEN      : in  std_logic_vector(7 downto 0);
    S_AXI_ARSIZE     : in  std_logic_vector(2 downto 0);
    S_AXI_ARBURST    : in  std_logic_vector(1 downto 0);
    S_AXI_ARLOCK     : in  std_logic;
    S_AXI_ARCACHE    : in  std_logic_vector(3 downto 0);
    S_AXI_ARPROT     : in  std_logic_vector(2 downto 0);
    S_AXI_ARQOS      : in  std_logic_vector(3 downto 0);
    S_AXI_ARVALID    : in  std_logic;
    S_AXI_ARREADY    : out std_logic;
    S_AXI_ARUSER     : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI_ARDOMAIN   : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI_ARSNOOP    : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI_ARBAR      : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI_RID        : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_RDATA      : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP      : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI_RLAST      : out std_logic;
    S_AXI_RVALID     : out std_logic;
    S_AXI_RREADY     : in  std_logic;
    S_AXI_RUSER      : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI_RACK       : in  std_logic;                                         -- For ACE
    S_AXI_ACVALID    : out std_logic;                                         -- For ACE
    S_AXI_ACADDR     : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);     -- For ACE
    S_AXI_ACSNOOP    : out std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI_ACPROT     : out std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI_ACREADY    : in  std_logic;                                         -- For ACE
    S_AXI_CRVALID    : in  std_logic;                                         -- For ACE
    S_AXI_CRRESP     : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI_CRREADY    : out std_logic;                                         -- For ACE
    S_AXI_CDVALID    : in  std_logic;                                         -- For ACE
    S_AXI_CDDATA     : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI_CDLAST     : in  std_logic;                                         -- For ACE
    S_AXI_CDREADY    : out std_logic);                                        -- For ACE
end entity s_axi_voter;

architecture imp of s_axi_voter is

  -- Positions for signals used in voter
  constant AXI_AWREADY_Pos    : natural :=    0;
  constant AXI_WREADY_Pos     : natural :=    AXI_AWREADY_Pos+1;
  subtype  AXI_BID_Pos       is natural range AXI_WREADY_Pos+1       to AXI_WREADY_Pos       + S_AXI_BID'length;
  subtype  AXI_BRESP_Pos     is natural range AXI_BID_Pos'high+1     to AXI_BID_Pos'high     + S_AXI_BRESP'length;
  constant AXI_BVALID_Pos     : natural :=    AXI_BRESP_Pos'high+1;
  subtype  AXI_BUSER_Pos     is natural range AXI_BVALID_Pos+1       to AXI_BVALID_Pos       + S_AXI_BUSER'length;
  constant AXI_ARREADY_Pos    : natural :=    AXI_BUSER_Pos'high+1;
  subtype  AXI_RID_Pos       is natural range AXI_ARREADY_Pos+1      to AXI_ARREADY_Pos      + S_AXI_RID'length;
  subtype  AXI_RDATA_Pos     is natural range AXI_RID_Pos'high+1     to AXI_RID_Pos'high     + S_AXI_RDATA'length;
  subtype  AXI_RRESP_Pos     is natural range AXI_RDATA_Pos'high+1   to AXI_RDATA_Pos'high   + S_AXI_RRESP'length;
  constant AXI_RLAST_Pos      : natural :=    AXI_RRESP_Pos'high+1;
  constant AXI_RVALID_Pos     : natural :=    AXI_RLAST_Pos+1;
  subtype  AXI_RUSER_Pos     is natural range AXI_RVALID_Pos+1       to AXI_RVALID_Pos       + S_AXI_RUSER'length;
  constant AXI_ACVALID_Pos    : natural :=    AXI_RUSER_Pos'high+1;
  subtype  AXI_ACADDR_Pos    is natural range AXI_ACVALID_Pos+1      to AXI_ACVALID_Pos      + S_AXI_ACADDR'length;
  subtype  AXI_ACSNOOP_Pos   is natural range AXI_ACADDR_Pos'high+1  to AXI_ACADDR_Pos'high  + S_AXI_ACSNOOP'length;
  subtype  AXI_ACPROT_Pos    is natural range AXI_ACSNOOP_Pos'high+1 to AXI_ACSNOOP_Pos'high + S_AXI_ACPROT'length;
  constant AXI_CRREADY_Pos    : natural :=    AXI_ACPROT_Pos'high+1;
  constant AXI_CDREADY_Pos    : natural :=    AXI_CRREADY_Pos+1;
  constant C_WIDTH            : natural :=    AXI_CDREADY_Pos+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin  -- architecture imp

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- AXI #1
    M_AXI1_AWID            <= S_AXI_AWID;
    M_AXI1_AWADDR          <= S_AXI_AWADDR;
    M_AXI1_AWLEN           <= S_AXI_AWLEN;
    M_AXI1_AWSIZE          <= S_AXI_AWSIZE;
    M_AXI1_AWBURST         <= S_AXI_AWBURST;
    M_AXI1_AWLOCK          <= S_AXI_AWLOCK;
    M_AXI1_AWCACHE         <= S_AXI_AWCACHE;
    M_AXI1_AWPROT          <= S_AXI_AWPROT;
    M_AXI1_AWQOS           <= S_AXI_AWQOS;
    M_AXI1_AWVALID         <= S_AXI_AWVALID;
    vote1(AXI_AWREADY_Pos) <= M_AXI1_AWREADY;
    M_AXI1_AWUSER          <= S_AXI_AWUSER;
    M_AXI1_AWDOMAIN        <= S_AXI_AWDOMAIN;
    M_AXI1_AWSNOOP         <= S_AXI_AWSNOOP;
    M_AXI1_AWBAR           <= S_AXI_AWBAR;
    M_AXI1_WDATA           <= S_AXI_WDATA;
    M_AXI1_WSTRB           <= S_AXI_WSTRB;
    M_AXI1_WLAST           <= S_AXI_WLAST;
    M_AXI1_WVALID          <= S_AXI_WVALID;
    vote1(AXI_WREADY_Pos)  <= M_AXI1_WREADY;
    M_AXI1_WUSER           <= S_AXI_WUSER;
    vote1(AXI_BID_Pos)     <= M_AXI1_BID;
    vote1(AXI_BRESP_Pos)   <= M_AXI1_BRESP;
    vote1(AXI_BVALID_Pos)  <= M_AXI1_BVALID;
    M_AXI1_BREADY          <= S_AXI_BREADY;
    vote1(AXI_BUSER_Pos)   <= M_AXI1_BUSER;
    M_AXI1_WACK            <= S_AXI_WACK;
    M_AXI1_ARID            <= S_AXI_ARID;
    M_AXI1_ARADDR          <= S_AXI_ARADDR;
    M_AXI1_ARLEN           <= S_AXI_ARLEN;
    M_AXI1_ARSIZE          <= S_AXI_ARSIZE;
    M_AXI1_ARBURST         <= S_AXI_ARBURST;
    M_AXI1_ARLOCK          <= S_AXI_ARLOCK;
    M_AXI1_ARCACHE         <= S_AXI_ARCACHE;
    M_AXI1_ARPROT          <= S_AXI_ARPROT;
    M_AXI1_ARQOS           <= S_AXI_ARQOS;
    M_AXI1_ARVALID         <= S_AXI_ARVALID;
    vote1(AXI_ARREADY_Pos) <= M_AXI1_ARREADY;
    M_AXI1_ARUSER          <= S_AXI_ARUSER;
    M_AXI1_ARDOMAIN        <= S_AXI_ARDOMAIN;
    M_AXI1_ARSNOOP         <= S_AXI_ARSNOOP;
    M_AXI1_ARBAR           <= S_AXI_ARBAR;
    vote1(AXI_RID_Pos)     <= M_AXI1_RID;
    vote1(AXI_RDATA_Pos)   <= M_AXI1_RDATA;
    vote1(AXI_RRESP_Pos)   <= M_AXI1_RRESP;
    vote1(AXI_RLAST_Pos)   <= M_AXI1_RLAST;
    vote1(AXI_RVALID_Pos)  <= M_AXI1_RVALID;
    M_AXI1_RREADY          <= S_AXI_RREADY;
    vote1(AXI_RUSER_Pos)   <= M_AXI1_RUSER;
    M_AXI1_RACK            <= S_AXI_RACK;
    vote1(AXI_ACVALID_Pos) <= M_AXI1_ACVALID;
    vote1(AXI_ACADDR_Pos)  <= M_AXI1_ACADDR;
    vote1(AXI_ACSNOOP_Pos) <= M_AXI1_ACSNOOP;
    vote1(AXI_ACPROT_Pos)  <= M_AXI1_ACPROT;
    M_AXI1_ACREADY         <= S_AXI_ACREADY;
    M_AXI1_CRVALID         <= S_AXI_CRVALID;
    M_AXI1_CRRESP          <= S_AXI_CRRESP;
    vote1(AXI_CRREADY_Pos) <= M_AXI1_CRREADY;
    M_AXI1_CDVALID         <= S_AXI_CDVALID;
    M_AXI1_CDDATA          <= S_AXI_CDDATA;
    M_AXI1_CDLAST          <= S_AXI_CDLAST;
    vote1(AXI_CDREADY_Pos) <= M_AXI1_CDREADY;
    -- AXI #2
    M_AXI2_AWID            <= S_AXI_AWID;
    M_AXI2_AWADDR          <= S_AXI_AWADDR;
    M_AXI2_AWLEN           <= S_AXI_AWLEN;
    M_AXI2_AWSIZE          <= S_AXI_AWSIZE;
    M_AXI2_AWBURST         <= S_AXI_AWBURST;
    M_AXI2_AWLOCK          <= S_AXI_AWLOCK;
    M_AXI2_AWCACHE         <= S_AXI_AWCACHE;
    M_AXI2_AWPROT          <= S_AXI_AWPROT;
    M_AXI2_AWQOS           <= S_AXI_AWQOS;
    M_AXI2_AWVALID         <= S_AXI_AWVALID;
    vote2(AXI_AWREADY_Pos) <= M_AXI2_AWREADY;
    M_AXI2_AWUSER          <= S_AXI_AWUSER;
    M_AXI2_AWDOMAIN        <= S_AXI_AWDOMAIN;
    M_AXI2_AWSNOOP         <= S_AXI_AWSNOOP;
    M_AXI2_AWBAR           <= S_AXI_AWBAR;
    M_AXI2_WDATA           <= S_AXI_WDATA;
    M_AXI2_WSTRB           <= S_AXI_WSTRB;
    M_AXI2_WLAST           <= S_AXI_WLAST;
    M_AXI2_WVALID          <= S_AXI_WVALID;
    vote2(AXI_WREADY_Pos)  <= M_AXI2_WREADY;
    M_AXI2_WUSER           <= S_AXI_WUSER;
    vote2(AXI_BID_Pos)     <= M_AXI2_BID;
    vote2(AXI_BRESP_Pos)   <= M_AXI2_BRESP;
    vote2(AXI_BVALID_Pos)  <= M_AXI2_BVALID;
    M_AXI2_BREADY          <= S_AXI_BREADY;
    vote2(AXI_BUSER_Pos)   <= M_AXI2_BUSER;
    M_AXI2_WACK            <= S_AXI_WACK;
    M_AXI2_ARID            <= S_AXI_ARID;
    M_AXI2_ARADDR          <= S_AXI_ARADDR;
    M_AXI2_ARLEN           <= S_AXI_ARLEN;
    M_AXI2_ARSIZE          <= S_AXI_ARSIZE;
    M_AXI2_ARBURST         <= S_AXI_ARBURST;
    M_AXI2_ARLOCK          <= S_AXI_ARLOCK;
    M_AXI2_ARCACHE         <= S_AXI_ARCACHE;
    M_AXI2_ARPROT          <= S_AXI_ARPROT;
    M_AXI2_ARQOS           <= S_AXI_ARQOS;
    M_AXI2_ARVALID         <= S_AXI_ARVALID;
    vote2(AXI_ARREADY_Pos) <= M_AXI2_ARREADY;
    M_AXI2_ARUSER          <= S_AXI_ARUSER;
    M_AXI2_ARDOMAIN        <= S_AXI_ARDOMAIN;
    M_AXI2_ARSNOOP         <= S_AXI_ARSNOOP;
    M_AXI2_ARBAR           <= S_AXI_ARBAR;
    vote2(AXI_RID_Pos)     <= M_AXI2_RID;
    vote2(AXI_RDATA_Pos)   <= M_AXI2_RDATA;
    vote2(AXI_RRESP_Pos)   <= M_AXI2_RRESP;
    vote2(AXI_RLAST_Pos)   <= M_AXI2_RLAST;
    vote2(AXI_RVALID_Pos)  <= M_AXI2_RVALID;
    M_AXI2_RREADY          <= S_AXI_RREADY;
    vote2(AXI_RUSER_Pos)   <= M_AXI2_RUSER;
    M_AXI2_RACK            <= S_AXI_RACK;
    vote2(AXI_ACVALID_Pos) <= M_AXI2_ACVALID;
    vote2(AXI_ACADDR_Pos)  <= M_AXI2_ACADDR;
    vote2(AXI_ACSNOOP_Pos) <= M_AXI2_ACSNOOP;
    vote2(AXI_ACPROT_Pos)  <= M_AXI2_ACPROT;
    M_AXI2_ACREADY         <= S_AXI_ACREADY;
    M_AXI2_CRVALID         <= S_AXI_CRVALID;
    M_AXI2_CRRESP          <= S_AXI_CRRESP;
    vote2(AXI_CRREADY_Pos) <= M_AXI2_CRREADY;
    M_AXI2_CDVALID         <= S_AXI_CDVALID;
    M_AXI2_CDDATA          <= S_AXI_CDDATA;
    M_AXI2_CDLAST          <= S_AXI_CDLAST;
    vote2(AXI_CDREADY_Pos) <= M_AXI2_CDREADY;
    -- AXI #3
    M_AXI3_AWID            <= S_AXI_AWID;
    M_AXI3_AWADDR          <= S_AXI_AWADDR;
    M_AXI3_AWLEN           <= S_AXI_AWLEN;
    M_AXI3_AWSIZE          <= S_AXI_AWSIZE;
    M_AXI3_AWBURST         <= S_AXI_AWBURST;
    M_AXI3_AWLOCK          <= S_AXI_AWLOCK;
    M_AXI3_AWCACHE         <= S_AXI_AWCACHE;
    M_AXI3_AWPROT          <= S_AXI_AWPROT;
    M_AXI3_AWQOS           <= S_AXI_AWQOS;
    M_AXI3_AWVALID         <= S_AXI_AWVALID;
    vote3(AXI_AWREADY_Pos) <= M_AXI3_AWREADY;
    M_AXI3_AWDOMAIN        <= S_AXI_AWDOMAIN;
    M_AXI3_AWSNOOP         <= S_AXI_AWSNOOP;
    M_AXI3_AWBAR           <= S_AXI_AWBAR;
    M_AXI3_AWUSER          <= S_AXI_AWUSER;
    M_AXI3_WDATA           <= S_AXI_WDATA;
    M_AXI3_WSTRB           <= S_AXI_WSTRB;
    M_AXI3_WLAST           <= S_AXI_WLAST;
    M_AXI3_WVALID          <= S_AXI_WVALID;
    vote3(AXI_WREADY_Pos)  <= M_AXI3_WREADY;
    M_AXI3_WUSER           <= S_AXI_WUSER;
    vote3(AXI_BID_Pos)     <= M_AXI3_BID;
    vote3(AXI_BRESP_Pos)   <= M_AXI3_BRESP;
    vote3(AXI_BVALID_Pos)  <= M_AXI3_BVALID;
    M_AXI3_BREADY          <= S_AXI_BREADY;
    vote3(AXI_BUSER_Pos)   <= M_AXI3_BUSER;
    M_AXI3_WACK            <= S_AXI_WACK;
    M_AXI3_ARID            <= S_AXI_ARID;
    M_AXI3_ARADDR          <= S_AXI_ARADDR;
    M_AXI3_ARLEN           <= S_AXI_ARLEN;
    M_AXI3_ARSIZE          <= S_AXI_ARSIZE;
    M_AXI3_ARBURST         <= S_AXI_ARBURST;
    M_AXI3_ARLOCK          <= S_AXI_ARLOCK;
    M_AXI3_ARCACHE         <= S_AXI_ARCACHE;
    M_AXI3_ARPROT          <= S_AXI_ARPROT;
    M_AXI3_ARQOS           <= S_AXI_ARQOS;
    M_AXI3_ARVALID         <= S_AXI_ARVALID;
    vote3(AXI_ARREADY_Pos) <= M_AXI3_ARREADY;
    M_AXI3_ARUSER          <= S_AXI_ARUSER;
    M_AXI3_ARDOMAIN        <= S_AXI_ARDOMAIN;
    M_AXI3_ARSNOOP         <= S_AXI_ARSNOOP;
    M_AXI3_ARBAR           <= S_AXI_ARBAR;
    vote3(AXI_RID_Pos)     <= M_AXI3_RID;
    vote3(AXI_RDATA_Pos)   <= M_AXI3_RDATA;
    vote3(AXI_RRESP_Pos)   <= M_AXI3_RRESP;
    vote3(AXI_RLAST_Pos)   <= M_AXI3_RLAST;
    vote3(AXI_RVALID_Pos)  <= M_AXI3_RVALID;
    M_AXI3_RREADY          <= S_AXI_RREADY;
    vote3(AXI_RUSER_Pos)   <= M_AXI3_RUSER;
    M_AXI3_RACK            <= S_AXI_RACK;
    vote3(AXI_ACVALID_Pos) <= M_AXI3_ACVALID;
    vote3(AXI_ACADDR_Pos)  <= M_AXI3_ACADDR;
    vote3(AXI_ACSNOOP_Pos) <= M_AXI3_ACSNOOP;
    vote3(AXI_ACPROT_Pos)  <= M_AXI3_ACPROT;
    M_AXI3_ACREADY         <= S_AXI_ACREADY;
    M_AXI3_CRVALID         <= S_AXI_CRVALID;
    M_AXI3_CRRESP          <= S_AXI_CRRESP;
    vote3(AXI_CRREADY_Pos) <= M_AXI3_CRREADY;
    M_AXI3_CDVALID         <= S_AXI_CDVALID;
    M_AXI3_CDDATA          <= S_AXI_CDDATA;
    M_AXI3_CDLAST          <= S_AXI_CDLAST;
    vote3(AXI_CDREADY_Pos) <= M_AXI3_CDREADY;
    -- AXI Voted
    S_AXI_AWREADY          <= voted(AXI_AWREADY_Pos);
    S_AXI_WREADY           <= voted(AXI_WREADY_Pos);
    S_AXI_BID              <= voted(AXI_BID_Pos);
    S_AXI_BRESP            <= voted(AXI_BRESP_Pos);
    S_AXI_BVALID           <= voted(AXI_BVALID_Pos);
    S_AXI_BUSER            <= voted(AXI_BUSER_Pos);
    S_AXI_ARREADY          <= voted(AXI_ARREADY_Pos);
    S_AXI_RID              <= voted(AXI_RID_Pos);
    S_AXI_RDATA            <= voted(AXI_RDATA_Pos);
    S_AXI_RRESP            <= voted(AXI_RRESP_Pos);
    S_AXI_RLAST            <= voted(AXI_RLAST_Pos);
    S_AXI_RVALID           <= voted(AXI_RVALID_Pos);
    S_AXI_RUSER            <= voted(AXI_RUSER_Pos);
    S_AXI_ACVALID          <= voted(AXI_ACVALID_Pos);
    S_AXI_ACADDR           <= voted(AXI_ACADDR_Pos);
    S_AXI_ACSNOOP          <= voted(AXI_ACSNOOP_Pos);
    S_AXI_ACPROT           <= voted(AXI_ACPROT_Pos);
    S_AXI_CRREADY          <= voted(AXI_CRREADY_Pos);
    S_AXI_CDREADY          <= voted(AXI_CDREADY_Pos);

end architecture imp;


-------------------------------------------------------------------------------
-- s_axis_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_axis_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_axis_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity s_axis_voter is
  generic (
    C_AXIS_DATA_WIDTH : integer := 32;
    C_AXIS_ID_WIDTH   : integer := 1;
    C_AXIS_DEST_WIDTH : integer := 1;
    C_AXIS_USER_WIDTH : integer := 1;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable    : in std_logic_vector(3 downto 0);
    -- AXIS #1
    M_AXIS1_TLAST  : out std_logic;
    M_AXIS1_TDATA  : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS1_TVALID : out std_logic;
    M_AXIS1_TREADY : in  std_logic;
    M_AXIS1_TSTRB  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TKEEP  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TID    : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS1_TDEST  : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS1_TUSER  : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    M_AXIS2_TLAST  : out std_logic;
    M_AXIS2_TDATA  : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS2_TVALID : out std_logic;
    M_AXIS2_TREADY : in  std_logic;
    M_AXIS2_TSTRB  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TKEEP  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TID    : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS2_TDEST  : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS2_TUSER  : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    M_AXIS3_TLAST  : out std_logic;
    M_AXIS3_TDATA  : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS3_TVALID : out std_logic;
    M_AXIS3_TREADY : in  std_logic;
    M_AXIS3_TSTRB  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TKEEP  : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TID    : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS3_TDEST  : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS3_TUSER  : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    S_AXIS_TLAST   : in  std_logic;
    S_AXIS_TDATA   : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID  : in  std_logic;
    S_AXIS_TREADY  : out std_logic;
    S_AXIS_TSTRB   : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TKEEP   : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TID     : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS_TDEST   : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS_TUSER   : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0));
end entity s_axis_voter;

architecture imp  of s_axis_voter is

  -- Positions for signals used in voting and lockstep
  constant AXIS_TREADY_Pos  : natural :=    0;
  constant C_WIDTH          : natural :=    AXIS_TREADY_Pos + 1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_i : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1 => vote1,
        Vote2 => vote2,
        Vote3 => vote3,
        Voted => voted);

    -- AXIS #1
    M_AXIS1_TLAST          <= S_AXIS_TLAST;
    M_AXIS1_TDATA          <= S_AXIS_TDATA;
    M_AXIS1_TVALID         <= S_AXIS_TVALID;
    M_AXIS1_TSTRB          <= S_AXIS_TSTRB;
    M_AXIS1_TKEEP          <= S_AXIS_TKEEP;
    M_AXIS1_TID            <= S_AXIS_TID;
    M_AXIS1_TDEST          <= S_AXIS_TDEST;
    M_AXIS1_TUSER          <= S_AXIS_TUSER;
    vote1(AXIS_TREADY_Pos) <= M_AXIS1_TREADY;
    -- AXIS #2
    M_AXIS2_TLAST          <= S_AXIS_TLAST;
    M_AXIS2_TDATA          <= S_AXIS_TDATA;
    M_AXIS2_TVALID         <= S_AXIS_TVALID;
    M_AXIS2_TSTRB          <= S_AXIS_TSTRB;
    M_AXIS2_TKEEP          <= S_AXIS_TKEEP;
    M_AXIS2_TID            <= S_AXIS_TID;
    M_AXIS2_TDEST          <= S_AXIS_TDEST;
    M_AXIS2_TUSER          <= S_AXIS_TUSER;
    vote2(AXIS_TREADY_Pos) <= M_AXIS2_TREADY;
    -- AXIS #3
    M_AXIS3_TLAST          <= S_AXIS_TLAST;
    M_AXIS3_TDATA          <= S_AXIS_TDATA;
    M_AXIS3_TVALID         <= S_AXIS_TVALID;
    M_AXIS3_TSTRB          <= S_AXIS_TSTRB;
    M_AXIS3_TKEEP          <= S_AXIS_TKEEP;
    M_AXIS3_TID            <= S_AXIS_TID;
    M_AXIS3_TDEST          <= S_AXIS_TDEST;
    M_AXIS3_TUSER          <= S_AXIS_TUSER;
    vote3(AXIS_TREADY_Pos) <= M_AXIS3_TREADY;
    -- AXIS Voted
    S_AXIS_TREADY          <= voted(AXIS_TREADY_Pos);

end architecture imp ;


-------------------------------------------------------------------------------
-- m_axis_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        m_axis_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              m_axis_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity m_axis_voter is
  generic (
    C_AXIS_DATA_WIDTH : integer := 32;
    C_AXIS_ID_WIDTH   : integer := 1;
    C_AXIS_DEST_WIDTH : integer := 1;
    C_AXIS_USER_WIDTH : integer := 1;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable    : in std_logic_vector(3 downto 0);
    -- AXIS #1
    S_AXIS1_TLAST  : in  std_logic;
    S_AXIS1_TDATA  : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS1_TVALID : in  std_logic;
    S_AXIS1_TREADY : out std_logic;
    S_AXIS1_TSTRB  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TKEEP  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TID    : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS1_TDEST  : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS1_TUSER  : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    S_AXIS2_TLAST  : in  std_logic;
    S_AXIS2_TDATA  : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS2_TVALID : in  std_logic;
    S_AXIS2_TREADY : out std_logic;
    S_AXIS2_TSTRB  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TKEEP  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TID    : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS2_TDEST  : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS2_TUSER  : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    S_AXIS3_TLAST  : in  std_logic;
    S_AXIS3_TDATA  : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS3_TVALID : in  std_logic;
    S_AXIS3_TREADY : out std_logic;
    S_AXIS3_TSTRB  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TKEEP  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TID    : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS3_TDEST  : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS3_TUSER  : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    M_AXIS_TLAST   : out std_logic;
    M_AXIS_TDATA   : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID  : out std_logic;
    M_AXIS_TREADY  : in  std_logic;
    M_AXIS_TSTRB   : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TKEEP   : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TID     : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TDEST   : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS_TUSER   : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0));
end entity m_axis_voter;

architecture imp  of m_axis_voter is

  -- Positions for signals used in voting and lockstep
  constant AXIS_TLAST_Pos   : natural :=    0;
  subtype  AXIS_TDATA_Pos  is natural range AXIS_TLAST_Pos+1 to AXIS_TLAST_Pos+M_AXIS_TDATA'length;
  constant AXIS_TVALID_Pos  : natural :=    AXIS_TDATA_Pos'high + 1;
  subtype  AXIS_TSTRB_Pos  is natural range AXIS_TVALID_Pos+1 to AXIS_TVALID_Pos+M_AXIS_TSTRB'length;
  subtype  AXIS_TKEEP_Pos  is natural range AXIS_TSTRB_Pos'high+1 to AXIS_TSTRB_Pos'high+M_AXIS_TKEEP'length;
  subtype  AXIS_TID_Pos    is natural range AXIS_TKEEP_Pos'high+1 to AXIS_TKEEP_Pos'high+M_AXIS_TID'length;
  subtype  AXIS_TDEST_Pos  is natural range AXIS_TID_Pos'high+1 to AXIS_TID_Pos'high+M_AXIS_TDEST'length;
  subtype  AXIS_TUSER_Pos  is natural range AXIS_TDEST_Pos'high+1 to AXIS_TDEST_Pos'high+M_AXIS_TUSER'length;
  constant C_WIDTH          : natural :=    AXIS_TUSER_Pos'high + 1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_i : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- AXIS #1
    vote1(AXIS_TLAST_Pos)  <= S_AXIS1_TLAST;
    vote1(AXIS_TDATA_Pos)  <= S_AXIS1_TDATA;
    vote1(AXIS_TVALID_Pos) <= S_AXIS1_TVALID;
    vote1(AXIS_TSTRB_Pos)  <= S_AXIS1_TSTRB;
    vote1(AXIS_TKEEP_Pos)  <= S_AXIS1_TKEEP;
    vote1(AXIS_TID_Pos)    <= S_AXIS1_TID;
    vote1(AXIS_TDEST_Pos)  <= S_AXIS1_TDEST;
    vote1(AXIS_TUSER_Pos)  <= S_AXIS1_TUSER;
    S_AXIS1_TREADY         <= M_AXIS_TREADY;
    -- AXIS #2
    vote2(AXIS_TLAST_Pos)  <= S_AXIS2_TLAST;
    vote2(AXIS_TDATA_Pos)  <= S_AXIS2_TDATA;
    vote2(AXIS_TVALID_Pos) <= S_AXIS2_TVALID;
    vote2(AXIS_TSTRB_Pos)  <= S_AXIS2_TSTRB;
    vote2(AXIS_TKEEP_Pos)  <= S_AXIS2_TKEEP;
    vote2(AXIS_TID_Pos)    <= S_AXIS2_TID;
    vote2(AXIS_TDEST_Pos)  <= S_AXIS2_TDEST;
    vote2(AXIS_TUSER_Pos)  <= S_AXIS2_TUSER;
    S_AXIS2_TREADY         <= M_AXIS_TREADY;
    -- AXIS #3
    vote3(AXIS_TLAST_Pos)  <= S_AXIS3_TLAST;
    vote3(AXIS_TDATA_Pos)  <= S_AXIS3_TDATA;
    vote3(AXIS_TVALID_Pos) <= S_AXIS3_TVALID;
    vote3(AXIS_TSTRB_Pos)  <= S_AXIS3_TSTRB;
    vote3(AXIS_TKEEP_Pos)  <= S_AXIS3_TKEEP;
    vote3(AXIS_TID_Pos)    <= S_AXIS3_TID;
    vote3(AXIS_TDEST_Pos)  <= S_AXIS3_TDEST;
    vote3(AXIS_TUSER_Pos)  <= S_AXIS3_TUSER;
    S_AXIS3_TREADY         <= M_AXIS_TREADY;
    -- AXIS Voted
    M_AXIS_TLAST           <= voted(AXIS_TLAST_Pos);
    M_AXIS_TDATA           <= voted(AXIS_TDATA_Pos);
    M_AXIS_TVALID          <= voted(AXIS_TVALID_Pos);
    M_AXIS_TSTRB           <= voted(AXIS_TSTRB_Pos);
    M_AXIS_TKEEP           <= voted(AXIS_TKEEP_Pos);
    M_AXIS_TID             <= voted(AXIS_TID_Pos);
    M_AXIS_TDEST           <= voted(AXIS_TDEST_Pos);
    M_AXIS_TUSER           <= voted(AXIS_TUSER_Pos);

end architecture imp ;


-------------------------------------------------------------------------------
-- trace_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016-2017,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        trace_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              trace_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity trace_voter is
  generic (
    C_ADDR_SIZE       : integer range 32 to 64 := 32;
    C_DATA_SIZE       : integer range 32 to 32 := 32;
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable      : in std_logic_vector(3 downto 0);
    -- Trace #1
    Trace1_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Valid_Instr      : in  std_logic;
    Trace1_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Reg_Write        : in  std_logic;
    Trace1_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace1_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace1_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace1_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Exception_Taken  : in  std_logic;
    Trace1_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace1_Jump_Taken       : in  std_logic;
    Trace1_Delay_Slot       : in  std_logic;
    Trace1_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace1_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace1_Data_Access      : in  std_logic;
    Trace1_Data_Read        : in  std_logic;
    Trace1_Data_Write       : in  std_logic;
    Trace1_DCache_Req       : in  std_logic;
    Trace1_DCache_Hit       : in  std_logic;
    Trace1_DCache_Rdy       : in  std_logic;
    Trace1_DCache_Read      : in  std_logic;
    Trace1_ICache_Req       : in  std_logic;
    Trace1_ICache_Hit       : in  std_logic;
    Trace1_ICache_Rdy       : in  std_logic;
    Trace1_OF_PipeRun       : in  std_logic;
    Trace1_EX_PipeRun       : in  std_logic;
    Trace1_MEM_PipeRun      : in  std_logic;
    Trace1_MB_Halted        : in  std_logic;
    Trace1_Jump_Hit         : in  std_logic;
    -- Trace #2
    Trace2_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Valid_Instr      : in  std_logic;
    Trace2_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Reg_Write        : in  std_logic;
    Trace2_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace2_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace2_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace2_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Exception_Taken  : in  std_logic;
    Trace2_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace2_Jump_Taken       : in  std_logic;
    Trace2_Delay_Slot       : in  std_logic;
    Trace2_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace2_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace2_Data_Access      : in  std_logic;
    Trace2_Data_Read        : in  std_logic;
    Trace2_Data_Write       : in  std_logic;
    Trace2_DCache_Req       : in  std_logic;
    Trace2_DCache_Hit       : in  std_logic;
    Trace2_DCache_Rdy       : in  std_logic;
    Trace2_DCache_Read      : in  std_logic;
    Trace2_ICache_Req       : in  std_logic;
    Trace2_ICache_Hit       : in  std_logic;
    Trace2_ICache_Rdy       : in  std_logic;
    Trace2_OF_PipeRun       : in  std_logic;
    Trace2_EX_PipeRun       : in  std_logic;
    Trace2_MEM_PipeRun      : in  std_logic;
    Trace2_MB_Halted        : in  std_logic;
    Trace2_Jump_Hit         : in  std_logic;
    -- Trace #3
    Trace3_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Valid_Instr      : in  std_logic;
    Trace3_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Reg_Write        : in  std_logic;
    Trace3_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace3_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace3_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace3_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Exception_Taken  : in  std_logic;
    Trace3_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace3_Jump_Taken       : in  std_logic;
    Trace3_Delay_Slot       : in  std_logic;
    Trace3_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace3_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace3_Data_Access      : in  std_logic;
    Trace3_Data_Read        : in  std_logic;
    Trace3_Data_Write       : in  std_logic;
    Trace3_DCache_Req       : in  std_logic;
    Trace3_DCache_Hit       : in  std_logic;
    Trace3_DCache_Rdy       : in  std_logic;
    Trace3_DCache_Read      : in  std_logic;
    Trace3_ICache_Req       : in  std_logic;
    Trace3_ICache_Hit       : in  std_logic;
    Trace3_ICache_Rdy       : in  std_logic;
    Trace3_OF_PipeRun       : in  std_logic;
    Trace3_EX_PipeRun       : in  std_logic;
    Trace3_MEM_PipeRun      : in  std_logic;
    Trace3_MB_Halted        : in  std_logic;
    Trace3_Jump_Hit         : in  std_logic;
    -- Trace Voted
    Trace_Instruction      : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Valid_Instr      : out std_logic;
    Trace_PC               : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Reg_Write        : out std_logic;
    Trace_Reg_Addr         : out std_logic_vector(0 to 4);
    Trace_MSR_Reg          : out std_logic_vector(0 to 14);
    Trace_PID_Reg          : out std_logic_vector(0 to 7);
    Trace_New_Reg_Value    : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Exception_Taken  : out std_logic;
    Trace_Exception_Kind   : out std_logic_vector(0 to 4);
    Trace_Jump_Taken       : out std_logic;
    Trace_Delay_Slot       : out std_logic;
    Trace_Data_Address     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace_Data_Write_Value : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Data_Byte_Enable : out std_logic_vector(0 to 3);
    Trace_Data_Access      : out std_logic;
    Trace_Data_Read        : out std_logic;
    Trace_Data_Write       : out std_logic;
    Trace_DCache_Req       : out std_logic;
    Trace_DCache_Hit       : out std_logic;
    Trace_DCache_Rdy       : out std_logic;
    Trace_DCache_Read      : out std_logic;
    Trace_ICache_Req       : out std_logic;
    Trace_ICache_Hit       : out std_logic;
    Trace_ICache_Rdy       : out std_logic;
    Trace_OF_PipeRun       : out std_logic;
    Trace_EX_PipeRun       : out std_logic;
    Trace_MEM_PipeRun      : out std_logic;
    Trace_MB_Halted        : out std_logic;
    Trace_Jump_Hit         : out std_logic);
end entity trace_voter;

architecture imp of trace_voter is

  -- Positions for signals used in voting
  constant Trace_Valid_Instr_Pos        : natural :=    0;
  constant Trace_Reg_Write_Pos          : natural :=    Trace_Valid_Instr_Pos + 1;
  subtype  Trace_Reg_Addr_Pos          is natural range Trace_Reg_Write_Pos + 1 to
                                                        Trace_Reg_Write_Pos + Trace1_Reg_Addr'length;
  subtype  Trace_New_Reg_Value_Pos     is natural range Trace_Reg_Addr_Pos'high + 1 to
                                                        Trace_Reg_Addr_Pos'high  + Trace1_New_Reg_Value'length;
  subtype  Trace_Data_Address_Pos      is natural range Trace_New_Reg_Value_Pos'high + 1 to
                                                        Trace_New_Reg_Value_Pos'high + Trace1_Data_Address'length;
  subtype  Trace_Data_Write_Value_Pos  is natural range Trace_Data_Address_Pos'high + 1 to
                                                        Trace_Data_Address_Pos'high + Trace1_Data_Write_Value'length;
  subtype  Trace_Data_Byte_Enable_Pos  is natural range Trace_Data_Write_Value_Pos'high + 1 to
                                                        Trace_Data_Write_Value_Pos'high +
                                                        Trace1_Data_Byte_Enable'length;
  constant Trace_Data_Access_Pos        : natural :=    Trace_Data_Byte_Enable_Pos'high + 1;
  constant Trace_Data_Read_Pos          : natural :=    Trace_Data_Access_Pos + 1;
  constant Trace_Data_Write_Pos         : natural :=    Trace_Data_Read_Pos + 1;
  subtype  Trace_Instruction_Pos       is natural range Trace_Data_Write_Pos + 1 to
                                                        Trace_Data_Write_Pos + Trace1_Instruction'length;
  subtype  Trace_PC_Pos                is natural range Trace_Instruction_Pos'high + 1 to
                                                        Trace_Instruction_Pos'high + Trace1_PC'length;
  subtype  Trace_MSR_Reg_Pos           is natural range Trace_PC_Pos'high + 1 to
                                                        Trace_PC_Pos'high + Trace1_MSR_Reg'length;
  subtype  Trace_PID_Reg_Pos           is natural range Trace_MSR_Reg_Pos'high + 1 to
                                                        Trace_MSR_Reg_Pos'high + Trace1_PID_Reg'length;
  constant Trace_Exception_Taken_Pos    : natural :=    Trace_PID_Reg_Pos'high + 1;
  subtype  Trace_Exception_Kind_Pos    is natural range Trace_Exception_Taken_Pos + 1 to
                                                        Trace_Exception_Taken_Pos + Trace1_Exception_Kind'length;
  constant Trace_Jump_Taken_Pos         : natural :=    Trace_Exception_Kind_Pos'high + 1;
  constant Trace_Delay_Slot_Pos         : natural :=    Trace_Jump_Taken_Pos + 1;
  constant Trace_DCache_Req_Pos         : natural :=    Trace_Delay_Slot_Pos + 1;
  constant Trace_DCache_Hit_Pos         : natural :=    Trace_DCache_Req_Pos + 1;
  constant Trace_DCache_Rdy_Pos         : natural :=    Trace_DCache_Hit_Pos + 1;
  constant Trace_DCache_Read_Pos        : natural :=    Trace_DCache_Rdy_Pos + 1;
  constant Trace_ICache_Req_Pos         : natural :=    Trace_DCache_Read_Pos + 1;
  constant Trace_ICache_Hit_Pos         : natural :=    Trace_ICache_Req_Pos + 1;
  constant Trace_ICache_Rdy_Pos         : natural :=    Trace_ICache_Hit_Pos + 1;
  constant Trace_OF_PipeRun_Pos         : natural :=    Trace_ICache_Rdy_Pos + 1;
  constant Trace_EX_PipeRun_Pos         : natural :=    Trace_OF_PipeRun_Pos + 1;
  constant Trace_MEM_PipeRun_Pos        : natural :=    Trace_EX_PipeRun_Pos + 1;
  constant Trace_MB_Halted_Pos          : natural :=    Trace_MEM_PipeRun_Pos + 1;
  constant Trace_Jump_Hit_Pos           : natural :=    Trace_MB_Halted_Pos + 1;
  constant C_WIDTH                      : natural :=    Trace_Jump_Hit_Pos + 1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- Trace #1
    vote1(Trace_Instruction_Pos)      <= Trace1_Instruction;
    vote1(Trace_Valid_Instr_Pos)      <= Trace1_Valid_Instr;
    vote1(Trace_PC_Pos)               <= Trace1_PC;
    vote1(Trace_Reg_Write_Pos)        <= Trace1_Reg_Write;
    vote1(Trace_Reg_Addr_Pos)         <= Trace1_Reg_Addr;
    vote1(Trace_MSR_Reg_Pos)          <= Trace1_MSR_Reg;
    vote1(Trace_PID_Reg_Pos)          <= Trace1_PID_Reg;
    vote1(Trace_New_Reg_Value_Pos)    <= Trace1_New_Reg_Value;
    vote1(Trace_Exception_Taken_Pos)  <= Trace1_Exception_Taken;
    vote1(Trace_Exception_Kind_Pos)   <= Trace1_Exception_Kind;
    vote1(Trace_Jump_Taken_Pos)       <= Trace1_Jump_Taken;
    vote1(Trace_Delay_Slot_Pos)       <= Trace1_Delay_Slot;
    vote1(Trace_Data_Address_Pos)     <= Trace1_Data_Address;
    vote1(Trace_Data_Write_Value_Pos) <= Trace1_Data_Write_Value;
    vote1(Trace_Data_Byte_Enable_Pos) <= Trace1_Data_Byte_Enable;
    vote1(Trace_Data_Access_Pos)      <= Trace1_Data_Access;
    vote1(Trace_Data_Read_Pos)        <= Trace1_Data_Read;
    vote1(Trace_Data_Write_Pos)       <= Trace1_Data_Write;
    vote1(Trace_DCache_Req_Pos)       <= Trace1_DCache_Req;
    vote1(Trace_DCache_Hit_Pos)       <= Trace1_DCache_Hit;
    vote1(Trace_DCache_Rdy_Pos)       <= Trace1_DCache_Rdy;
    vote1(Trace_DCache_Read_Pos)      <= Trace1_DCache_Read;
    vote1(Trace_ICache_Req_Pos)       <= Trace1_ICache_Req;
    vote1(Trace_ICache_Hit_Pos)       <= Trace1_ICache_Hit;
    vote1(Trace_ICache_Rdy_Pos)       <= Trace1_ICache_Rdy;
    vote1(Trace_OF_PipeRun_Pos)       <= Trace1_OF_PipeRun;
    vote1(Trace_EX_PipeRun_Pos)       <= Trace1_EX_PipeRun;
    vote1(Trace_MEM_PipeRun_Pos)      <= Trace1_MEM_PipeRun;
    vote1(Trace_MB_Halted_Pos)        <= Trace1_MB_Halted;
    vote1(Trace_Jump_Hit_Pos)         <= Trace1_Jump_Hit;
    -- Trace #2
    vote2(Trace_Instruction_Pos)      <= Trace2_Instruction;
    vote2(Trace_Valid_Instr_Pos)      <= Trace2_Valid_Instr;
    vote2(Trace_PC_Pos)               <= Trace2_PC;
    vote2(Trace_Reg_Write_Pos)        <= Trace2_Reg_Write;
    vote2(Trace_Reg_Addr_Pos)         <= Trace2_Reg_Addr;
    vote2(Trace_MSR_Reg_Pos)          <= Trace2_MSR_Reg;
    vote2(Trace_PID_Reg_Pos)          <= Trace2_PID_Reg;
    vote2(Trace_New_Reg_Value_Pos)    <= Trace2_New_Reg_Value;
    vote2(Trace_Exception_Taken_Pos)  <= Trace2_Exception_Taken;
    vote2(Trace_Exception_Kind_Pos)   <= Trace2_Exception_Kind;
    vote2(Trace_Jump_Taken_Pos)       <= Trace2_Jump_Taken;
    vote2(Trace_Delay_Slot_Pos)       <= Trace2_Delay_Slot;
    vote2(Trace_Data_Address_Pos)     <= Trace2_Data_Address;
    vote2(Trace_Data_Write_Value_Pos) <= Trace2_Data_Write_Value;
    vote2(Trace_Data_Byte_Enable_Pos) <= Trace2_Data_Byte_Enable;
    vote2(Trace_Data_Access_Pos)      <= Trace2_Data_Access;
    vote2(Trace_Data_Read_Pos)        <= Trace2_Data_Read;
    vote2(Trace_Data_Write_Pos)       <= Trace2_Data_Write;
    vote2(Trace_DCache_Req_Pos)       <= Trace2_DCache_Req;
    vote2(Trace_DCache_Hit_Pos)       <= Trace2_DCache_Hit;
    vote2(Trace_DCache_Rdy_Pos)       <= Trace2_DCache_Rdy;
    vote2(Trace_DCache_Read_Pos)      <= Trace2_DCache_Read;
    vote2(Trace_ICache_Req_Pos)       <= Trace2_ICache_Req;
    vote2(Trace_ICache_Hit_Pos)       <= Trace2_ICache_Hit;
    vote2(Trace_ICache_Rdy_Pos)       <= Trace2_ICache_Rdy;
    vote2(Trace_OF_PipeRun_Pos)       <= Trace2_OF_PipeRun;
    vote2(Trace_EX_PipeRun_Pos)       <= Trace2_EX_PipeRun;
    vote2(Trace_MEM_PipeRun_Pos)      <= Trace2_MEM_PipeRun;
    vote2(Trace_MB_Halted_Pos)        <= Trace2_MB_Halted;
    vote2(Trace_Jump_Hit_Pos)         <= Trace2_Jump_Hit;
     -- Trace #3
    vote3(Trace_Instruction_Pos)      <= Trace3_Instruction;
    vote3(Trace_Valid_Instr_Pos)      <= Trace3_Valid_Instr;
    vote3(Trace_PC_Pos)               <= Trace3_PC;
    vote3(Trace_Reg_Write_Pos)        <= Trace3_Reg_Write;
    vote3(Trace_Reg_Addr_Pos)         <= Trace3_Reg_Addr;
    vote3(Trace_MSR_Reg_Pos)          <= Trace3_MSR_Reg;
    vote3(Trace_PID_Reg_Pos)          <= Trace3_PID_Reg;
    vote3(Trace_New_Reg_Value_Pos)    <= Trace3_New_Reg_Value;
    vote3(Trace_Exception_Taken_Pos)  <= Trace3_Exception_Taken;
    vote3(Trace_Exception_Kind_Pos)   <= Trace3_Exception_Kind;
    vote3(Trace_Jump_Taken_Pos)       <= Trace3_Jump_Taken;
    vote3(Trace_Delay_Slot_Pos)       <= Trace3_Delay_Slot;
    vote3(Trace_Data_Address_Pos)     <= Trace3_Data_Address;
    vote3(Trace_Data_Write_Value_Pos) <= Trace3_Data_Write_Value;
    vote3(Trace_Data_Byte_Enable_Pos) <= Trace3_Data_Byte_Enable;
    vote3(Trace_Data_Access_Pos)      <= Trace3_Data_Access;
    vote3(Trace_Data_Read_Pos)        <= Trace3_Data_Read;
    vote3(Trace_Data_Write_Pos)       <= Trace3_Data_Write;
    vote3(Trace_DCache_Req_Pos)       <= Trace3_DCache_Req;
    vote3(Trace_DCache_Hit_Pos)       <= Trace3_DCache_Hit;
    vote3(Trace_DCache_Rdy_Pos)       <= Trace3_DCache_Rdy;
    vote3(Trace_DCache_Read_Pos)      <= Trace3_DCache_Read;
    vote3(Trace_ICache_Req_Pos)       <= Trace3_ICache_Req;
    vote3(Trace_ICache_Hit_Pos)       <= Trace3_ICache_Hit;
    vote3(Trace_ICache_Rdy_Pos)       <= Trace3_ICache_Rdy;
    vote3(Trace_OF_PipeRun_Pos)       <= Trace3_OF_PipeRun;
    vote3(Trace_EX_PipeRun_Pos)       <= Trace3_EX_PipeRun;
    vote3(Trace_MEM_PipeRun_Pos)      <= Trace3_MEM_PipeRun;
    vote3(Trace_MB_Halted_Pos)        <= Trace3_MB_Halted;
    vote3(Trace_Jump_Hit_Pos)         <= Trace3_Jump_Hit;
    -- Trace Voted
    Trace_Instruction      <= voted(Trace_Instruction_Pos);
    Trace_Valid_Instr      <= voted(Trace_Valid_Instr_Pos);
    Trace_PC               <= voted(Trace_PC_Pos);
    Trace_Reg_Write        <= voted(Trace_Reg_Write_Pos);
    Trace_Reg_Addr         <= voted(Trace_Reg_Addr_Pos);
    Trace_MSR_Reg          <= voted(Trace_MSR_Reg_Pos);
    Trace_PID_Reg          <= voted(Trace_PID_Reg_Pos);
    Trace_New_Reg_Value    <= voted(Trace_New_Reg_Value_Pos);
    Trace_Exception_Taken  <= voted(Trace_Exception_Taken_Pos);
    Trace_Exception_Kind   <= voted(Trace_Exception_Kind_Pos);
    Trace_Jump_Taken       <= voted(Trace_Jump_Taken_Pos);
    Trace_Delay_Slot       <= voted(Trace_Delay_Slot_Pos);
    Trace_Data_Address     <= voted(Trace_Data_Address_Pos);
    Trace_Data_Write_Value <= voted(Trace_Data_Write_Value_Pos);
    Trace_Data_Byte_Enable <= voted(Trace_Data_Byte_Enable_Pos);
    Trace_Data_Access      <= voted(Trace_Data_Access_Pos);
    Trace_Data_Read        <= voted(Trace_Data_Read_Pos);
    Trace_Data_Write       <= voted(Trace_Data_Write_Pos);
    Trace_DCache_Req       <= voted(Trace_DCache_Req_Pos);
    Trace_DCache_Hit       <= voted(Trace_DCache_Hit_Pos);
    Trace_DCache_Rdy       <= voted(Trace_DCache_Rdy_Pos);
    Trace_DCache_Read      <= voted(Trace_DCache_Read_Pos);
    Trace_ICache_Req       <= voted(Trace_ICache_Req_Pos);
    Trace_ICache_Hit       <= voted(Trace_ICache_Hit_Pos);
    Trace_ICache_Rdy       <= voted(Trace_ICache_Rdy_Pos);
    Trace_OF_PipeRun       <= voted(Trace_OF_PipeRun_Pos);
    Trace_EX_PipeRun       <= voted(Trace_EX_PipeRun_Pos);
    Trace_MEM_PipeRun      <= voted(Trace_MEM_PipeRun_Pos);
    Trace_MB_Halted        <= voted(Trace_MB_Halted_Pos);
    Trace_Jump_Hit         <= voted(Trace_Jump_Hit_Pos);

end architecture imp ;


-------------------------------------------------------------------------------
-- interrupt_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        interrupt_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              interrupt_voter
--                 voter
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity interrupt_voter is
  generic (
    C_USE_TMR_DISABLE : integer := 0);
  port (
    TMR_Disable  : in std_logic_vector(3 downto 0);
    -- Interrupt #1
    IRQ1         : out std_logic;
    IRQ1_Address : out std_logic_vector(0 to 31);
    IRQ1_Ack     : in  std_logic_vector(0 to 1);
    -- Interrupt #2
    IRQ2         : out std_logic;
    IRQ2_Address : out std_logic_vector(0 to 31);
    IRQ2_Ack     : in  std_logic_vector(0 to 1);
    -- Interrupt #3
    IRQ3         : out std_logic;
    IRQ3_Address : out std_logic_vector(0 to 31);
    IRQ3_Ack     : in  std_logic_vector(0 to 1);
    -- Interrupt voted
    IRQ          : in  std_logic;
    IRQ_Address  : in  std_logic_vector(0 to 31);
    IRQ_Ack      : out std_logic_vector(0 to 1));
end entity interrupt_voter;

architecture imp  of interrupt_voter is

  -- Positions for signals used in voter
  subtype  Ack_Pos     is natural range 0 to IRQ1_Ack'length-1;
  constant C_WIDTH      : natural := Ack_Pos'high+1;

  signal vote1, vote2, vote3, voted : std_logic_vector(0 to C_WIDTH-1);

begin

    vote_I : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_WIDTH,
        C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
      port map (
        TMR_Disable => TMR_Disable,
        Vote1       => vote1,
        Vote2       => vote2,
        Vote3       => vote3,
        Voted       => voted);

    -- Interrupt #1
    vote1(Ack_Pos) <= IRQ1_Ack;
    IRQ1_Address   <= IRQ_Address;
    IRQ1           <= IRQ;

    -- Interrupt #2
    vote2(Ack_Pos) <= IRQ2_Ack;
    IRQ2_Address   <= IRQ_Address;
    IRQ2           <= IRQ;

    -- Interrupt #3
    vote3(Ack_Pos) <= IRQ3_Ack;
    IRQ3_Address   <= IRQ_Address;
    IRQ3           <= IRQ;

     -- Interrupt voted
    IRQ_Ack <= voted(Ack_Pos);
    -- IRQ_Address
    -- IRQ

end architecture imp;


-------------------------------------------------------------------------------
-- comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator is
  generic (
    C_WIDTH           : integer;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk        : in  std_logic := '0';
    Rst1       : in  std_logic := '0';
    Rst2       : in  std_logic := '0';
    Enable1    : in  std_logic_vector(C_WIDTH-1 downto 0);
    Enable2    : in  std_logic_vector(C_WIDTH-1 downto 0);
    Compare1   : in  std_logic_vector(C_WIDTH-1 downto 0);
    Compare2   : in  std_logic_vector(C_WIDTH-1 downto 0);
    Force      : in  std_logic_vector(C_WIDTH-1 downto 0);
    ForceEna   : in  std_logic;
    MisCompare : out std_logic_vector(C_WIDTH-1 downto 0);
    MisMatch   : out std_logic);
end entity Comparator;

architecture IMP of Comparator is
  type std_logic_array is array (natural range <>) of std_logic_vector(C_WIDTH-1 downto 0);
  signal Compare1_i : std_logic_vector(C_WIDTH-1 downto 0);
  signal Compare2_i : std_logic_vector(C_WIDTH-1 downto 0);
  signal Enable1_i  : std_logic_vector(C_WIDTH-1 downto 0);
  signal Enable2_i  : std_logic_vector(C_WIDTH-1 downto 0);
begin

  no_input_register1: if (C_INPUT_REGISTER1 = 0) generate
  begin
    Compare1_i <= Compare1;
    Enable1_i  <= Enable1;
  end generate no_input_register1;

  input_register1: if (C_INPUT_REGISTER1 > 0) generate
    signal compare : std_logic_array(0 to C_INPUT_REGISTER1);
    signal enable  : std_logic_array(0 to C_INPUT_REGISTER1);
  begin

    compare(0) <= Compare1;
    enable(0)  <= Enable1;

    dffs_g : for I in C_INPUT_REGISTER1 downto 1 generate
    begin

      dff_i : process(Clk)
      begin
        if Clk'event and Clk = '1' then   -- rising clock edge
          if Rst1 = '1' then
            compare(I) <= (others => '0');
            enable(I)  <= (others => '0');
          else
            compare(I) <= compare(I-1);
            enable(I)  <= enable(I-1);
          end if;
        end if;
      end process dff_i;

    end generate dffs_g;
                  
    Compare1_i <= compare(C_INPUT_REGISTER1);
    Enable1_i  <= enable(C_INPUT_REGISTER1);
  end generate input_register1;

  no_input_register2: if (C_INPUT_REGISTER2 = 0) generate
  begin
    Compare2_i <= Compare2;
    Enable2_i  <= Enable2;
  end generate no_input_register2;

  input_register2: if (C_INPUT_REGISTER2 > 0) generate
    signal compare : std_logic_array(0 to C_INPUT_REGISTER2);
    signal enable  : std_logic_array(0 to C_INPUT_REGISTER2);
  begin

    compare(0) <= Compare2;
    enable(0)  <= Enable2;

    dffs_g : for I in C_INPUT_REGISTER2 downto 1 generate
    begin

      dff_i : process(Clk)
      begin
        if Clk'event and Clk = '1' then   -- rising clock edge
          if Rst2 = '1' then
            compare(I) <= (others => '0');
            enable(I)  <= (others => '0');
          else
            compare(I) <= compare(I-1);
            enable(I)  <= enable(I-1);
          end if;
        end if;
      end process dff_i;

    end generate dffs_g;
                  
    Compare2_i <= compare(C_INPUT_REGISTER2);
    Enable2_i  <= enable(C_INPUT_REGISTER2);
  end generate input_register2;


  Compare_P : process(Compare1_i, Compare2_i, Enable1_i, Enable2_i, Force, ForceEna)
    variable Forcing : std_logic_vector(C_WIDTH-1 downto 0);
    variable Enable  : std_logic_vector(C_WIDTH-1 downto 0);
  begin
    Forcing    := Force and (C_WIDTH-1 downto 0 => ForceEna);
    MisCompare <= ((Compare1_i xor Compare2_i) and Enable1_i and Enable2_i) or Forcing;

    Enable := Enable1_i and Enable2_i;
    if ((Compare1_i and Enable) or Forcing) = (Compare2_i and Enable and not Forcing) then
      MisMatch <= '0';
    else
      MisMatch <= '1';
    end if;
  end process Compare_P;

end architecture IMP;


-------------------------------------------------------------------------------
-- lmb_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        lmb_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              lmb_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity lmb_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk        : in  std_logic := '0';
    Rst1       : in  std_logic := '0';
    Rst2       : in  std_logic := '0';
    -- LMB #1
    LMB1_ABus        : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB1_WriteDBus   : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB1_AddrStrobe  : in  std_logic;
    LMB1_ReadStrobe  : in  std_logic;
    LMB1_WriteStrobe : in  std_logic;
    LMB1_BE          : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    -- LMB #2
    LMB2_ABus        : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB2_WriteDBus   : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB2_AddrStrobe  : in  std_logic;
    LMB2_ReadStrobe  : in  std_logic;
    LMB2_WriteStrobe : in  std_logic;
    LMB2_BE          : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Force            : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna         : in  std_logic;
    MisCompare       : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch         : out std_logic);
end entity lmb_comparator;

architecture imp  of lmb_comparator is

  -- Positions for signals used in comparator
  subtype  LMB_ABus_Pos       is natural range 0 to LMB1_ABus'length-1;
  subtype  LMB_WriteDBus_Pos  is natural range LMB_ABus_Pos'high+1 to LMB_ABus_Pos'high+LMB1_WriteDBus'length;
  constant LMB_AddrStrobe_Pos  : natural := LMB_WriteDBus_Pos'high+1;
  constant LMB_ReadStrobe_Pos  : natural := LMB_AddrStrobe_Pos+1;
  constant LMB_WriteStrobe_Pos : natural := LMB_ReadStrobe_Pos+1;
  subtype  LMB_BE_Pos         is natural range LMB_WriteStrobe_Pos+1 to LMB_WriteStrobe_Pos+LMB1_BE'length;
  constant C_WIDTH             : natural := LMB_BE_Pos'high+1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(LMB_ABus_Pos)        := (LMB_ABus_Pos      => C_INCLUDE_MASK(0));
    mask(LMB_WriteDBus_Pos)   := (LMB_WriteDBus_Pos => C_INCLUDE_MASK(1));
    mask(LMB_AddrStrobe_Pos)  :=                       C_INCLUDE_MASK(2);
    mask(LMB_ReadStrobe_Pos)  :=                       C_INCLUDE_MASK(3);
    mask(LMB_WriteStrobe_Pos) :=                       C_INCLUDE_MASK(4);
    mask(LMB_BE_Pos)          := (LMB_BE_Pos        => C_INCLUDE_MASK(5));

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin  -- architecture imp

  assert C_WIDTH = C_COMPARE_WIDTH
      report   "LMB Trace Miscomparator width Mismatch"
      severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
    generic map (
      C_WIDTH           => C_WIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst1,
      Rst2       => Rst2,
      Enable1    => enable1_m,
      Enable2    => enable2_m,
      Compare1   => compare1_m,
      Compare2   => compare2_m,
      Force      => Force,
      ForceEna   => ForceEna,
      MisCompare => MisCompare,
      MisMatch   => MisMatch);

    -- LMB #1
    enable1(LMB_ABus_Pos)         <= (others => LMB1_AddrStrobe);
    enable1(LMB_WriteDBus_Pos)    <= (others => LMB1_WriteStrobe);
    enable1(LMB_AddrStrobe_Pos)   <= '1';
    enable1(LMB_WriteStrobe_Pos)  <= '1';
    enable1(LMB_ReadStrobe_Pos)   <= '1';
    enable1(LMB_BE_Pos)           <= (others => LMB1_WriteStrobe);
    compare1(LMB_ABus_Pos)        <= LMB1_ABus;
    compare1(LMB_WriteDBus_Pos)   <= LMB1_WriteDBus;
    compare1(LMB_AddrStrobe_Pos)  <= LMB1_AddrStrobe;
    compare1(LMB_ReadStrobe_Pos)  <= LMB1_ReadStrobe;
    compare1(LMB_WriteStrobe_Pos) <= LMB1_WriteStrobe;
    compare1(LMB_BE_Pos)          <= LMB1_BE;
    -- LMB #2
    enable2(LMB_ABus_Pos)         <= (others => LMB2_AddrStrobe);
    enable2(LMB_WriteDBus_Pos)    <= (others => LMB2_WriteStrobe);
    enable2(LMB_AddrStrobe_Pos)   <= '1';
    enable2(LMB_WriteStrobe_Pos)  <= '1';
    enable2(LMB_ReadStrobe_Pos)   <= '1';
    enable2(LMB_BE_Pos)           <= (others => LMB2_WriteStrobe);
    compare2(LMB_ABus_Pos)        <= LMB2_ABus;
    compare2(LMB_WriteDBus_Pos)   <= LMB2_WriteDBus;
    compare2(LMB_AddrStrobe_Pos)  <= LMB2_AddrStrobe;
    compare2(LMB_ReadStrobe_Pos)  <= LMB2_ReadStrobe;
    compare2(LMB_WriteStrobe_Pos) <= LMB2_WriteStrobe;
    compare2(LMB_BE_Pos)          <= LMB2_BE;

end architecture imp ;


-------------------------------------------------------------------------------
-- s_lmb_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_lmb_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_lmb_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity s_lmb_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_LMB_DWIDTH      : integer := 32;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk              : in  std_logic := '0';
    Rst1             : in  std_logic := '0';
    Rst2             : in  std_logic := '0';
    -- S_LMB #1
    S_LMB1_ReadDBus  : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB1_Ready     : in  std_logic;
    S_LMB1_Wait      : in  std_logic;
    S_LMB1_UE        : in  std_logic;
    S_LMB1_CE        : in  std_logic;
    -- S_LMB #2
    S_LMB2_ReadDBus  : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB2_Ready     : in  std_logic;
    S_LMB2_Wait      : in  std_logic;
    S_LMB2_UE        : in  std_logic;
    S_LMB2_CE        : in  std_logic;
    Force            : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna         : in  std_logic;
    MisCompare       : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch         : out std_logic);
end entity s_lmb_comparator;

architecture imp of s_lmb_comparator is

  -- Positions for signals used in comparator
  subtype  S_LMB_ReadDBus_Pos  is natural range 0 to S_LMB1_ReadDBus'length-1;
  constant S_LMB_Ready_Pos      : natural := S_LMB_ReadDBus_Pos'high+1;
  constant S_LMB_Wait_Pos       : natural := S_LMB_Ready_Pos+1;
  constant S_LMB_UE_Pos         : natural := S_LMB_Wait_Pos+1;
  constant S_LMB_CE_Pos         : natural := S_LMB_UE_Pos+1;
  constant C_WIDTH              : natural := S_LMB_CE_Pos+1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(S_LMB_ReadDBus_Pos) := (S_LMB_ReadDBus_Pos => C_INCLUDE_MASK(0));
    mask(S_LMB_Ready_Pos)    :=                        C_INCLUDE_MASK(1);
    mask(S_LMB_Wait_Pos)     :=                        C_INCLUDE_MASK(2);
    mask(S_LMB_UE_Pos)       :=                        C_INCLUDE_MASK(3);
    mask(S_LMB_CE_Pos)       :=                        C_INCLUDE_MASK(4);

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin  -- architecture imp

  assert C_WIDTH = C_COMPARE_WIDTH
      report   "S LMB Trace Miscomparator width Mismatch"
      severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
    generic map (
      C_WIDTH           => C_WIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst1,
      Rst2       => Rst2,
      Enable1    => enable1_m,
      Enable2    => enable2_m,
      Compare1   => compare1_m,
      Compare2   => compare2_m,
      Force      => Force,
      ForceEna   => ForceEna,
      MisCompare => MisCompare,
      MisMatch   => MisMatch);

    -- LMB #1
    enable1(S_LMB_ReadDBus_Pos)  <= (others => S_LMB1_Ready);
    enable1(S_LMB_Ready_Pos)     <= '1';
    enable1(S_LMB_Wait_Pos)      <= '1';
    enable1(S_LMB_UE_Pos)        <= S_LMB1_Ready;
    enable1(S_LMB_CE_Pos)        <= S_LMB1_Ready;
    compare1(S_LMB_ReadDBus_Pos) <= S_LMB1_ReadDBus;
    compare1(S_LMB_Ready_Pos)    <= S_LMB1_Ready;
    compare1(S_LMB_Wait_Pos)     <= S_LMB1_Wait;
    compare1(S_LMB_UE_Pos)       <= S_LMB1_UE;
    compare1(S_LMB_CE_Pos)       <= S_LMB1_CE;
    -- LMB #2
    enable2(S_LMB_ReadDBus_Pos)  <= (others => S_LMB2_Ready);
    enable2(S_LMB_Ready_Pos)     <= '1';
    enable2(S_LMB_Wait_Pos)      <= '1';
    enable2(S_LMB_UE_Pos)        <= S_LMB2_Ready;
    enable2(S_LMB_CE_Pos)        <= S_LMB2_Ready;
    compare2(S_LMB_ReadDBus_Pos) <= S_LMB2_ReadDBus;
    compare2(S_LMB_Ready_Pos)    <= S_LMB2_Ready;
    compare2(S_LMB_Wait_Pos)     <= S_LMB2_Wait;
    compare2(S_LMB_UE_Pos)       <= S_LMB2_UE;
    compare2(S_LMB_CE_Pos)       <= S_LMB2_CE;

end architecture imp ;


-------------------------------------------------------------------------------
-- bram_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        bram_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              bram_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity bram_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_ECC             : integer := 0;
    C_LMB_AWIDTH      : integer := 32;
    C_LMB_DWIDTH      : integer := 32;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk        : in  std_logic := '0';
    Rst1       : in  std_logic := '0';
    Rst2       : in  std_logic := '0';
    -- BRAM #1
    BRAM1_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM1_EN   : in  std_logic;
    BRAM1_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM1_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #2
    BRAM2_Addr : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM2_EN   : in  std_logic;
    BRAM2_WE   : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM2_Dout : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    Force      : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna   : in  std_logic;
    MisCompare : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch   : out std_logic);
end entity bram_comparator;

architecture imp  of bram_comparator is

  -- Positions for signals used in voter
  subtype  BRAM_Addr_Pos           is natural range 0 to BRAM1_Addr'length - 1;
  constant BRAM_EN_Pos           : natural :=       BRAM_Addr_Pos'high+1;
  subtype  BRAM_WE_Pos             is natural range BRAM_EN_Pos+1 to BRAM_EN_Pos+BRAM1_WE'length;
  subtype  BRAM_Dout_Pos           is natural range BRAM_WE_Pos'high+1 to BRAM_WE_Pos'high+BRAM1_Dout'length;
  constant C_WIDTH               : natural :=       BRAM_Dout_Pos'high+1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(BRAM_Addr_Pos) := (BRAM_Addr_Pos => C_INCLUDE_MASK(0));
    mask(BRAM_EN_Pos)   :=                   C_INCLUDE_MASK(1);
    mask(BRAM_WE_Pos)   := (BRAM_WE_Pos   => C_INCLUDE_MASK(2));
    mask(BRAM_Dout_Pos) := (BRAM_Dout_Pos => C_INCLUDE_MASK(3));

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin

  assert C_WIDTH = C_COMPARE_WIDTH
      report   "BRAM Trace Miscomparator width Mismatch"
      severity failure;

    enable1_m  <= enable1  and C_COMPARE_MASK;
    enable2_m  <= enable2  and C_COMPARE_MASK;
    compare1_m <= compare1 and C_COMPARE_MASK;
    compare2_m <= compare2 and C_COMPARE_MASK;

    compare_I : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map(
        Clk        => Clk,
        Rst1       => Rst1,
        Rst2       => Rst2,
        Enable1    => enable1_m,
        Enable2    => enable2_m,
        Compare1   => compare1_m,
        Compare2   => compare2_m,
        Force      => Force,
        ForceEna   => ForceEna,
        MisCompare => MisCompare,
        MisMatch   => MisMatch);

    -- BRAM #1
    enable1(BRAM_Addr_Pos)  <= (others => BRAM1_EN);
    enable1(BRAM_EN_Pos)    <= '1';
    enable1(BRAM_WE_Pos)    <= (others => '1');
    enable1(BRAM_Dout_Pos)  <= (others => BRAM1_WE(0));
    compare1(BRAM_Addr_Pos) <= BRAM1_Addr;
    compare1(BRAM_EN_Pos)   <= BRAM1_EN;
    compare1(BRAM_WE_Pos)   <= BRAM1_WE;
    compare1(BRAM_Dout_Pos) <= BRAM1_Dout;
    -- BRAM #2
    enable2(BRAM_Addr_Pos)  <= (others => BRAM2_EN);
    enable2(BRAM_EN_Pos)    <= '1';
    enable2(BRAM_WE_Pos)    <= (others => '1');
    enable2(BRAM_Dout_Pos)  <= (others => BRAM2_WE(0));
    compare2(BRAM_Addr_Pos) <= BRAM2_Addr;
    compare2(BRAM_EN_Pos)   <= BRAM2_EN;
    compare2(BRAM_WE_Pos)   <= BRAM2_WE;
    compare2(BRAM_Dout_Pos) <= BRAM2_Dout;

end architecture imp ;


-------------------------------------------------------------------------------
-- axi_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axi_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              axi_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity axi_comparator is
  generic (
    C_INCLUDE_MASK     : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH    : integer := 0;
    C_INTERFACE        : integer := 0;
    C_AXI_ID_WIDTH     : integer := 1;
    C_AXI_DATA_WIDTH   : integer := 32;
    C_AXI_ADDR_WIDTH   : integer := 32;
    C_AXI_AWUSER_WIDTH : integer := 5;
    C_AXI_ARUSER_WIDTH : integer := 5;
    C_AXI_WUSER_WIDTH  : integer := 1;
    C_AXI_RUSER_WIDTH  : integer := 1;
    C_AXI_BUSER_WIDTH  : integer := 1;
    C_INPUT_REGISTER1  : integer := 0;
    C_INPUT_REGISTER2  : integer := 0);
  port (
    Clk             : in  std_logic := '0';
    Rst1            : in  std_logic := '0';
    Rst2            : in  std_logic := '0';
    -- AXI #1
    S_AXI1_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_AWADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_AWLEN    : in  std_logic_vector(7 downto 0);
    S_AXI1_AWSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBURST  : in  std_logic_vector(1 downto 0);
    S_AXI1_AWLOCK   : in  std_logic;
    S_AXI1_AWCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI1_AWPROT   : in  std_logic_vector(2 downto 0);
    S_AXI1_AWQOS    : in  std_logic_vector(3 downto 0);
    S_AXI1_AWVALID  : in  std_logic;
    S_AXI1_AWUSER   : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI1_AWDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_AWSNOOP  : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI1_AWBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_WDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_WSTRB    : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI1_WLAST    : in  std_logic;
    S_AXI1_WVALID   : in  std_logic;
    S_AXI1_WUSER    : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI1_BREADY   : in  std_logic;
    S_AXI1_WACK     : in  std_logic;                                         -- For ACE
    S_AXI1_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_ARADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ARLEN    : in  std_logic_vector(7 downto 0);
    S_AXI1_ARSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI1_ARBURST  : in  std_logic_vector(1 downto 0);
    S_AXI1_ARLOCK   : in  std_logic;
    S_AXI1_ARCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI1_ARPROT   : in  std_logic_vector(2 downto 0);
    S_AXI1_ARQOS    : in  std_logic_vector(3 downto 0);
    S_AXI1_ARVALID  : in  std_logic;
    S_AXI1_ARUSER   : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI1_ARDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_ARSNOOP  : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI1_ARBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI1_RREADY   : in  std_logic;
    S_AXI1_RACK     : in  std_logic;                                         -- For ACE
    S_AXI1_ACREADY  : in  std_logic;                                         -- For ACE
    S_AXI1_CRVALID  : in  std_logic;                                         -- For ACE
    S_AXI1_CRRESP   : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI1_CDVALID  : in  std_logic;                                         -- For ACE
    S_AXI1_CDDATA   : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI1_CDLAST   : in  std_logic;                                         -- For ACE
    -- AXI #2
    S_AXI2_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_AWADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_AWLEN    : in  std_logic_vector(7 downto 0);
    S_AXI2_AWSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBURST  : in  std_logic_vector(1 downto 0);
    S_AXI2_AWLOCK   : in  std_logic;
    S_AXI2_AWCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI2_AWPROT   : in  std_logic_vector(2 downto 0);
    S_AXI2_AWQOS    : in  std_logic_vector(3 downto 0);
    S_AXI2_AWVALID  : in  std_logic;
    S_AXI2_AWUSER   : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI2_AWDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_AWSNOOP  : in  std_logic_vector(2 downto 0);                      -- For ACE
    S_AXI2_AWBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_WDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_WSTRB    : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI2_WLAST    : in  std_logic;
    S_AXI2_WVALID   : in  std_logic;
    S_AXI2_WUSER    : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI2_BREADY   : in  std_logic;
    S_AXI2_WACK     : in  std_logic;                                         -- For ACE
    S_AXI2_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_ARADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ARLEN    : in  std_logic_vector(7 downto 0);
    S_AXI2_ARSIZE   : in  std_logic_vector(2 downto 0);
    S_AXI2_ARBURST  : in  std_logic_vector(1 downto 0);
    S_AXI2_ARLOCK   : in  std_logic;
    S_AXI2_ARCACHE  : in  std_logic_vector(3 downto 0);
    S_AXI2_ARPROT   : in  std_logic_vector(2 downto 0);
    S_AXI2_ARQOS    : in  std_logic_vector(3 downto 0);
    S_AXI2_ARVALID  : in  std_logic;
    S_AXI2_ARUSER   : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI2_ARDOMAIN : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_ARSNOOP  : in  std_logic_vector(3 downto 0);                      -- For ACE
    S_AXI2_ARBAR    : in  std_logic_vector(1 downto 0);                      -- For ACE
    S_AXI2_RREADY   : in  std_logic;
    S_AXI2_RACK     : in  std_logic;                                         -- For ACE
    S_AXI2_ACREADY  : in  std_logic;                                         -- For ACE
    S_AXI2_CRVALID  : in  std_logic;                                         -- For ACE
    S_AXI2_CRRESP   : in  std_logic_vector(4 downto 0);                      -- For ACE
    S_AXI2_CDVALID  : in  std_logic;                                         -- For ACE
    S_AXI2_CDDATA   : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
    S_AXI2_CDLAST   : in  std_logic;                                         -- For ACE
    Force           : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna        : in  std_logic;
    MisCompare      : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch        : out std_logic);
end entity axi_comparator;

architecture imp of axi_comparator is

  -- Positions for signals used in comparator
  subtype  AXI_AWID_Pos     is natural range 0 to S_AXI1_AWID'length-1;
  subtype  AXI_AWADDR_Pos   is natural range AXI_AWID_Pos'high+1     to AXI_AWID_Pos'high     + S_AXI1_AWADDR'length;
  subtype  AXI_AWLEN_Pos    is natural range AXI_AWADDR_Pos'high+1   to AXI_AWADDR_Pos'high   + S_AXI1_AWLEN'length;
  subtype  AXI_AWSIZE_Pos   is natural range AXI_AWLEN_Pos'high+1    to AXI_AWLEN_Pos'high    + S_AXI1_AWSIZE'length;
  subtype  AXI_AWBURST_Pos  is natural range AXI_AWSIZE_Pos'high+1   to AXI_AWSIZE_Pos'high   + S_AXI1_AWBURST'length;
  constant AXI_AWLOCK_Pos    : natural :=    AXI_AWBURST_Pos'high+1;
  subtype  AXI_AWCACHE_Pos  is natural range AXI_AWLOCK_Pos+1        to AXI_AWLOCK_Pos        + S_AXI1_AWCACHE'length;
  subtype  AXI_AWPROT_Pos   is natural range AXI_AWCACHE_Pos'high+1  to AXI_AWCACHE_Pos'high  + S_AXI1_AWPROT'length;
  subtype  AXI_AWQOS_Pos    is natural range AXI_AWPROT_Pos'high+1   to AXI_AWPROT_Pos'high   + S_AXI1_AWQOS'length;
  constant AXI_AWVALID_Pos   : natural :=    AXI_AWQOS_Pos'high+1;
  subtype  AXI_AWUSER_Pos   is natural range AXI_AWVALID_Pos+1       to AXI_AWVALID_Pos       + S_AXI1_AWUSER'length;
  subtype  AXI_WDATA_Pos    is natural range AXI_AWUSER_Pos'high+1   to AXI_AWUSER_Pos'high   + S_AXI1_WDATA'length;
  subtype  AXI_WSTRB_Pos    is natural range AXI_WDATA_Pos'high+1    to AXI_WDATA_Pos'high    + S_AXI1_WSTRB'length;
  constant AXI_WLAST_Pos     : natural :=    AXI_WSTRB_Pos'high+1;
  constant AXI_WVALID_Pos    : natural :=    AXI_WLAST_Pos+1;
  subtype  AXI_WUSER_Pos    is natural range AXI_WVALID_Pos+1        to AXI_WVALID_Pos        + S_AXI1_WUSER'length;
  constant AXI_BREADY_Pos    : natural :=    AXI_WUSER_Pos'high+1;
  subtype  AXI_ARID_Pos     is natural range AXI_BREADY_Pos+1        to AXI_BREADY_Pos        + S_AXI1_ARID'length;
  subtype  AXI_ARADDR_Pos   is natural range AXI_ARID_Pos'high+1     to AXI_ARID_Pos'high     + S_AXI1_ARADDR'length;
  subtype  AXI_ARLEN_Pos    is natural range AXI_ARADDR_Pos'high+1   to AXI_ARADDR_Pos'high   + S_AXI1_ARLEN'length;
  subtype  AXI_ARSIZE_Pos   is natural range AXI_ARLEN_Pos'high+1    to AXI_ARLEN_Pos'high    + S_AXI1_ARSIZE'length;
  subtype  AXI_ARBURST_Pos  is natural range AXI_ARSIZE_Pos'high+1   to AXI_ARSIZE_Pos'high   + S_AXI1_ARBURST'length;
  constant AXI_ARLOCK_Pos    : natural :=    AXI_ARBURST_Pos'high+1;
  subtype  AXI_ARCACHE_Pos  is natural range AXI_ARLOCK_Pos+1        to AXI_ARLOCK_Pos        + S_AXI1_ARCACHE'length;
  subtype  AXI_ARPROT_Pos   is natural range AXI_ARCACHE_Pos'high+1  to AXI_ARCACHE_Pos'high  + S_AXI1_ARPROT'length;
  subtype  AXI_ARQOS_Pos    is natural range AXI_ARPROT_Pos'high+1   to AXI_ARPROT_Pos'high   + S_AXI1_ARQOS'length;
  constant AXI_ARVALID_Pos   : natural :=    AXI_ARQOS_Pos'high+1;
  subtype  AXI_ARUSER_Pos   is natural range AXI_ARVALID_Pos+1       to AXI_ARVALID_Pos       + S_AXI1_ARUSER'length;
  constant AXI_RREADY_Pos    : natural :=    AXI_ARUSER_Pos'high+1;
  subtype  AXI_AWDOMAIN_Pos is natural range AXI_RREADY_Pos+1        to AXI_RREADY_Pos        + S_AXI1_AWDOMAIN'length;
  subtype  AXI_AWSNOOP_Pos  is natural range AXI_AWDOMAIN_Pos'high+1 to AXI_AWDOMAIN_Pos'high + S_AXI1_AWSNOOP'length;
  subtype  AXI_AWBAR_Pos    is natural range AXI_AWSNOOP_Pos'high+1  to AXI_AWSNOOP_Pos'high  + S_AXI1_AWBAR'length;
  constant AXI_WACK_Pos      : natural :=    AXI_AWBAR_Pos'high+1;
  subtype  AXI_ARDOMAIN_Pos is natural range AXI_WACK_Pos+1          to AXI_WACK_Pos          + S_AXI1_ARDOMAIN'length;
  subtype  AXI_ARSNOOP_Pos  is natural range AXI_ARDOMAIN_Pos'high+1 to AXI_ARDOMAIN_Pos'high + S_AXI1_ARSNOOP'length;
  subtype  AXI_ARBAR_Pos    is natural range AXI_ARSNOOP_Pos'high+1  to AXI_ARSNOOP_Pos'high  + S_AXI1_ARBAR'length;
  constant AXI_RACK_Pos      : natural :=    AXI_ARBAR_Pos'high+1;
  constant AXI_ACREADY_Pos   : natural :=    AXI_RACK_Pos+1;
  constant AXI_CRVALID_Pos   : natural :=    AXI_ACREADY_Pos+1;
  subtype  AXI_CRRESP_Pos   is natural range AXI_CRVALID_Pos+1       to AXI_CRVALID_Pos        + S_AXI1_CRRESP'length;
  constant AXI_CDVALID_Pos   : natural :=    AXI_CRRESP_Pos'high+1;
  subtype  AXI_CDDATA_Pos   is natural range AXI_CDVALID_Pos+1       to AXI_CDVALID_Pos        + S_AXI1_CDDATA'length;
  constant AXI_CDLAST_Pos    : natural :=    AXI_CDDATA_Pos'high+1;
  constant C_AXI4_WIDTH      : natural :=    AXI_RREADY_Pos+1;
  constant C_AXI4LITE_WIDTH  : natural :=    AXI_RREADY_Pos+1;
  constant C_AXI4ACE_WIDTH   : natural :=    AXI_CDLAST_Pos+1;

  constant C_ACE : integer := 6;

  type compare_width_t is array (0 to 13) of natural;
  constant C_WIDTH : compare_width_t := (0  => 0,
                                         1  => 0,
                                         2  => 0,
                                         3  => C_AXI4_WIDTH,
                                         4  => 0,
                                         5  => 0,
                                         6  => C_AXI4ACE_WIDTH,
                                         7  => 0,
                                         8  => C_AXI4LITE_WIDTH,
                                         9  => 0,
                                         10 => 0,
                                         11 => 0,
                                         12 => 0,
                                         13 => 0);

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_AXI4ACE_WIDTH-1);
  begin
    mask(AXI_AWID_Pos)     := (AXI_AWID_Pos     => C_INCLUDE_MASK(0));
    mask(AXI_AWADDR_Pos)   := (AXI_AWADDR_Pos   => C_INCLUDE_MASK(1));
    mask(AXI_AWLEN_Pos)    := (AXI_AWLEN_Pos    => C_INCLUDE_MASK(2));
    mask(AXI_AWSIZE_Pos)   := (AXI_AWSIZE_Pos   => C_INCLUDE_MASK(3));
    mask(AXI_AWBURST_Pos)  := (AXI_AWBURST_Pos  => C_INCLUDE_MASK(4));
    mask(AXI_AWLOCK_Pos)   :=                      C_INCLUDE_MASK(5);
    mask(AXI_AWCACHE_Pos)  := (AXI_AWCACHE_Pos  => C_INCLUDE_MASK(6));
    mask(AXI_AWPROT_Pos)   := (AXI_AWPROT_Pos   => C_INCLUDE_MASK(7));
    mask(AXI_AWQOS_Pos)    := (AXI_AWQOS_Pos    => C_INCLUDE_MASK(8));
    mask(AXI_AWVALID_Pos)  :=                      C_INCLUDE_MASK(9);
    mask(AXI_AWUSER_Pos)   := (AXI_AWUSER_Pos   => C_INCLUDE_MASK(10));
    mask(AXI_WDATA_Pos)    := (AXI_WDATA_Pos    => C_INCLUDE_MASK(11));
    mask(AXI_WSTRB_Pos)    := (AXI_WSTRB_Pos    => C_INCLUDE_MASK(12));
    mask(AXI_WLAST_Pos)    :=                      C_INCLUDE_MASK(13);
    mask(AXI_WVALID_Pos)   :=                      C_INCLUDE_MASK(14);
    mask(AXI_WUSER_Pos)    := (AXI_WUSER_Pos    => C_INCLUDE_MASK(15));
    mask(AXI_BREADY_Pos)   :=                      C_INCLUDE_MASK(16);
    mask(AXI_ARID_Pos)     := (AXI_ARID_Pos     => C_INCLUDE_MASK(17));
    mask(AXI_ARADDR_Pos)   := (AXI_ARADDR_Pos   => C_INCLUDE_MASK(18));
    mask(AXI_ARLEN_Pos)    := (AXI_ARLEN_Pos    => C_INCLUDE_MASK(19));
    mask(AXI_ARSIZE_Pos)   := (AXI_ARSIZE_Pos   => C_INCLUDE_MASK(20));
    mask(AXI_ARBURST_Pos)  := (AXI_ARBURST_Pos  => C_INCLUDE_MASK(21));
    mask(AXI_ARLOCK_Pos)   :=                      C_INCLUDE_MASK(22);
    mask(AXI_ARCACHE_Pos)  := (AXI_ARCACHE_Pos  => C_INCLUDE_MASK(23));
    mask(AXI_ARPROT_Pos)   := (AXI_ARPROT_Pos   => C_INCLUDE_MASK(24));
    mask(AXI_ARQOS_Pos)    := (AXI_ARQOS_Pos    => C_INCLUDE_MASK(25));
    mask(AXI_ARVALID_Pos)  :=                      C_INCLUDE_MASK(26);
    mask(AXI_ARUSER_Pos)   := (AXI_ARUSER_Pos   => C_INCLUDE_MASK(27));
    mask(AXI_RREADY_Pos)   :=                      C_INCLUDE_MASK(28);
    mask(AXI_AWDOMAIN_Pos) := (AXI_AWDOMAIN_Pos => C_INCLUDE_MASK(29));
    mask(AXI_AWSNOOP_Pos)  := (AXI_AWSNOOP_Pos  => C_INCLUDE_MASK(30));
    mask(AXI_AWBAR_Pos)    := (AXI_AWBAR_Pos    => C_INCLUDE_MASK(31));
    mask(AXI_WACK_Pos)     :=                      C_INCLUDE_MASK(32);
    mask(AXI_ARDOMAIN_Pos) := (AXI_ARDOMAIN_Pos => C_INCLUDE_MASK(33));
    mask(AXI_ARSNOOP_Pos)  := (AXI_ARSNOOP_Pos  => C_INCLUDE_MASK(34));
    mask(AXI_ARBAR_Pos)    := (AXI_ARBAR_Pos    => C_INCLUDE_MASK(35));
    mask(AXI_RACK_Pos)     :=                      C_INCLUDE_MASK(36);
    mask(AXI_ACREADY_Pos)  :=                      C_INCLUDE_MASK(37);
    mask(AXI_CRVALID_Pos)  :=                      C_INCLUDE_MASK(38);
    mask(AXI_CRRESP_Pos)   := (AXI_CRRESP_Pos   => C_INCLUDE_MASK(39));
    mask(AXI_CDVALID_Pos)  :=                      C_INCLUDE_MASK(40);
    mask(AXI_CDDATA_Pos)   := (AXI_CDDATA_Pos   => C_INCLUDE_MASK(41));
    mask(AXI_CDLAST_Pos)   :=                      C_INCLUDE_MASK(42);

    return mask(0 to C_WIDTH(C_INTERFACE)-1);
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1) := compare_mask;

  signal enable1, enable2, compare1, compare2 : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1);
  signal enable1_m, enable2_m, compare1_m, compare2_m : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1);

begin  -- architecture imp

  assert C_WIDTH(C_INTERFACE) = C_COMPARE_WIDTH
      report   "AXI Trace Miscomparator width Mismatch"
      severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
    generic map (
      C_WIDTH           => C_WIDTH(C_INTERFACE),
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst1,
      Rst2       => Rst2,
      Enable1    => enable1_m,
      Enable2    => enable2_m,
      Compare1   => compare1_m,
      Compare2   => compare2_m,
      Force      => Force,
      ForceEna   => ForceEna,
      MisCompare => MisCompare,
      MisMatch   => MisMatch);

  -- AXI #1
  enable1(AXI_AWID_Pos)     <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWADDR_Pos)   <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWLEN_Pos)    <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWSIZE_Pos)   <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWBURST_Pos)  <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWLOCK_Pos)   <= S_AXI1_AWVALID;
  enable1(AXI_AWCACHE_Pos)  <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWPROT_Pos)   <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWQOS_Pos)    <= (others => S_AXI1_AWVALID);
  enable1(AXI_AWVALID_Pos)  <= '1';
  enable1(AXI_AWUSER_Pos)   <= (others => S_AXI1_AWVALID);
  enable1(AXI_WDATA_Pos)    <= (others => S_AXI1_WVALID);
  enable1(AXI_WSTRB_Pos)    <= (others => S_AXI1_WVALID);
  enable1(AXI_WLAST_Pos)    <= S_AXI1_WVALID;
  enable1(AXI_WVALID_Pos)   <= '1';
  enable1(AXI_WUSER_Pos)    <= (others => S_AXI1_WVALID);
  enable1(AXI_BREADY_Pos)   <= '1';
  enable1(AXI_ARID_Pos)     <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARADDR_Pos)   <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARLEN_Pos)    <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARSIZE_Pos)   <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARBURST_Pos)  <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARLOCK_Pos)   <= S_AXI1_ARVALID;
  enable1(AXI_ARCACHE_Pos)  <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARPROT_Pos)   <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARQOS_Pos)    <= (others => S_AXI1_ARVALID);
  enable1(AXI_ARVALID_Pos)  <= '1';
  enable1(AXI_ARUSER_Pos)   <= (others => S_AXI1_ARVALID);
  enable1(AXI_RREADY_Pos)   <= '1';
  compare1(AXI_AWID_Pos)    <= S_AXI1_AWID;
  compare1(AXI_AWADDR_Pos)  <= S_AXI1_AWADDR;
  compare1(AXI_AWLEN_Pos)   <= S_AXI1_AWLEN;
  compare1(AXI_AWSIZE_Pos)  <= S_AXI1_AWSIZE;
  compare1(AXI_AWBURST_Pos) <= S_AXI1_AWBURST;
  compare1(AXI_AWLOCK_Pos)  <= S_AXI1_AWLOCK;
  compare1(AXI_AWCACHE_Pos) <= S_AXI1_AWCACHE;
  compare1(AXI_AWPROT_Pos)  <= S_AXI1_AWPROT;
  compare1(AXI_AWQOS_Pos)   <= S_AXI1_AWQOS;
  compare1(AXI_AWVALID_Pos) <= S_AXI1_AWVALID;
  compare1(AXI_AWUSER_Pos)  <= S_AXI1_AWUSER;
  compare1(AXI_WDATA_Pos)   <= S_AXI1_WDATA;
  compare1(AXI_WSTRB_Pos)   <= S_AXI1_WSTRB;
  compare1(AXI_WLAST_Pos)   <= S_AXI1_WLAST;
  compare1(AXI_WVALID_Pos)  <= S_AXI1_WVALID;
  compare1(AXI_WUSER_Pos)   <= S_AXI1_WUSER;
  compare1(AXI_BREADY_Pos)  <= S_AXI1_BREADY;
  compare1(AXI_ARID_Pos)    <= S_AXI1_ARID;
  compare1(AXI_ARADDR_Pos)  <= S_AXI1_ARADDR;
  compare1(AXI_ARLEN_Pos)   <= S_AXI1_ARLEN;
  compare1(AXI_ARSIZE_Pos)  <= S_AXI1_ARSIZE;
  compare1(AXI_ARBURST_Pos) <= S_AXI1_ARBURST;
  compare1(AXI_ARLOCK_Pos)  <= S_AXI1_ARLOCK;
  compare1(AXI_ARCACHE_Pos) <= S_AXI1_ARCACHE;
  compare1(AXI_ARPROT_Pos)  <= S_AXI1_ARPROT;
  compare1(AXI_ARQOS_Pos)   <= S_AXI1_ARQOS;
  compare1(AXI_ARVALID_Pos) <= S_AXI1_ARVALID;
  compare1(AXI_ARUSER_Pos)  <= S_AXI1_ARUSER;
  compare1(AXI_RREADY_Pos)  <= S_AXI1_RREADY;
  -- AXI #2
  enable2(AXI_AWID_Pos)     <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWADDR_Pos)   <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWLEN_Pos)    <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWSIZE_Pos)   <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWBURST_Pos)  <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWLOCK_Pos)   <= S_AXI2_AWVALID;
  enable2(AXI_AWCACHE_Pos)  <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWPROT_Pos)   <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWQOS_Pos)    <= (others => S_AXI2_AWVALID);
  enable2(AXI_AWVALID_Pos)  <= '1';
  enable2(AXI_AWUSER_Pos)   <= (others => S_AXI2_AWVALID);
  enable2(AXI_WDATA_Pos)    <= (others => S_AXI2_WVALID);
  enable2(AXI_WSTRB_Pos)    <= (others => S_AXI2_WVALID);
  enable2(AXI_WLAST_Pos)    <= S_AXI2_WVALID;
  enable2(AXI_WVALID_Pos)   <= '1';
  enable2(AXI_WUSER_Pos)    <= (others => S_AXI2_WVALID);
  enable2(AXI_BREADY_Pos)   <= '1';
  enable2(AXI_ARID_Pos)     <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARADDR_Pos)   <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARLEN_Pos)    <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARSIZE_Pos)   <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARBURST_Pos)  <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARLOCK_Pos)   <= S_AXI2_ARVALID;
  enable2(AXI_ARCACHE_Pos)  <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARPROT_Pos)   <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARQOS_Pos)    <= (others => S_AXI2_ARVALID);
  enable2(AXI_ARVALID_Pos)  <= '1';
  enable2(AXI_ARUSER_Pos)   <= (others => S_AXI2_ARVALID);
  enable2(AXI_RREADY_Pos)   <= '1';
  compare2(AXI_AWID_Pos)    <= S_AXI2_AWID;
  compare2(AXI_AWADDR_Pos)  <= S_AXI2_AWADDR;
  compare2(AXI_AWLEN_Pos)   <= S_AXI2_AWLEN;
  compare2(AXI_AWSIZE_Pos)  <= S_AXI2_AWSIZE;
  compare2(AXI_AWBURST_Pos) <= S_AXI2_AWBURST;
  compare2(AXI_AWLOCK_Pos)  <= S_AXI2_AWLOCK;
  compare2(AXI_AWCACHE_Pos) <= S_AXI2_AWCACHE;
  compare2(AXI_AWPROT_Pos)  <= S_AXI2_AWPROT;
  compare2(AXI_AWQOS_Pos)   <= S_AXI2_AWQOS;
  compare2(AXI_AWVALID_Pos) <= S_AXI2_AWVALID;
  compare2(AXI_AWUSER_Pos)  <= S_AXI2_AWUSER;
  compare2(AXI_WDATA_Pos)   <= S_AXI2_WDATA;
  compare2(AXI_WSTRB_Pos)   <= S_AXI2_WSTRB;
  compare2(AXI_WLAST_Pos)   <= S_AXI2_WLAST;
  compare2(AXI_WVALID_Pos)  <= S_AXI2_WVALID;
  compare2(AXI_WUSER_Pos)   <= S_AXI2_WUSER;
  compare2(AXI_BREADY_Pos)  <= S_AXI2_BREADY;
  compare2(AXI_ARID_Pos)    <= S_AXI2_ARID;
  compare2(AXI_ARADDR_Pos)  <= S_AXI2_ARADDR;
  compare2(AXI_ARLEN_Pos)   <= S_AXI2_ARLEN;
  compare2(AXI_ARSIZE_Pos)  <= S_AXI2_ARSIZE;
  compare2(AXI_ARBURST_Pos) <= S_AXI2_ARBURST;
  compare2(AXI_ARLOCK_Pos)  <= S_AXI2_ARLOCK;
  compare2(AXI_ARCACHE_Pos) <= S_AXI2_ARCACHE;
  compare2(AXI_ARPROT_Pos)  <= S_AXI2_ARPROT;
  compare2(AXI_ARQOS_Pos)   <= S_AXI2_ARQOS;
  compare2(AXI_ARVALID_Pos) <= S_AXI2_ARVALID;
  compare2(AXI_ARUSER_Pos)  <= S_AXI2_ARUSER;
  compare2(AXI_RREADY_Pos)  <= S_AXI2_RREADY;

  ace_g: if (C_INTERFACE = C_ACE) generate
  begin
    enable1(AXI_AWDOMAIN_Pos) <= (others => S_AXI1_AWVALID);
    enable1(AXI_AWSNOOP_Pos)  <= (others => S_AXI1_AWVALID);
    enable1(AXI_AWBAR_Pos)    <= (others => S_AXI1_AWVALID);
    enable1(AXI_WACK_Pos)     <= '1';
    enable1(AXI_ARDOMAIN_Pos) <= (others => S_AXI1_ARVALID);
    enable1(AXI_ARSNOOP_Pos)  <= (others => S_AXI1_ARVALID);
    enable1(AXI_ARBAR_Pos)    <= (others => S_AXI1_ARVALID);
    enable1(AXI_RACK_Pos)     <= '1';
    enable1(AXI_ACREADY_Pos)  <= '1';
    enable1(AXI_CRVALID_Pos)  <= '1';
    enable1(AXI_CRRESP_Pos)   <= (others => S_AXI1_CRVALID);
    enable1(AXI_CDVALID_Pos)  <= '1';
    enable1(AXI_CDDATA_Pos)   <= (others => S_AXI1_CDVALID);
    enable1(AXI_CDLAST_Pos)   <= S_AXI1_CDVALID;
    compare1(AXI_AWDOMAIN_Pos)<= S_AXI1_AWDOMAIN;
    compare1(AXI_AWSNOOP_Pos) <= S_AXI1_AWSNOOP;
    compare1(AXI_AWBAR_Pos)   <= S_AXI1_AWBAR;
    compare1(AXI_WACK_Pos)    <= S_AXI1_WACK;
    compare1(AXI_ARDOMAIN_Pos)<= S_AXI1_ARDOMAIN;
    compare1(AXI_ARSNOOP_Pos) <= S_AXI1_ARSNOOP;
    compare1(AXI_ARBAR_Pos)   <= S_AXI1_ARBAR;
    compare1(AXI_RACK_Pos)    <= S_AXI1_RACK;
    compare1(AXI_ACREADY_Pos) <= S_AXI1_ACREADY;
    compare1(AXI_CRVALID_Pos) <= S_AXI1_CRVALID;
    compare1(AXI_CRRESP_Pos)  <= S_AXI1_CRRESP;
    compare1(AXI_CDVALID_Pos) <= S_AXI1_CDVALID;
    compare1(AXI_CDDATA_Pos)  <= S_AXI1_CDDATA;
    compare1(AXI_CDLAST_Pos)  <= S_AXI1_CDLAST;
    enable2(AXI_AWDOMAIN_Pos) <= (others => S_AXI2_AWVALID);
    enable2(AXI_AWSNOOP_Pos)  <= (others => S_AXI2_AWVALID);
    enable2(AXI_AWBAR_Pos)    <= (others => S_AXI2_AWVALID);
    enable2(AXI_WACK_Pos)     <= '1';
    enable2(AXI_ARDOMAIN_Pos) <= (others => S_AXI2_ARVALID);
    enable2(AXI_ARSNOOP_Pos)  <= (others => S_AXI2_ARVALID);
    enable2(AXI_ARBAR_Pos)    <= (others => S_AXI2_ARVALID);
    enable2(AXI_RACK_Pos)     <= '1';
    enable2(AXI_ACREADY_Pos)  <= '1';
    enable2(AXI_CRVALID_Pos)  <= '1';
    enable2(AXI_CRRESP_Pos)   <= (others => S_AXI2_CRVALID);
    enable2(AXI_CDVALID_Pos)  <= '1';
    enable2(AXI_CDDATA_Pos)   <= (others => S_AXI2_CDVALID);
    enable2(AXI_CDLAST_Pos)   <= S_AXI2_CDVALID;
    compare2(AXI_AWDOMAIN_Pos)<= S_AXI2_AWDOMAIN;
    compare2(AXI_AWSNOOP_Pos) <= S_AXI2_AWSNOOP;
    compare2(AXI_AWBAR_Pos)   <= S_AXI2_AWBAR;
    compare2(AXI_WACK_Pos)    <= S_AXI2_WACK;
    compare2(AXI_ARDOMAIN_Pos)<= S_AXI2_ARDOMAIN;
    compare2(AXI_ARSNOOP_Pos) <= S_AXI2_ARSNOOP;
    compare2(AXI_ARBAR_Pos)   <= S_AXI2_ARBAR;
    compare2(AXI_RACK_Pos)    <= S_AXI2_RACK;
    compare2(AXI_ACREADY_Pos) <= S_AXI2_ACREADY;
    compare2(AXI_CRVALID_Pos) <= S_AXI2_CRVALID;
    compare2(AXI_CRRESP_Pos)  <= S_AXI2_CRRESP;
    compare2(AXI_CDVALID_Pos) <= S_AXI2_CDVALID;
    compare2(AXI_CDDATA_Pos)  <= S_AXI2_CDDATA;
    compare2(AXI_CDLAST_Pos)  <= S_AXI2_CDLAST;
  end generate ace_g;

end architecture imp ;


-------------------------------------------------------------------------------
-- s_axi_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2017,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_axi_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_axi_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2017-03-23    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity s_axi_comparator is
  generic (
    C_INCLUDE_MASK     : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH    : integer := 0;
    C_INTERFACE        : integer := 0;
    C_AXI_ID_WIDTH     : integer := 1;
    C_AXI_DATA_WIDTH   : integer := 32;
    C_AXI_ADDR_WIDTH   : integer := 32;
    C_AXI_AWUSER_WIDTH : integer := 5;
    C_AXI_ARUSER_WIDTH : integer := 5;
    C_AXI_WUSER_WIDTH  : integer := 1;
    C_AXI_RUSER_WIDTH  : integer := 1;
    C_AXI_BUSER_WIDTH  : integer := 1;
    C_INPUT_REGISTER1  : integer := 0;
    C_INPUT_REGISTER2  : integer := 0);
  port (
    Clk             : in  std_logic := '0';
    Rst1            : in  std_logic := '0';
    Rst2            : in  std_logic := '0';
    -- AXI #1
    S_AXI1_AWREADY  : in  std_logic;
    S_AXI1_WREADY   : in  std_logic;
    S_AXI1_BID      : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_BRESP    : in  std_logic_vector(1 downto 0);
    S_AXI1_BVALID   : in  std_logic;
    S_AXI1_BUSER    : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI1_ARREADY  : in  std_logic;
    S_AXI1_RID      : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_RDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_RRESP    : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI1_RLAST    : in  std_logic;
    S_AXI1_RVALID   : in  std_logic;
    S_AXI1_RUSER    : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI1_ACVALID  : in  std_logic;
    S_AXI1_ACADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ACSNOOP  : in  std_logic_vector(3 downto 0);
    S_AXI1_ACPROT   : in  std_logic_vector(2 downto 0);
    S_AXI1_CRREADY  : in  std_logic;
    S_AXI1_CDREADY  : in  std_logic;
    -- AXI #2
    S_AXI2_AWREADY  : in  std_logic;
    S_AXI2_WREADY   : in  std_logic;
    S_AXI2_BID      : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_BRESP    : in  std_logic_vector(1 downto 0);
    S_AXI2_BVALID   : in  std_logic;
    S_AXI2_BUSER    : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI2_ARREADY  : in  std_logic;
    S_AXI2_RID      : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_RDATA    : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_RRESP    : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI2_RLAST    : in  std_logic;
    S_AXI2_RVALID   : in  std_logic;
    S_AXI2_RUSER    : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI2_ACVALID  : in  std_logic;
    S_AXI2_ACADDR   : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ACSNOOP  : in  std_logic_vector(3 downto 0);
    S_AXI2_ACPROT   : in  std_logic_vector(2 downto 0);
    S_AXI2_CRREADY  : in  std_logic;
    S_AXI2_CDREADY  : in  std_logic;
    Force           : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna        : in  std_logic;
    MisCompare      : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch        : out std_logic);
end entity s_axi_comparator;

architecture imp of s_axi_comparator is

  -- Positions for signals used in comparator
  constant AXI_AWREADY_Pos    : natural :=    0;
  constant AXI_WREADY_Pos     : natural :=    AXI_AWREADY_Pos+1;
  subtype  AXI_BID_Pos       is natural range AXI_WREADY_Pos+1       to AXI_WREADY_Pos       + S_AXI1_BID'length;
  subtype  AXI_BRESP_Pos     is natural range AXI_BID_Pos'high+1     to AXI_BID_Pos'high     + S_AXI1_BRESP'length;
  constant AXI_BVALID_Pos     : natural :=    AXI_BRESP_Pos'high+1;
  subtype  AXI_BUSER_Pos     is natural range AXI_BVALID_Pos+1       to AXI_BVALID_Pos       + S_AXI1_BUSER'length;
  constant AXI_ARREADY_Pos    : natural :=    AXI_BUSER_Pos'high+1;
  subtype  AXI_RID_Pos       is natural range AXI_ARREADY_Pos+1      to AXI_ARREADY_Pos      + S_AXI1_RID'length;
  subtype  AXI_RDATA_Pos     is natural range AXI_RID_Pos'high+1     to AXI_RID_Pos'high     + S_AXI1_RDATA'length;
  subtype  AXI_RRESP_Pos     is natural range AXI_RDATA_Pos'high+1   to AXI_RDATA_Pos'high   + S_AXI1_RRESP'length;
  constant AXI_RLAST_Pos      : natural :=    AXI_RRESP_Pos'high+1;
  constant AXI_RVALID_Pos     : natural :=    AXI_RLAST_Pos+1;
  subtype  AXI_RUSER_Pos     is natural range AXI_RVALID_Pos+1       to AXI_RVALID_Pos       + S_AXI1_RUSER'length;
  constant AXI_ACVALID_Pos    : natural :=    AXI_RUSER_Pos'high+1;
  subtype  AXI_ACADDR_Pos    is natural range AXI_ACVALID_Pos+1      to AXI_ACVALID_Pos      + S_AXI1_ACADDR'length;
  subtype  AXI_ACSNOOP_Pos   is natural range AXI_ACADDR_Pos'high+1  to AXI_ACADDR_Pos'high  + S_AXI1_ACSNOOP'length;
  subtype  AXI_ACPROT_Pos    is natural range AXI_ACSNOOP_Pos'high+1 to AXI_ACSNOOP_Pos'high + S_AXI1_ACPROT'length;
  constant AXI_CRREADY_Pos    : natural :=    AXI_ACPROT_Pos'high+1;
  constant AXI_CDREADY_Pos    : natural :=    AXI_CRREADY_Pos+1;
  constant C_AXI4_WIDTH       : natural :=    AXI_RUSER_Pos'high+1;
  constant C_AXI4LITE_WIDTH   : natural :=    AXI_RUSER_Pos'high+1;
  constant C_AXI4ACE_WIDTH    : natural :=    AXI_CDREADY_Pos+1;

  constant C_ACE : integer := 6;

  type compare_width_t is array (15 to 17) of natural;
  constant C_WIDTH : compare_width_t := (15 => C_AXI4_WIDTH,
                                         16 => C_AXI4LITE_WIDTH,
                                         17 => C_AXI4ACE_WIDTH);

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_AXI4ACE_WIDTH-1);
  begin
    mask(AXI_AWREADY_Pos) :=                     C_INCLUDE_MASK(0);
    mask(AXI_WREADY_Pos)  :=                     C_INCLUDE_MASK(1);
    mask(AXI_BID_Pos)     := (AXI_BID_Pos     => C_INCLUDE_MASK(2));
    mask(AXI_BRESP_Pos)   := (AXI_BRESP_Pos   => C_INCLUDE_MASK(3));
    mask(AXI_BVALID_Pos)  :=                     C_INCLUDE_MASK(4);
    mask(AXI_BUSER_Pos)   := (AXI_BUSER_Pos   => C_INCLUDE_MASK(5));
    mask(AXI_ARREADY_Pos) :=                     C_INCLUDE_MASK(6);
    mask(AXI_RID_Pos)     := (AXI_RID_Pos     => C_INCLUDE_MASK(7));
    mask(AXI_RDATA_Pos)   := (AXI_RDATA_Pos   => C_INCLUDE_MASK(8));
    mask(AXI_RRESP_Pos)   := (AXI_RRESP_Pos   => C_INCLUDE_MASK(9));
    mask(AXI_RLAST_Pos)   :=                     C_INCLUDE_MASK(10);
    mask(AXI_RVALID_Pos)  :=                     C_INCLUDE_MASK(11);
    mask(AXI_RUSER_Pos)   := (AXI_RUSER_Pos   => C_INCLUDE_MASK(12));
    mask(AXI_ACVALID_Pos) :=                     C_INCLUDE_MASK(13);
    mask(AXI_ACADDR_Pos)  := (AXI_ACADDR_Pos  => C_INCLUDE_MASK(14));
    mask(AXI_ACSNOOP_Pos) := (AXI_ACSNOOP_Pos => C_INCLUDE_MASK(15));
    mask(AXI_ACPROT_Pos)  := (AXI_ACPROT_Pos  => C_INCLUDE_MASK(16));
    mask(AXI_CRREADY_Pos) :=                     C_INCLUDE_MASK(17);
    mask(AXI_CDREADY_Pos) :=                     C_INCLUDE_MASK(18);

    return mask(0 to C_WIDTH(C_INTERFACE)-1);
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1) := compare_mask;

  signal enable1, enable2, compare1, compare2 : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1);
  signal enable1_m, enable2_m, compare1_m, compare2_m : std_logic_vector(0 to C_WIDTH(C_INTERFACE)-1);

begin  -- architecture imp

  assert C_WIDTH(C_INTERFACE) = C_COMPARE_WIDTH
      report   "AXI Slave Miscomparator width Mismatch"
      severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
    generic map (
      C_WIDTH           => C_WIDTH(C_INTERFACE),
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst1,
      Rst2       => Rst2,
      Enable1    => enable1_m,
      Enable2    => enable2_m,
      Compare1   => compare1_m,
      Compare2   => compare2_m,
      Force      => Force,
      ForceEna   => ForceEna,
      MisCompare => MisCompare,
      MisMatch   => MisMatch);

  -- AXI #1
  enable1(AXI_AWREADY_Pos)  <= '1';
  enable1(AXI_WREADY_Pos)   <= '1';
  enable1(AXI_BID_Pos)      <= (others => S_AXI1_BVALID);
  enable1(AXI_BRESP_Pos)    <= (others => S_AXI1_BVALID);
  enable1(AXI_BVALID_Pos)   <= '1';
  enable1(AXI_BUSER_Pos)    <= (others => S_AXI1_BVALID);
  enable1(AXI_ARREADY_Pos)  <= '1';
  enable1(AXI_RID_Pos)      <= (others => S_AXI1_RVALID);
  enable1(AXI_RDATA_Pos)    <= (others => S_AXI1_RVALID);
  enable1(AXI_RRESP_Pos)    <= (others => S_AXI1_RVALID);
  enable1(AXI_RLAST_Pos)    <= S_AXI1_RVALID;
  enable1(AXI_RVALID_Pos)   <= '1';
  enable1(AXI_RUSER_Pos)    <= (others => S_AXI1_RVALID);
  compare1(AXI_AWREADY_Pos) <= S_AXI1_AWREADY;
  compare1(AXI_WREADY_Pos)  <= S_AXI1_WREADY;
  compare1(AXI_BID_Pos)     <= S_AXI1_BID;
  compare1(AXI_BRESP_Pos)   <= S_AXI1_BRESP;
  compare1(AXI_BVALID_Pos)  <= S_AXI1_BVALID;
  compare1(AXI_BUSER_Pos)   <= S_AXI1_BUSER;
  compare1(AXI_ARREADY_Pos) <= S_AXI1_ARREADY;
  compare1(AXI_RID_Pos)     <= S_AXI1_RID;
  compare1(AXI_RDATA_Pos)   <= S_AXI1_RDATA;
  compare1(AXI_RRESP_Pos)   <= S_AXI1_RRESP;
  compare1(AXI_RLAST_Pos)   <= S_AXI1_RLAST;
  compare1(AXI_RVALID_Pos)  <= S_AXI1_RVALID;
  compare1(AXI_RUSER_Pos)   <= S_AXI1_RUSER;
  -- AXI #2
  enable2(AXI_AWREADY_Pos)  <= '1';
  enable2(AXI_WREADY_Pos)   <= '1';
  enable2(AXI_BID_Pos)      <= (others => S_AXI1_BVALID);
  enable2(AXI_BRESP_Pos)    <= (others => S_AXI1_BVALID);
  enable2(AXI_BVALID_Pos)   <= '1';
  enable2(AXI_BUSER_Pos)    <= (others => S_AXI1_BVALID);
  enable2(AXI_ARREADY_Pos)  <= '1';
  enable2(AXI_RID_Pos)      <= (others => S_AXI1_RVALID);
  enable2(AXI_RDATA_Pos)    <= (others => S_AXI1_RVALID);
  enable2(AXI_RRESP_Pos)    <= (others => S_AXI1_RVALID);
  enable2(AXI_RLAST_Pos)    <= S_AXI1_RVALID;
  enable2(AXI_RVALID_Pos)   <= '1';
  enable2(AXI_RUSER_Pos)    <= (others => S_AXI1_RVALID);
  compare2(AXI_AWREADY_Pos) <= S_AXI2_AWREADY;
  compare2(AXI_WREADY_Pos)  <= S_AXI2_WREADY;
  compare2(AXI_BID_Pos)     <= S_AXI2_BID;
  compare2(AXI_BRESP_Pos)   <= S_AXI2_BRESP;
  compare2(AXI_BVALID_Pos)  <= S_AXI2_BVALID;
  compare2(AXI_BUSER_Pos)   <= S_AXI2_BUSER;
  compare2(AXI_ARREADY_Pos) <= S_AXI2_ARREADY;
  compare2(AXI_RID_Pos)     <= S_AXI2_RID;
  compare2(AXI_RDATA_Pos)   <= S_AXI2_RDATA;
  compare2(AXI_RRESP_Pos)   <= S_AXI2_RRESP;
  compare2(AXI_RLAST_Pos)   <= S_AXI2_RLAST;
  compare2(AXI_RVALID_Pos)  <= S_AXI2_RVALID;
  compare2(AXI_RUSER_Pos)   <= S_AXI2_RUSER;

  ace_g: if (C_INTERFACE = C_ACE) generate
  begin
    enable1(AXI_ACVALID_Pos)  <= '1';
    enable1(AXI_ACADDR_Pos)   <= (others => S_AXI1_ACVALID);
    enable1(AXI_ACSNOOP_Pos)  <= (others => S_AXI1_ACVALID);
    enable1(AXI_ACPROT_Pos)   <= (others => S_AXI1_ACVALID);
    enable1(AXI_CRREADY_Pos)  <= '1';
    enable1(AXI_CDREADY_Pos)  <= '1';
    compare1(AXI_ACVALID_Pos) <= S_AXI1_ACVALID;
    compare1(AXI_ACADDR_Pos)  <= S_AXI1_ACADDR;
    compare1(AXI_ACSNOOP_Pos) <= S_AXI1_ACSNOOP;
    compare1(AXI_ACPROT_Pos)  <= S_AXI1_ACPROT;
    compare1(AXI_CRREADY_Pos) <= S_AXI1_CRREADY;
    compare1(AXI_CDREADY_Pos) <= S_AXI1_CDREADY;
    enable2(AXI_ACVALID_Pos)  <= '1';
    enable2(AXI_ACADDR_Pos)   <= (others => S_AXI1_ACVALID);
    enable2(AXI_ACSNOOP_Pos)  <= (others => S_AXI1_ACVALID);
    enable2(AXI_ACPROT_Pos)   <= (others => S_AXI1_ACVALID);
    enable2(AXI_CRREADY_Pos)  <= '1';
    enable2(AXI_CDREADY_Pos)  <= '1';
    compare2(AXI_ACVALID_Pos) <= S_AXI2_ACVALID;
    compare2(AXI_ACADDR_Pos)  <= S_AXI2_ACADDR;
    compare2(AXI_ACSNOOP_Pos) <= S_AXI2_ACSNOOP;
    compare2(AXI_ACPROT_Pos)  <= S_AXI2_ACPROT;
    compare2(AXI_CRREADY_Pos) <= S_AXI2_CRREADY;
    compare2(AXI_CDREADY_Pos) <= S_AXI2_CDREADY;
  end generate ace_g;

end architecture imp;


-------------------------------------------------------------------------------
-- s_axis_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        s_axis_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              s_axis_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity s_axis_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk        : in  std_logic := '0';
    Rst1       : in  std_logic := '0';
    Rst2       : in  std_logic := '0';
    -- AXIS #1
    M_AXIS1_TREADY : in  std_logic;
    -- AXIS #1
    M_AXIS2_TREADY : in  std_logic;
    Force          : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna       : in  std_logic;
    MisCompare     : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch       : out std_logic);
end entity s_axis_comparator;

architecture imp  of s_axis_comparator is

  -- Positions for signals used in comparator
  constant AXIS_TREADY_Pos  : natural :=    0;
  constant C_WIDTH          : natural :=    AXIS_TREADY_Pos + 1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(AXIS_TREADY_Pos) := C_INCLUDE_MASK(0);

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin

    assert C_WIDTH = C_COMPARE_WIDTH
      report   "S_AXIS Trace Miscomparator width Mismatch"
      severity failure;

    enable1_m  <= enable1  and C_COMPARE_MASK;
    enable2_m  <= enable2  and C_COMPARE_MASK;
    compare1_m <= compare1 and C_COMPARE_MASK;
    compare2_m <= compare2 and C_COMPARE_MASK;

    compare_I : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map(
        Clk        => Clk,
        Rst1       => Rst1,
        Rst2       => Rst2,
        Enable1    => enable1_m,
        Enable2    => enable2_m,
        Compare1   => compare1_m,
        Compare2   => compare2_m,
        Force      => Force,
        ForceEna   => ForceEna,
        MisCompare => MisCompare,
        MisMatch   => MisMatch);

    -- AXIS #1
    enable1(AXIS_TREADY_Pos)  <= '1';
    compare1(AXIS_TREADY_Pos) <= M_AXIS1_TREADY;

    -- AXIS #2
    enable2(AXIS_TREADY_Pos)  <= '1';
    compare2(AXIS_TREADY_Pos) <= M_AXIS2_TREADY;

end architecture imp ;


-------------------------------------------------------------------------------
-- m_axis_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        m_axis_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              m_axis_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity m_axis_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_AXIS_DATA_WIDTH : integer := 32;
    C_AXIS_ID_WIDTH   : integer := 1;
    C_AXIS_DEST_WIDTH : integer := 1;
    C_AXIS_USER_WIDTH : integer := 1;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk        : in  std_logic := '0';
    Rst1       : in  std_logic := '0';
    Rst2       : in  std_logic := '0';
    -- AXIS #1
    S_AXIS1_TLAST  : in  std_logic;
    S_AXIS1_TDATA  : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS1_TVALID : in  std_logic;
    S_AXIS1_TSTRB  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TKEEP  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TID    : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS1_TDEST  : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS1_TUSER  : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #1
    S_AXIS2_TLAST  : in  std_logic;
    S_AXIS2_TDATA  : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS2_TVALID : in  std_logic;
    S_AXIS2_TSTRB  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TKEEP  : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TID    : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS2_TDEST  : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS2_TUSER  : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    Force          : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna       : in  std_logic;
    MisCompare     : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch       : out std_logic);
end entity m_axis_comparator;

architecture imp  of m_axis_comparator is

  -- Positions for signals used in comparator
  constant AXIS_TLAST_Pos   : natural :=    0;
  subtype  AXIS_TDATA_Pos  is natural range AXIS_TLAST_Pos+1 to AXIS_TLAST_Pos+S_AXIS1_TDATA'length;
  constant AXIS_TVALID_Pos  : natural :=    AXIS_TDATA_Pos'high + 1;
  subtype  AXIS_TSTRB_Pos  is natural range AXIS_TVALID_Pos+1 to AXIS_TVALID_Pos+S_AXIS1_TSTRB'length;
  subtype  AXIS_TKEEP_Pos  is natural range AXIS_TSTRB_Pos'high+1 to AXIS_TSTRB_Pos'high+S_AXIS1_TKEEP'length;
  subtype  AXIS_TID_Pos    is natural range AXIS_TKEEP_Pos'high+1 to AXIS_TKEEP_Pos'high+S_AXIS1_TID'length;
  subtype  AXIS_TDEST_Pos  is natural range AXIS_TID_Pos'high+1 to AXIS_TID_Pos'high+S_AXIS1_TDEST'length;
  subtype  AXIS_TUSER_Pos  is natural range AXIS_TDEST_Pos'high+1 to AXIS_TDEST_Pos'high+S_AXIS1_TUSER'length;
  constant C_WIDTH          : natural :=    AXIS_TUSER_Pos'high + 1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(AXIS_TLAST_Pos)  :=                    C_INCLUDE_MASK(0);
    mask(AXIS_TDATA_Pos)  := (AXIS_TDATA_Pos => C_INCLUDE_MASK(1));
    mask(AXIS_TVALID_Pos) :=                    C_INCLUDE_MASK(2);
    mask(AXIS_TSTRB_Pos)  := (AXIS_TSTRB_Pos => C_INCLUDE_MASK(3));
    mask(AXIS_TKEEP_Pos)  := (AXIS_TKEEP_Pos => C_INCLUDE_MASK(4));
    mask(AXIS_TID_Pos)    := (AXIS_TID_Pos   => C_INCLUDE_MASK(5));
    mask(AXIS_TDEST_Pos)  := (AXIS_TDEST_Pos => C_INCLUDE_MASK(6));
    mask(AXIS_TUSER_Pos)  := (AXIS_TUSER_Pos => C_INCLUDE_MASK(7));

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin

  assert C_WIDTH = C_COMPARE_WIDTH
      report   "M_AXIS Trace Miscomparator width Mismatch"
      severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map(
        Clk        => Clk,
        Rst1       => Rst1,
        Rst2       => Rst2,
        Enable1    => enable1_m,
        Enable2    => enable2_m,
        Compare1   => compare1_m,
        Compare2   => compare2_m,
        Force      => Force,
        ForceEna   => ForceEna,
        MisCompare => MisCompare,
        MisMatch   => MisMatch);

    -- AXIS #1
    enable1(AXIS_TLAST_Pos)   <= S_AXIS1_TVALID;
    enable1(AXIS_TDATA_Pos)   <= (others => S_AXIS1_TVALID);
    enable1(AXIS_TVALID_Pos)  <= '1';
    enable1(AXIS_TSTRB_Pos)   <= (others => S_AXIS1_TVALID);
    enable1(AXIS_TKEEP_Pos)   <= (others => S_AXIS1_TVALID);
    enable1(AXIS_TID_Pos)     <= (others => S_AXIS1_TVALID);
    enable1(AXIS_TDEST_Pos)   <= (others => S_AXIS1_TVALID);
    enable1(AXIS_TUSER_Pos)   <= (others => S_AXIS1_TVALID);
    compare1(AXIS_TLAST_Pos)  <= S_AXIS1_TLAST;
    compare1(AXIS_TDATA_Pos)  <= S_AXIS1_TDATA;
    compare1(AXIS_TVALID_Pos) <= S_AXIS1_TVALID;
    compare1(AXIS_TSTRB_Pos)  <= S_AXIS1_TSTRB;
    compare1(AXIS_TKEEP_Pos)  <= S_AXIS1_TKEEP;
    compare1(AXIS_TID_Pos)    <= S_AXIS1_TID;
    compare1(AXIS_TDEST_Pos)  <= S_AXIS1_TDEST;
    compare1(AXIS_TUSER_Pos)  <= S_AXIS1_TUSER;

    -- AXIS #2
    enable2(AXIS_TLAST_Pos)   <= S_AXIS2_TVALID;
    enable2(AXIS_TDATA_Pos)   <= (others => S_AXIS2_TVALID);
    enable2(AXIS_TVALID_Pos)  <= '1';
    enable2(AXIS_TSTRB_Pos)   <= (others => S_AXIS2_TVALID);
    enable2(AXIS_TKEEP_Pos)   <= (others => S_AXIS2_TVALID);
    enable2(AXIS_TID_Pos)     <= (others => S_AXIS2_TVALID);
    enable2(AXIS_TDEST_Pos)   <= (others => S_AXIS2_TVALID);
    enable2(AXIS_TUSER_Pos)   <= (others => S_AXIS2_TVALID);
    compare2(AXIS_TLAST_Pos)  <= S_AXIS2_TLAST;
    compare2(AXIS_TDATA_Pos)  <= S_AXIS2_TDATA;
    compare2(AXIS_TVALID_Pos) <= S_AXIS2_TVALID;
    compare2(AXIS_TSTRB_Pos)  <= S_AXIS2_TSTRB;
    compare2(AXIS_TKEEP_Pos)  <= S_AXIS2_TKEEP;
    compare2(AXIS_TID_Pos)    <= S_AXIS2_TID;
    compare2(AXIS_TDEST_Pos)  <= S_AXIS2_TDEST;
    compare2(AXIS_TUSER_Pos)  <= S_AXIS2_TUSER;

end architecture imp ;


-------------------------------------------------------------------------------
-- trace_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016-2017,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        trace_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              trace_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity trace_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_TRACE_SIZE      : integer := 0;
    C_ADDR_SIZE       : integer range 32 to 64 := 32;
    C_DATA_SIZE       : integer range 32 to 32 := 32;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk                     : in  std_logic := '0';
    Rst1                    : in  std_logic := '0';
    Rst2                    : in  std_logic := '0';
    -- Trace #1
    Trace1_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Valid_Instr      : in  std_logic;
    Trace1_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Reg_Write        : in  std_logic;
    Trace1_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace1_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace1_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace1_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Exception_Taken  : in  std_logic;
    Trace1_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace1_Jump_Taken       : in  std_logic;
    Trace1_Delay_Slot       : in  std_logic;
    Trace1_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace1_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace1_Data_Access      : in  std_logic;
    Trace1_Data_Read        : in  std_logic;
    Trace1_Data_Write       : in  std_logic;
    Trace1_DCache_Req       : in  std_logic;
    Trace1_DCache_Hit       : in  std_logic;
    Trace1_DCache_Rdy       : in  std_logic;
    Trace1_DCache_Read      : in  std_logic;
    Trace1_ICache_Req       : in  std_logic;
    Trace1_ICache_Hit       : in  std_logic;
    Trace1_ICache_Rdy       : in  std_logic;
    Trace1_OF_PipeRun       : in  std_logic;
    Trace1_EX_PipeRun       : in  std_logic;
    Trace1_MEM_PipeRun      : in  std_logic;
    Trace1_MB_Halted        : in  std_logic;
    Trace1_Jump_Hit         : in  std_logic;
    -- Trace #2
    Trace2_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Valid_Instr      : in  std_logic;
    Trace2_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Reg_Write        : in  std_logic;
    Trace2_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace2_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace2_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace2_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Exception_Taken  : in  std_logic;
    Trace2_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace2_Jump_Taken       : in  std_logic;
    Trace2_Delay_Slot       : in  std_logic;
    Trace2_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace2_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace2_Data_Access      : in  std_logic;
    Trace2_Data_Read        : in  std_logic;
    Trace2_Data_Write       : in  std_logic;
    Trace2_DCache_Req       : in  std_logic;
    Trace2_DCache_Hit       : in  std_logic;
    Trace2_DCache_Rdy       : in  std_logic;
    Trace2_DCache_Read      : in  std_logic;
    Trace2_ICache_Req       : in  std_logic;
    Trace2_ICache_Hit       : in  std_logic;
    Trace2_ICache_Rdy       : in  std_logic;
    Trace2_OF_PipeRun       : in  std_logic;
    Trace2_EX_PipeRun       : in  std_logic;
    Trace2_MEM_PipeRun      : in  std_logic;
    Trace2_MB_Halted        : in  std_logic;
    Trace2_Jump_Hit         : in  std_logic;
    Force                   : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna                : in  std_logic;
    MisCompare              : out std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    MisMatch                : out std_logic);
end entity trace_comparator;

architecture imp of trace_comparator is

  -- Positions for signals used in comparator
  constant Trace_Valid_Instr_Pos        : natural :=    0;
  constant Trace_Reg_Write_Pos          : natural :=    Trace_Valid_Instr_Pos + 1;
  subtype  Trace_Reg_Addr_Pos          is natural range Trace_Reg_Write_Pos + 1 to
                                                        Trace_Reg_Write_Pos + Trace1_Reg_Addr'length;
  subtype  Trace_New_Reg_Value_Pos     is natural range Trace_Reg_Addr_Pos'high + 1 to
                                                        Trace_Reg_Addr_Pos'high  + Trace1_New_Reg_Value'length;
  subtype  Trace_Data_Address_Pos      is natural range Trace_New_Reg_Value_Pos'high + 1 to
                                                        Trace_New_Reg_Value_Pos'high + Trace1_Data_Address'length;
  subtype  Trace_Data_Write_Value_Pos  is natural range Trace_Data_Address_Pos'high + 1 to
                                                        Trace_Data_Address_Pos'high + Trace1_Data_Write_Value'length;
  subtype  Trace_Data_Byte_Enable_Pos  is natural range Trace_Data_Write_Value_Pos'high + 1 to
                                                        Trace_Data_Write_Value_Pos'high +
                                                        Trace1_Data_Byte_Enable'length;
  constant Trace_Data_Access_Pos        : natural :=    Trace_Data_Byte_Enable_Pos'high + 1;
  constant Trace_Data_Read_Pos          : natural :=    Trace_Data_Access_Pos + 1;
  constant Trace_Data_Write_Pos         : natural :=    Trace_Data_Read_Pos + 1;
  subtype  Trace_Instruction_Pos       is natural range Trace_Data_Write_Pos + 1 to
                                                        Trace_Data_Write_Pos + Trace1_Instruction'length;
  subtype  Trace_PC_Pos                is natural range Trace_Instruction_Pos'high + 1 to
                                                        Trace_Instruction_Pos'high + Trace1_PC'length;
  subtype  Trace_MSR_Reg_Pos           is natural range Trace_PC_Pos'high + 1 to
                                                        Trace_PC_Pos'high + Trace1_MSR_Reg'length;
  subtype  Trace_PID_Reg_Pos           is natural range Trace_MSR_Reg_Pos'high + 1 to
                                                        Trace_MSR_Reg_Pos'high + Trace1_PID_Reg'length;
  constant Trace_Exception_Taken_Pos    : natural :=    Trace_PID_Reg_Pos'high + 1;
  subtype  Trace_Exception_Kind_Pos    is natural range Trace_Exception_Taken_Pos + 1 to
                                                        Trace_Exception_Taken_Pos + Trace1_Exception_Kind'length;
  constant Trace_Jump_Taken_Pos         : natural :=    Trace_Exception_Kind_Pos'high + 1;
  constant Trace_Delay_Slot_Pos         : natural :=    Trace_Jump_Taken_Pos + 1;
  constant Trace_DCache_Req_Pos         : natural :=    Trace_Delay_Slot_Pos + 1;
  constant Trace_DCache_Hit_Pos         : natural :=    Trace_DCache_Req_Pos + 1;
  constant Trace_DCache_Rdy_Pos         : natural :=    Trace_DCache_Hit_Pos + 1;
  constant Trace_DCache_Read_Pos        : natural :=    Trace_DCache_Rdy_Pos + 1;
  constant Trace_ICache_Req_Pos         : natural :=    Trace_DCache_Read_Pos + 1;
  constant Trace_ICache_Hit_Pos         : natural :=    Trace_ICache_Req_Pos + 1;
  constant Trace_ICache_Rdy_Pos         : natural :=    Trace_ICache_Hit_Pos + 1;
  constant Trace_OF_PipeRun_Pos         : natural :=    Trace_ICache_Rdy_Pos + 1;
  constant Trace_EX_PipeRun_Pos         : natural :=    Trace_OF_PipeRun_Pos + 1;
  constant Trace_MEM_PipeRun_Pos        : natural :=    Trace_EX_PipeRun_Pos + 1;
  constant Trace_MB_Halted_Pos          : natural :=    Trace_MEM_PipeRun_Pos + 1;
  constant Trace_Jump_Hit_Pos           : natural :=    Trace_MB_Halted_Pos + 1;
  constant C_WIDTH_FULL                 : natural :=    Trace_Jump_Hit_Pos + 1;
  constant C_WIDTH_REGWR                : natural :=    Trace_New_Reg_value_Pos'high + 1;
  constant C_WIDTH_REGWR_DATA           : natural :=    Trace_Data_Write_Pos + 1;

  type TraceSize2Width_T is array (0 to 2) of natural;
  constant TraceSize2Width : TraceSize2Width_T := (0 => C_WIDTH_FULL, 1 => C_WIDTH_REGWR, 2 => C_WIDTH_REGWR_DATA);
  constant C_WIDTH : natural := TraceSize2Width(C_TRACE_SIZE);

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH_FULL-1);
  begin
    mask(Trace_Valid_Instr_Pos)        :=                                C_INCLUDE_MASK(0);
    mask(Trace_Reg_Write_Pos)          :=                                C_INCLUDE_MASK(1);
    mask(Trace_Reg_Addr_Pos)           := (Trace_Reg_Addr_Pos         => C_INCLUDE_MASK(2));
    mask(Trace_New_Reg_Value_Pos)      := (Trace_New_Reg_Value_Pos    => C_INCLUDE_MASK(3));
    mask(Trace_Data_Address_Pos)       := (Trace_Data_Address_Pos     => C_INCLUDE_MASK(4));
    mask(Trace_Data_Write_Value_Pos)   := (Trace_Data_Write_Value_Pos => C_INCLUDE_MASK(5));
    mask(Trace_Data_Byte_Enable_Pos)   := (Trace_Data_Byte_Enable_Pos => C_INCLUDE_MASK(6));
    mask(Trace_Data_Access_Pos)        :=                                C_INCLUDE_MASK(7);
    mask(Trace_Data_Read_Pos)          :=                                C_INCLUDE_MASK(8);
    mask(Trace_Data_Write_Pos)         :=                                C_INCLUDE_MASK(9);
    mask(Trace_Instruction_Pos)        := (Trace_Instruction_Pos      => C_INCLUDE_MASK(10));
    mask(Trace_PC_Pos)                 := (Trace_PC_Pos               => C_INCLUDE_MASK(11));
    mask(Trace_MSR_Reg_Pos)            := (Trace_MSR_Reg_Pos          => C_INCLUDE_MASK(12));
    mask(Trace_PID_Reg_Pos)            := (Trace_PID_Reg_Pos          => C_INCLUDE_MASK(13));
    mask(Trace_Exception_Taken_Pos)    :=                                C_INCLUDE_MASK(14);
    mask(Trace_Exception_Kind_Pos)     := (Trace_Exception_Kind_Pos   => C_INCLUDE_MASK(15));
    mask(Trace_Jump_Taken_Pos)         :=                                C_INCLUDE_MASK(16);
    mask(Trace_Delay_Slot_Pos)         :=                                C_INCLUDE_MASK(17);
    mask(Trace_DCache_Req_Pos)         :=                                C_INCLUDE_MASK(18);
    mask(Trace_DCache_Hit_Pos)         :=                                C_INCLUDE_MASK(19);
    mask(Trace_DCache_Rdy_Pos)         :=                                C_INCLUDE_MASK(20);
    mask(Trace_DCache_Read_Pos)        :=                                C_INCLUDE_MASK(21);
    mask(Trace_ICache_Req_Pos)         :=                                C_INCLUDE_MASK(22);
    mask(Trace_ICache_Hit_Pos)         :=                                C_INCLUDE_MASK(23);
    mask(Trace_ICache_Rdy_Pos)         :=                                C_INCLUDE_MASK(24);
    mask(Trace_OF_PipeRun_Pos)         :=                                C_INCLUDE_MASK(25);
    mask(Trace_EX_PipeRun_Pos)         :=                                C_INCLUDE_MASK(26);
    mask(Trace_MEM_PipeRun_Pos)        :=                                C_INCLUDE_MASK(27);
    mask(Trace_MB_Halted_Pos)          :=                                C_INCLUDE_MASK(28);
    mask(Trace_Jump_Hit_Pos)           :=                                C_INCLUDE_MASK(29);

    return mask(0 to C_WIDTH-1);
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

  signal trace1_reg_value_valid : std_logic;
  signal trace2_reg_value_valid : std_logic;

begin

  assert C_WIDTH = C_COMPARE_WIDTH
    report   "Trace Trace Miscomparator width Mismatch"
    severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
    generic map (
      C_WIDTH           => C_WIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst1,
      Rst2       => Rst2,
      Enable1    => enable1_m,
      Enable2    => enable2_m,
      Compare1   => compare1_m,
      Compare2   => compare2_m,
      Force      => Force,
      ForceEna   => ForceEna,
      MisCompare => MisCompare,
      MisMatch   => MisMatch);

  trace1_reg_value_valid               <= Trace1_Valid_Instr and Trace1_Reg_Write;

  enable1(Trace_Valid_Instr_Pos)       <= '1';
  enable1(Trace_Reg_Write_Pos)         <= Trace1_Valid_Instr;
  enable1(Trace_Reg_Addr_Pos)          <= (others => trace1_reg_value_valid);
  enable1(Trace_New_Reg_Value_Pos)     <= (others => trace1_reg_value_valid);

  compare1(Trace_Valid_Instr_Pos)      <= Trace1_Valid_Instr;
  compare1(Trace_Reg_Write_Pos)        <= Trace1_Reg_Write;
  compare1(Trace_Reg_Addr_Pos)         <= Trace1_Reg_Addr;
  compare1(Trace_New_Reg_Value_Pos)    <= Trace1_New_Reg_Value;

  trace2_reg_value_valid               <= Trace2_Valid_Instr and Trace2_Reg_Write;

  enable2(Trace_Valid_Instr_Pos)       <= '1';
  enable2(Trace_Reg_Write_Pos)         <= Trace2_Valid_Instr;
  enable2(Trace_Reg_Addr_Pos)          <= (others => trace2_reg_value_valid);
  enable2(Trace_New_Reg_Value_Pos)     <= (others => trace2_reg_value_valid);

  compare2(Trace_Valid_Instr_Pos)      <= Trace2_Valid_Instr;
  compare2(Trace_Reg_Write_Pos)        <= Trace2_Reg_Write;
  compare2(Trace_Reg_Addr_Pos)         <= Trace2_Reg_Addr;
  compare2(Trace_New_Reg_Value_Pos)    <= Trace2_New_Reg_Value;

  trace_regwr_data_g : if C_WIDTH = C_WIDTH_REGWR_DATA or C_WIDTH = C_WIDTH_FULL generate
    signal trace1_data_write_value_valid   : std_logic;
    signal trace1_data_address_value_valid : std_logic;
    signal trace2_data_write_value_valid   : std_logic;
    signal trace2_data_address_value_valid : std_logic;
  begin
    trace1_data_write_value_valid        <= Trace1_Valid_Instr and Trace1_Data_Write and Trace1_Data_Access;
    trace1_data_address_value_valid      <= Trace1_Valid_Instr and Trace1_Data_Access;

    enable1(Trace_Data_Address_Pos)      <= (others => trace1_data_address_value_valid);
    enable1(Trace_Data_Write_Value_Pos)  <= (others => trace1_data_write_value_valid);
    enable1(Trace_Data_Byte_Enable_Pos)  <= (others => trace1_data_write_value_valid);
    enable1(Trace_Data_Access_Pos)       <= Trace1_Valid_Instr;
    enable1(Trace_Data_Read_Pos)         <= Trace1_Valid_Instr;
    enable1(Trace_Data_Write_Pos)        <= Trace1_Valid_Instr;

    compare1(Trace_Data_Address_Pos)     <= Trace1_Data_Address;
    compare1(Trace_Data_Write_Value_Pos) <= Trace1_Data_Write_Value;
    compare1(Trace_Data_Byte_Enable_Pos) <= Trace1_Data_Byte_Enable;
    compare1(Trace_Data_Access_Pos)      <= Trace1_Data_Access;
    compare1(Trace_Data_Read_Pos)        <= Trace1_Data_Read;
    compare1(Trace_Data_Write_Pos)       <= Trace1_Data_Write;

    trace2_data_write_value_valid        <= Trace2_Valid_Instr and Trace2_Data_Write and Trace2_Data_Access;
    trace2_data_address_value_valid      <= Trace2_Valid_Instr and Trace2_Data_Access;

    enable2(Trace_Data_Address_Pos)      <= (others => trace2_data_address_value_valid);
    enable2(Trace_Data_Write_Value_Pos)  <= (others => trace2_data_write_value_valid);
    enable2(Trace_Data_Byte_Enable_Pos)  <= (others => trace2_data_write_value_valid);
    enable2(Trace_Data_Access_Pos)       <= Trace2_Valid_Instr;
    enable2(Trace_Data_Read_Pos)         <= Trace2_Valid_Instr;
    enable2(Trace_Data_Write_Pos)        <= Trace2_Valid_Instr;

    compare2(Trace_Data_Address_Pos)     <= Trace2_Data_Address;
    compare2(Trace_Data_Write_Value_Pos) <= Trace2_Data_Write_Value;
    compare2(Trace_Data_Byte_Enable_Pos) <= Trace2_Data_Byte_Enable;
    compare2(Trace_Data_Access_Pos)      <= Trace2_Data_Access;
    compare2(Trace_Data_Read_Pos)        <= Trace2_Data_Read;
    compare2(Trace_Data_Write_Pos)       <= Trace2_Data_Write;
  end generate;

  trace_full_g : if C_WIDTH = C_WIDTH_FULL generate
    signal trace1_exception_kind_valid     : std_logic;
    signal trace2_exception_kind_valid     : std_logic;
  begin
    trace1_exception_kind_valid          <= Trace1_Valid_Instr and Trace1_Exception_Taken;

    enable1(Trace_Instruction_Pos)       <= (others => Trace1_Valid_Instr);
    enable1(Trace_PC_Pos)                <= (others => Trace1_Valid_Instr);
    enable1(Trace_MSR_Reg_Pos)           <= (others => '1');
    enable1(Trace_PID_Reg_Pos)           <= (others => '1');
    enable1(Trace_Exception_Taken_Pos)   <= Trace1_Valid_Instr;
    enable1(Trace_Exception_Kind_Pos)    <= (others => trace1_exception_kind_valid);
    enable1(Trace_Jump_Taken_Pos)        <= Trace1_Valid_Instr;
    enable1(Trace_Delay_Slot_Pos)        <= Trace1_Valid_Instr;
    enable1(Trace_DCache_Req_Pos)        <= '1';
    enable1(Trace_DCache_Hit_Pos)        <= '1';
    enable1(Trace_DCache_Rdy_Pos)        <= '1';
    enable1(Trace_DCache_Read_Pos)       <= Trace1_DCache_Req;
    enable1(Trace_ICache_Req_Pos)        <= '1';
    enable1(Trace_ICache_Hit_Pos)        <= '1';
    enable1(Trace_ICache_Rdy_Pos)        <= '1';
    enable1(Trace_OF_PipeRun_Pos)        <= '1';
    enable1(Trace_EX_PipeRun_Pos)        <= '1';
    enable1(Trace_MEM_PipeRun_Pos)       <= '1';
    enable1(Trace_MB_Halted_Pos)         <= '1';
    enable1(Trace_Jump_Hit_Pos)          <= Trace1_Valid_Instr;

    compare1(Trace_Instruction_Pos)      <= Trace1_Instruction;
    compare1(Trace_PC_Pos)               <= Trace1_PC;
    compare1(Trace_MSR_Reg_Pos)          <= Trace1_MSR_Reg;
    compare1(Trace_PID_Reg_Pos)          <= Trace1_PID_Reg;
    compare1(Trace_Exception_Taken_Pos)  <= Trace1_Exception_Taken;
    compare1(Trace_Exception_Kind_Pos)   <= Trace1_Exception_Kind;
    compare1(Trace_Jump_Taken_Pos)       <= Trace1_Jump_Taken;
    compare1(Trace_Delay_Slot_Pos)       <= Trace1_Delay_Slot;
    compare1(Trace_DCache_Req_Pos)       <= Trace1_DCache_Req;
    compare1(Trace_DCache_Hit_Pos)       <= Trace1_DCache_Hit;
    compare1(Trace_DCache_Rdy_Pos)       <= Trace1_DCache_Rdy;
    compare1(Trace_DCache_Read_Pos)      <= Trace1_DCache_Read;
    compare1(Trace_ICache_Req_Pos)       <= Trace1_ICache_Req;
    compare1(Trace_ICache_Hit_Pos)       <= Trace1_ICache_Hit;
    compare1(Trace_ICache_Rdy_Pos)       <= Trace1_ICache_Rdy;
    compare1(Trace_OF_PipeRun_Pos)       <= Trace1_OF_PipeRun;
    compare1(Trace_EX_PipeRun_Pos)       <= Trace1_EX_PipeRun;
    compare1(Trace_MEM_PipeRun_Pos)      <= Trace1_MEM_PipeRun;
    compare1(Trace_MB_Halted_Pos)        <= Trace1_MB_Halted;
    compare1(Trace_Jump_Hit_Pos)         <= Trace1_Jump_Hit;

    trace2_exception_kind_valid          <= Trace2_Valid_Instr and Trace2_Exception_Taken;

    enable2(Trace_Instruction_Pos)       <= (others => Trace2_Valid_Instr);
    enable2(Trace_PC_Pos)                <= (others => Trace2_Valid_Instr);
    enable2(Trace_MSR_Reg_Pos)           <= (others => '1');
    enable2(Trace_PID_Reg_Pos)           <= (others => '1');
    enable2(Trace_Exception_Taken_Pos)   <= Trace2_Valid_Instr;
    enable2(Trace_Exception_Kind_Pos)    <= (others => trace2_exception_kind_valid);
    enable2(Trace_Jump_Taken_Pos)        <= Trace2_Valid_Instr;
    enable2(Trace_Delay_Slot_Pos)        <= Trace2_Valid_Instr;
    enable2(Trace_DCache_Req_Pos)        <= '1';
    enable2(Trace_DCache_Hit_Pos)        <= '1';
    enable2(Trace_DCache_Rdy_Pos)        <= '1';
    enable2(Trace_DCache_Read_Pos)       <= Trace2_DCache_Req;
    enable2(Trace_ICache_Req_Pos)        <= '1';
    enable2(Trace_ICache_Hit_Pos)        <= '1';
    enable2(Trace_ICache_Rdy_Pos)        <= '1';
    enable2(Trace_OF_PipeRun_Pos)        <= '1';
    enable2(Trace_EX_PipeRun_Pos)        <= '1';
    enable2(Trace_MEM_PipeRun_Pos)       <= '1';
    enable2(Trace_MB_Halted_Pos)         <= '1';
    enable2(Trace_Jump_Hit_Pos)          <= Trace2_Valid_Instr;

    compare2(Trace_Instruction_Pos)      <= Trace2_Instruction;
    compare2(Trace_PC_Pos)               <= Trace2_PC;
    compare2(Trace_MSR_Reg_Pos)          <= Trace2_MSR_Reg;
    compare2(Trace_PID_Reg_Pos)          <= Trace2_PID_Reg;
    compare2(Trace_Exception_Taken_Pos)  <= Trace2_Exception_Taken;
    compare2(Trace_Exception_Kind_Pos)   <= Trace2_Exception_Kind;
    compare2(Trace_Jump_Taken_Pos)       <= Trace2_Jump_Taken;
    compare2(Trace_Delay_Slot_Pos)       <= Trace2_Delay_Slot;
    compare2(Trace_DCache_Req_Pos)       <= Trace2_DCache_Req;
    compare2(Trace_DCache_Hit_Pos)       <= Trace2_DCache_Hit;
    compare2(Trace_DCache_Rdy_Pos)       <= Trace2_DCache_Rdy;
    compare2(Trace_DCache_Read_Pos)      <= Trace2_DCache_Read;
    compare2(Trace_ICache_Req_Pos)       <= Trace2_ICache_Req;
    compare2(Trace_ICache_Hit_Pos)       <= Trace2_ICache_Hit;
    compare2(Trace_ICache_Rdy_Pos)       <= Trace2_ICache_Rdy;
    compare2(Trace_OF_PipeRun_Pos)       <= Trace2_OF_PipeRun;
    compare2(Trace_EX_PipeRun_Pos)       <= Trace2_EX_PipeRun;
    compare2(Trace_MEM_PipeRun_Pos)      <= Trace2_MEM_PipeRun;
    compare2(Trace_MB_Halted_Pos)        <= Trace2_MB_Halted;
    compare2(Trace_Jump_Hit_Pos)         <= Trace2_Jump_Hit;
  end generate;

end architecture imp ;


-------------------------------------------------------------------------------
-- interrupt_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        interrupt_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              interrupt_comparator
--                 comparator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity interrupt_comparator is
  generic (
    C_INCLUDE_MASK    : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_COMPARE_WIDTH   : integer := 0;
    C_INPUT_REGISTER1 : integer := 0;
    C_INPUT_REGISTER2 : integer := 0);
  port (
    Clk          : in  std_logic := '0';
    Rst1         : in  std_logic := '0';
    Rst2         : in  std_logic := '0';
    -- Interrupt #1
    IRQ1_Ack     : in  std_logic_vector(0 to 1);
    -- Interrupt #2
    IRQ2_Ack     : in  std_logic_vector(0 to 1);
    Force        : in  std_logic_vector(C_COMPARE_WIDTH-1 downto 0);
    ForceEna     : in  std_logic;
    MisCompare   : out std_logic_vector(0 to 1);
    MisMatch     : out std_logic);
end entity interrupt_comparator;

architecture imp  of interrupt_comparator is

  -- Positions for signals used in comparator
  subtype  Ack_Pos     is natural range 0 to IRQ1_Ack'length-1;
  constant C_WIDTH      : natural := Ack_Pos'high+1;

  function compare_mask return std_logic_vector is
    variable mask : std_logic_vector(0 to C_WIDTH-1);
  begin
    mask(Ack_Pos) := (Ack_Pos => C_INCLUDE_MASK(0));

    return mask;
  end function compare_mask;

  constant C_COMPARE_MASK : std_logic_vector(0 to C_WIDTH-1) := compare_mask;

  signal compare1, compare2, enable1, enable2 : std_logic_vector(0 to C_WIDTH-1);
  signal compare1_m, compare2_m, enable1_m, enable2_m : std_logic_vector(0 to C_WIDTH-1);

begin  -- architecture imp

  assert C_WIDTH = C_COMPARE_WIDTH
    report   "Interrupt Trace Miscomparator width Mismatch"
    severity failure;

  enable1_m  <= enable1  and C_COMPARE_MASK;
  enable2_m  <= enable2  and C_COMPARE_MASK;
  compare1_m <= compare1 and C_COMPARE_MASK;
  compare2_m <= compare2 and C_COMPARE_MASK;

  compare_I : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map(
        Clk        => Clk,
        Rst1       => Rst1,
        Rst2       => Rst2,
        Enable1    => enable1_m,
        Enable2    => enable2_m,
        Compare1   => compare1_m,
        Compare2   => compare2_m,
        Force      => Force,
        ForceEna   => ForceEna,
        MisCompare => MisCompare,
        MisMatch   => MisMatch);

    -- Interrupt #1
    enable1 <= (others => '1');
    compare1(Ack_Pos) <= IRQ1_Ack;
    -- Interrupt #2
    enable2 <= (others => '1');
    compare2(Ack_Pos) <= IRQ2_Ack;

end architecture imp ;


-------------------------------------------------------------------------------
-- tmr_test.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016,2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        tmr_test.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              tmr_test
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2016-05-10    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity tmr_test is
  generic (
    C_TEST_LAST_INTERFACE  : integer := 0;
    C_TEST_WIDTH           : integer := 32;
    C_TEST_AXIS_DATA_WIDTH : integer := 32);
  port (
    Clk : in  std_logic;
    Rst : in  std_logic;
    -- Test control and data
    Test_Comparator_Trig  : in  std_logic;
    Test_Comparator_Clear : in  std_logic;
    Test_Comparator_Data  : in  std_logic_vector(C_TEST_WIDTH-1 downto 0);
    Force_Comparator_Data : out std_logic_vector(C_TEST_WIDTH-1 downto 0);
    -- S_AXIS
    S_AXIS_TLAST   : in   std_logic;
    S_AXIS_TDATA   : in   std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID  : in   std_logic;
    S_AXIS_TREADY  : out  std_logic;
    -- M_AXIS
    M_AXIS_TLAST   : out  std_logic;
    M_AXIS_TDATA   : out  std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID  : out  std_logic;
    M_AXIS_TREADY  : in   std_logic);

end entity tmr_test;

architecture imp of tmr_test is

  constant C_LOAD_MISCOMPARE : std_logic_vector(1 downto 0) := "10";
  constant C_LOAD_VALID      : std_logic_vector(1 downto 0) := "01";
  constant C_NO_LOAD         : std_logic_vector(1 downto 0) := "00";

  signal test_state          : std_logic_vector(1 downto 0);

  constant C_DEPTH           : natural := ((C_TEST_WIDTH-1) / C_TEST_AXIS_DATA_WIDTH) + 1;

  type data_array_t is array (C_DEPTH-1 downto 0) of std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);

  signal test_data_array  : data_array_t;
  signal axis_tdata_array : data_array_t;
  signal axis_tvalid      : std_logic_vector(C_DEPTH-1 downto 0);
  signal axis_tlast       : std_logic_vector(C_DEPTH-1 downto 0);

begin

  map_test_p : process(Test_Comparator_Data) is
    variable test_comparator_data_v : std_logic_vector(C_DEPTH*C_TEST_AXIS_DATA_WIDTH-1 downto 0);
  begin
    test_comparator_data_v := (others => '0');
    test_comparator_data_v(C_TEST_WIDTH-1 downto 0) := Test_Comparator_Data;
    for I in 0 to C_DEPTH - 1 loop
      test_data_array(I)(C_TEST_AXIS_DATA_WIDTH-1 downto 0) <=
        test_comparator_data_v(C_TEST_AXIS_DATA_WIDTH*(I+1)-1 downto C_TEST_AXIS_DATA_WIDTH*I);
    end loop;
  end process map_test_p;

  map_force_p : process(axis_tdata_array) is
    variable force_comparator_data_v : std_logic_vector(C_DEPTH*C_TEST_AXIS_DATA_WIDTH-1 downto 0);
  begin
    force_comparator_data_v := (others => '0');
    for I in 0 to C_DEPTH - 1 loop
      force_comparator_data_v(C_TEST_AXIS_DATA_WIDTH*(I+1)-1 downto C_TEST_AXIS_DATA_WIDTH*I) :=
        axis_tdata_array(I)(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    end loop;
    Force_comparator_Data <= force_comparator_data_v(C_TEST_WIDTH-1 downto 0);
  end process map_force_p;

  comparator_test_p : process(Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        for I in 0 to C_DEPTH - 1 loop
          axis_tdata_array <= (others => (others =>'0'));
          axis_tvalid(I)   <= '0';
          axis_tlast(I)    <= '0';
        end loop;
        test_state         <= C_LOAD_MISCOMPARE;
      else
        if (test_state = C_LOAD_MISCOMPARE) then
          if Test_Comparator_Trig = '1' then
            test_state <= C_LOAD_VALID;
          else  -- Continous load until miscompare which is clocked
            for I in 0 to C_DEPTH - 1 loop
              axis_tdata_array(I) <= test_data_array(I);
              axis_tvalid(I)      <= '0';
              axis_tlast(I)       <= '0';
            end loop;
          end if;
        elsif (test_state = C_LOAD_VALID) then
          for I in 0 to C_DEPTH - 1 loop  -- load valid and last, data preloaded
            axis_tvalid(I) <= '1';
            if I = (C_DEPTH - 1) and C_TEST_LAST_INTERFACE = 1 then
              axis_tlast(I) <= '1';  -- Set tlast for last shift entity in last interface
            else
              axis_tlast(I) <= '0';
            end if;
          end loop;
          test_state <= C_NO_LOAD;
        else  -- C_NO_LOAD
          -- Shift stream data
          if M_AXIS_TREADY = '1' then
            for I in 0 to C_DEPTH - 2 loop
              axis_tdata_array(I) <= axis_tdata_array(I+1);
              axis_tvalid(I)      <= axis_tvalid(I+1);
              axis_tlast(I)       <= axis_tlast(I+1);
            end loop;
            axis_tdata_array(C_DEPTH-1) <= S_AXIS_TDATA;  -- Last shift entity from other interface
            axis_tvalid(C_DEPTH-1)      <= S_AXIS_TVALID;
            axis_tlast(C_DEPTH-1)       <= S_AXIS_TLAST;
          end if;
          -- Re-arm miscompare trigger
          if Test_Comparator_Clear = '1' then
            test_state         <= C_LOAD_MISCOMPARE;
            for I in 0 to C_DEPTH - 1 loop
              axis_tdata_array <= (others => (others =>'0'));
              axis_tvalid(I)   <= '0';
              axis_tlast(I)    <= '0';
            end loop;
          end if;
        end if;
      end if;
    end if;
  end process comparator_test_p;

  -- First shift entity present on M_AXIS
  M_AXIS_TDATA  <= axis_tdata_array(0);
  M_AXIS_TLAST  <= axis_tlast(0);
  M_AXIS_TVALID <= axis_tvalid(0);

  -- Propagate downstream to form a continuos shift register
  S_AXIS_TREADY <= M_AXIS_TREADY;

end architecture imp;


-------------------------------------------------------------------------------
-- tmr_comparator.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016-2017,2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        tmr_comparator.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              tmr_comparator
--                 comparator
--                 voter
--                 lmb_comparator
--                 lmb_voter
--                 s_lmb_comparator
--                 s_lmb_voter
--                 bram_comparator
--                 bram_voter
--                 axi_comparator
--                 axi_voter
--                 s_axi_comparator
--                 s_axi_voter
--                 m_axis_comparator
--                 m_axis_voter
--                 s_axis_comparator
--                 s_axis_voter
--                 trace_comparator
--                 trace_voter
--                 interrupt_comparator
--                 interrupt_voter
--                 tmr_test
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity tmr_comparator is
  generic (
    C_VOTER_CHECK           : integer := 1;
    C_INCLUDE_MASK          : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_TMR                   : integer := 1;
    C_INTERFACE             : integer := 0;
    C_USE_TMR_DISABLE       : integer := 0;
    C_INPUT_REGISTER        : integer := 0;
    C_TEMPORAL_DEPTH1       : integer := 0;
    C_TEMPORAL_DEPTH2       : integer := 0;
    -- Comparator test
    C_TEST_COMPARATOR       : integer := 0;
    C_TEST_LAST_INTERFACE   : integer := 0;
    C_TEST_AXIS_DATA_WIDTH  : integer := 32;
    -- Discrete
    C_DISCRETE_WIDTH        : integer := 1;
    -- LMB and BRAM
    C_LMB_AWIDTH            : integer := 32;
    C_LMB_DWIDTH            : integer := 32;
    C_LMB_PROTOCOL          : integer := 0;
    -- BRAM
    C_ECC                   : integer := 0;
    -- AXI
    C_AXI_ID_WIDTH          : integer := 1;
    C_AXI_DATA_WIDTH        : integer := 32;
    C_AXI_ADDR_WIDTH        : integer := 32;
    C_AXI_AWUSER_WIDTH      : integer := 1;
    C_AXI_ARUSER_WIDTH      : integer := 1;
    C_AXI_WUSER_WIDTH       : integer := 1;
    C_AXI_RUSER_WIDTH       : integer := 1;
    C_AXI_BUSER_WIDTH       : integer := 1;
    -- AXIS
    C_AXIS_DATA_WIDTH       : integer := 32;
    C_AXIS_ID_WIDTH         : integer := 1;
    C_AXIS_DEST_WIDTH       : integer := 1;
    C_AXIS_USER_WIDTH       : integer := 1;
    -- Trace
    C_ADDR_SIZE             : integer range 32 to 64 := 32;
    C_DATA_SIZE             : integer range 32 to 32 := 32;
    C_TRACE_SIZE            : integer := 0;
    -- Interrupt
    C_LOW_LATENCY           : integer := 0;
    -- GPIO
    C_GPO_SIZE              : integer := 32;
    C_GPI_SIZE              : integer := 32);
  port (
    TMR_Disable             : in std_logic;

    -- Clock and reset
    Clk                     : in  std_logic;
    Rst                     : in  std_logic;
    Rst_Comparator          : in  std_logic;

    -- Comparator test
    Test_comparator         : in  std_logic_vector(1 + Boolean'Pos(C_TEST_COMPARATOR > 1) * 4 downto 0);
    S_AXIS_TLAST_Test       : in  std_logic;
    S_AXIS_TDATA_Test       : in  std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID_Test      : in  std_logic;
    S_AXIS_TREADY_Test      : out std_logic;
    M_AXIS_TLAST_Test       : out std_logic;
    M_AXIS_TDATA_Test       : out std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID_Test      : out std_logic;
    M_AXIS_TREADY_Test      : in  std_logic;

    -- Discrete
    Discrete1               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete2               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete3               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete                : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);

    -- LMB
    -- LMB #1
    LMB1_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB1_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB1_AddrStrobe         : in  std_logic;
    LMB1_ReadStrobe         : in  std_logic;
    LMB1_WriteStrobe        : in  std_logic;
    LMB1_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    LMB1_DBus               : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB1_Ready              : in  std_logic;
    -- LMB #2
    LMB2_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB2_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB2_AddrStrobe         : in  std_logic;
    LMB2_ReadStrobe         : in  std_logic;
    LMB2_WriteStrobe        : in  std_logic;
    LMB2_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    LMB2_DBus               : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB2_Ready              : in  std_logic;
    -- LMB #3
    LMB3_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB3_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB3_AddrStrobe         : in  std_logic;
    LMB3_ReadStrobe         : in  std_logic;
    LMB3_WriteStrobe        : in  std_logic;
    LMB3_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    LMB3_DBus               : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB3_Ready              : in  std_logic;
    -- LMB Voted
    LMB_ABus                : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB_WriteDBus           : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB_AddrStrobe          : in  std_logic;
    LMB_ReadStrobe          : in  std_logic;
    LMB_WriteStrobe         : in  std_logic;
    LMB_BE                  : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    LMB_DBus                : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB_Ready               : in  std_logic;

    -- S_LMB
    -- S_LMB #1
    S_LMB1_ABus             : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB1_WriteDBus        : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB1_AddrStrobe       : in  std_logic;
    S_LMB1_ReadStrobe       : in  std_logic;
    S_LMB1_WriteStrobe      : in  std_logic;
    S_LMB1_BE               : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_LMB1_DBus             : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB1_Ready            : in  std_logic;
    S_LMB1_Wait             : in  std_logic;
    S_LMB1_UE               : in  std_logic;
    S_LMB1_CE               : in  std_logic;
    -- S_LMB #2
    S_LMB2_ABus             : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB2_WriteDBus        : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB2_AddrStrobe       : in  std_logic;
    S_LMB2_ReadStrobe       : in  std_logic;
    S_LMB2_WriteStrobe      : in  std_logic;
    S_LMB2_BE               : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_LMB2_DBus             : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB2_Ready            : in  std_logic;
    S_LMB2_Wait             : in  std_logic;
    S_LMB2_UE               : in  std_logic;
    S_LMB2_CE               : in  std_logic;
    -- S_LMB #3
    S_LMB3_ABus             : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB3_WriteDBus        : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB3_AddrStrobe       : in  std_logic;
    S_LMB3_ReadStrobe       : in  std_logic;
    S_LMB3_WriteStrobe      : in  std_logic;
    S_LMB3_BE               : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_LMB3_DBus             : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB3_Ready            : in  std_logic;
    S_LMB3_Wait             : in  std_logic;
    S_LMB3_UE               : in  std_logic;
    S_LMB3_CE               : in  std_logic;
    -- S_LMB Voted
    S_LMB_ABus              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB_WriteDBus         : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB_AddrStrobe        : in  std_logic;
    S_LMB_ReadStrobe        : in  std_logic;
    S_LMB_WriteStrobe       : in  std_logic;
    S_LMB_BE                : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_LMB_DBus              : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB_Ready             : in  std_logic;
    S_LMB_Wait              : in  std_logic;
    S_LMB_UE                : in  std_logic;
    S_LMB_CE                : in  std_logic;

    -- BRAM
    -- BRAM #1
    BRAM1_Rst               : in  std_logic;
    BRAM1_Clk               : in  std_logic;
    BRAM1_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM1_EN                : in  std_logic;
    BRAM1_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM1_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #2
    BRAM2_Rst               : in  std_logic;
    BRAM2_Clk               : in  std_logic;
    BRAM2_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM2_EN                : in  std_logic;
    BRAM2_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM2_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #3
    BRAM3_Rst               : in  std_logic;
    BRAM3_Clk               : in  std_logic;
    BRAM3_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM3_EN                : in  std_logic;
    BRAM3_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM3_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM Voted
    BRAM_Rst                : in  std_logic;
    BRAM_Clk                : in  std_logic;
    BRAM_Addr               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM_EN                 : in  std_logic;
    BRAM_WE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM_Dout               : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

    -- M_BRAM
    -- M_BRAM #1
    M_BRAM1_Rst             : in  std_logic;
    M_BRAM1_Clk             : in  std_logic;
    M_BRAM1_Addr            : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM1_WE              : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM1_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM #2
    M_BRAM2_Rst             : in  std_logic;
    M_BRAM2_Clk             : in  std_logic;
    M_BRAM2_Addr            : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM2_WE              : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM2_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM #3
    M_BRAM3_Rst             : in  std_logic;
    M_BRAM3_Clk             : in  std_logic;
    M_BRAM3_Addr            : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM3_WE              : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM3_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM Voted
    S_BRAM_Rst              : in  std_logic;
    S_BRAM_Clk              : in  std_logic;
    S_BRAM_Addr             : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_BRAM_WE               : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    S_BRAM_Din              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

    -- AXI
    -- AXI #1
    S_AXI1_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI1_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI1_AWLOCK           : in  std_logic;
    S_AXI1_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI1_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI1_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI1_AWVALID          : in  std_logic;
    S_AXI1_AWREADY          : in  std_logic;
    S_AXI1_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI1_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI1_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI1_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI1_WLAST            : in  std_logic;
    S_AXI1_WVALID           : in  std_logic;
    S_AXI1_WREADY           : in  std_logic;
    S_AXI1_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI1_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_BRESP            : in  std_logic_vector(1 downto 0);
    S_AXI1_BVALID           : in  std_logic;
    S_AXI1_BREADY           : in  std_logic;
    S_AXI1_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI1_WACK             : in  std_logic;
    S_AXI1_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI1_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI1_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI1_ARLOCK           : in  std_logic;
    S_AXI1_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI1_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI1_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI1_ARVALID          : in  std_logic;
    S_AXI1_ARREADY          : in  std_logic;
    S_AXI1_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI1_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI1_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI1_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI1_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI1_RLAST            : in  std_logic;
    S_AXI1_RVALID           : in  std_logic;
    S_AXI1_RREADY           : in  std_logic;
    S_AXI1_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI1_RACK             : in  std_logic;
    S_AXI1_ACVALID          : in  std_logic;
    S_AXI1_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ACSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI1_ACPROT           : in  std_logic_vector(2 downto 0);
    S_AXI1_ACREADY          : in  std_logic;
    S_AXI1_CRVALID          : in  std_logic;
    S_AXI1_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI1_CRREADY          : in  std_logic;
    S_AXI1_CDVALID          : in  std_logic;
    S_AXI1_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_CDLAST           : in  std_logic;
    S_AXI1_CDREADY          : in  std_logic;
    -- AXI #2
    S_AXI2_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI2_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI2_AWLOCK           : in  std_logic;
    S_AXI2_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI2_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI2_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI2_AWVALID          : in  std_logic;
    S_AXI2_AWREADY          : in  std_logic;
    S_AXI2_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI2_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI2_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI2_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI2_WLAST            : in  std_logic;
    S_AXI2_WVALID           : in  std_logic;
    S_AXI2_WREADY           : in  std_logic;
    S_AXI2_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI2_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_BRESP            : in  std_logic_vector(1 downto 0);
    S_AXI2_BVALID           : in  std_logic;
    S_AXI2_BREADY           : in  std_logic;
    S_AXI2_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI2_WACK             : in  std_logic;
    S_AXI2_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI2_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI2_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI2_ARLOCK           : in  std_logic;
    S_AXI2_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI2_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI2_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI2_ARVALID          : in  std_logic;
    S_AXI2_ARREADY          : in  std_logic;
    S_AXI2_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI2_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI2_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI2_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI2_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI2_RLAST            : in  std_logic;
    S_AXI2_RVALID           : in  std_logic;
    S_AXI2_RREADY           : in  std_logic;
    S_AXI2_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI2_RACK             : in  std_logic;
    S_AXI2_ACVALID          : in  std_logic;
    S_AXI2_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ACSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI2_ACPROT           : in  std_logic_vector(2 downto 0);
    S_AXI2_ACREADY          : in  std_logic;
    S_AXI2_CRVALID          : in  std_logic;
    S_AXI2_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI2_CRREADY          : in  std_logic;
    S_AXI2_CDVALID          : in  std_logic;
    S_AXI2_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_CDLAST           : in  std_logic;
    S_AXI2_CDREADY          : in  std_logic;
    -- AXI #3
    S_AXI3_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI3_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI3_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI3_AWLOCK           : in  std_logic;
    S_AXI3_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI3_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI3_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI3_AWVALID          : in  std_logic;
    S_AXI3_AWREADY          : in  std_logic;
    S_AXI3_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI3_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI3_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI3_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI3_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI3_WLAST            : in  std_logic;
    S_AXI3_WVALID           : in  std_logic;
    S_AXI3_WREADY           : in  std_logic;
    S_AXI3_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI3_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_BRESP            : in  std_logic_vector(1 downto 0);
    S_AXI3_BVALID           : in  std_logic;
    S_AXI3_BREADY           : in  std_logic;
    S_AXI3_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI3_WACK             : in  std_logic;
    S_AXI3_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI3_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI3_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI3_ARLOCK           : in  std_logic;
    S_AXI3_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI3_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI3_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI3_ARVALID          : in  std_logic;
    S_AXI3_ARREADY          : in  std_logic;
    S_AXI3_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI3_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI3_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI3_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI3_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI3_RLAST            : in  std_logic;
    S_AXI3_RVALID           : in  std_logic;
    S_AXI3_RREADY           : in  std_logic;
    S_AXI3_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI3_RACK             : in  std_logic;
    S_AXI3_ACVALID          : in  std_logic;
    S_AXI3_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_ACSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI3_ACPROT           : in  std_logic_vector(2 downto 0);
    S_AXI3_ACREADY          : in  std_logic;
    S_AXI3_CRVALID          : in  std_logic;
    S_AXI3_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI3_CRREADY          : in  std_logic;
    S_AXI3_CDVALID          : in  std_logic;
    S_AXI3_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_CDLAST           : in  std_logic;
    S_AXI3_CDREADY          : in  std_logic;

    -- AXI Voted
    M_AXI_AWID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN             : in  std_logic_vector(7 downto 0);
    M_AXI_AWSIZE            : in  std_logic_vector(2 downto 0);
    M_AXI_AWBURST           : in  std_logic_vector(1 downto 0);
    M_AXI_AWLOCK            : in  std_logic;
    M_AXI_AWCACHE           : in  std_logic_vector(3 downto 0);
    M_AXI_AWPROT            : in  std_logic_vector(2 downto 0);
    M_AXI_AWQOS             : in  std_logic_vector(3 downto 0);
    M_AXI_AWVALID           : in  std_logic;
    M_AXI_AWREADY           : in  std_logic;
    M_AXI_AWUSER            : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI_AWDOMAIN          : in  std_logic_vector(1 downto 0);
    M_AXI_AWSNOOP           : in  std_logic_vector(2 downto 0);
    M_AXI_AWBAR             : in  std_logic_vector(1 downto 0);
    M_AXI_WDATA             : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB             : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST             : in  std_logic;
    M_AXI_WVALID            : in  std_logic;
    M_AXI_WREADY            : in  std_logic;
    M_AXI_WUSER             : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI_BID               : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_BRESP             : in  std_logic_vector(1 downto 0);
    M_AXI_BVALID            : in  std_logic;
    M_AXI_BREADY            : in  std_logic;
    M_AXI_BUSER             : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI_WACK              : in  std_logic;
    M_AXI_ARID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN             : in  std_logic_vector(7 downto 0);
    M_AXI_ARSIZE            : in  std_logic_vector(2 downto 0);
    M_AXI_ARBURST           : in  std_logic_vector(1 downto 0);
    M_AXI_ARLOCK            : in  std_logic;
    M_AXI_ARCACHE           : in  std_logic_vector(3 downto 0);
    M_AXI_ARPROT            : in  std_logic_vector(2 downto 0);
    M_AXI_ARQOS             : in  std_logic_vector(3 downto 0);
    M_AXI_ARVALID           : in  std_logic;
    M_AXI_ARREADY           : in  std_logic;
    M_AXI_ARUSER            : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI_ARDOMAIN          : in  std_logic_vector(1 downto 0);
    M_AXI_ARSNOOP           : in  std_logic_vector(3 downto 0);
    M_AXI_ARBAR             : in  std_logic_vector(1 downto 0);
    M_AXI_RID               : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_RDATA             : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP             : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI_RLAST             : in  std_logic;
    M_AXI_RVALID            : in  std_logic;
    M_AXI_RREADY            : in  std_logic;
    M_AXI_RUSER             : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI_RACK              : in  std_logic;
    M_AXI_ACVALID           : in  std_logic;
    M_AXI_ACADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ACSNOOP           : in  std_logic_vector(3 downto 0);
    M_AXI_ACPROT            : in  std_logic_vector(2 downto 0);
    M_AXI_ACREADY           : in  std_logic;
    M_AXI_CRVALID           : in  std_logic;
    M_AXI_CRRESP            : in  std_logic_vector(4 downto 0);
    M_AXI_CRREADY           : in  std_logic;
    M_AXI_CDVALID           : in  std_logic;
    M_AXI_CDDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_CDLAST            : in  std_logic;
    M_AXI_CDREADY           : in  std_logic;

    -- Master AXI Stream
    -- AXIS #1
    S_AXIS1_TLAST           : in  std_logic;
    S_AXIS1_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS1_TVALID          : in  std_logic;
    S_AXIS1_TREADY          : in  std_logic;
    S_AXIS1_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS1_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS1_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    S_AXIS2_TLAST           : in  std_logic;
    S_AXIS2_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS2_TVALID          : in  std_logic;
    S_AXIS2_TREADY          : in  std_logic;
    S_AXIS2_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS2_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS2_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    S_AXIS3_TLAST           : in  std_logic;
    S_AXIS3_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS3_TVALID          : in  std_logic;
    S_AXIS3_TREADY          : in  std_logic;
    S_AXIS3_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS3_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS3_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    M_AXIS_TLAST            : in  std_logic;
    M_AXIS_TDATA            : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID           : in  std_logic;
    M_AXIS_TREADY           : in  std_logic;
    M_AXIS_TSTRB            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TKEEP            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TID              : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TDEST            : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS_TUSER            : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- Slave AXI Stream
    -- AXIS #1
    M_AXIS1_TLAST           : in  std_logic;
    M_AXIS1_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS1_TVALID          : in  std_logic;
    M_AXIS1_TREADY          : in  std_logic;
    M_AXIS1_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS1_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS1_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    M_AXIS2_TLAST           : in  std_logic;
    M_AXIS2_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS2_TVALID          : in  std_logic;
    M_AXIS2_TREADY          : in  std_logic;
    M_AXIS2_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS2_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS2_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    M_AXIS3_TLAST           : in  std_logic;
    M_AXIS3_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS3_TVALID          : in  std_logic;
    M_AXIS3_TREADY          : in  std_logic;
    M_AXIS3_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS3_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS3_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    S_AXIS_TLAST            : in  std_logic;
    S_AXIS_TDATA            : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID           : in  std_logic;
    S_AXIS_TREADY           : in  std_logic;
    S_AXIS_TSTRB            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TKEEP            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TID              : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS_TDEST            : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS_TUSER            : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);

    -- Trace
    -- Trace #1
    Trace1_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Valid_Instr      : in  std_logic;
    Trace1_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Reg_Write        : in  std_logic;
    Trace1_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace1_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace1_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace1_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Exception_Taken  : in  std_logic;
    Trace1_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace1_Jump_Taken       : in  std_logic;
    Trace1_Delay_Slot       : in  std_logic;
    Trace1_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace1_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace1_Data_Access      : in  std_logic;
    Trace1_Data_Read        : in  std_logic;
    Trace1_Data_Write       : in  std_logic;
    Trace1_DCache_Req       : in  std_logic;
    Trace1_DCache_Hit       : in  std_logic;
    Trace1_DCache_Rdy       : in  std_logic;
    Trace1_DCache_Read      : in  std_logic;
    Trace1_ICache_Req       : in  std_logic;
    Trace1_ICache_Hit       : in  std_logic;
    Trace1_ICache_Rdy       : in  std_logic;
    Trace1_OF_PipeRun       : in  std_logic;
    Trace1_EX_PipeRun       : in  std_logic;
    Trace1_MEM_PipeRun      : in  std_logic;
    Trace1_MB_Halted        : in  std_logic;
    Trace1_Jump_Hit         : in  std_logic;
    -- Trace #2
    Trace2_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Valid_Instr      : in  std_logic;
    Trace2_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Reg_Write        : in  std_logic;
    Trace2_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace2_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace2_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace2_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Exception_Taken  : in  std_logic;
    Trace2_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace2_Jump_Taken       : in  std_logic;
    Trace2_Delay_Slot       : in  std_logic;
    Trace2_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace2_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace2_Data_Access      : in  std_logic;
    Trace2_Data_Read        : in  std_logic;
    Trace2_Data_Write       : in  std_logic;
    Trace2_DCache_Req       : in  std_logic;
    Trace2_DCache_Hit       : in  std_logic;
    Trace2_DCache_Rdy       : in  std_logic;
    Trace2_DCache_Read      : in  std_logic;
    Trace2_ICache_Req       : in  std_logic;
    Trace2_ICache_Hit       : in  std_logic;
    Trace2_ICache_Rdy       : in  std_logic;
    Trace2_OF_PipeRun       : in  std_logic;
    Trace2_EX_PipeRun       : in  std_logic;
    Trace2_MEM_PipeRun      : in  std_logic;
    Trace2_MB_Halted        : in  std_logic;
    Trace2_Jump_Hit         : in  std_logic;
    -- Trace #3
    Trace3_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Valid_Instr      : in  std_logic;
    Trace3_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Reg_Write        : in  std_logic;
    Trace3_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace3_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace3_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace3_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Exception_Taken  : in  std_logic;
    Trace3_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace3_Jump_Taken       : in  std_logic;
    Trace3_Delay_Slot       : in  std_logic;
    Trace3_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace3_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace3_Data_Access      : in  std_logic;
    Trace3_Data_Read        : in  std_logic;
    Trace3_Data_Write       : in  std_logic;
    Trace3_DCache_Req       : in  std_logic;
    Trace3_DCache_Hit       : in  std_logic;
    Trace3_DCache_Rdy       : in  std_logic;
    Trace3_DCache_Read      : in  std_logic;
    Trace3_ICache_Req       : in  std_logic;
    Trace3_ICache_Hit       : in  std_logic;
    Trace3_ICache_Rdy       : in  std_logic;
    Trace3_OF_PipeRun       : in  std_logic;
    Trace3_EX_PipeRun       : in  std_logic;
    Trace3_MEM_PipeRun      : in  std_logic;
    Trace3_MB_Halted        : in  std_logic;
    Trace3_Jump_Hit         : in  std_logic;
    -- Trace Voted
    Trace_Instruction       : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Valid_Instr       : in  std_logic;
    Trace_PC                : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Reg_Write         : in  std_logic;
    Trace_Reg_Addr          : in  std_logic_vector(0 to 4);
    Trace_MSR_Reg           : in  std_logic_vector(0 to 14);
    Trace_PID_Reg           : in  std_logic_vector(0 to 7);
    Trace_New_Reg_Value     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Exception_Taken   : in  std_logic;
    Trace_Exception_Kind    : in  std_logic_vector(0 to 4);
    Trace_Jump_Taken        : in  std_logic;
    Trace_Delay_Slot        : in  std_logic;
    Trace_Data_Address      : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace_Data_Write_Value  : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Data_Byte_Enable  : in  std_logic_vector(0 to 3);
    Trace_Data_Access       : in  std_logic;
    Trace_Data_Read         : in  std_logic;
    Trace_Data_Write        : in  std_logic;
    Trace_DCache_Req        : in  std_logic;
    Trace_DCache_Hit        : in  std_logic;
    Trace_DCache_Rdy        : in  std_logic;
    Trace_DCache_Read       : in  std_logic;
    Trace_ICache_Req        : in  std_logic;
    Trace_ICache_Hit        : in  std_logic;
    Trace_ICache_Rdy        : in  std_logic;
    Trace_OF_PipeRun        : in  std_logic;
    Trace_EX_PipeRun        : in  std_logic;
    Trace_MEM_PipeRun       : in  std_logic;
    Trace_MB_Halted         : in  std_logic;
    Trace_Jump_Hit          : in  std_logic;

    -- Interrrupt
    -- Interrupt #1
    IRQ1                    : in std_logic;
    IRQ1_Address            : in std_logic_vector(0 to 31);
    IRQ1_Ack                : in std_logic_vector(0 to 1);
    -- Interrupt #2
    IRQ2                    : in std_logic;
    IRQ2_Address            : in std_logic_vector(0 to 31);
    IRQ2_Ack                : in std_logic_vector(0 to 1);
    -- Interrupt #3
    IRQ3                    : in std_logic;
    IRQ3_Address            : in std_logic_vector(0 to 31);
    IRQ3_Ack                : in std_logic_vector(0 to 1);
    -- Interrupt voted
    IRQ                     : in std_logic;
    IRQ_Address             : in std_logic_vector(0 to 31);
    IRQ_Ack                 : in std_logic_vector(0 to 1);

    -- IO Bus
    -- IO Bus #1
    IO1_Addr_Strobe         : in std_logic;
    IO1_Read_Strobe         : in std_logic;
    IO1_Write_Strobe        : in std_logic;
    IO1_Address             : in std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO1_Byte_Enable         : in std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO1_Write_Data          : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO1_Read_Data           : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO1_Ready               : in std_logic;
    -- IO Bus #2
    IO2_Addr_Strobe         : in std_logic;
    IO2_Read_Strobe         : in std_logic;
    IO2_Write_Strobe        : in std_logic;
    IO2_Address             : in std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO2_Byte_Enable         : in std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO2_Write_Data          : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO2_Read_Data           : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO2_Ready               : in std_logic;
    -- IO Bus #3
    IO3_Addr_Strobe         : in std_logic;
    IO3_Read_Strobe         : in std_logic;
    IO3_Write_Strobe        : in std_logic;
    IO3_Address             : in std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO3_Byte_Enable         : in std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO3_Write_Data          : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO3_Read_Data           : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO3_Ready               : in std_logic;
    -- IO Bus voted
    IO_Addr_Strobe          : in std_logic;
    IO_Read_Strobe          : in std_logic;
    IO_Write_Strobe         : in std_logic;
    IO_Address              : in std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO_Byte_Enable          : in std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO_Write_Data           : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO_Read_Data            : in std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO_Ready                : in std_logic;

    -- GPIO
    -- GPIO #1
    GPO1                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT1                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI1                    : in std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO #2
    GPO2                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT2                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI2                    : in std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO #3
    GPO3                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT3                    : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI3                    : in std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO voted
    GPO                     : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT                     : in std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI                     : in std_logic_vector(C_GPI_SIZE-1 downto 0);

    -- UART
    -- UART #1
    UART1_TxD               : in std_logic;
    UART1_RxD               : in std_logic;
    UART1_RTSn              : in std_logic;
    UART1_CTSn              : in std_logic;
    UART1_DTRn              : in std_logic;
    UART1_DSRn              : in std_logic;
    UART1_BAUDOUTn          : in std_logic;
    UART1_RCLK              : in std_logic;
    UART1_XIN               : in std_logic;
    UART1_XOUT              : in std_logic;
    UART1_DCDn              : in std_logic;
    UART1_DDIS              : in std_logic;
    UART1_OUT1n             : in std_logic;
    UART1_OUT2n             : in std_logic;
    UART1_TXRDYn            : in std_logic;
    UART1_RXRDYn            : in std_logic;
    UART1_RI                : in std_logic;
    -- UART #2
    UART2_TxD               : in std_logic;
    UART2_RxD               : in std_logic;
    UART2_RTSn              : in std_logic;
    UART2_CTSn              : in std_logic;
    UART2_DTRn              : in std_logic;
    UART2_DSRn              : in std_logic;
    UART2_BAUDOUTn          : in std_logic;
    UART2_RCLK              : in std_logic;
    UART2_XIN               : in std_logic;
    UART2_XOUT              : in std_logic;
    UART2_DCDn              : in std_logic;
    UART2_DDIS              : in std_logic;
    UART2_OUT1n             : in std_logic;
    UART2_OUT2n             : in std_logic;
    UART2_TXRDYn            : in std_logic;
    UART2_RXRDYn            : in std_logic;
    UART2_RI                : in std_logic;
    -- UART #3
    UART3_TxD               : in std_logic;
    UART3_RXD               : in std_logic;
    UART3_RTSn              : in std_logic;
    UART3_CTSn              : in std_logic;
    UART3_DTRn              : in std_logic;
    UART3_DSRn              : in std_logic;
    UART3_BAUDOUTn          : in std_logic;
    UART3_RCLK              : in std_logic;
    UART3_XIN               : in std_logic;
    UART3_XOUT              : in std_logic;
    UART3_DCDn              : in std_logic;
    UART3_DDIS              : in std_logic;
    UART3_OUT1n             : in std_logic;
    UART3_OUT2n             : in std_logic;
    UART3_TXRDYn            : in std_logic;
    UART3_RXRDYn            : in std_logic;
    UART3_RI                : in std_logic;
    -- UART Voted
    UART_TxD                : in std_logic;
    UART_RxD                : in std_logic;
    UART_RTSn               : in std_logic;
    UART_CTSn               : in std_logic;
    UART_DTRn               : in std_logic;
    UART_DSRn               : in std_logic;
    UART_BAUDOUTn           : in std_logic;
    UART_RCLK               : in std_logic;
    UART_XIN                : in std_logic;
    UART_XOUT               : in std_logic;
    UART_DCDn               : in std_logic;
    UART_DDIS               : in std_logic;
    UART_OUT1n              : in std_logic;
    UART_OUT2n              : in std_logic;
    UART_TXRDYn             : in std_logic;
    UART_RXRDYn             : in std_logic;
    UART_RI                 : in std_logic;

    -- IIC
    -- IIC #1
    IIC1_scl_i              : in  std_logic;
    IIC1_scl_o              : in  std_logic;
    IIC1_scl_t              : in  std_logic;
    IIC1_sda_i              : in  std_logic;
    IIC1_sda_o              : in  std_logic;
    IIC1_sda_t              : in  std_logic;
    -- IIC #2
    IIC2_scl_i              : in  std_logic;
    IIC2_scl_o              : in  std_logic;
    IIC2_scl_t              : in  std_logic;
    IIC2_sda_i              : in  std_logic;
    IIC2_sda_o              : in  std_logic;
    IIC2_sda_t              : in  std_logic;
    -- IIC #3
    IIC3_scl_i              : in  std_logic;
    IIC3_scl_o              : in  std_logic;
    IIC3_scl_t              : in  std_logic;
    IIC3_sda_i              : in  std_logic;
    IIC3_sda_o              : in  std_logic;
    IIC3_sda_t              : in  std_logic;
    -- IIC Voted
    IIC_scl_i               : in  std_logic;
    IIC_scl_o               : in  std_logic;
    IIC_scl_t               : in  std_logic;
    IIC_sda_i               : in  std_logic;
    IIC_sda_o               : in  std_logic;
    IIC_sda_t               : in  std_logic;

    -- Error signals
    Compare                 : out std_logic_vector(C_TMR * 3 downto 0));
end entity tmr_comparator;

architecture imp  of tmr_comparator is

  constant C_VOTER_CHECK_ENABLED  : integer := 1;
  constant C_VOTER_CHECK_DISABLED : integer := 0;

  constant C_INPUT_REGISTER1 : integer := C_INPUT_REGISTER+C_TEMPORAL_DEPTH1;
  constant C_INPUT_REGISTER2 : integer := C_INPUT_REGISTER+C_TEMPORAL_DEPTH2;

  -- C_INTERFACE coding
  constant C_DISCRETE           : integer := 0;
  constant C_LMB                : integer := 1;
  constant C_BRAM               : integer := 2;
  constant C_AXI4               : integer := 3;
  constant C_M_AXIS             : integer := 4;
  constant C_S_AXIS             : integer := 5;
  constant C_ACE                : integer := 6;
  constant C_TRACE              : integer := 7;
  constant C_AXI4LITE           : integer := 8;
  constant C_INTERRUPT          : integer := 9;
  constant C_IOBUS              : integer := 10;
  constant C_GPIO               : integer := 11;
  constant C_UART               : integer := 12;
  constant C_M_BRAM             : integer := 13;
  constant C_S_LMB              : integer := 14;
  constant C_S_AXI4             : integer := 15;
  constant C_S_AXI4LITE         : integer := 16;
  constant C_S_ACE              : integer := 17;
  constant C_S_INTERRUPT        : integer := 18;
  constant C_IIC                : integer := 19;

  -- Don't change coding for C_TRACE_SIZE, used in trace_comparator aggregate
  constant C_TRACE_FULL         : integer := 0;
  constant C_TRACE_REGWR        : integer := 1;
  constant C_TRACE_REGWR_DATA   : integer := 2;


  constant C_TRACE_REGWR_COMPARE_WIDTH      : natural := 1 +  -- Trace_Valid_Instr
                                                         1 +  -- Trace_Reg_Write_Pos
                                                         5 +  -- Trace_Reg_Addr
                                                         C_DATA_SIZE; -- Trace_New_Reg_Value
  constant C_TRACE_REGWR_DATA_COMPARE_WIDTH : natural := C_TRACE_REGWR_COMPARE_WIDTH +
                                                         C_ADDR_SIZE +   -- Trace_Data_Address
                                                         C_DATA_SIZE +   -- Trace_Data_Write_Value
                                                         C_DATA_SIZE/8 + -- Trace_Data_Byte_Enable
                                                         1 +             -- Trace_Data_Access
                                                         1 +             -- Trace_Data_Read
                                                         1;              -- Trace_Data_Write
  constant C_TRACE_FULL_COMPARE_WIDTH       : natural := C_TRACE_REGWR_DATA_COMPARE_WIDTH +
                                                         C_DATA_SIZE + -- Trace_Instruction
                                                         C_DATA_SIZE + -- Trace_PC
                                                         15 +          -- Trace_MSR_Reg
                                                         8 +           -- Trace_PID_Reg
                                                         1 +           -- Trace_Exception_Taken
                                                         5 +           -- Trace_Exception_Kind
                                                         1 +           -- Trace_Jump_Taken
                                                         1 +           -- Trace_Delay_Slot
                                                         1 +           -- Trace_DCache_Req
                                                         1 +           -- Trace_DCache_Hit
                                                         1 +           -- Trace_DCache_Rdy
                                                         1 +           -- Trace_DCache_Read
                                                         1 +           -- Trace_ICache_Req
                                                         1 +           -- Trace_ICache_Hit
                                                         1 +           -- Trace_ICache_Rdy
                                                         1 +           -- Trace_OF_PipeRun
                                                         1 +           -- Trace_EX_PipeRun
                                                         1 +           -- Trace_MEM_PipeRun
                                                         1 +           -- Trace_MB_Halted
                                                         1;            -- Trace_Jump_Hit

  type trace_compare_width_t is array (0 to 2) of natural;
  constant C_TRACE_COMPARE_WIDTH : trace_compare_width_t := (0  => C_TRACE_FULL_COMPARE_WIDTH,
                                                             1  => C_TRACE_REGWR_COMPARE_WIDTH,
                                                             2  => C_TRACE_REGWR_DATA_COMPARE_WIDTH);

  constant C_DISCRETE_COMPARE_WIDTH  : natural := C_DISCRETE_WIDTH;
  constant C_LMB_COMPARE_WIDTH       : natural := C_LMB_AWIDTH +      -- Address
                                                  C_LMB_DWIDTH +      -- Data
                                                  C_LMB_DWIDTH/8 + 3; -- WE and control
  constant C_BRAM_COMPARE_WIDTH      : natural := C_LMB_AWIDTH +               -- Address
                                                  C_LMB_DWIDTH + 8*C_ECC +     -- Data
                                                 (C_LMB_DWIDTH+8*C_ECC)/8 + 1; -- WE and EN
  constant C_AXI4_COMPARE_WIDTH      : natural := C_AXI_ID_WIDTH +         -- AWID
                                                  C_AXI_ADDR_WIDTH +       -- AWADDR
                                                  8 + 3 + 2 + 1 +          -- AWLEN, AWSIZE, AWBURST, AWLOCK
                                                  4 + 3 + 4 + 1 +          -- AWCACHE, AWPROT, AWQOS, AWVALID
                                                  C_AXI_AWUSER_WIDTH +     -- AWUSER
                                                  C_AXI_DATA_WIDTH +       -- WDATA
                                                  C_AXI_DATA_WIDTH/8 +     -- WSTRB
                                                  1 + 1 +                  -- WLAST, WVALID
                                                  C_AXI_WUSER_WIDTH +      -- WUSER
                                                  1 +                      -- BREADY
                                                  C_AXI_ID_WIDTH +         -- ARID
                                                  C_AXI_ADDR_WIDTH +       -- ARADDR
                                                  8 + 3 + 2 + 1 +          -- ARLEN, ARSIZE, ARBURST, ARLOCK
                                                  4 + 3 + 4 + 1 +          -- ARCACHE, ARPROT, ARQOS, ARVALID
                                                  C_AXI_ARUSER_WIDTH +     -- ARUSER
                                                  1;                       -- RREADY
  constant C_M_AXIS_COMPARE_WIDTH    : natural := C_AXIS_DATA_WIDTH +      -- TDATA
                                                  C_AXIS_DATA_WIDTH/4 +    -- TSTRB, TKEEP
                                                  C_AXIS_ID_WIDTH +        -- TID
                                                  C_AXIS_DEST_WIDTH +      -- TDEST
                                                  C_AXIS_USER_WIDTH +      -- TUSER
                                                  2;                       -- TVALID, TLAST
  constant C_S_AXIS_COMPARE_WIDTH    : natural := 1;
  constant C_ACE_COMPARE_WIDTH       : natural := C_AXI4_COMPARE_WIDTH +
                                                  2 + 3 + 2 + 1 +          -- AWDOMAIN, AWSNOOP, AWBAR, WACK
                                                  2 + 4 + 2 + 1 +          -- ARDOMAIN, ARSNOOP, ARBAR, RACK
                                                  1 + 1 + 5 + 1 +          -- ACREADY, CRVALID, CRRESP, CDVALID
                                                  C_AXI_DATA_WIDTH +       -- CDDATA
                                                  1;                       -- CDLAST
  constant C_AXI4LITE_COMPARE_WIDTH  : natural := C_AXI4_COMPARE_WIDTH;
  constant C_INTERRUPT_COMPARE_WIDTH : natural := 2;
  constant C_IOBUS_COMPARE_WIDTH     : natural := C_LMB_AWIDTH +           -- Address
                                                  C_LMB_DWIDTH +           -- Data
                                                  C_LMB_DWIDTH/8 + 3;      -- WE and control
  constant C_GPIO_COMPARE_WIDTH      : natural := C_GPO_SIZE * 2;          -- GPO and GPT
  constant C_UART_COMPARE_WIDTH      : natural := 10;
  constant C_M_BRAM_COMPARE_WIDTH    : natural := C_LMB_DWIDTH + 8*C_ECC;  -- Data
  constant C_S_LMB_COMPARE_WIDTH     : natural := C_LMB_DWIDTH + 4;        -- Data + control
  constant C_S_AXI4_COMPARE_WIDTH    : natural := 1 + 1 +                  -- AWREADY, WREADY
                                                  C_AXI_ID_WIDTH +         -- BID
                                                  2 + 1 +                  -- BRESP, BVALID
                                                  C_AXI_BUSER_WIDTH +      -- BUSER
                                                  1 +                      -- ARREADY
                                                  C_AXI_ID_WIDTH +         -- RID
                                                  C_AXI_DATA_WIDTH +       -- RDATA
                                                  2 + 1 + 1 +              -- RRESP, RLAST, RVALID
                                                  C_AXI_RUSER_WIDTH;       -- RUSER
  constant C_S_AXI4LITE_CMP_WIDTH    : natural := C_S_AXI4_COMPARE_WIDTH;
  constant C_S_ACE_COMPARE_WIDTH     : natural := C_S_AXI4_COMPARE_WIDTH +
                                                  2 + 1 +                  -- RRESP (2 extra bits), ACVALID
                                                  C_AXI_ADDR_WIDTH +       -- ACADDR
                                                  4 + 3 + 1 + 1;           -- ACSNOOP, ACPROT, CRREADY, CDREADY
  constant C_S_INTERRUPT_CMP_WIDTH   : natural := 1 + 32 * C_LOW_LATENCY;  -- Irq + Address
  constant C_IIC_COMPARE_WIDTH       : natural := 4;

  type compare_width_t is array (0 to 19) of natural;
  constant C_COMPARE_WIDTH : compare_width_t := (0  => C_DISCRETE_COMPARE_WIDTH,
                                                 1  => C_LMB_COMPARE_WIDTH,
                                                 2  => C_BRAM_COMPARE_WIDTH,
                                                 3  => C_AXI4_COMPARE_WIDTH,
                                                 4  => C_M_AXIS_COMPARE_WIDTH,
                                                 5  => C_S_AXIS_COMPARE_WIDTH,
                                                 6  => C_ACE_COMPARE_WIDTH,
                                                 7  => C_TRACE_COMPARE_WIDTH(C_TRACE_SIZE),
                                                 8  => C_AXI4LITE_COMPARE_WIDTH,
                                                 9  => C_INTERRUPT_COMPARE_WIDTH,
                                                 10 => C_IOBUS_COMPARE_WIDTH,
                                                 11 => C_GPIO_COMPARE_WIDTH,
                                                 12 => C_UART_COMPARE_WIDTH,
                                                 13 => C_M_BRAM_COMPARE_WIDTH,
                                                 14 => C_S_LMB_COMPARE_WIDTH,
                                                 15 => C_S_AXI4_COMPARE_WIDTH,
                                                 16 => C_S_AXI4LITE_CMP_WIDTH,
                                                 17 => C_S_ACE_COMPARE_WIDTH,
                                                 18 => C_S_INTERRUPT_CMP_WIDTH,
                                                 19 => C_IIC_COMPARE_WIDTH);
  -- To TMR_Manager through compare output
  signal MisMatch12           : std_logic;
  signal MisMatch13           : std_logic;
  signal MisMatch23           : std_logic;
  signal VoterError           : std_logic;

  -- To Trace_Comparator
  signal MisCompare12         : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  signal MisCompare13         : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  signal MisCompare23         : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  signal VoterErrorMisCompare : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  signal Force                : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  signal ForceEna12           : std_logic;
  signal ForceEna13           : std_logic;
  signal ForceEna23           : std_logic;
  signal VoterErrorForceEna   : std_logic;

  signal tmr_disable_vec      : std_logic_vector(3 downto 0);

  signal rst2                 : std_logic;
begin

  tmr_disable_vec <= TMR_Disable & TMR_Disable & TMR_Disable & TMR_Disable;

  -- No voter check, always drive VoterError 0
  no_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_DISABLED or C_TMR = 0) generate
  begin
     VoterError           <= '0';
     VoterErrorMisCompare <= (others => '0');
  end generate no_voter_check_g;

  -- Lockstep system drive 0 on MisMatch13 and MiMatch23
  lockstep_g: if (C_TMR = 0) generate
  begin
     MisMatch13   <= '0';
     MisMatch23   <= '0';
     MisCompare13 <= (others => '0');
     MisCompare23 <= (others => '0');
     Compare(0)   <= MisMatch12;
  end generate lockstep_g;

  -- Concat MisMatch from comparators and VoterError to one vector
  tmr_g: if (C_TMR = 1) generate
  begin
    Compare <= VoterError & MisMatch23 & MisMatch13 & MisMatch12;
  end generate tmr_g;

  -- Handle reset for temporal lockstep
  temporal_g: if ((C_TMR = 0) and (C_TEMPORAL_DEPTH1 > 0 or C_TEMPORAL_DEPTH2 > 0)) generate
  begin
    rst2 <= Rst_Comparator;
  end generate temporal_g;

  not_temporal_g: if ((C_TMR = 1) or (C_TEMPORAL_DEPTH1 = 0 and C_TEMPORAL_DEPTH2 = 0)) generate
  begin
    rst2 <= Rst;
  end generate not_temporal_g;

  -- Discrete
  discrete_g: if (C_INTERFACE = C_DISCRETE) generate
    function compare_mask return std_logic_vector is
      variable mask : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0) := (others => '1');
    begin
      if C_DISCRETE_WIDTH > 64 then
        mask(63 downto 0) := C_INCLUDE_MASK;
      else
        mask := C_INCLUDE_MASK(C_DISCRETE_WIDTH-1 downto 0);
      end if;
      return mask;
    end function compare_mask;

    constant C_COMPARE_MASK : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0) := compare_mask;

    signal discrete1_m, discrete2_m : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
  begin

    discrete1_m <= discrete1 and C_COMPARE_MASK;
    discrete2_m <= discrete2 and C_COMPARE_MASK;

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_DISCRETE_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => rst2,
        Enable1    => (others => '1'),
        Enable2    => (others => '1'),
        Compare1   => discrete1_m,
        Compare2   => discrete2_m,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
      signal discrete3_m : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    begin

      discrete3_m <= discrete3 and C_COMPARE_MASK;

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => C_DISCRETE_WIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
         port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => discrete1_m,
          Compare2   => discrete3_m,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => C_DISCRETE_WIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
         port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => discrete2_m,
          Compare2   => discrete3_m,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      discrete_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal discrete_voted   : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
        signal discrete_m       : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
        signal discrete_voted_m : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
      begin

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map (
            C_WIDTH           => C_DISCRETE_WIDTH,
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1       => Discrete1,
            Vote2       => Discrete2,
            Vote3       => Discrete3,
            Voted       => discrete_voted);

        discrete_m       <= discrete and C_COMPARE_MASK;
        discrete_voted_m <= discrete_voted and C_COMPARE_MASK;

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map (
            C_WIDTH           => C_DISCRETE_WIDTH,
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk        => Clk,
            Rst1       => Rst,
            Rst2       => Rst,
            Enable1    => (others => '1'),
            Enable2    => (others => '1'),
            Compare1   => discrete_m,
            Compare2   => discrete_voted_m,
            Force      => Force,
            ForceEna   => VoterErrorForceEna,
            MisCompare => VoterErrorMisCompare,
            MisMatch   => VoterError);

      end generate discrete_voter_check_g;

    end generate tmr_g;

  end generate discrete_g;

  -- LMB
  lmb_g: if (C_INTERFACE = C_LMB) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.lmb_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk              => Clk,
      Rst1             => Rst,
      Rst2             => rst2,
      LMB1_ABus        => lmb1_abus,
      LMB1_WriteDBus   => lmb1_writedbus,
      LMB1_AddrStrobe  => lmb1_addrstrobe,
      LMB1_ReadStrobe  => lmb1_readstrobe,
      LMB1_WriteStrobe => lmb1_writestrobe,
      LMB1_BE          => lmb1_be,
      LMB2_ABus        => lmb2_abus,
      LMB2_WriteDBus   => lmb2_writedbus,
      LMB2_AddrStrobe  => lmb2_addrstrobe,
      LMB2_ReadStrobe  => lmb2_readstrobe,
      LMB2_WriteStrobe => lmb2_writestrobe,
      LMB2_BE          => lmb2_be,
      Force            => Force,
      ForceEna         => ForceEna12,
      MisCompare       => MisCompare12,
      MisMatch         => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk              => Clk,
        Rst1             => Rst,
        Rst2             => Rst,
        LMB1_ABus        => lmb1_abus,
        LMB1_WriteDBus   => lmb1_writedbus,
        LMB1_AddrStrobe  => lmb1_addrstrobe,
        LMB1_ReadStrobe  => lmb1_readstrobe,
        LMB1_WriteStrobe => lmb1_writestrobe,
        LMB1_BE          => lmb1_be,
        LMB2_ABus        => lmb3_abus,
        LMB2_WriteDBus   => lmb3_writedbus,
        LMB2_AddrStrobe  => lmb3_addrstrobe,
        LMB2_ReadStrobe  => lmb3_readstrobe,
        LMB2_WriteStrobe => lmb3_writestrobe,
        LMB2_BE          => lmb3_be,
        Force            => Force,
        ForceEna         => ForceEna13,
        MisCompare       => MisCompare13,
        MisMatch         => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk              => Clk,
        Rst1             => Rst,
        Rst2             => Rst,
        LMB1_ABus        => lmb2_abus,
        LMB1_WriteDBus   => lmb2_writedbus,
        LMB1_AddrStrobe  => lmb2_addrstrobe,
        LMB1_ReadStrobe  => lmb2_readstrobe,
        LMB1_WriteStrobe => lmb2_writestrobe,
        LMB1_BE          => lmb2_be,
        LMB2_ABus        => lmb3_abus,
        LMB2_WriteDBus   => lmb3_writedbus,
        LMB2_AddrStrobe  => lmb3_addrstrobe,
        LMB2_ReadStrobe  => lmb3_readstrobe,
        LMB2_WriteStrobe => lmb3_writestrobe,
        LMB2_BE          => lmb3_be,
        Force            => Force,
        ForceEna         => ForceEna23,
        MisCompare       => MisCompare23,
        MisMatch         => MisMatch23);

      lmb_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal lmb_abus_voted          : std_logic_vector(0 to C_LMB_AWIDTH-1);
        signal lmb_writedbus_voted     : std_logic_vector(0 to C_LMB_DWIDTH-1);
        signal lmb_addrstrobe_voted    : std_logic;
        signal lmb_readstrobe_voted    : std_logic;
        signal lmb_writestrobe_voted   : std_logic;
        signal lmb_be_voted            : std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
      begin

        lmb_voter_i : entity tmr_voter_v1_0_5.lmb_voter
        generic map(
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map (
          TMR_Disable      => tmr_disable_vec,
          LMB1_ABus        => LMB1_ABus,
          LMB1_WriteDBus   => LMB1_WriteDBus,
          LMB1_AddrStrobe  => LMB1_AddrStrobe,
          LMB1_ReadStrobe  => LMB1_ReadStrobe,
          LMB1_WriteStrobe => LMB1_WriteStrobe,
          LMB1_BE          => LMB1_BE,
          Sl1_DBus         => open,
          Sl1_Ready        => open,
          Sl1_Wait         => open,
          Sl1_UE           => open,
          Sl1_CE           => open,
          LMB2_ABus        => LMB2_ABus,
          LMB2_WriteDBus   => LMB2_WriteDBus,
          LMB2_AddrStrobe  => LMB2_AddrStrobe,
          LMB2_ReadStrobe  => LMB2_ReadStrobe,
          LMB2_WriteStrobe => LMB2_WriteStrobe,
          LMB2_BE          => LMB2_BE,
          Sl2_DBus         => open,
          Sl2_Ready        => open,
          Sl2_Wait         => open,
          Sl2_UE           => open,
          Sl2_CE           => open,
          LMB3_ABus        => LMB3_ABus,
          LMB3_WriteDBus   => LMB3_WriteDBus,
          LMB3_AddrStrobe  => LMB3_AddrStrobe,
          LMB3_ReadStrobe  => LMB3_ReadStrobe,
          LMB3_WriteStrobe => LMB3_WriteStrobe,
          LMB3_BE          => LMB3_BE,
          Sl3_DBus         => open,
          Sl3_Ready        => open,
          Sl3_Wait         => open,
          Sl3_UE           => open,
          Sl3_CE           => open,
          LMB_ABus         => lmb_abus_voted,
          LMB_WriteDBus    => lmb_writedbus_voted,
          LMB_AddrStrobe   => lmb_addrstrobe_voted,
          LMB_ReadStrobe   => lmb_readstrobe_voted,
          LMB_WriteStrobe  => lmb_writestrobe_voted,
          LMB_BE           => lmb_be_voted,
          Sl_DBus          => (others => '0'),
          Sl_Ready         => '0',
          Sl_Wait          => '0',
          Sl_UE            => '0',
          Sl_CE            => '0');

        compare_vote_i : entity tmr_voter_v1_0_5.lmb_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk              => Clk,
          Rst1             => Rst,
          Rst2             => Rst,
          LMB1_ABus        => lmb_abus,
          LMB1_WriteDBus   => lmb_writedbus,
          LMB1_AddrStrobe  => lmb_addrstrobe,
          LMB1_ReadStrobe  => lmb_readstrobe,
          LMB1_WriteStrobe => lmb_writestrobe,
          LMB1_BE          => lmb_be,
          LMB2_ABus        => lmb_abus_voted,
          LMB2_WriteDBus   => lmb_writedbus_voted,
          LMB2_AddrStrobe  => lmb_addrstrobe_voted,
          LMB2_ReadStrobe  => lmb_readstrobe_voted,
          LMB2_WriteStrobe => lmb_writestrobe_voted,
          LMB2_BE          => lmb_be_voted,
          Force            => Force,
          ForceEna         => VoterErrorForceEna,
          MisCompare       => VoterErrorMisCompare,
          MisMatch         => VoterError);

      end generate lmb_voter_check_g;

    end generate tmr_g;

  end generate lmb_g;

  -- LMB
  s_lmb_g: if (C_INTERFACE = C_S_LMB) generate
    signal s_lmb1_ready_i, s_lmb2_ready_i, s_lmb3_ready_i : std_logic; 
  begin

    lmb_protocol_0_g: if (C_LMB_PROTOCOL = 0) generate
    begin
      s_lmb1_ready_i <= s_lmb1_ready;
      s_lmb2_ready_i <= s_lmb2_ready;
      s_lmb3_ready_i <= s_lmb3_ready;
    end generate lmb_protocol_0_g;
      
    lmb_protocol_1_g: if (C_LMB_PROTOCOL = 1) generate
    begin
      lmb_protocol_1_dff: process (Clk) is
      begin
        if Clk'event and Clk = '1' then
          if Rst = '1' then
            s_lmb1_ready_i <= '0';
            s_lmb2_ready_i <= '0';
            s_lmb3_ready_i <= '0';
          else
            s_lmb1_ready_i <= s_lmb1_ready;
            s_lmb2_ready_i <= s_lmb2_ready;
            s_lmb3_ready_i <= s_lmb3_ready;
          end if;
        end if;
      end process lmb_protocol_1_dff;
    end generate lmb_protocol_1_g;
      
    compare12_i : entity tmr_voter_v1_0_5.s_lmb_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk             => Clk,
      Rst1            => Rst,
      Rst2            => rst2,
      S_LMB1_ReadDBus => s_lmb1_dbus,
      S_LMB1_Ready    => s_lmb1_ready_i,
      S_LMB1_Wait     => s_lmb1_wait,
      S_LMB1_UE       => s_lmb1_ue,
      S_LMB1_CE       => s_lmb1_ce,
      S_LMB2_ReadDBus => s_lmb2_dbus,
      S_LMB2_Ready    => s_lmb2_ready_i,
      S_LMB2_Wait     => s_lmb2_wait,
      S_LMB2_UE       => s_lmb2_ue,
      S_LMB2_CE       => s_lmb2_ce,
      Force           => Force,
      ForceEna        => ForceEna12,
      MisCompare      => MisCompare12,
      MisMatch        => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.s_lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_LMB1_ReadDBus => s_lmb1_dbus,
        S_LMB1_Ready    => s_lmb1_ready_i,
        S_LMB1_Wait     => s_lmb1_wait,
        S_LMB1_UE       => s_lmb1_ue,
        S_LMB1_CE       => s_lmb1_ce,
        S_LMB2_ReadDBus => s_lmb3_dbus,
        S_LMB2_Ready    => s_lmb3_ready_i,
        S_LMB2_Wait     => s_lmb3_wait,
        S_LMB2_UE       => s_lmb3_ue,
        S_LMB2_CE       => s_lmb3_ce,
        Force           => Force,
        ForceEna        => ForceEna13,
        MisCompare      => MisCompare13,
        MisMatch        => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.s_lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_LMB1_ReadDBus => s_lmb2_dbus,
        S_LMB1_Ready    => s_lmb2_ready_i,
        S_LMB1_Wait     => s_lmb2_wait,
        S_LMB1_UE       => s_lmb2_ue,
        S_LMB1_CE       => s_lmb2_ce,
        S_LMB2_ReadDBus => s_lmb3_dbus,
        S_LMB2_Ready    => s_lmb3_ready_i,
        S_LMB2_Wait     => s_lmb3_wait,
        S_LMB2_UE       => s_lmb3_ue,
        S_LMB2_CE       => s_lmb3_ce,
        Force           => Force,
        ForceEna        => ForceEna23,
        MisCompare      => MisCompare23,
        MisMatch        => MisMatch23);

      s_lmb_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal s_lmb_dbus_voted    : std_logic_vector(0 to C_LMB_DWIDTH-1);
        signal s_lmb_ready_voted   : std_logic;
        signal s_lmb_wait_voted    : std_logic;
        signal s_lmb_ue_voted      : std_logic;
        signal s_lmb_ce_voted      : std_logic;

        -- For C_LMB_PROTOCOL
        signal s_lmb_ready_voted_i : std_logic;
        signal s_lmb_ready_i       : std_logic;
        
      begin

        s_lmb_voter_i : entity tmr_voter_v1_0_5.s_lmb_voter
        generic map(
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map (
          TMR_Disable        => tmr_disable_vec,
          S_LMB1_ABus        => open,
          S_LMB1_WriteDBus   => open,
          S_LMB1_AddrStrobe  => open,
          S_LMB1_ReadStrobe  => open,
          S_LMB1_WriteStrobe => open,
          S_LMB1_BE          => open,
          S_Sl1_DBus         => S_LMB1_DBus,
          S_Sl1_Ready        => S_LMB1_Ready,
          S_Sl1_Wait         => S_LMB1_Wait,
          S_Sl1_UE           => S_LMB1_UE,
          S_Sl1_CE           => S_LMB1_CE,
          S_LMB2_ABus        => open,
          S_LMB2_WriteDBus   => open,
          S_LMB2_AddrStrobe  => open,
          S_LMB2_ReadStrobe  => open,
          S_LMB2_WriteStrobe => open,
          S_LMB2_BE          => open,
          S_Sl2_DBus         => S_LMB2_DBus,
          S_Sl2_Ready        => S_LMB2_Ready,
          S_Sl2_Wait         => S_LMB2_Wait,
          S_Sl2_UE           => S_LMB2_UE,
          S_Sl2_CE           => S_LMB2_CE,
          S_LMB3_ABus        => open,
          S_LMB3_WriteDBus   => open,
          S_LMB3_AddrStrobe  => open,
          S_LMB3_ReadStrobe  => open,
          S_LMB3_WriteStrobe => open,
          S_LMB3_BE          => open,
          S_Sl3_DBus         => S_LMB3_DBus,
          S_Sl3_Ready        => S_LMB3_Ready,
          S_Sl3_Wait         => S_LMB3_Wait,
          S_Sl3_UE           => S_LMB3_UE,
          S_Sl3_CE           => S_LMB3_CE,
          S_LMB_ABus         => (others => '0'),
          S_LMB_WriteDBus    => (others => '0'),
          S_LMB_AddrStrobe   => '0',
          S_LMB_ReadStrobe   => '0',
          S_LMB_WriteStrobe  => '0',
          S_LMB_BE           => (others => '0'),
          S_Sl_DBus          => s_lmb_dbus_voted,
          S_Sl_Ready         => s_lmb_ready_voted,
          S_Sl_Wait          => s_lmb_wait_voted,
          S_Sl_UE            => s_lmb_ue_voted,
          S_Sl_CE            => s_lmb_ce_voted);

        lmb_protocol_0_g: if (C_LMB_PROTOCOL = 0) generate
        begin
          s_lmb_ready_i       <= s_lmb_ready;
          s_lmb_ready_voted_i <= s_lmb_ready_voted;
        end generate lmb_protocol_0_g;
      
        lmb_protocol_1_g: if (C_LMB_PROTOCOL = 1) generate
        begin
          lmb_protocol_1_dff: process (Clk) is
          begin
            if Clk'event and Clk = '1' then
              if Rst = '1' then
                s_lmb_ready_i       <= '0';
                s_lmb_ready_voted_i <= '0';
              else
                s_lmb_ready_i       <= s_lmb_ready;
                s_lmb_ready_voted_i <= s_lmb_ready_voted;
              end if;
            end if;
          end process lmb_protocol_1_dff;
        end generate lmb_protocol_1_g;

        s_compare_vote_i : entity tmr_voter_v1_0_5.s_lmb_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk             => Clk,
          Rst1            => Rst,
          Rst2            => Rst,
          S_LMB1_ReadDBus => s_lmb_dbus,
          S_LMB1_Ready    => s_lmb_ready_i,
          S_LMB1_Wait     => s_lmb_wait,
          S_LMB1_UE       => s_lmb_ue,
          S_LMB1_CE       => s_lmb_ce,
          S_LMB2_ReadDBus => s_lmb_dbus_voted,
          S_LMB2_Ready    => s_lmb_ready_voted_i,
          S_LMB2_Wait     => s_lmb_wait_voted,
          S_LMB2_UE       => s_lmb_ue_voted,
          S_LMB2_CE       => s_lmb_ce_voted,
          Force           => Force,
          ForceEna        => VoterErrorForceEna,
          MisCompare      => VoterErrorMisCompare,
          MisMatch        => VoterError);

      end generate s_lmb_voter_check_g;

    end generate tmr_g;

  end generate s_lmb_g;

  -- BRAM
  bram_g: if (C_INTERFACE = C_BRAM) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.bram_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_ECC             => C_ECC,
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk        => Clk,
      Rst1       => Rst,
      Rst2       => rst2,
      BRAM1_Addr => bram1_addr,
      BRAM1_EN   => bram1_en,
      BRAM1_WE   => bram1_we,
      BRAM1_Dout => bram1_dout,
      BRAM2_Addr => bram2_addr,
      BRAM2_EN   => bram2_en,
      BRAM2_WE   => bram2_we,
      BRAM2_Dout => bram2_dout,
      Force      => Force,
      ForceEna   => ForceEna12,
      MisCompare => MisCompare12,
      MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.bram_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_ECC             => C_ECC,
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => Rst,
        BRAM1_Addr => bram1_addr,
        BRAM1_EN   => bram1_en,
        BRAM1_WE   => bram1_we,
        BRAM1_Dout => bram1_dout,
        BRAM2_Addr => bram3_addr,
        BRAM2_EN   => bram3_en,
        BRAM2_WE   => bram3_we,
        BRAM2_Dout => bram3_dout,
        Force      => Force,
        ForceEna   => ForceEna13,
        MisCompare => MisCompare13,
        MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.bram_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_ECC             => C_ECC,
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => Rst,
        BRAM1_Addr => bram2_addr,
        BRAM1_EN   => bram2_en,
        BRAM1_WE   => bram2_we,
        BRAM1_Dout => bram2_dout,
        BRAM2_Addr => bram3_addr,
        BRAM2_EN   => bram3_en,
        BRAM2_WE   => bram3_we,
        BRAM2_Dout => bram3_dout,
        Force      => Force,
        ForceEna   => ForceEna23,
        MisCompare => MisCompare23,
        MisMatch   => MisMatch23);

      bram_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal bram_addr_voted   : std_logic_vector(0 to C_LMB_AWIDTH-1);
        signal bram_en_voted     : std_logic;
        signal bram_we_voted     : std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
        signal bram_dout_voted   : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
      begin

        bram_voter_i : entity tmr_voter_v1_0_5.bram_voter
        generic map(
          C_ECC             => C_ECC,
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map(
          TMR_Disable => tmr_disable_vec,
          Clk         => Clk,
          BRAM1_Rst   => BRAM1_Rst,
          BRAM1_Clk   => BRAM1_Clk,
          BRAM1_Addr  => BRAM1_Addr,
          BRAM1_EN    => BRAM1_EN,
          BRAM1_WE    => BRAM1_WE,
          BRAM1_Dout  => BRAM1_Dout,
          BRAM1_Din   => open,
          BRAM2_Rst   => BRAM2_Rst,
          BRAM2_Clk   => BRAM2_Clk,
          BRAM2_Addr  => BRAM2_Addr,
          BRAM2_EN    => BRAM2_EN,
          BRAM2_WE    => BRAM2_WE,
          BRAM2_Dout  => BRAM2_Dout,
          BRAM2_Din   => open,
          BRAM3_Rst   => BRAM3_Rst,
          BRAM3_Clk   => BRAM3_Clk,
          BRAM3_Addr  => BRAM3_Addr,
          BRAM3_EN    => BRAM3_EN,
          BRAM3_WE    => BRAM3_WE,
          BRAM3_Dout  => BRAM3_Dout,
          BRAM3_Din   => open,
          BRAM_Rst    => open,
          BRAM_Clk    => open,
          BRAM_Addr   => bram_addr_voted,
          BRAM_EN     => bram_en_voted,
          BRAM_WE     => bram_we_voted,
          BRAM_Dout   => bram_dout_voted,
          BRAM_Din    => (others => '0'));

        compare_vote_i : entity tmr_voter_v1_0_5.bram_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_ECC             => C_ECC,
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          BRAM1_Addr => bram_addr,
          BRAM1_EN   => bram_en,
          BRAM1_WE   => bram_we,
          BRAM1_Dout => bram_dout,
          BRAM2_Addr => bram_addr_voted,
          BRAM2_EN   => bram_en_voted,
          BRAM2_WE   => bram_we_voted,
          BRAM2_Dout => bram_dout_voted,
          Force      => Force,
          ForceEna   => VoterErrorForceEna,
          MisCompare => VoterErrorMisCompare,
          MisMatch   => VoterError);

      end generate bram_voter_check_g;

    end generate tmr_g;

  end generate bram_g;

  -- M_BRAM
  m_bram_g: if (C_INTERFACE = C_M_BRAM) generate
    constant C_COMPARE_MASK : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1) := (others => C_INCLUDE_MASK(0));

    signal m_bram1_din_m, m_bram2_din_m : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1);
  begin

    m_bram1_din_m <= m_bram1_din and C_COMPARE_MASK;
    m_bram2_din_m <= m_bram2_din and C_COMPARE_MASK;

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => M_BRAM1_Din'length,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map(
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => rst2,
        Enable1    => (others => '1'),
        Enable2    => (others => '1'),
        Compare1   => m_bram1_din_m,
        Compare2   => m_bram2_din_m,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
      signal m_bram3_din_m : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1);
    begin

      m_bram3_din_m <= m_bram3_din and C_COMPARE_MASK;

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH => M_BRAM1_Din'length,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => m_bram1_din_m,
          Compare2   => m_bram3_din_m,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => M_BRAM2_Din'length,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => m_bram2_din_m,
          Compare2   => m_bram3_din_m,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      m_bram_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal bram_din_voted   : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1);
        signal s_bram_din_m     : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1);
        signal bram_din_voted_m : std_logic_vector(0 to C_M_BRAM_COMPARE_WIDTH-1);
      begin

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map (
            C_WIDTH           => bram_din_voted'length,
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1       => M_BRAM1_Din,
            Vote2       => M_BRAM3_Din,
            Vote3       => M_BRAM3_Din,
            Voted       => bram_din_voted);

        s_bram_din_m     <= s_bram_din     and C_COMPARE_MASK;
        bram_din_voted_m <= bram_din_voted and C_COMPARE_MASK;

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map (
            C_WIDTH           => bram_din_voted'length,
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map(
            Clk        => Clk,
            Rst1       => Rst,
            Rst2       => Rst,
            Enable1    => (others => '1'),
            Enable2    => (others => '1'),
            Compare1   => s_bram_din_m,
            Compare2   => bram_din_voted_m,
            Force      => Force,
            ForceEna   => VoterErrorForceEna,
            MisCompare => VoterErrorMisCompare,
            MisMatch   => VoterError);

      end generate m_bram_voter_check_g;

    end generate tmr_g;

  end generate m_bram_g;

  -- AXI
  axi_g: if (C_INTERFACE = C_AXI4 or C_INTERFACE = C_ACE or C_INTERFACE = C_AXI4LITE) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.axi_comparator
    generic map (
      C_INCLUDE_MASK     => C_INCLUDE_MASK,
      C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
      C_INTERFACE        => C_INTERFACE,
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
      C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
      C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
      C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
      C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
      C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
      C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
      C_INPUT_REGISTER1  => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2  => C_INPUT_REGISTER2)
    port map(
      Clk             => Clk,
      Rst1            => Rst,
      Rst2            => rst2,
      S_AXI1_AWID     => s_axi1_awid,
      S_AXI1_AWADDR   => s_axi1_awaddr,
      S_AXI1_AWLEN    => s_axi1_awlen,
      S_AXI1_AWSIZE   => s_axi1_awsize,
      S_AXI1_AWBURST  => s_axi1_awburst,
      S_AXI1_AWLOCK   => s_axi1_awlock,
      S_AXI1_AWCACHE  => s_axi1_awcache,
      S_AXI1_AWPROT   => s_axi1_awprot,
      S_AXI1_AWQOS    => s_axi1_awqos,
      S_AXI1_AWVALID  => s_axi1_awvalid,
      S_AXI1_AWUSER   => s_axi1_awuser,
      S_AXI1_AWDOMAIN => s_axi1_awdomain,
      S_AXI1_AWSNOOP  => s_axi1_awsnoop,
      S_AXI1_AWBAR    => s_axi1_awbar,
      S_AXI1_WDATA    => s_axi1_wdata,
      S_AXI1_WSTRB    => s_axi1_wstrb,
      S_AXI1_WLAST    => s_axi1_wlast,
      S_AXI1_WVALID   => s_axi1_wvalid,
      S_AXI1_WUSER    => s_axi1_wuser,
      S_AXI1_BREADY   => s_axi1_bready,
      S_AXI1_WACK     => s_axi1_wack,
      S_AXI1_ARID     => s_axi1_arid,
      S_AXI1_ARADDR   => s_axi1_araddr,
      S_AXI1_ARLEN    => s_axi1_arlen,
      S_AXI1_ARSIZE   => s_axi1_arsize,
      S_AXI1_ARBURST  => s_axi1_arburst,
      S_AXI1_ARLOCK   => s_axi1_arlock,
      S_AXI1_ARCACHE  => s_axi1_arcache,
      S_AXI1_ARPROT   => s_axi1_arprot,
      S_AXI1_ARQOS    => s_axi1_arqos,
      S_AXI1_ARVALID  => s_axi1_arvalid,
      S_AXI1_ARUSER   => s_axi1_aruser,
      S_AXI1_ARDOMAIN => s_axi1_ardomain,
      S_AXI1_ARSNOOP  => s_axi1_arsnoop,
      S_AXI1_ARBAR    => s_axi1_arbar,
      S_AXI1_RREADY   => s_axi1_rready,
      S_AXI1_RACK     => s_axi1_rack,
      S_AXI1_ACREADY  => s_axi1_acready,
      S_AXI1_CRVALID  => s_axi1_crvalid,
      S_AXI1_CRRESP   => s_axi1_crresp,
      S_AXI1_CDVALID  => s_axi1_cdvalid,
      S_AXI1_CDDATA   => s_axi1_cddata,
      S_AXI1_CDLAST   => s_axi1_cdlast,
      S_AXI2_AWID     => s_axi2_awid,
      S_AXI2_AWADDR   => s_axi2_awaddr,
      S_AXI2_AWLEN    => s_axi2_awlen,
      S_AXI2_AWSIZE   => s_axi2_awsize,
      S_AXI2_AWBURST  => s_axi2_awburst,
      S_AXI2_AWLOCK   => s_axi2_awlock,
      S_AXI2_AWCACHE  => s_axi2_awcache,
      S_AXI2_AWPROT   => s_axi2_awprot,
      S_AXI2_AWQOS    => s_axi2_awqos,
      S_AXI2_AWVALID  => s_axi2_awvalid,
      S_AXI2_AWUSER   => s_axi2_awuser,
      S_AXI2_AWDOMAIN => s_axi2_awdomain,
      S_AXI2_AWSNOOP  => s_axi2_awsnoop,
      S_AXI2_AWBAR    => s_axi2_awbar,
      S_AXI2_WDATA    => s_axi2_wdata,
      S_AXI2_WSTRB    => s_axi2_wstrb,
      S_AXI2_WLAST    => s_axi2_wlast,
      S_AXI2_WVALID   => s_axi2_wvalid,
      S_AXI2_WUSER    => s_axi2_wuser,
      S_AXI2_BREADY   => s_axi2_bready,
      S_AXI2_WACK     => s_axi2_wack,
      S_AXI2_ARID     => s_axi2_arid,
      S_AXI2_ARADDR   => s_axi2_araddr,
      S_AXI2_ARLEN    => s_axi2_arlen,
      S_AXI2_ARSIZE   => s_axi2_arsize,
      S_AXI2_ARBURST  => s_axi2_arburst,
      S_AXI2_ARLOCK   => s_axi2_arlock,
      S_AXI2_ARCACHE  => s_axi2_arcache,
      S_AXI2_ARPROT   => s_axi2_arprot,
      S_AXI2_ARQOS    => s_axi2_arqos,
      S_AXI2_ARVALID  => s_axi2_arvalid,
      S_AXI2_ARUSER   => s_axi2_aruser,
      S_AXI2_ARDOMAIN => s_axi2_ardomain,
      S_AXI2_ARSNOOP  => s_axi2_arsnoop,
      S_AXI2_ARBAR    => s_axi2_arbar,
      S_AXI2_RREADY   => s_axi2_rready,
      S_AXI2_RACK     => s_axi2_rack,
      S_AXI2_ACREADY  => s_axi2_acready,
      S_AXI2_CRVALID  => s_axi2_crvalid,
      S_AXI2_CRRESP   => s_axi2_crresp,
      S_AXI2_CDVALID  => s_axi2_cdvalid,
      S_AXI2_CDDATA   => s_axi2_cddata,
      S_AXI2_CDLAST   => s_axi2_cdlast,
      Force           => Force,
      ForceEna        => ForceEna12,
      MisCompare      => MisCompare12,
      MisMatch        => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.axi_comparator
      generic map (
        C_INCLUDE_MASK     => C_INCLUDE_MASK,
        C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
        C_INTERFACE        => C_INTERFACE,
        C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
        C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
        C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
        C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
        C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
        C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
        C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
        C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
        C_INPUT_REGISTER1  => C_INPUT_REGISTER,
        C_INPUT_REGISTER2  => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_AXI1_AWID     => s_axi1_awid,
        S_AXI1_AWADDR   => s_axi1_awaddr,
        S_AXI1_AWLEN    => s_axi1_awlen,
        S_AXI1_AWSIZE   => s_axi1_awsize,
        S_AXI1_AWBURST  => s_axi1_awburst,
        S_AXI1_AWLOCK   => s_axi1_awlock,
        S_AXI1_AWCACHE  => s_axi1_awcache,
        S_AXI1_AWPROT   => s_axi1_awprot,
        S_AXI1_AWQOS    => s_axi1_awqos,
        S_AXI1_AWVALID  => s_axi1_awvalid,
        S_AXI1_AWUSER   => s_axi1_awuser,
        S_AXI1_AWDOMAIN => s_axi1_awdomain,
        S_AXI1_AWSNOOP  => s_axi1_awsnoop,
        S_AXI1_AWBAR    => s_axi1_awbar,
        S_AXI1_WDATA    => s_axi1_wdata,
        S_AXI1_WSTRB    => s_axi1_wstrb,
        S_AXI1_WLAST    => s_axi1_wlast,
        S_AXI1_WVALID   => s_axi1_wvalid,
        S_AXI1_WUSER    => s_axi1_wuser,
        S_AXI1_BREADY   => s_axi1_bready,
        S_AXI1_WACK     => s_axi1_wack,
        S_AXI1_ARID     => s_axi1_arid,
        S_AXI1_ARADDR   => s_axi1_araddr,
        S_AXI1_ARLEN    => s_axi1_arlen,
        S_AXI1_ARSIZE   => s_axi1_arsize,
        S_AXI1_ARBURST  => s_axi1_arburst,
        S_AXI1_ARLOCK   => s_axi1_arlock,
        S_AXI1_ARCACHE  => s_axi1_arcache,
        S_AXI1_ARPROT   => s_axi1_arprot,
        S_AXI1_ARQOS    => s_axi1_arqos,
        S_AXI1_ARVALID  => s_axi1_arvalid,
        S_AXI1_ARUSER   => s_axi1_aruser,
        S_AXI1_ARDOMAIN => s_axi1_ardomain,
        S_AXI1_ARSNOOP  => s_axi1_arsnoop,
        S_AXI1_ARBAR    => s_axi1_arbar,
        S_AXI1_RREADY   => s_axi1_rready,
        S_AXI1_RACK     => s_axi1_rack,
        S_AXI1_ACREADY  => s_axi1_acready,
        S_AXI1_CRVALID  => s_axi1_crvalid,
        S_AXI1_CRRESP   => s_axi1_crresp,
        S_AXI1_CDVALID  => s_axi1_cdvalid,
        S_AXI1_CDDATA   => s_axi1_cddata,
        S_AXI1_CDLAST   => s_axi1_cdlast,
        S_AXI2_AWID     => s_axi3_awid,
        S_AXI2_AWADDR   => s_axi3_awaddr,
        S_AXI2_AWLEN    => s_axi3_awlen,
        S_AXI2_AWSIZE   => s_axi3_awsize,
        S_AXI2_AWBURST  => s_axi3_awburst,
        S_AXI2_AWLOCK   => s_axi3_awlock,
        S_AXI2_AWCACHE  => s_axi3_awcache,
        S_AXI2_AWPROT   => s_axi3_awprot,
        S_AXI2_AWQOS    => s_axi3_awqos,
        S_AXI2_AWVALID  => s_axi3_awvalid,
        S_AXI2_AWUSER   => s_axi3_awuser,
        S_AXI2_AWDOMAIN => s_axi3_awdomain,
        S_AXI2_AWSNOOP  => s_axi3_awsnoop,
        S_AXI2_AWBAR    => s_axi3_awbar,
        S_AXI2_WDATA    => s_axi3_wdata,
        S_AXI2_WSTRB    => s_axi3_wstrb,
        S_AXI2_WLAST    => s_axi3_wlast,
        S_AXI2_WVALID   => s_axi3_wvalid,
        S_AXI2_WUSER    => s_axi3_wuser,
        S_AXI2_BREADY   => s_axi3_bready,
        S_AXI2_WACK     => s_axi3_wack,
        S_AXI2_ARID     => s_axi3_arid,
        S_AXI2_ARADDR   => s_axi3_araddr,
        S_AXI2_ARLEN    => s_axi3_arlen,
        S_AXI2_ARSIZE   => s_axi3_arsize,
        S_AXI2_ARBURST  => s_axi3_arburst,
        S_AXI2_ARLOCK   => s_axi3_arlock,
        S_AXI2_ARCACHE  => s_axi3_arcache,
        S_AXI2_ARPROT   => s_axi3_arprot,
        S_AXI2_ARQOS    => s_axi3_arqos,
        S_AXI2_ARVALID  => s_axi3_arvalid,
        S_AXI2_ARUSER   => s_axi3_aruser,
        S_AXI2_ARDOMAIN => s_axi3_ardomain,
        S_AXI2_ARSNOOP  => s_axi3_arsnoop,
        S_AXI2_ARBAR    => s_axi3_arbar,
        S_AXI2_RREADY   => s_axi3_rready,
        S_AXI2_RACK     => s_axi3_rack,
        S_AXI2_ACREADY  => s_axi3_acready,
        S_AXI2_CRVALID  => s_axi3_crvalid,
        S_AXI2_CRRESP   => s_axi3_crresp,
        S_AXI2_CDVALID  => s_axi3_cdvalid,
        S_AXI2_CDDATA   => s_axi3_cddata,
        S_AXI2_CDLAST   => s_axi3_cdlast,
        Force           => Force,
        ForceEna        => ForceEna13,
        MisCompare      => MisCompare13,
        MisMatch        => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.axi_comparator
      generic map (
        C_INCLUDE_MASK     => C_INCLUDE_MASK,
        C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
        C_INTERFACE        => C_INTERFACE,
        C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
        C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
        C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
        C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
        C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
        C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
        C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
        C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
        C_INPUT_REGISTER1  => C_INPUT_REGISTER,
        C_INPUT_REGISTER2  => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_AXI1_AWID     => s_axi2_awid,
        S_AXI1_AWADDR   => s_axi2_awaddr,
        S_AXI1_AWLEN    => s_axi2_awlen,
        S_AXI1_AWSIZE   => s_axi2_awsize,
        S_AXI1_AWBURST  => s_axi2_awburst,
        S_AXI1_AWLOCK   => s_axi2_awlock,
        S_AXI1_AWCACHE  => s_axi2_awcache,
        S_AXI1_AWPROT   => s_axi2_awprot,
        S_AXI1_AWQOS    => s_axi2_awqos,
        S_AXI1_AWVALID  => s_axi2_awvalid,
        S_AXI1_AWUSER   => s_axi2_awuser,
        S_AXI1_AWDOMAIN => s_axi2_awdomain,
        S_AXI1_AWSNOOP  => s_axi2_awsnoop,
        S_AXI1_AWBAR    => s_axi2_awbar,
        S_AXI1_WDATA    => s_axi2_wdata,
        S_AXI1_WSTRB    => s_axi2_wstrb,
        S_AXI1_WLAST    => s_axi2_wlast,
        S_AXI1_WVALID   => s_axi2_wvalid,
        S_AXI1_WUSER    => s_axi2_wuser,
        S_AXI1_BREADY   => s_axi2_bready,
        S_AXI1_WACK     => s_axi2_wack,
        S_AXI1_ARID     => s_axi2_arid,
        S_AXI1_ARADDR   => s_axi2_araddr,
        S_AXI1_ARLEN    => s_axi2_arlen,
        S_AXI1_ARSIZE   => s_axi2_arsize,
        S_AXI1_ARBURST  => s_axi2_arburst,
        S_AXI1_ARLOCK   => s_axi2_arlock,
        S_AXI1_ARCACHE  => s_axi2_arcache,
        S_AXI1_ARPROT   => s_axi2_arprot,
        S_AXI1_ARQOS    => s_axi2_arqos,
        S_AXI1_ARVALID  => s_axi2_arvalid,
        S_AXI1_ARUSER   => s_axi2_aruser,
        S_AXI1_ARDOMAIN => s_axi2_ardomain,
        S_AXI1_ARSNOOP  => s_axi2_arsnoop,
        S_AXI1_ARBAR    => s_axi2_arbar,
        S_AXI1_RREADY   => s_axi2_rready,
        S_AXI1_RACK     => s_axi2_rack,
        S_AXI1_ACREADY  => s_axi2_acready,
        S_AXI1_CRVALID  => s_axi2_crvalid,
        S_AXI1_CRRESP   => s_axi2_crresp,
        S_AXI1_CDVALID  => s_axi2_cdvalid,
        S_AXI1_CDDATA   => s_axi2_cddata,
        S_AXI1_CDLAST   => s_axi2_cdlast,
        S_AXI2_AWID     => s_axi3_awid,
        S_AXI2_AWADDR   => s_axi3_awaddr,
        S_AXI2_AWLEN    => s_axi3_awlen,
        S_AXI2_AWSIZE   => s_axi3_awsize,
        S_AXI2_AWBURST  => s_axi3_awburst,
        S_AXI2_AWLOCK   => s_axi3_awlock,
        S_AXI2_AWCACHE  => s_axi3_awcache,
        S_AXI2_AWPROT   => s_axi3_awprot,
        S_AXI2_AWQOS    => s_axi3_awqos,
        S_AXI2_AWVALID  => s_axi3_awvalid,
        S_AXI2_AWUSER   => s_axi3_awuser,
        S_AXI2_AWDOMAIN => s_axi3_awdomain,
        S_AXI2_AWSNOOP  => s_axi3_awsnoop,
        S_AXI2_AWBAR    => s_axi3_awbar,
        S_AXI2_WDATA    => s_axi3_wdata,
        S_AXI2_WSTRB    => s_axi3_wstrb,
        S_AXI2_WLAST    => s_axi3_wlast,
        S_AXI2_WVALID   => s_axi3_wvalid,
        S_AXI2_WUSER    => s_axi3_wuser,
        S_AXI2_BREADY   => s_axi3_bready,
        S_AXI2_WACK     => s_axi3_wack,
        S_AXI2_ARID     => s_axi3_arid,
        S_AXI2_ARADDR   => s_axi3_araddr,
        S_AXI2_ARLEN    => s_axi3_arlen,
        S_AXI2_ARSIZE   => s_axi3_arsize,
        S_AXI2_ARBURST  => s_axi3_arburst,
        S_AXI2_ARLOCK   => s_axi3_arlock,
        S_AXI2_ARCACHE  => s_axi3_arcache,
        S_AXI2_ARPROT   => s_axi3_arprot,
        S_AXI2_ARQOS    => s_axi3_arqos,
        S_AXI2_ARVALID  => s_axi3_arvalid,
        S_AXI2_ARUSER   => s_axi3_aruser,
        S_AXI2_ARDOMAIN => s_axi3_ardomain,
        S_AXI2_ARSNOOP  => s_axi3_arsnoop,
        S_AXI2_ARBAR    => s_axi3_arbar,
        S_AXI2_RREADY   => s_axi3_rready,
        S_AXI2_RACK     => s_axi3_rack,
        S_AXI2_ACREADY  => s_axi3_acready,
        S_AXI2_CRVALID  => s_axi3_crvalid,
        S_AXI2_CRRESP   => s_axi3_crresp,
        S_AXI2_CDVALID  => s_axi3_cdvalid,
        S_AXI2_CDDATA   => s_axi3_cddata,
        S_AXI2_CDLAST   => s_axi3_cdlast,
        Force           => Force,
        ForceEna        => ForceEna23,
        MisCompare      => MisCompare23,
        MisMatch        => MisMatch23);

      axi_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal m_axi_awid_voted       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        signal m_axi_awaddr_voted     : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        signal m_axi_awlen_voted      : std_logic_vector(7 downto 0);
        signal m_axi_awsize_voted     : std_logic_vector(2 downto 0);
        signal m_axi_awburst_voted    : std_logic_vector(1 downto 0);
        signal m_axi_awlock_voted     : std_logic;
        signal m_axi_awcache_voted    : std_logic_vector(3 downto 0);
        signal m_axi_awprot_voted     : std_logic_vector(2 downto 0);
        signal m_axi_awqos_voted      : std_logic_vector(3 downto 0);
        signal m_axi_awvalid_voted    : std_logic;
        signal m_axi_awuser_voted     : std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
        signal m_axi_awdomain_voted   : std_logic_vector(1 downto 0);                      -- For ACE
        signal m_axi_awsnoop_voted    : std_logic_vector(2 downto 0);                      -- For ACE
        signal m_axi_awbar_voted      : std_logic_vector(1 downto 0);                      -- For ACE
        signal m_axi_wdata_voted      : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        signal m_axi_wstrb_voted      : std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
        signal m_axi_wlast_voted      : std_logic;
        signal m_axi_wvalid_voted     : std_logic;
        signal m_axi_wuser_voted      : std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
        signal m_axi_bready_voted     : std_logic;
        signal m_axi_wack_voted       : std_logic;                                         -- For ACE
        signal m_axi_arid_voted       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        signal m_axi_araddr_voted     : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        signal m_axi_arlen_voted      : std_logic_vector(7 downto 0);
        signal m_axi_arsize_voted     : std_logic_vector(2 downto 0);
        signal m_axi_arburst_voted    : std_logic_vector(1 downto 0);
        signal m_axi_arlock_voted     : std_logic;
        signal m_axi_arcache_voted    : std_logic_vector(3 downto 0);
        signal m_axi_arprot_voted     : std_logic_vector(2 downto 0);
        signal m_axi_arqos_voted      : std_logic_vector(3 downto 0);
        signal m_axi_arvalid_voted    : std_logic;
        signal m_axi_aruser_voted     : std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
        signal m_axi_ardomain_voted   : std_logic_vector(1 downto 0);                      -- For ACE
        signal m_axi_arsnoop_voted    : std_logic_vector(3 downto 0);                      -- For ACE
        signal m_axi_arbar_voted      : std_logic_vector(1 downto 0);                      -- For ACE
        signal m_axi_rready_voted     : std_logic;
        signal m_axi_rack_voted       : std_logic;                                         -- For ACE
        signal m_axi_acready_voted    : std_logic;                                         -- For ACE
        signal m_axi_crvalid_voted    : std_logic;                                         -- For ACE
        signal m_axi_crresp_voted     : std_logic_vector(4 downto 0);                      -- For ACE
        signal m_axi_cdvalid_voted    : std_logic;                                         -- For ACE
        signal m_axi_cddata_voted     : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);     -- For ACE
        signal m_axi_cdlast_voted     : std_logic;                                         -- For ACE
      begin

        axi_voter_i : entity tmr_voter_v1_0_5.axi_voter
        generic map (
          C_INTERFACE        => C_INTERFACE,
          C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
          C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
          C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
          C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
          C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
          C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
          C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
          C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
          C_USE_TMR_DISABLE  => C_USE_TMR_DISABLE)
        port map(
          TMR_Disable     => tmr_disable_vec,
          S_AXI1_AWID     => S_AXI1_AWID,
          S_AXI1_AWADDR   => S_AXI1_AWADDR,
          S_AXI1_AWLEN    => S_AXI1_AWLEN,
          S_AXI1_AWSIZE   => S_AXI1_AWSIZE,
          S_AXI1_AWBURST  => S_AXI1_AWBURST,
          S_AXI1_AWLOCK   => S_AXI1_AWLOCK,
          S_AXI1_AWCACHE  => S_AXI1_AWCACHE,
          S_AXI1_AWPROT   => S_AXI1_AWPROT,
          S_AXI1_AWQOS    => S_AXI1_AWQOS,
          S_AXI1_AWVALID  => S_AXI1_AWVALID,
          S_AXI1_AWREADY  => open,
          S_AXI1_AWUSER   => S_AXI1_AWUSER,
          S_AXI1_AWDOMAIN => S_AXI1_AWDOMAIN,
          S_AXI1_AWSNOOP  => S_AXI1_AWSNOOP,
          S_AXI1_AWBAR    => S_AXI1_AWBAR,
          S_AXI1_WDATA    => S_AXI1_WDATA,
          S_AXI1_WSTRB    => S_AXI1_WSTRB,
          S_AXI1_WLAST    => S_AXI1_WLAST,
          S_AXI1_WVALID   => S_AXI1_WVALID,
          S_AXI1_WREADY   => open,
          S_AXI1_WUSER    => S_AXI1_WUSER,
          S_AXI1_BID      => open,
          S_AXI1_BRESP    => open,
          S_AXI1_BVALID   => open,
          S_AXI1_BREADY   => S_AXI1_BREADY,
          S_AXI1_BUSER    => open,
          S_AXI1_WACK     => S_AXI1_WACK,
          S_AXI1_ARID     => S_AXI1_ARID,
          S_AXI1_ARADDR   => S_AXI1_ARADDR,
          S_AXI1_ARLEN    => S_AXI1_ARLEN,
          S_AXI1_ARSIZE   => S_AXI1_ARSIZE,
          S_AXI1_ARBURST  => S_AXI1_ARBURST,
          S_AXI1_ARLOCK   => S_AXI1_ARLOCK,
          S_AXI1_ARCACHE  => S_AXI1_ARCACHE,
          S_AXI1_ARPROT   => S_AXI1_ARPROT,
          S_AXI1_ARQOS    => S_AXI1_ARQOS,
          S_AXI1_ARVALID  => S_AXI1_ARVALID,
          S_AXI1_ARREADY  => open,
          S_AXI1_ARUSER   => S_AXI1_ARUSER,
          S_AXI1_ARDOMAIN => S_AXI1_ARDOMAIN,
          S_AXI1_ARSNOOP  => S_AXI1_ARSNOOP,
          S_AXI1_ARBAR    => S_AXI1_ARBAR,
          S_AXI1_RID      => open,
          S_AXI1_RDATA    => open,
          S_AXI1_RRESP    => open,
          S_AXI1_RLAST    => open,
          S_AXI1_RVALID   => open,
          S_AXI1_RREADY   => S_AXI1_RREADY,
          S_AXI1_RUSER    => open,
          S_AXI1_RACK     => S_AXI1_RACK,
          S_AXI1_ACVALID  => open,
          S_AXI1_ACADDR   => open,
          S_AXI1_ACSNOOP  => open,
          S_AXI1_ACPROT   => open,
          S_AXI1_ACREADY  => S_AXI1_ACREADY,
          S_AXI1_CRVALID  => S_AXI1_CRVALID,
          S_AXI1_CRRESP   => S_AXI1_CRRESP,
          S_AXI1_CRREADY  => open,
          S_AXI1_CDVALID  => S_AXI1_CDVALID,
          S_AXI1_CDDATA   => S_AXI1_CDDATA,
          S_AXI1_CDLAST   => S_AXI1_CDLAST,
          S_AXI1_CDREADY  => open,
          S_AXI2_AWID     => S_AXI2_AWID,
          S_AXI2_AWADDR   => S_AXI2_AWADDR,
          S_AXI2_AWLEN    => S_AXI2_AWLEN,
          S_AXI2_AWSIZE   => S_AXI2_AWSIZE,
          S_AXI2_AWBURST  => S_AXI2_AWBURST,
          S_AXI2_AWLOCK   => S_AXI2_AWLOCK,
          S_AXI2_AWCACHE  => S_AXI2_AWCACHE,
          S_AXI2_AWPROT   => S_AXI2_AWPROT,
          S_AXI2_AWQOS    => S_AXI2_AWQOS,
          S_AXI2_AWVALID  => S_AXI2_AWVALID,
          S_AXI2_AWREADY  => open,
          S_AXI2_AWUSER   => S_AXI2_AWUSER,
          S_AXI2_AWDOMAIN => S_AXI2_AWDOMAIN,
          S_AXI2_AWSNOOP  => S_AXI2_AWSNOOP,
          S_AXI2_AWBAR    => S_AXI2_AWBAR,
          S_AXI2_WDATA    => S_AXI2_WDATA,
          S_AXI2_WSTRB    => S_AXI2_WSTRB,
          S_AXI2_WLAST    => S_AXI2_WLAST,
          S_AXI2_WVALID   => S_AXI2_WVALID,
          S_AXI2_WREADY   => open,
          S_AXI2_WUSER    => S_AXI2_WUSER,
          S_AXI2_BID      => open,
          S_AXI2_BRESP    => open,
          S_AXI2_BVALID   => open,
          S_AXI2_BREADY   => S_AXI2_BREADY,
          S_AXI2_BUSER    => open,
          S_AXI2_WACK     => S_AXI2_WACK,
          S_AXI2_ARID     => S_AXI2_ARID,
          S_AXI2_ARADDR   => S_AXI2_ARADDR,
          S_AXI2_ARLEN    => S_AXI2_ARLEN,
          S_AXI2_ARSIZE   => S_AXI2_ARSIZE,
          S_AXI2_ARBURST  => S_AXI2_ARBURST,
          S_AXI2_ARLOCK   => S_AXI2_ARLOCK,
          S_AXI2_ARCACHE  => S_AXI2_ARCACHE,
          S_AXI2_ARPROT   => S_AXI2_ARPROT,
          S_AXI2_ARQOS    => S_AXI2_ARQOS,
          S_AXI2_ARVALID  => S_AXI2_ARVALID,
          S_AXI2_ARREADY  => open,
          S_AXI2_ARUSER   => S_AXI2_ARUSER,
          S_AXI2_ARDOMAIN => S_AXI2_ARDOMAIN,
          S_AXI2_ARSNOOP  => S_AXI2_ARSNOOP,
          S_AXI2_ARBAR    => S_AXI2_ARBAR,
          S_AXI2_RID      => open,
          S_AXI2_RDATA    => open,
          S_AXI2_RRESP    => open,
          S_AXI2_RLAST    => open,
          S_AXI2_RVALID   => open,
          S_AXI2_RREADY   => S_AXI2_RREADY,
          S_AXI2_RUSER    => open,
          S_AXI2_RACK     => S_AXI2_RACK,
          S_AXI2_ACVALID  => open,
          S_AXI2_ACADDR   => open,
          S_AXI2_ACSNOOP  => open,
          S_AXI2_ACPROT   => open,
          S_AXI2_ACREADY  => S_AXI2_ACREADY,
          S_AXI2_CRVALID  => S_AXI2_CRVALID,
          S_AXI2_CRRESP   => S_AXI2_CRRESP,
          S_AXI2_CRREADY  => open,
          S_AXI2_CDVALID  => S_AXI2_CDVALID,
          S_AXI2_CDDATA   => S_AXI2_CDDATA,
          S_AXI2_CDLAST   => S_AXI2_CDLAST,
          S_AXI2_CDREADY  => open,
          S_AXI3_AWID     => S_AXI3_AWID,
          S_AXI3_AWADDR   => S_AXI3_AWADDR,
          S_AXI3_AWLEN    => S_AXI3_AWLEN,
          S_AXI3_AWSIZE   => S_AXI3_AWSIZE,
          S_AXI3_AWBURST  => S_AXI3_AWBURST,
          S_AXI3_AWLOCK   => S_AXI3_AWLOCK,
          S_AXI3_AWCACHE  => S_AXI3_AWCACHE,
          S_AXI3_AWPROT   => S_AXI3_AWPROT,
          S_AXI3_AWQOS    => S_AXI3_AWQOS,
          S_AXI3_AWVALID  => S_AXI3_AWVALID,
          S_AXI3_AWREADY  => open,
          S_AXI3_AWUSER   => S_AXI3_AWUSER,
          S_AXI3_AWDOMAIN => S_AXI3_AWDOMAIN,
          S_AXI3_AWSNOOP  => S_AXI3_AWSNOOP,
          S_AXI3_AWBAR    => S_AXI3_AWBAR,
          S_AXI3_WDATA    => S_AXI3_WDATA,
          S_AXI3_WSTRB    => S_AXI3_WSTRB,
          S_AXI3_WLAST    => S_AXI3_WLAST,
          S_AXI3_WVALID   => S_AXI3_WVALID,
          S_AXI3_WREADY   => open,
          S_AXI3_WUSER    => S_AXI3_WUSER,
          S_AXI3_BID      => open,
          S_AXI3_BRESP    => open,
          S_AXI3_BVALID   => open,
          S_AXI3_BREADY   => S_AXI3_BREADY,
          S_AXI3_BUSER    => open,
          S_AXI3_WACK     => S_AXI3_WACK,
          S_AXI3_ARID     => S_AXI3_ARID,
          S_AXI3_ARADDR   => S_AXI3_ARADDR,
          S_AXI3_ARLEN    => S_AXI3_ARLEN,
          S_AXI3_ARSIZE   => S_AXI3_ARSIZE,
          S_AXI3_ARBURST  => S_AXI3_ARBURST,
          S_AXI3_ARLOCK   => S_AXI3_ARLOCK,
          S_AXI3_ARCACHE  => S_AXI3_ARCACHE,
          S_AXI3_ARPROT   => S_AXI3_ARPROT,
          S_AXI3_ARQOS    => S_AXI3_ARQOS,
          S_AXI3_ARVALID  => S_AXI3_ARVALID,
          S_AXI3_ARREADY  => open,
          S_AXI3_ARUSER   => S_AXI3_ARUSER,
          S_AXI3_ARDOMAIN => S_AXI3_ARDOMAIN,
          S_AXI3_ARSNOOP  => S_AXI3_ARSNOOP,
          S_AXI3_ARBAR    => S_AXI3_ARBAR,
          S_AXI3_RID      => open,
          S_AXI3_RDATA    => open,
          S_AXI3_RRESP    => open,
          S_AXI3_RLAST    => open,
          S_AXI3_RVALID   => open,
          S_AXI3_RREADY   => S_AXI3_RREADY,
          S_AXI3_RUSER    => open,
          S_AXI3_RACK     => S_AXI3_RACK,
          S_AXI3_ACVALID  => open,
          S_AXI3_ACADDR   => open,
          S_AXI3_ACSNOOP  => open,
          S_AXI3_ACPROT   => open,
          S_AXI3_ACREADY  => S_AXI3_ACREADY,
          S_AXI3_CRVALID  => S_AXI3_CRVALID,
          S_AXI3_CRRESP   => S_AXI3_CRRESP,
          S_AXI3_CRREADY  => open,
          S_AXI3_CDVALID  => S_AXI3_CDVALID,
          S_AXI3_CDDATA   => S_AXI3_CDDATA,
          S_AXI3_CDLAST   => S_AXI3_CDLAST,
          S_AXI3_CDREADY  => open,
          M_AXI_AWID      => m_axi_awid_voted,
          M_AXI_AWADDR    => m_axi_awaddr_voted,
          M_AXI_AWLEN     => m_axi_awlen_voted,
          M_AXI_AWSIZE    => m_axi_awsize_voted,
          M_AXI_AWBURST   => m_axi_awburst_voted,
          M_AXI_AWLOCK    => m_axi_awlock_voted,
          M_AXI_AWCACHE   => m_axi_awcache_voted,
          M_AXI_AWPROT    => m_axi_awprot_voted,
          M_AXI_AWQOS     => m_axi_awqos_voted,
          M_AXI_AWVALID   => m_axi_awvalid_voted,
          M_AXI_AWREADY   => '0',
          M_AXI_AWUSER    => m_axi_awuser_voted,
          M_AXI_AWDOMAIN  => m_axi_awdomain_voted,
          M_AXI_AWSNOOP   => m_axi_awsnoop_voted,
          M_AXI_AWBAR     => m_axi_awbar_voted,
          M_AXI_WDATA     => m_axi_wdata_voted,
          M_AXI_WSTRB     => m_axi_wstrb_voted,
          M_AXI_WLAST     => m_axi_wlast_voted,
          M_AXI_WVALID    => m_axi_wvalid_voted,
          M_AXI_WREADY    => '0',
          M_AXI_WUSER     => m_axi_wuser_voted,
          M_AXI_BID       => (others => '0'),
          M_AXI_BRESP     => (others => '0'),
          M_AXI_BVALID    => '0',
          M_AXI_BREADY    => m_axi_bready_voted,
          M_AXI_BUSER     => (others => '0'),
          M_AXI_WACK      => m_axi_wack_voted,
          M_AXI_ARID      => m_axi_arid_voted,
          M_AXI_ARADDR    => m_axi_araddr_voted,
          M_AXI_ARLEN     => m_axi_arlen_voted,
          M_AXI_ARSIZE    => m_axi_arsize_voted,
          M_AXI_ARBURST   => m_axi_arburst_voted,
          M_AXI_ARLOCK    => m_axi_arlock_voted,
          M_AXI_ARCACHE   => m_axi_arcache_voted,
          M_AXI_ARPROT    => m_axi_arprot_voted,
          M_AXI_ARQOS     => m_axi_arqos_voted,
          M_AXI_ARVALID   => m_axi_arvalid_voted,
          M_AXI_ARREADY   => '0',
          M_AXI_ARUSER    => m_axi_aruser_voted,
          M_AXI_ARDOMAIN  => m_axi_ardomain_voted,
          M_AXI_ARSNOOP   => m_axi_arsnoop_voted,
          M_AXI_ARBAR     => m_axi_arbar_voted,
          M_AXI_RID       => (others => '0'),
          M_AXI_RDATA     => (others => '0'),
          M_AXI_RRESP     => (others => '0'),
          M_AXI_RLAST     => '0',
          M_AXI_RVALID    => '0',
          M_AXI_RREADY    => m_axi_rready_voted,
          M_AXI_RUSER     => (others => '0'),
          M_AXI_RACK      => m_axi_rack_voted,
          M_AXI_ACVALID   => '0',
          M_AXI_ACADDR    => (others => '0'),
          M_AXI_ACSNOOP   => (others => '0'),
          M_AXI_ACPROT    => (others => '0'),
          M_AXI_ACREADY   => m_axi_acready_voted,
          M_AXI_CRVALID   => m_axi_crvalid_voted,
          M_AXI_CRRESP    => m_axi_crresp_voted,
          M_AXI_CRREADY   => '0',
          M_AXI_CDVALID   => m_axi_cdvalid_voted,
          M_AXI_CDDATA    => m_axi_cddata_voted,
          M_AXI_CDLAST    => m_axi_cdlast_voted,
          M_AXI_CDREADY   => '0');

        compare_vote_i : entity tmr_voter_v1_0_5.axi_comparator
        generic map (
          C_INCLUDE_MASK     => C_INCLUDE_MASK,
          C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
          C_INTERFACE        => C_INTERFACE,
          C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
          C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
          C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
          C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
          C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
          C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
          C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
          C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH)
        port map (
          S_AXI1_AWID     => m_axi_awid,
          S_AXI1_AWADDR   => m_axi_awaddr,
          S_AXI1_AWLEN    => m_axi_awlen,
          S_AXI1_AWSIZE   => m_axi_awsize,
          S_AXI1_AWBURST  => m_axi_awburst,
          S_AXI1_AWLOCK   => m_axi_awlock,
          S_AXI1_AWCACHE  => m_axi_awcache,
          S_AXI1_AWPROT   => m_axi_awprot,
          S_AXI1_AWQOS    => m_axi_awqos,
          S_AXI1_AWVALID  => m_axi_awvalid,
          S_AXI1_AWUSER   => m_axi_awuser,
          S_AXI1_AWDOMAIN => m_axi_awdomain,
          S_AXI1_AWSNOOP  => m_axi_awsnoop,
          S_AXI1_AWBAR    => m_axi_awbar,
          S_AXI1_WDATA    => m_axi_wdata,
          S_AXI1_WSTRB    => m_axi_wstrb,
          S_AXI1_WLAST    => m_axi_wlast,
          S_AXI1_WVALID   => m_axi_wvalid,
          S_AXI1_WUSER    => m_axi_wuser,
          S_AXI1_BREADY   => m_axi_bready,
          S_AXI1_WACK     => m_axi_wack,
          S_AXI1_ARID     => m_axi_arid,
          S_AXI1_ARADDR   => m_axi_araddr,
          S_AXI1_ARLEN    => m_axi_arlen,
          S_AXI1_ARSIZE   => m_axi_arsize,
          S_AXI1_ARBURST  => m_axi_arburst,
          S_AXI1_ARLOCK   => m_axi_arlock,
          S_AXI1_ARCACHE  => m_axi_arcache,
          S_AXI1_ARPROT   => m_axi_arprot,
          S_AXI1_ARQOS    => m_axi_arqos,
          S_AXI1_ARVALID  => m_axi_arvalid,
          S_AXI1_ARUSER   => m_axi_aruser,
          S_AXI1_ARDOMAIN => m_axi_ardomain,
          S_AXI1_ARSNOOP  => m_axi_arsnoop,
          S_AXI1_ARBAR    => m_axi_arbar,
          S_AXI1_RREADY   => m_axi_rready,
          S_AXI1_RACK     => m_axi_rack,
          S_AXI1_ACREADY  => m_axi_acready,
          S_AXI1_CRVALID  => m_axi_crvalid,
          S_AXI1_CRRESP   => m_axi_crresp,
          S_AXI1_CDVALID  => m_axi_cdvalid,
          S_AXI1_CDDATA   => m_axi_cddata,
          S_AXI1_CDLAST   => m_axi_cdlast,
          S_AXI2_AWID     => m_axi_awid_voted,
          S_AXI2_AWADDR   => m_axi_awaddr_voted,
          S_AXI2_AWLEN    => m_axi_awlen_voted,
          S_AXI2_AWSIZE   => m_axi_awsize_voted,
          S_AXI2_AWBURST  => m_axi_awburst_voted,
          S_AXI2_AWLOCK   => m_axi_awlock_voted,
          S_AXI2_AWCACHE  => m_axi_awcache_voted,
          S_AXI2_AWPROT   => m_axi_awprot_voted,
          S_AXI2_AWQOS    => m_axi_awqos_voted,
          S_AXI2_AWVALID  => m_axi_awvalid_voted,
          S_AXI2_AWUSER   => m_axi_awuser_voted,
          S_AXI2_AWDOMAIN => m_axi_awdomain_voted,
          S_AXI2_AWSNOOP  => m_axi_awsnoop_voted,
          S_AXI2_AWBAR    => m_axi_awbar_voted,
          S_AXI2_WDATA    => m_axi_wdata_voted,
          S_AXI2_WSTRB    => m_axi_wstrb_voted,
          S_AXI2_WLAST    => m_axi_wlast_voted,
          S_AXI2_WVALID   => m_axi_wvalid_voted,
          S_AXI2_WUSER    => m_axi_wuser_voted,
          S_AXI2_BREADY   => m_axi_bready_voted,
          S_AXI2_WACK     => m_axi_wack_voted,
          S_AXI2_ARID     => m_axi_arid_voted,
          S_AXI2_ARADDR   => m_axi_araddr_voted,
          S_AXI2_ARLEN    => m_axi_arlen_voted,
          S_AXI2_ARSIZE   => m_axi_arsize_voted,
          S_AXI2_ARBURST  => m_axi_arburst_voted,
          S_AXI2_ARLOCK   => m_axi_arlock_voted,
          S_AXI2_ARCACHE  => m_axi_arcache_voted,
          S_AXI2_ARPROT   => m_axi_arprot_voted,
          S_AXI2_ARQOS    => m_axi_arqos_voted,
          S_AXI2_ARVALID  => m_axi_arvalid_voted,
          S_AXI2_ARUSER   => m_axi_aruser_voted,
          S_AXI2_ARDOMAIN => m_axi_ardomain_voted,
          S_AXI2_ARSNOOP  => m_axi_arsnoop_voted,
          S_AXI2_ARBAR    => m_axi_arbar_voted,
          S_AXI2_RREADY   => m_axi_rready_voted,
          S_AXI2_RACK     => m_axi_rack_voted,
          S_AXI2_ACREADY  => m_axi_acready_voted,
          S_AXI2_CRVALID  => m_axi_crvalid_voted,
          S_AXI2_CRRESP   => m_axi_crresp_voted,
          S_AXI2_CDVALID  => m_axi_cdvalid_voted,
          S_AXI2_CDDATA   => m_axi_cddata_voted,
          S_AXI2_CDLAST   => m_axi_cdlast_voted,
          Force           => Force,
          ForceEna        => VoterErrorForceEna,
          MisCompare      => VoterErrorMisCompare,
          MisMatch        => VoterError);

      end generate axi_voter_check_g;

    end generate tmr_g;

  end generate axi_g;

  -- AXI Slave
  axi_slave_g: if (C_INTERFACE = C_S_AXI4 or C_INTERFACE = C_S_ACE or C_INTERFACE = C_S_AXI4LITE) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.s_axi_comparator
    generic map (
      C_INCLUDE_MASK     => C_INCLUDE_MASK,
      C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
      C_INTERFACE        => C_INTERFACE,
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
      C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
      C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
      C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
      C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
      C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
      C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
      C_INPUT_REGISTER1  => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2  => C_INPUT_REGISTER2)
    port map(
      Clk             => Clk,
      Rst1            => Rst,
      Rst2            => rst2,
      S_AXI1_AWREADY  => s_axi1_awready,
      S_AXI1_WREADY   => s_axi1_wready,
      S_AXI1_BID      => s_axi1_bid,
      S_AXI1_BRESP    => s_axi1_bresp,
      S_AXI1_BVALID   => s_axi1_bvalid,
      S_AXI1_BUSER    => s_axi1_buser,
      S_AXI1_ARREADY  => s_axi1_arready,
      S_AXI1_RID      => s_axi1_rid,
      S_AXI1_RDATA    => s_axi1_rdata,
      S_AXI1_RRESP    => s_axi1_rresp,
      S_AXI1_RLAST    => s_axi1_rlast,
      S_AXI1_RVALID   => s_axi1_rvalid,
      S_AXI1_RUSER    => s_axi1_ruser,
      S_AXI1_ACVALID  => s_axi1_acvalid,
      S_AXI1_ACADDR   => s_axi1_acaddr,
      S_AXI1_ACSNOOP  => s_axi1_acsnoop,
      S_AXI1_ACPROT   => s_axi1_acprot,
      S_AXI1_CRREADY  => s_axi1_crready,
      S_AXI1_CDREADY  => s_axi1_cdready,
      S_AXI2_AWREADY  => s_axi2_awready,
      S_AXI2_WREADY   => s_axi2_wready,
      S_AXI2_BID      => s_axi2_bid,
      S_AXI2_BRESP    => s_axi2_bresp,
      S_AXI2_BVALID   => s_axi2_bvalid,
      S_AXI2_BUSER    => s_axi2_buser,
      S_AXI2_ARREADY  => s_axi2_arready,
      S_AXI2_RID      => s_axi2_rid,
      S_AXI2_RDATA    => s_axi2_rdata,
      S_AXI2_RRESP    => s_axi2_rresp,
      S_AXI2_RLAST    => s_axi2_rlast,
      S_AXI2_RVALID   => s_axi2_rvalid,
      S_AXI2_RUSER    => s_axi2_ruser,
      S_AXI2_ACVALID  => s_axi2_acvalid,
      S_AXI2_ACADDR   => s_axi2_acaddr,
      S_AXI2_ACSNOOP  => s_axi2_acsnoop,
      S_AXI2_ACPROT   => s_axi2_acprot,
      S_AXI2_CRREADY  => s_axi2_crready,
      S_AXI2_CDREADY  => s_axi2_cdready,
      Force           => Force,
      ForceEna        => ForceEna12,
      MisCompare      => MisCompare12,
      MisMatch        => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.s_axi_comparator
      generic map (
        C_INCLUDE_MASK     => C_INCLUDE_MASK,
        C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
        C_INTERFACE        => C_INTERFACE,
        C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
        C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
        C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
        C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
        C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
        C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
        C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
        C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
        C_INPUT_REGISTER1  => C_INPUT_REGISTER,
        C_INPUT_REGISTER2  => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_AXI1_AWREADY  => s_axi1_awready,
        S_AXI1_WREADY   => s_axi1_wready,
        S_AXI1_BID      => s_axi1_bid,
        S_AXI1_BRESP    => s_axi1_bresp,
        S_AXI1_BVALID   => s_axi1_bvalid,
        S_AXI1_BUSER    => s_axi1_buser,
        S_AXI1_ARREADY  => s_axi1_arready,
        S_AXI1_RID      => s_axi1_rid,
        S_AXI1_RDATA    => s_axi1_rdata,
        S_AXI1_RRESP    => s_axi1_rresp,
        S_AXI1_RLAST    => s_axi1_rlast,
        S_AXI1_RVALID   => s_axi1_rvalid,
        S_AXI1_RUSER    => s_axi1_ruser,
        S_AXI1_ACVALID  => s_axi1_acvalid,
        S_AXI1_ACADDR   => s_axi1_acaddr,
        S_AXI1_ACSNOOP  => s_axi1_acsnoop,
        S_AXI1_ACPROT   => s_axi1_acprot,
        S_AXI1_CRREADY  => s_axi1_crready,
        S_AXI1_CDREADY  => s_axi1_cdready,
        S_AXI2_AWREADY  => s_axi3_awready,
        S_AXI2_WREADY   => s_axi3_wready,
        S_AXI2_BID      => s_axi3_bid,
        S_AXI2_BRESP    => s_axi3_bresp,
        S_AXI2_BVALID   => s_axi3_bvalid,
        S_AXI2_BUSER    => s_axi3_buser,
        S_AXI2_ARREADY  => s_axi3_arready,
        S_AXI2_RID      => s_axi3_rid,
        S_AXI2_RDATA    => s_axi3_rdata,
        S_AXI2_RRESP    => s_axi3_rresp,
        S_AXI2_RLAST    => s_axi3_rlast,
        S_AXI2_RVALID   => s_axi3_rvalid,
        S_AXI2_RUSER    => s_axi3_ruser,
        S_AXI2_ACVALID  => s_axi3_acvalid,
        S_AXI2_ACADDR   => s_axi3_acaddr,
        S_AXI2_ACSNOOP  => s_axi3_acsnoop,
        S_AXI2_ACPROT   => s_axi3_acprot,
        S_AXI2_CRREADY  => s_axi3_crready,
        S_AXI2_CDREADY  => s_axi3_cdready,
        Force           => Force,
        ForceEna        => ForceEna13,
        MisCompare      => MisCompare13,
        MisMatch        => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.s_axi_comparator
      generic map (
        C_INCLUDE_MASK     => C_INCLUDE_MASK,
        C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
        C_INTERFACE        => C_INTERFACE,
        C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
        C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
        C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
        C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
        C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
        C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
        C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
        C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
        C_INPUT_REGISTER1  => C_INPUT_REGISTER,
        C_INPUT_REGISTER2  => C_INPUT_REGISTER)
      port map(
        Clk             => Clk,
        Rst1            => Rst,
        Rst2            => Rst,
        S_AXI1_AWREADY  => s_axi2_awready,
        S_AXI1_WREADY   => s_axi2_wready,
        S_AXI1_BID      => s_axi2_bid,
        S_AXI1_BRESP    => s_axi2_bresp,
        S_AXI1_BVALID   => s_axi2_bvalid,
        S_AXI1_BUSER    => s_axi2_buser,
        S_AXI1_ARREADY  => s_axi2_arready,
        S_AXI1_RID      => s_axi2_rid,
        S_AXI1_RDATA    => s_axi2_rdata,
        S_AXI1_RRESP    => s_axi2_rresp,
        S_AXI1_RLAST    => s_axi2_rlast,
        S_AXI1_RVALID   => s_axi2_rvalid,
        S_AXI1_RUSER    => s_axi2_ruser,
        S_AXI1_ACVALID  => s_axi2_acvalid,
        S_AXI1_ACADDR   => s_axi2_acaddr,
        S_AXI1_ACSNOOP  => s_axi2_acsnoop,
        S_AXI1_ACPROT   => s_axi2_acprot,
        S_AXI1_CRREADY  => s_axi2_crready,
        S_AXI1_CDREADY  => s_axi2_cdready,
        S_AXI2_AWREADY  => s_axi3_awready,
        S_AXI2_WREADY   => s_axi3_wready,
        S_AXI2_BID      => s_axi3_bid,
        S_AXI2_BRESP    => s_axi3_bresp,
        S_AXI2_BVALID   => s_axi3_bvalid,
        S_AXI2_BUSER    => s_axi3_buser,
        S_AXI2_ARREADY  => s_axi3_arready,
        S_AXI2_RID      => s_axi3_rid,
        S_AXI2_RDATA    => s_axi3_rdata,
        S_AXI2_RRESP    => s_axi3_rresp,
        S_AXI2_RLAST    => s_axi3_rlast,
        S_AXI2_RVALID   => s_axi3_rvalid,
        S_AXI2_RUSER    => s_axi3_ruser,
        S_AXI2_ACVALID  => s_axi3_acvalid,
        S_AXI2_ACADDR   => s_axi3_acaddr,
        S_AXI2_ACSNOOP  => s_axi3_acsnoop,
        S_AXI2_ACPROT   => s_axi3_acprot,
        S_AXI2_CRREADY  => s_axi3_crready,
        S_AXI2_CDREADY  => s_axi3_cdready,
        Force           => Force,
        ForceEna        => ForceEna23,
        MisCompare      => MisCompare23,
        MisMatch        => MisMatch23);

      axi_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal m_axi_awready_voted   : std_logic;
        signal m_axi_wready_voted    : std_logic;
        signal m_axi_bid_voted       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        signal m_axi_bresp_voted     : std_logic_vector(1 downto 0);
        signal m_axi_bvalid_voted    : std_logic;
        signal m_axi_buser_voted     : std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
        signal m_axi_arready_voted   : std_logic;
        signal m_axi_rid_voted       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        signal m_axi_rdata_voted     : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        signal m_axi_rresp_voted     : std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                        2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
        signal m_axi_rlast_voted     : std_logic;
        signal m_axi_rvalid_voted    : std_logic;
        signal m_axi_ruser_voted     : std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
        signal m_axi_acvalid_voted   : std_logic;
        signal m_axi_acaddr_voted    : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        signal m_axi_acsnoop_voted   : std_logic_vector(3 downto 0);
        signal m_axi_acprot_voted    : std_logic_vector(2 downto 0);
        signal m_axi_crready_voted   : std_logic;
        signal m_axi_cdready_voted   : std_logic;
      begin

        axi_voter_i : entity tmr_voter_v1_0_5.s_axi_voter
        generic map (
          C_INTERFACE        => C_INTERFACE,
          C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
          C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
          C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
          C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
          C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
          C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
          C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
          C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
          C_USE_TMR_DISABLE  => C_USE_TMR_DISABLE)
        port map (
          TMR_Disable     => tmr_disable_vec,
          M_AXI1_AWID     => open,
          M_AXI1_AWADDR   => open,
          M_AXI1_AWLEN    => open,
          M_AXI1_AWSIZE   => open,
          M_AXI1_AWBURST  => open,
          M_AXI1_AWLOCK   => open,
          M_AXI1_AWCACHE  => open,
          M_AXI1_AWPROT   => open,
          M_AXI1_AWQOS    => open,
          M_AXI1_AWVALID  => open,
          M_AXI1_AWREADY  => S_AXI1_AWREADY,
          M_AXI1_AWUSER   => open,
          M_AXI1_AWDOMAIN => open,
          M_AXI1_AWSNOOP  => open,
          M_AXI1_AWBAR    => open,
          M_AXI1_WDATA    => open,
          M_AXI1_WSTRB    => open,
          M_AXI1_WLAST    => open,
          M_AXI1_WVALID   => open,
          M_AXI1_WREADY   => S_AXI1_WREADY,
          M_AXI1_WUSER    => open,
          M_AXI1_BID      => S_AXI1_BID,
          M_AXI1_BRESP    => S_AXI1_BRESP,
          M_AXI1_BVALID   => S_AXI1_BVALID,
          M_AXI1_BREADY   => open,
          M_AXI1_BUSER    => S_AXI1_BUSER,
          M_AXI1_WACK     => open,
          M_AXI1_ARID     => open,
          M_AXI1_ARADDR   => open,
          M_AXI1_ARLEN    => open,
          M_AXI1_ARSIZE   => open,
          M_AXI1_ARBURST  => open,
          M_AXI1_ARLOCK   => open,
          M_AXI1_ARCACHE  => open,
          M_AXI1_ARPROT   => open,
          M_AXI1_ARQOS    => open,
          M_AXI1_ARVALID  => open,
          M_AXI1_ARREADY  => S_AXI1_ARREADY,
          M_AXI1_ARUSER   => open,
          M_AXI1_ARDOMAIN => open,
          M_AXI1_ARSNOOP  => open,
          M_AXI1_ARBAR    => open,
          M_AXI1_RID      => S_AXI1_RID,
          M_AXI1_RDATA    => S_AXI1_RDATA,
          M_AXI1_RRESP    => S_AXI1_RRESP,
          M_AXI1_RLAST    => S_AXI1_RLAST,
          M_AXI1_RVALID   => S_AXI1_RVALID,
          M_AXI1_RREADY   => open,
          M_AXI1_RUSER    => S_AXI1_RUSER,
          M_AXI1_RACK     => open,
          M_AXI1_ACVALID  => S_AXI1_ACVALID,
          M_AXI1_ACADDR   => S_AXI1_ACADDR,
          M_AXI1_ACSNOOP  => S_AXI1_ACSNOOP,
          M_AXI1_ACPROT   => S_AXI1_ACPROT,
          M_AXI1_ACREADY  => open,
          M_AXI1_CRVALID  => open,
          M_AXI1_CRRESP   => open,
          M_AXI1_CRREADY  => S_AXI1_CRREADY,
          M_AXI1_CDVALID  => open,
          M_AXI1_CDDATA   => open,
          M_AXI1_CDLAST   => open,
          M_AXI1_CDREADY  => S_AXI1_CDREADY,
          M_AXI2_AWID     => open,
          M_AXI2_AWADDR   => open,
          M_AXI2_AWLEN    => open,
          M_AXI2_AWSIZE   => open,
          M_AXI2_AWBURST  => open,
          M_AXI2_AWLOCK   => open,
          M_AXI2_AWCACHE  => open,
          M_AXI2_AWPROT   => open,
          M_AXI2_AWQOS    => open,
          M_AXI2_AWVALID  => open,
          M_AXI2_AWREADY  => S_AXI2_AWREADY,
          M_AXI2_AWUSER   => open,
          M_AXI2_AWDOMAIN => open,
          M_AXI2_AWSNOOP  => open,
          M_AXI2_AWBAR    => open,
          M_AXI2_WDATA    => open,
          M_AXI2_WSTRB    => open,
          M_AXI2_WLAST    => open,
          M_AXI2_WVALID   => open,
          M_AXI2_WREADY   => S_AXI2_WREADY,
          M_AXI2_WUSER    => open,
          M_AXI2_BID      => S_AXI2_BID,
          M_AXI2_BRESP    => S_AXI2_BRESP,
          M_AXI2_BVALID   => S_AXI2_BVALID,
          M_AXI2_BREADY   => open,
          M_AXI2_BUSER    => S_AXI2_BUSER,
          M_AXI2_WACK     => open,
          M_AXI2_ARID     => open,
          M_AXI2_ARADDR   => open,
          M_AXI2_ARLEN    => open,
          M_AXI2_ARSIZE   => open,
          M_AXI2_ARBURST  => open,
          M_AXI2_ARLOCK   => open,
          M_AXI2_ARCACHE  => open,
          M_AXI2_ARPROT   => open,
          M_AXI2_ARQOS    => open,
          M_AXI2_ARVALID  => open,
          M_AXI2_ARREADY  => S_AXI2_ARREADY,
          M_AXI2_ARUSER   => open,
          M_AXI2_ARDOMAIN => open,
          M_AXI2_ARSNOOP  => open,
          M_AXI2_ARBAR    => open,
          M_AXI2_RID      => S_AXI2_RID,
          M_AXI2_RDATA    => S_AXI2_RDATA,
          M_AXI2_RRESP    => S_AXI2_RRESP,
          M_AXI2_RLAST    => S_AXI2_RLAST,
          M_AXI2_RVALID   => S_AXI2_RVALID,
          M_AXI2_RREADY   => open,
          M_AXI2_RUSER    => S_AXI2_RUSER,
          M_AXI2_RACK     => open,
          M_AXI2_ACVALID  => S_AXI2_ACVALID,
          M_AXI2_ACADDR   => S_AXI2_ACADDR,
          M_AXI2_ACSNOOP  => S_AXI2_ACSNOOP,
          M_AXI2_ACPROT   => S_AXI2_ACPROT,
          M_AXI2_ACREADY  => open,
          M_AXI2_CRVALID  => open,
          M_AXI2_CRRESP   => open,
          M_AXI2_CRREADY  => S_AXI2_CRREADY,
          M_AXI2_CDVALID  => open,
          M_AXI2_CDDATA   => open,
          M_AXI2_CDLAST   => open,
          M_AXI2_CDREADY  => S_AXI2_CDREADY,
          M_AXI3_AWID     => open,
          M_AXI3_AWADDR   => open,
          M_AXI3_AWLEN    => open,
          M_AXI3_AWSIZE   => open,
          M_AXI3_AWBURST  => open,
          M_AXI3_AWLOCK   => open,
          M_AXI3_AWCACHE  => open,
          M_AXI3_AWPROT   => open,
          M_AXI3_AWQOS    => open,
          M_AXI3_AWVALID  => open,
          M_AXI3_AWREADY  => S_AXI3_AWREADY,
          M_AXI3_AWUSER   => open,
          M_AXI3_AWDOMAIN => open,
          M_AXI3_AWSNOOP  => open,
          M_AXI3_AWBAR    => open,
          M_AXI3_WDATA    => open,
          M_AXI3_WSTRB    => open,
          M_AXI3_WLAST    => open,
          M_AXI3_WVALID   => open,
          M_AXI3_WREADY   => S_AXI3_WREADY,
          M_AXI3_WUSER    => open,
          M_AXI3_BID      => S_AXI3_BID,
          M_AXI3_BRESP    => S_AXI3_BRESP,
          M_AXI3_BVALID   => S_AXI3_BVALID,
          M_AXI3_BREADY   => open,
          M_AXI3_BUSER    => S_AXI3_BUSER,
          M_AXI3_WACK     => open,
          M_AXI3_ARID     => open,
          M_AXI3_ARADDR   => open,
          M_AXI3_ARLEN    => open,
          M_AXI3_ARSIZE   => open,
          M_AXI3_ARBURST  => open,
          M_AXI3_ARLOCK   => open,
          M_AXI3_ARCACHE  => open,
          M_AXI3_ARPROT   => open,
          M_AXI3_ARQOS    => open,
          M_AXI3_ARVALID  => open,
          M_AXI3_ARREADY  => S_AXI3_ARREADY,
          M_AXI3_ARUSER   => open,
          M_AXI3_ARDOMAIN => open,
          M_AXI3_ARSNOOP  => open,
          M_AXI3_ARBAR    => open,
          M_AXI3_RID      => S_AXI3_RID,
          M_AXI3_RDATA    => S_AXI3_RDATA,
          M_AXI3_RRESP    => S_AXI3_RRESP,
          M_AXI3_RLAST    => S_AXI3_RLAST,
          M_AXI3_RVALID   => S_AXI3_RVALID,
          M_AXI3_RREADY   => open,
          M_AXI3_RUSER    => S_AXI3_RUSER,
          M_AXI3_RACK     => open,
          M_AXI3_ACVALID  => S_AXI3_ACVALID,
          M_AXI3_ACADDR   => S_AXI3_ACADDR,
          M_AXI3_ACSNOOP  => S_AXI3_ACSNOOP,
          M_AXI3_ACPROT   => S_AXI3_ACPROT,
          M_AXI3_ACREADY  => open,
          M_AXI3_CRVALID  => open,
          M_AXI3_CRRESP   => open,
          M_AXI3_CRREADY  => S_AXI3_CRREADY,
          M_AXI3_CDVALID  => open,
          M_AXI3_CDDATA   => open,
          M_AXI3_CDLAST   => open,
          M_AXI3_CDREADY  => S_AXI3_CDREADY,
          S_AXI_AWID      => (others => '0'),
          S_AXI_AWADDR    => (others => '0'),
          S_AXI_AWLEN     => (others => '0'),
          S_AXI_AWSIZE    => (others => '0'),
          S_AXI_AWBURST   => (others => '0'),
          S_AXI_AWLOCK    => '0',
          S_AXI_AWCACHE   => (others => '0'),
          S_AXI_AWPROT    => (others => '0'),
          S_AXI_AWQOS     => (others => '0'),
          S_AXI_AWVALID   => '1',
          S_AXI_AWREADY   => m_axi_awready_voted,
          S_AXI_AWUSER    => (others => '0'),
          S_AXI_AWDOMAIN  => (others => '0'),
          S_AXI_AWSNOOP   => (others => '0'),
          S_AXI_AWBAR     => (others => '0'),
          S_AXI_WDATA     => (others => '0'),
          S_AXI_WSTRB     => (others => '0'),
          S_AXI_WLAST     => '0',
          S_AXI_WVALID    => '0',
          S_AXI_WREADY    => m_axi_wready_voted,
          S_AXI_WUSER     => (others => '0'),
          S_AXI_BID       => m_axi_bid_voted,
          S_AXI_BRESP     => m_axi_bresp_voted,
          S_AXI_BVALID    => m_axi_bvalid_voted,
          S_AXI_BREADY    => '0',
          S_AXI_BUSER     => m_axi_buser_voted,
          S_AXI_WACK      => '0',
          S_AXI_ARID      => (others => '0'),
          S_AXI_ARADDR    => (others => '0'),
          S_AXI_ARLEN     => (others => '0'),
          S_AXI_ARSIZE    => (others => '0'),
          S_AXI_ARBURST   => (others => '0'),
          S_AXI_ARLOCK    => '0',
          S_AXI_ARCACHE   => (others => '0'),
          S_AXI_ARPROT    => (others => '0'),
          S_AXI_ARQOS     => (others => '0'),
          S_AXI_ARVALID   => '0',
          S_AXI_ARREADY   => m_axi_arready_voted,
          S_AXI_ARUSER    => (others => '0'),
          S_AXI_ARDOMAIN  => (others => '0'),
          S_AXI_ARSNOOP   => (others => '0'),
          S_AXI_ARBAR     => (others => '0'),
          S_AXI_RID       => m_axi_rid_voted,
          S_AXI_RDATA     => m_axi_rdata_voted,
          S_AXI_RRESP     => m_axi_rresp_voted,
          S_AXI_RLAST     => m_axi_rlast_voted,
          S_AXI_RVALID    => m_axi_rvalid_voted,
          S_AXI_RREADY    => '0',
          S_AXI_RUSER     => m_axi_ruser_voted,
          S_AXI_RACK      => '0',
          S_AXI_ACVALID   => m_axi_acvalid_voted,
          S_AXI_ACADDR    => m_axi_acaddr_voted,
          S_AXI_ACSNOOP   => m_axi_acsnoop_voted,
          S_AXI_ACPROT    => m_axi_acprot_voted,
          S_AXI_ACREADY   => '0',
          S_AXI_CRVALID   => '0',
          S_AXI_CRRESP    => (others => '0'),
          S_AXI_CRREADY   => m_axi_crready_voted,
          S_AXI_CDVALID   => '0',
          S_AXI_CDDATA    => (others => '0'),
          S_AXI_CDLAST    => '0',
          S_AXI_CDREADY   => m_axi_cdready_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.s_axi_comparator
        generic map (
          C_INCLUDE_MASK     => C_INCLUDE_MASK,
          C_COMPARE_WIDTH    => C_COMPARE_WIDTH(C_INTERFACE),
          C_INTERFACE        => C_INTERFACE,
          C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
          C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
          C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
          C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
          C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
          C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
          C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
          C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
          C_INPUT_REGISTER1  => C_INPUT_REGISTER,
          C_INPUT_REGISTER2  => C_INPUT_REGISTER)
        port map(
          Clk             => Clk,
          Rst1            => Rst,
          Rst2            => Rst,
          S_AXI1_AWREADY  => m_axi_awready,
          S_AXI1_WREADY   => m_axi_wready,
          S_AXI1_BID      => m_axi_bid,
          S_AXI1_BRESP    => m_axi_bresp,
          S_AXI1_BVALID   => m_axi_bvalid,
          S_AXI1_BUSER    => m_axi_buser,
          S_AXI1_ARREADY  => m_axi_arready,
          S_AXI1_RID      => m_axi_rid,
          S_AXI1_RDATA    => m_axi_rdata,
          S_AXI1_RRESP    => m_axi_rresp,
          S_AXI1_RLAST    => m_axi_rlast,
          S_AXI1_RVALID   => m_axi_rvalid,
          S_AXI1_RUSER    => m_axi_ruser,
          S_AXI1_ACVALID  => m_axi_acvalid,
          S_AXI1_ACADDR   => m_axi_acaddr,
          S_AXI1_ACSNOOP  => m_axi_acsnoop,
          S_AXI1_ACPROT   => m_axi_acprot,
          S_AXI1_CRREADY  => m_axi_crready,
          S_AXI1_CDREADY  => m_axi_cdready,
          S_AXI2_AWREADY  => m_axi_awready_voted,
          S_AXI2_WREADY   => m_axi_wready_voted,
          S_AXI2_BID      => m_axi_bid_voted,
          S_AXI2_BRESP    => m_axi_bresp_voted,
          S_AXI2_BVALID   => m_axi_bvalid_voted,
          S_AXI2_BUSER    => m_axi_buser_voted,
          S_AXI2_ARREADY  => m_axi_arready_voted,
          S_AXI2_RID      => m_axi_rid_voted,
          S_AXI2_RDATA    => m_axi_rdata_voted,
          S_AXI2_RRESP    => m_axi_rresp_voted,
          S_AXI2_RLAST    => m_axi_rlast_voted,
          S_AXI2_RVALID   => m_axi_rvalid_voted,
          S_AXI2_RUSER    => m_axi_ruser_voted,
          S_AXI2_ACVALID  => m_axi_acvalid_voted,
          S_AXI2_ACADDR   => m_axi_acaddr_voted,
          S_AXI2_ACSNOOP  => m_axi_acsnoop_voted,
          S_AXI2_ACPROT   => m_axi_acprot_voted,
          S_AXI2_CRREADY  => m_axi_crready_voted,
          S_AXI2_CDREADY  => m_axi_cdready_voted,
          Force           => Force,
          ForceEna        => VoterErrorForceEna,
          MisCompare      => VoterErrorMisCompare,
          MisMatch        => VoterError);

      end generate axi_voter_check_g;

    end generate tmr_g;

  end generate axi_slave_g;

  -- Master AXI Stream
  m_axis_g: if (C_INTERFACE = C_M_AXIS) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.m_axis_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
      C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
      C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
      C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk            => Clk,
      Rst1           => Rst,
      Rst2           => rst2,
      S_AXIS1_TLAST  => s_axis1_tlast,
      S_AXIS1_TDATA  => s_axis1_tdata,
      S_AXIS1_TVALID => s_axis1_tvalid,
      S_AXIS1_TSTRB  => s_axis1_tstrb,
      S_AXIS1_TKEEP  => s_axis1_tkeep,
      S_AXIS1_TID    => s_axis1_tid,
      S_AXIS1_TDEST  => s_axis1_tdest,
      S_AXIS1_TUSER  => s_axis1_tuser,
      S_AXIS2_TLAST  => s_axis2_tlast,
      S_AXIS2_TDATA  => s_axis2_tdata,
      S_AXIS2_TVALID => s_axis2_tvalid,
      S_AXIS2_TSTRB  => s_axis2_tstrb,
      S_AXIS2_TKEEP  => s_axis2_tkeep,
      S_AXIS2_TID    => s_axis2_tid,
      S_AXIS2_TDEST  => s_axis2_tdest,
      S_AXIS2_TUSER  => s_axis2_tuser,
      Force          => Force,
      ForceEna       => ForceEna12,
      MisCompare     => MisCompare12,
      MisMatch       => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.m_axis_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
        C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
        C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
        C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk            => Clk,
        Rst1           => Rst,
        Rst2           => Rst,
        S_AXIS1_TLAST  => s_axis1_tlast,
        S_AXIS1_TDATA  => s_axis1_tdata,
        S_AXIS1_TVALID => s_axis1_tvalid,
        S_AXIS1_TSTRB  => s_axis1_tstrb,
        S_AXIS1_TKEEP  => s_axis1_tkeep,
        S_AXIS1_TID    => s_axis1_tid,
        S_AXIS1_TDEST  => s_axis1_tdest,
        S_AXIS1_TUSER  => s_axis1_tuser,
        S_AXIS2_TLAST  => s_axis3_tlast,
        S_AXIS2_TDATA  => s_axis3_tdata,
        S_AXIS2_TVALID => s_axis3_tvalid,
        S_AXIS2_TSTRB  => s_axis3_tstrb,
        S_AXIS2_TKEEP  => s_axis3_tkeep,
        S_AXIS2_TID    => s_axis3_tid,
        S_AXIS2_TDEST  => s_axis3_tdest,
        S_AXIS2_TUSER  => s_axis3_tuser,
        Force          => Force,
        ForceEna       => ForceEna13,
        MisCompare     => MisCompare13,
        MisMatch       => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.m_axis_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
        C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
        C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
        C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk            => Clk,
        Rst1           => Rst,
        Rst2           => Rst,
        S_AXIS1_TLAST  => s_axis2_tlast,
        S_AXIS1_TDATA  => s_axis2_tdata,
        S_AXIS1_TVALID => s_axis2_tvalid,
        S_AXIS1_TSTRB  => s_axis2_tstrb,
        S_AXIS1_TKEEP  => s_axis2_tkeep,
        S_AXIS1_TID    => s_axis2_tid,
        S_AXIS1_TDEST  => s_axis2_tdest,
        S_AXIS1_TUSER  => s_axis2_tuser,
        S_AXIS2_TLAST  => s_axis3_tlast,
        S_AXIS2_TDATA  => s_axis3_tdata,
        S_AXIS2_TVALID => s_axis3_tvalid,
        S_AXIS2_TSTRB  => s_axis3_tstrb,
        S_AXIS2_TKEEP  => s_axis3_tkeep,
        S_AXIS2_TID    => s_axis3_tid,
        S_AXIS2_TDEST  => s_axis3_tdest,
        S_AXIS2_TUSER  => s_axis3_tuser,
        Force          => Force,
        ForceEna       => ForceEna23,
        MisCompare     => MisCompare23,
        MisMatch       => MisMatch23);

      m_axis_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal m_axis_tlast_voted    : std_logic;
        signal m_axis_tdata_voted    : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
        signal m_axis_tvalid_voted   : std_logic;
        signal m_axis_tstrb_voted    : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
        signal m_axis_tkeep_voted    : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
        signal m_axis_tid_voted      : std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
        signal m_axis_tdest_voted    : std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
        signal m_axis_tuser_voted    : std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
      begin

        m_axis_voter_i : entity tmr_voter_v1_0_5.m_axis_voter
        generic map(
          C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
          C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
          C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
          C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map(
          TMR_Disable    => tmr_disable_vec,
          S_AXIS1_TLAST  => S_AXIS1_TLAST,
          S_AXIS1_TDATA  => S_AXIS1_TDATA,
          S_AXIS1_TVALID => S_AXIS1_TVALID,
          S_AXIS1_TREADY => open,
          S_AXIS1_TSTRB  => S_AXIS1_TSTRB,
          S_AXIS1_TKEEP  => S_AXIS1_TKEEP,
          S_AXIS1_TID    => S_AXIS1_TID,
          S_AXIS1_TDEST  => S_AXIS1_TDEST,
          S_AXIS1_TUSER  => S_AXIS1_TUSER,
          S_AXIS2_TLAST  => S_AXIS2_TLAST,
          S_AXIS2_TDATA  => S_AXIS2_TDATA,
          S_AXIS2_TVALID => S_AXIS2_TVALID,
          S_AXIS2_TREADY => open,
          S_AXIS2_TSTRB  => S_AXIS2_TSTRB,
          S_AXIS2_TKEEP  => S_AXIS2_TKEEP,
          S_AXIS2_TID    => S_AXIS2_TID,
          S_AXIS2_TDEST  => S_AXIS2_TDEST,
          S_AXIS2_TUSER  => S_AXIS2_TUSER,
          S_AXIS3_TLAST  => S_AXIS3_TLAST,
          S_AXIS3_TDATA  => S_AXIS3_TDATA,
          S_AXIS3_TVALID => S_AXIS3_TVALID,
          S_AXIS3_TREADY => open,
          S_AXIS3_TSTRB  => S_AXIS3_TSTRB,
          S_AXIS3_TKEEP  => S_AXIS3_TKEEP,
          S_AXIS3_TID    => S_AXIS3_TID,
          S_AXIS3_TDEST  => S_AXIS3_TDEST,
          S_AXIS3_TUSER  => S_AXIS3_TUSER,
          M_AXIS_TLAST   => m_axis_tlast_voted,
          M_AXIS_TDATA   => m_axis_tdata_voted,
          M_AXIS_TVALID  => m_axis_tvalid_voted,
          M_AXIS_TREADY  => '0',
          M_AXIS_TSTRB   => m_axis_tstrb_voted,
          M_AXIS_TKEEP   => m_axis_tkeep_voted,
          M_AXIS_TID     => m_axis_tid_voted,
          M_AXIS_TDEST   => m_axis_tdest_voted,
          M_AXIS_TUSER   => m_axis_tuser_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.m_axis_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
          C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
          C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
          C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk            => Clk,
          Rst1           => Rst,
          Rst2           => Rst,
          S_AXIS1_TLAST  => m_axis_tlast,
          S_AXIS1_TDATA  => m_axis_tdata,
          S_AXIS1_TVALID => m_axis_tvalid,
          S_AXIS1_TSTRB  => m_axis_tstrb,
          S_AXIS1_TKEEP  => m_axis_tkeep,
          S_AXIS1_TID    => m_axis_tid,
          S_AXIS1_TDEST  => m_axis_tdest,
          S_AXIS1_TUSER  => m_axis_tuser,
          S_AXIS2_TLAST  => m_axis_tlast_voted,
          S_AXIS2_TDATA  => m_axis_tdata_voted,
          S_AXIS2_TVALID => m_axis_tvalid_voted,
          S_AXIS2_TSTRB  => m_axis_tstrb_voted,
          S_AXIS2_TKEEP  => m_axis_tkeep_voted,
          S_AXIS2_TID    => m_axis_tid_voted,
          S_AXIS2_TDEST  => m_axis_tdest_voted,
          S_AXIS2_TUSER  => m_axis_tuser_voted,
          Force          => Force,
          ForceEna       => VoterErrorForceEna,
          MisCompare     => VoterErrorMisCompare,
          MisMatch       => VoterError);

      end generate m_axis_voter_check_g;

    end generate tmr_g;

  end generate m_axis_g;

  -- Slave AXI Stream
  s_axis_g: if (C_INTERFACE = C_S_AXIS) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.s_axis_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk            => Clk,
      Rst1           => Rst,
      Rst2           => rst2,
      M_AXIS1_TREADY => m_axis1_tready,
      M_AXIS2_TREADY => m_axis2_tready,
      Force          => Force,
      ForceEna       => ForceEna12,
      MisCompare     => MisCompare12,
      MisMatch       => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.s_axis_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk            => Clk,
        Rst1           => Rst,
        Rst2           => Rst,
        M_AXIS1_TREADY => m_axis1_tready,
        M_AXIS2_TREADY => m_axis3_tready,
        Force          => Force,
        ForceEna       => ForceEna13,
        MisCompare     => MisCompare13,
        MisMatch       => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.s_axis_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk            => Clk,
        Rst1           => Rst,
        Rst2           => Rst,
        M_AXIS1_TREADY => m_axis2_tready,
        M_AXIS2_TREADY => m_axis3_tready,
        Force          => Force,
        ForceEna       => ForceEna23,
        MisCompare     => MisCompare23,
        MisMatch       => MisMatch23);

      s_axis_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal s_axis_tready_voted   : std_logic;
      begin

        s_axis_voter_i : entity tmr_voter_v1_0_5.s_axis_voter
        generic map(
          C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
          C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
          C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
          C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map(
          TMR_Disable    => tmr_disable_vec,
          M_AXIS1_TLAST  => open,
          M_AXIS1_TDATA  => open,
          M_AXIS1_TVALID => open,
          M_AXIS1_TREADY => M_AXIS1_TREADY,
          M_AXIS1_TSTRB  => open,
          M_AXIS1_TKEEP  => open,
          M_AXIS1_TID    => open,
          M_AXIS1_TDEST  => open,
          M_AXIS1_TUSER  => open,
          M_AXIS2_TLAST  => open,
          M_AXIS2_TDATA  => open,
          M_AXIS2_TVALID => open,
          M_AXIS2_TREADY => M_AXIS2_TREADY,
          M_AXIS2_TSTRB  => open,
          M_AXIS2_TKEEP  => open,
          M_AXIS2_TID    => open,
          M_AXIS2_TDEST  => open,
          M_AXIS2_TUSER  => open,
          M_AXIS3_TLAST  => open,
          M_AXIS3_TDATA  => open,
          M_AXIS3_TVALID => open,
          M_AXIS3_TREADY => M_AXIS3_TREADY,
          M_AXIS3_TSTRB  => open,
          M_AXIS3_TKEEP  => open,
          M_AXIS3_TID    => open,
          M_AXIS3_TDEST  => open,
          M_AXIS3_TUSER  => open,
          S_AXIS_TLAST   => '0',
          S_AXIS_TDATA   => (others => '0'),
          S_AXIS_TVALID  => '0',
          S_AXIS_TREADY  => s_axis_tready_voted,
          S_AXIS_TSTRB   => (others => '0'),
          S_AXIS_TKEEP   => (others => '0'),
          S_AXIS_TID     => (others => '0'),
          S_AXIS_TDEST   => (others => '0'),
          S_AXIS_TUSER   => (others => '0'));

        compare_vote_i : entity tmr_voter_v1_0_5.s_axis_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk            => Clk,
          Rst1           => Rst,
          Rst2           => Rst,
          M_AXIS1_TREADY => s_axis_tready,
          M_AXIS2_TREADY => s_axis_tready_voted,
          Force          => Force,
          ForceEna       => VoterErrorForceEna,
          MisCompare     => VoterErrorMisCompare,
          MisMatch       => VoterError);

      end generate s_axis_voter_check_g;

    end generate tmr_g;

  end generate s_axis_g;

  -- Trace
  trace_g: if (C_INTERFACE = C_TRACE) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.trace_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_TRACE_SIZE      => C_TRACE_SIZE,
      C_ADDR_SIZE       => C_ADDR_SIZE,
      C_DATA_SIZE       => C_DATA_SIZE,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map (
      Clk                     => Clk,
      Rst1                    => Rst,
      Rst2                    => rst2,
      Trace1_Instruction      => trace1_instruction,
      Trace1_Valid_Instr      => trace1_valid_instr,
      Trace1_PC               => trace1_pc,
      Trace1_Reg_Write        => trace1_reg_write,
      Trace1_Reg_Addr         => trace1_reg_addr,
      Trace1_MSR_Reg          => trace1_msr_reg,
      Trace1_PID_Reg          => trace1_pid_reg,
      Trace1_New_Reg_Value    => trace1_new_reg_value,
      Trace1_Exception_Taken  => trace1_exception_taken,
      Trace1_Exception_Kind   => trace1_exception_kind,
      Trace1_Jump_Taken       => trace1_jump_taken,
      Trace1_Delay_Slot       => trace1_delay_slot,
      Trace1_Data_Address     => trace1_data_address,
      Trace1_Data_Write_Value => trace1_data_write_value,
      Trace1_Data_Byte_Enable => trace1_data_byte_enable,
      Trace1_Data_Access      => trace1_data_access,
      Trace1_Data_Read        => trace1_data_read,
      Trace1_Data_Write       => trace1_data_write,
      Trace1_DCache_Req       => trace1_dcache_req,
      Trace1_DCache_Hit       => trace1_dcache_hit,
      Trace1_DCache_Rdy       => trace1_dcache_rdy,
      Trace1_DCache_Read      => trace1_dcache_read,
      Trace1_ICache_Req       => trace1_icache_req,
      Trace1_ICache_Hit       => trace1_icache_hit,
      Trace1_ICache_Rdy       => trace1_icache_rdy,
      Trace1_OF_PipeRun       => trace1_of_piperun,
      Trace1_EX_PipeRun       => trace1_ex_piperun,
      Trace1_MEM_PipeRun      => trace1_mem_piperun,
      Trace1_MB_Halted        => trace1_mb_halted,
      Trace1_Jump_Hit         => trace1_jump_hit,
      Trace2_Instruction      => trace2_instruction,
      Trace2_Valid_Instr      => trace2_valid_instr,
      Trace2_PC               => trace2_pc,
      Trace2_Reg_Write        => trace2_reg_write,
      Trace2_Reg_Addr         => trace2_reg_addr,
      Trace2_MSR_Reg          => trace2_msr_reg,
      Trace2_PID_Reg          => trace2_pid_reg,
      Trace2_New_Reg_Value    => trace2_new_reg_value,
      Trace2_Exception_Taken  => trace2_exception_taken,
      Trace2_Exception_Kind   => trace2_exception_kind,
      Trace2_Jump_Taken       => trace2_jump_taken,
      Trace2_Delay_Slot       => trace2_delay_slot,
      Trace2_Data_Address     => trace2_data_address,
      Trace2_Data_Write_Value => trace2_data_write_value,
      Trace2_Data_Byte_Enable => trace2_data_byte_enable,
      Trace2_Data_Access      => trace2_data_access,
      Trace2_Data_Read        => trace2_data_read,
      Trace2_Data_Write       => trace2_data_write,
      Trace2_DCache_Req       => trace2_dcache_req,
      Trace2_DCache_Hit       => trace2_dcache_hit,
      Trace2_DCache_Rdy       => trace2_dcache_rdy,
      Trace2_DCache_Read      => trace2_dcache_read,
      Trace2_ICache_Req       => trace2_icache_req,
      Trace2_ICache_Hit       => trace2_icache_hit,
      Trace2_ICache_Rdy       => trace2_icache_rdy,
      Trace2_OF_PipeRun       => trace2_of_piperun,
      Trace2_EX_PipeRun       => trace2_ex_piperun,
      Trace2_MEM_PipeRun      => trace2_mem_piperun,
      Trace2_MB_Halted        => trace2_mb_halted,
      Trace2_Jump_Hit         => trace2_jump_hit,
      Force                   => Force,
      ForceEna                => ForceEna12,
      MisCompare              => MisCompare12,
      MisMatch                => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.trace_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_TRACE_SIZE      => C_TRACE_SIZE,
        C_ADDR_SIZE       => C_ADDR_SIZE,
        C_DATA_SIZE       => C_DATA_SIZE,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map (
        Clk                     => Clk,
        Rst1                    => Rst,
        Rst2                    => Rst,
        Trace1_Instruction      => trace1_instruction,
        Trace1_Valid_Instr      => trace1_valid_instr,
        Trace1_PC               => trace1_pc,
        Trace1_Reg_Write        => trace1_reg_write,
        Trace1_Reg_Addr         => trace1_reg_addr,
        Trace1_MSR_Reg          => trace1_msr_reg,
        Trace1_PID_Reg          => trace1_pid_reg,
        Trace1_New_Reg_Value    => trace1_new_reg_value,
        Trace1_Exception_Taken  => trace1_exception_taken,
        Trace1_Exception_Kind   => trace1_exception_kind,
        Trace1_Jump_Taken       => trace1_jump_taken,
        Trace1_Delay_Slot       => trace1_delay_slot,
        Trace1_Data_Address     => trace1_data_address,
        Trace1_Data_Write_Value => trace1_data_write_value,
        Trace1_Data_Byte_Enable => trace1_data_byte_enable,
        Trace1_Data_Access      => trace1_data_access,
        Trace1_Data_Read        => trace1_data_read,
        Trace1_Data_Write       => trace1_data_write,
        Trace1_DCache_Req       => trace1_dcache_req,
        Trace1_DCache_Hit       => trace1_dcache_hit,
        Trace1_DCache_Rdy       => trace1_dcache_rdy,
        Trace1_DCache_Read      => trace1_dcache_read,
        Trace1_ICache_Req       => trace1_icache_req,
        Trace1_ICache_Hit       => trace1_icache_hit,
        Trace1_ICache_Rdy       => trace1_icache_rdy,
        Trace1_OF_PipeRun       => trace1_of_piperun,
        Trace1_EX_PipeRun       => trace1_ex_piperun,
        Trace1_MEM_PipeRun      => trace1_mem_piperun,
        Trace1_MB_Halted        => trace1_mb_halted,
        Trace1_Jump_Hit         => trace1_jump_hit,
        Trace2_Instruction      => trace3_instruction,
        Trace2_Valid_Instr      => trace3_valid_instr,
        Trace2_PC               => trace3_pc,
        Trace2_Reg_Write        => trace3_reg_write,
        Trace2_Reg_Addr         => trace3_reg_addr,
        Trace2_MSR_Reg          => trace3_msr_reg,
        Trace2_PID_Reg          => trace3_pid_reg,
        Trace2_New_Reg_Value    => trace3_new_reg_value,
        Trace2_Exception_Taken  => trace3_exception_taken,
        Trace2_Exception_Kind   => trace3_exception_kind,
        Trace2_Jump_Taken       => trace3_jump_taken,
        Trace2_Delay_Slot       => trace3_delay_slot,
        Trace2_Data_Address     => trace3_data_address,
        Trace2_Data_Write_Value => trace3_data_write_value,
        Trace2_Data_Byte_Enable => trace3_data_byte_enable,
        Trace2_Data_Access      => trace3_data_access,
        Trace2_Data_Read        => trace3_data_read,
        Trace2_Data_Write       => trace3_data_write,
        Trace2_DCache_Req       => trace3_dcache_req,
        Trace2_DCache_Hit       => trace3_dcache_hit,
        Trace2_DCache_Rdy       => trace3_dcache_rdy,
        Trace2_DCache_Read      => trace3_dcache_read,
        Trace2_ICache_Req       => trace3_icache_req,
        Trace2_ICache_Hit       => trace3_icache_hit,
        Trace2_ICache_Rdy       => trace3_icache_rdy,
        Trace2_OF_PipeRun       => trace3_of_piperun,
        Trace2_EX_PipeRun       => trace3_ex_piperun,
        Trace2_MEM_PipeRun      => trace3_mem_piperun,
        Trace2_MB_Halted        => trace3_mb_halted,
        Trace2_Jump_Hit         => trace3_jump_hit,
        Force                   => Force,
        ForceEna                => ForceEna13,
        MisCompare              => MisCompare13,
        MisMatch                => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.trace_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_TRACE_SIZE      => C_TRACE_SIZE,
        C_ADDR_SIZE       => C_ADDR_SIZE,
        C_DATA_SIZE       => C_DATA_SIZE,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map (
        Clk                     => Clk,
        Rst1                    => Rst,
        Rst2                    => Rst,
        Trace1_Instruction      => trace2_instruction,
        Trace1_Valid_Instr      => trace2_valid_instr,
        Trace1_PC               => trace2_pc,
        Trace1_Reg_Write        => trace2_reg_write,
        Trace1_Reg_Addr         => trace2_reg_addr,
        Trace1_MSR_Reg          => trace2_msr_reg,
        Trace1_PID_Reg          => trace2_pid_reg,
        Trace1_New_Reg_Value    => trace2_new_reg_value,
        Trace1_Exception_Taken  => trace2_exception_taken,
        Trace1_Exception_Kind   => trace2_exception_kind,
        Trace1_Jump_Taken       => trace2_jump_taken,
        Trace1_Delay_Slot       => trace2_delay_slot,
        Trace1_Data_Address     => trace2_data_address,
        Trace1_Data_Write_Value => trace2_data_write_value,
        Trace1_Data_Byte_Enable => trace2_data_byte_enable,
        Trace1_Data_Access      => trace2_data_access,
        Trace1_Data_Read        => trace2_data_read,
        Trace1_Data_Write       => trace2_data_write,
        Trace1_DCache_Req       => trace2_dcache_req,
        Trace1_DCache_Hit       => trace2_dcache_hit,
        Trace1_DCache_Rdy       => trace2_dcache_rdy,
        Trace1_DCache_Read      => trace2_dcache_read,
        Trace1_ICache_Req       => trace2_icache_req,
        Trace1_ICache_Hit       => trace2_icache_hit,
        Trace1_ICache_Rdy       => trace2_icache_rdy,
        Trace1_OF_PipeRun       => trace2_of_piperun,
        Trace1_EX_PipeRun       => trace2_ex_piperun,
        Trace1_MEM_PipeRun      => trace2_mem_piperun,
        Trace1_MB_Halted        => trace2_mb_halted,
        Trace1_Jump_Hit         => trace2_jump_hit,
        Trace2_Instruction      => trace3_instruction,
        Trace2_Valid_Instr      => trace3_valid_instr,
        Trace2_PC               => trace3_pc,
        Trace2_Reg_Write        => trace3_reg_write,
        Trace2_Reg_Addr         => trace3_reg_addr,
        Trace2_MSR_Reg          => trace3_msr_reg,
        Trace2_PID_Reg          => trace3_pid_reg,
        Trace2_New_Reg_Value    => trace3_new_reg_value,
        Trace2_Exception_Taken  => trace3_exception_taken,
        Trace2_Exception_Kind   => trace3_exception_kind,
        Trace2_Jump_Taken       => trace3_jump_taken,
        Trace2_Delay_Slot       => trace3_delay_slot,
        Trace2_Data_Address     => trace3_data_address,
        Trace2_Data_Write_Value => trace3_data_write_value,
        Trace2_Data_Byte_Enable => trace3_data_byte_enable,
        Trace2_Data_Access      => trace3_data_access,
        Trace2_Data_Read        => trace3_data_read,
        Trace2_Data_Write       => trace3_data_write,
        Trace2_DCache_Req       => trace3_dcache_req,
        Trace2_DCache_Hit       => trace3_dcache_hit,
        Trace2_DCache_Rdy       => trace3_dcache_rdy,
        Trace2_DCache_Read      => trace3_dcache_read,
        Trace2_ICache_Req       => trace3_icache_req,
        Trace2_ICache_Hit       => trace3_icache_hit,
        Trace2_ICache_Rdy       => trace3_icache_rdy,
        Trace2_OF_PipeRun       => trace3_of_piperun,
        Trace2_EX_PipeRun       => trace3_ex_piperun,
        Trace2_MEM_PipeRun      => trace3_mem_piperun,
        Trace2_MB_Halted        => trace3_mb_halted,
        Trace2_Jump_Hit         => trace3_jump_hit ,
        Force                   => Force,
        ForceEna                => ForceEna23,
        MisCompare              => MisCompare23,
        MisMatch                => MisMatch23);

      trace_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal trace_instruction_voted        : std_logic_vector(0 to C_DATA_SIZE-1);
        signal trace_valid_instr_voted        : std_logic;
        signal trace_pc_voted                 : std_logic_vector(0 to C_DATA_SIZE-1);
        signal trace_reg_write_voted          : std_logic;
        signal trace_reg_addr_voted           : std_logic_vector(0 to 4);
        signal trace_msr_reg_voted            : std_logic_vector(0 to 14);
        signal trace_pid_reg_voted            : std_logic_vector(0 to 7);
        signal trace_new_reg_value_voted      : std_logic_vector(0 to C_DATA_SIZE-1);
        signal trace_exception_taken_voted    : std_logic;
        signal trace_exception_kind_voted     : std_logic_vector(0 to 4);
        signal trace_jump_taken_voted         : std_logic;
        signal trace_delay_slot_voted         : std_logic;
        signal trace_data_address_voted       : std_logic_vector(0 to C_ADDR_SIZE-1);
        signal trace_data_write_value_voted   : std_logic_vector(0 to C_DATA_SIZE-1);
        signal trace_data_byte_enable_voted   : std_logic_vector(0 to 3);
        signal trace_data_access_voted        : std_logic;
        signal trace_data_read_voted          : std_logic;
        signal trace_data_write_voted         : std_logic;
        signal trace_dcache_req_voted         : std_logic;
        signal trace_dcache_hit_voted         : std_logic;
        signal trace_dcache_rdy_voted         : std_logic;
        signal trace_dcache_read_voted        : std_logic;
        signal trace_icache_req_voted         : std_logic;
        signal trace_icache_hit_voted         : std_logic;
        signal trace_icache_rdy_voted         : std_logic;
        signal trace_of_piperun_voted         : std_logic;
        signal trace_ex_piperun_voted         : std_logic;
        signal trace_mem_piperun_voted        : std_logic;
        signal trace_mb_halted_voted          : std_logic;
        signal trace_jump_hit_voted           : std_logic;
      begin

        trace_voter_i : entity tmr_voter_v1_0_5.trace_voter
        generic map(
          C_ADDR_SIZE       => C_ADDR_SIZE,
          C_DATA_SIZE       => C_DATA_SIZE,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map (
          TMR_Disable             => tmr_disable_vec,
          Trace1_Instruction      => Trace1_Instruction,
          Trace1_Valid_Instr      => Trace1_Valid_Instr,
          Trace1_PC               => Trace1_PC,
          Trace1_Reg_Write        => Trace1_Reg_Write,
          Trace1_Reg_Addr         => Trace1_Reg_Addr,
          Trace1_MSR_Reg          => Trace1_MSR_Reg,
          Trace1_PID_Reg          => Trace1_PID_Reg,
          Trace1_New_Reg_Value    => Trace1_New_Reg_Value,
          Trace1_Exception_Taken  => Trace1_Exception_Taken,
          Trace1_Exception_Kind   => Trace1_Exception_Kind,
          Trace1_Jump_Taken       => Trace1_Jump_Taken,
          Trace1_Delay_Slot       => Trace1_Delay_Slot,
          Trace1_Data_Address     => Trace1_Data_Address,
          Trace1_Data_Write_Value => Trace1_Data_Write_Value,
          Trace1_Data_Byte_Enable => Trace1_Data_Byte_Enable,
          Trace1_Data_Access      => Trace1_Data_Access,
          Trace1_Data_Read        => Trace1_Data_Read,
          Trace1_Data_Write       => Trace1_Data_Write,
          Trace1_DCache_Req       => Trace1_DCache_Req,
          Trace1_DCache_Hit       => Trace1_DCache_Hit,
          Trace1_DCache_Rdy       => Trace1_DCache_Rdy,
          Trace1_DCache_Read      => Trace1_DCache_Read,
          Trace1_ICache_Req       => Trace1_ICache_Req,
          Trace1_ICache_Hit       => Trace1_ICache_Hit,
          Trace1_ICache_Rdy       => Trace1_ICache_Rdy,
          Trace1_OF_PipeRun       => Trace1_OF_PipeRun,
          Trace1_EX_PipeRun       => Trace1_EX_PipeRun,
          Trace1_MEM_PipeRun      => Trace1_MEM_PipeRun,
          Trace1_MB_Halted        => Trace1_MB_Halted,
          Trace1_Jump_Hit         => Trace1_Jump_Hit,
          Trace2_Instruction      => Trace2_Instruction,
          Trace2_Valid_Instr      => Trace2_Valid_Instr,
          Trace2_PC               => Trace2_PC,
          Trace2_Reg_Write        => Trace2_Reg_Write,
          Trace2_Reg_Addr         => Trace2_Reg_Addr,
          Trace2_MSR_Reg          => Trace2_MSR_Reg,
          Trace2_PID_Reg          => Trace2_PID_Reg,
          Trace2_New_Reg_Value    => Trace2_New_Reg_Value,
          Trace2_Exception_Taken  => Trace2_Exception_Taken,
          Trace2_Exception_Kind   => Trace2_Exception_Kind,
          Trace2_Jump_Taken       => Trace2_Jump_Taken,
          Trace2_Delay_Slot       => Trace2_Delay_Slot,
          Trace2_Data_Address     => Trace2_Data_Address,
          Trace2_Data_Write_Value => Trace2_Data_Write_Value,
          Trace2_Data_Byte_Enable => Trace2_Data_Byte_Enable,
          Trace2_Data_Access      => Trace2_Data_Access,
          Trace2_Data_Read        => Trace2_Data_Read,
          Trace2_Data_Write       => Trace2_Data_Write,
          Trace2_DCache_Req       => Trace2_DCache_Req,
          Trace2_DCache_Hit       => Trace2_DCache_Hit,
          Trace2_DCache_Rdy       => Trace2_DCache_Rdy,
          Trace2_DCache_Read      => Trace2_DCache_Read,
          Trace2_ICache_Req       => Trace2_ICache_Req,
          Trace2_ICache_Hit       => Trace2_ICache_Hit,
          Trace2_ICache_Rdy       => Trace2_ICache_Rdy,
          Trace2_OF_PipeRun       => Trace2_OF_PipeRun,
          Trace2_EX_PipeRun       => Trace2_EX_PipeRun,
          Trace2_MEM_PipeRun      => Trace2_MEM_PipeRun,
          Trace2_MB_Halted        => Trace2_MB_Halted,
          Trace2_Jump_Hit         => Trace2_Jump_Hit,
          Trace3_Instruction      => Trace3_Instruction,
          Trace3_Valid_Instr      => Trace3_Valid_Instr,
          Trace3_PC               => Trace3_PC,
          Trace3_Reg_Write        => Trace3_Reg_Write,
          Trace3_Reg_Addr         => Trace3_Reg_Addr,
          Trace3_MSR_Reg          => Trace3_MSR_Reg,
          Trace3_PID_Reg          => Trace3_PID_Reg,
          Trace3_New_Reg_Value    => Trace3_New_Reg_Value,
          Trace3_Exception_Taken  => Trace3_Exception_Taken,
          Trace3_Exception_Kind   => Trace3_Exception_Kind,
          Trace3_Jump_Taken       => Trace3_Jump_Taken,
          Trace3_Delay_Slot       => Trace3_Delay_Slot,
          Trace3_Data_Address     => Trace3_Data_Address,
          Trace3_Data_Write_Value => Trace3_Data_Write_Value,
          Trace3_Data_Byte_Enable => Trace3_Data_Byte_Enable,
          Trace3_Data_Access      => Trace3_Data_Access,
          Trace3_Data_Read        => Trace3_Data_Read,
          Trace3_Data_Write       => Trace3_Data_Write,
          Trace3_DCache_Req       => Trace3_DCache_Req,
          Trace3_DCache_Hit       => Trace3_DCache_Hit,
          Trace3_DCache_Rdy       => Trace3_DCache_Rdy,
          Trace3_DCache_Read      => Trace3_DCache_Read,
          Trace3_ICache_Req       => Trace3_ICache_Req,
          Trace3_ICache_Hit       => Trace3_ICache_Hit,
          Trace3_ICache_Rdy       => Trace3_ICache_Rdy,
          Trace3_OF_PipeRun       => Trace3_OF_PipeRun,
          Trace3_EX_PipeRun       => Trace3_EX_PipeRun,
          Trace3_MEM_PipeRun      => Trace3_MEM_PipeRun,
          Trace3_MB_Halted        => Trace3_MB_Halted,
          Trace3_Jump_Hit         => Trace3_Jump_Hit,
          Trace_Instruction       => trace_instruction_voted,
          Trace_Valid_Instr       => trace_valid_instr_voted,
          Trace_PC                => trace_pc_voted,
          Trace_Reg_Write         => trace_reg_write_voted,
          Trace_Reg_Addr          => trace_reg_addr_voted,
          Trace_MSR_Reg           => trace_msr_reg_voted,
          Trace_PID_Reg           => trace_pid_reg_voted,
          Trace_New_Reg_Value     => trace_new_reg_value_voted,
          Trace_Exception_Taken   => trace_exception_taken_voted,
          Trace_Exception_Kind    => trace_exception_kind_voted,
          Trace_Jump_Taken        => trace_jump_taken_voted,
          Trace_Delay_Slot        => trace_delay_slot_voted,
          Trace_Data_Address      => trace_data_address_voted,
          Trace_Data_Write_Value  => trace_data_write_value_voted,
          Trace_Data_Byte_Enable  => trace_data_byte_enable_voted,
          Trace_Data_Access       => trace_data_access_voted,
          Trace_Data_Read         => trace_data_read_voted,
          Trace_Data_Write        => trace_data_write_voted,
          Trace_DCache_Req        => trace_dcache_req_voted,
          Trace_DCache_Hit        => trace_dcache_hit_voted,
          Trace_DCache_Rdy        => trace_dcache_rdy_voted,
          Trace_DCache_Read       => trace_dcache_read_voted,
          Trace_ICache_Req        => trace_icache_req_voted,
          Trace_ICache_Hit        => trace_icache_hit_voted,
          Trace_ICache_Rdy        => trace_icache_rdy_voted,
          Trace_OF_PipeRun        => trace_of_piperun_voted,
          Trace_EX_PipeRun        => trace_ex_piperun_voted,
          Trace_MEM_PipeRun       => trace_mem_piperun_voted,
          Trace_MB_Halted         => trace_mb_halted_voted,
          Trace_Jump_Hit          => trace_jump_hit_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.trace_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_TRACE_SIZE      => C_TRACE_FULL,
          C_ADDR_SIZE       => C_ADDR_SIZE,
          C_DATA_SIZE       => C_DATA_SIZE,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk                     => Clk,
          Rst1                    => Rst,
          Rst2                    => Rst,
          Trace1_Instruction      => trace_instruction,
          Trace1_Valid_Instr      => trace_valid_instr,
          Trace1_PC               => trace_pc,
          Trace1_Reg_Write        => trace_reg_write,
          Trace1_Reg_Addr         => trace_reg_addr,
          Trace1_MSR_Reg          => trace_msr_reg,
          Trace1_PID_Reg          => trace_pid_reg,
          Trace1_New_Reg_Value    => trace_new_reg_value,
          Trace1_Exception_Taken  => trace_exception_taken,
          Trace1_Exception_Kind   => trace_exception_kind,
          Trace1_Jump_Taken       => trace_jump_taken,
          Trace1_Delay_Slot       => trace_delay_slot,
          Trace1_Data_Address     => trace_data_address,
          Trace1_Data_Write_Value => trace_data_write_value,
          Trace1_Data_Byte_Enable => trace_data_byte_enable,
          Trace1_Data_Access      => trace_data_access,
          Trace1_Data_Read        => trace_data_read,
          Trace1_Data_Write       => trace_data_write_voted,
          Trace1_DCache_Req       => trace_dcache_req,
          Trace1_DCache_Hit       => trace_dcache_hit,
          Trace1_DCache_Rdy       => trace_dcache_rdy,
          Trace1_DCache_Read      => trace_dcache_read,
          Trace1_ICache_Req       => trace_icache_req,
          Trace1_ICache_Hit       => trace_icache_hit,
          Trace1_ICache_Rdy       => trace_icache_rdy,
          Trace1_OF_PipeRun       => trace_of_piperun,
          Trace1_EX_PipeRun       => trace_ex_piperun,
          Trace1_MEM_PipeRun      => trace_mem_piperun,
          Trace1_MB_Halted        => trace_mb_halted,
          Trace1_Jump_Hit         => trace_jump_hit,
          Trace2_Instruction      => trace_instruction_voted,
          Trace2_Valid_Instr      => trace_valid_instr_voted,
          Trace2_PC               => trace_pc_voted,
          Trace2_Reg_Write        => trace_reg_write_voted,
          Trace2_Reg_Addr         => trace_reg_addr_voted,
          Trace2_MSR_Reg          => trace_msr_reg_voted,
          Trace2_PID_Reg          => trace_pid_reg_voted,
          Trace2_New_Reg_Value    => trace_new_reg_value_voted,
          Trace2_Exception_Taken  => trace_exception_taken_voted,
          Trace2_Exception_Kind   => trace_exception_kind_voted,
          Trace2_Jump_Taken       => trace_jump_taken_voted,
          Trace2_Delay_Slot       => trace_delay_slot_voted,
          Trace2_Data_Address     => trace_data_address_voted,
          Trace2_Data_Write_Value => trace_data_write_value_voted,
          Trace2_Data_Byte_Enable => trace_data_byte_enable_voted,
          Trace2_Data_Access      => trace_data_access_voted,
          Trace2_Data_Read        => trace_data_read_voted,
          Trace2_Data_Write       => trace_data_write_voted,
          Trace2_DCache_Req       => trace_dcache_req_voted,
          Trace2_DCache_Hit       => trace_dcache_hit_voted,
          Trace2_DCache_Rdy       => trace_dcache_rdy_voted,
          Trace2_DCache_Read      => trace_dcache_read_voted,
          Trace2_ICache_Req       => trace_icache_req_voted,
          Trace2_ICache_Hit       => trace_icache_hit_voted,
          Trace2_ICache_Rdy       => trace_icache_rdy_voted,
          Trace2_OF_PipeRun       => trace_of_piperun_voted,
          Trace2_EX_PipeRun       => trace_ex_piperun_voted,
          Trace2_MEM_PipeRun      => trace_mem_piperun_voted,
          Trace2_MB_Halted        => trace_mb_halted_voted,
          Trace2_Jump_Hit         => trace_jump_hit_voted,
          Force                   => Force,
          ForceEna                => VoterErrorForceEna,
          MisCompare              => VoterErrorMisCompare,
          MisMatch                => VoterError);

      end generate trace_voter_check_g;

    end generate tmr_g;

  end generate trace_g;

  -- Interrupt, only needed if MicroBlaze has Fast Interrupt
  interrupt_fast_g: if (C_INTERFACE = C_INTERRUPT and C_LOW_LATENCY = 1) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.interrupt_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map (
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => rst2,
        IRQ1_Ack   => irq1_ack,
        IRQ2_Ack   => irq2_ack,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.interrupt_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          IRQ1_Ack   => irq1_ack,
          IRQ2_Ack   => irq3_ack,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.interrupt_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          IRQ1_Ack   => irq2_ack,
          IRQ2_Ack   => irq3_ack,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      interrupt_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal irq_ack_voted   : std_logic_vector(0 to 1);
      begin

        vote_i : entity tmr_voter_v1_0_5.interrupt_voter
          generic map(
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable  => tmr_disable_vec,
            IRQ1         => open,
            IRQ1_Address => open,
            IRQ1_Ack     => IRQ1_Ack,
            IRQ2         => open,
            IRQ2_Address => open,
            IRQ2_Ack     => IRQ2_Ack,
            IRQ3         => open,
            IRQ3_Address => open,
            IRQ3_Ack     => IRQ3_Ack,
            IRQ          => '0',
            IRQ_Address  => (others => '0'),
            IRQ_Ack      => irq_ack_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.interrupt_comparator
          generic map(
            C_INCLUDE_MASK    => C_INCLUDE_MASK,
            C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk          => Clk,
            Rst1         => Rst,
            Rst2         => Rst,
            IRQ1_Ack     => irq_ack,
            IRQ2_Ack     => irq_ack_voted,
            Force        => Force,
            ForceEna     => VoterErrorForceEna,
            MisCompare   => VoterErrorMisCompare,
            MisMatch     => VoterError);

      end generate interrupt_voter_check_g;

    end generate tmr_g;

  end generate interrupt_fast_g;

  -- Interrupt, null when MicroBlaze doesn't have Fast Interrupt
  interrupt_g: if (C_INTERFACE = C_INTERRUPT and C_LOW_LATENCY = 0) generate
  begin

    MisMatch12 <= '0';
    MisCompare12 <= (others => '0');

    tmr_g: if (C_TMR = 1) generate
    begin
      MisMatch13   <= '0';
      MisMatch23   <= '0';
      MisCompare13 <= (others => '0');
      MisCompare23 <= (others => '0');
    end generate tmr_g;

    voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED and C_TMR = 1) generate
    begin
      VoterError           <= '0';
      VoterErrorMisCompare <= (others => '0');
    end generate voter_check_g;

  end generate interrupt_g;

  -- Interrupt Slave, when MicroBlaze has Fast Interrupt
  interrupt_slave_fast_g: if (C_INTERFACE = C_S_INTERRUPT and C_LOW_LATENCY = 1) generate

    constant IRQ_Pos           : natural := 0;
    subtype  IRQ_Address_Pos  is natural range IRQ_Pos+1 to IRQ_Pos + IRQ1_Address'length;

    function compare_mask return std_logic_vector is
      variable mask : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1) := (others => '1');
    begin
      mask(IRQ_Pos)         :=                     C_INCLUDE_MASK(0);
      mask(IRQ_Address_Pos) := (IRQ_Address_Pos => C_INCLUDE_MASK(1));
      return mask;
    end function compare_mask;

    constant C_COMPARE_MASK : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1) := compare_mask;

    signal interrupt1_m, interrupt2_m : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
  begin

    interrupt1_m <= (irq1 & irq1_address) and C_COMPARE_MASK;
    interrupt2_m <= (irq2 & irq2_address) and C_COMPARE_MASK;

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map(
        C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk        => Clk,
        Rst1       => Rst,
        Rst2       => rst2,
        Enable1    => (others => '1'),
        Enable2    => (others => '1'),
        Compare1   => interrupt1_m,
        Compare2   => interrupt2_m,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
      signal interrupt3_m : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
    begin

      interrupt3_m <= (irq3 & irq3_address) and C_COMPARE_MASK;

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map(
          C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => interrupt1_m,
          Compare2   => interrupt3_m,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map(
          C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => interrupt2_m,
          Compare2   => interrupt3_m,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      interrupt_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal interrupt1        : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
        signal interrupt2        : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
        signal interrupt3        : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
        signal interrupt_voted   : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
        signal interrupt_m       : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
        signal interrupt_voted_m : std_logic_vector(0 to C_S_INTERRUPT_CMP_WIDTH-1);
      begin

        interrupt1 <= IRQ1 & IRQ1_Address;
        interrupt2 <= IRQ2 & IRQ2_Address;
        interrupt3 <= IRQ3 & IRQ3_Address;

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map(
            C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1       => interrupt1,
            Vote2       => interrupt2,
            Vote3       => interrupt3,
            Voted       => interrupt_voted);

        interrupt_m       <= (irq & irq_address) and C_COMPARE_MASK;
        interrupt_voted_m <= interrupt_voted and C_COMPARE_MASK;

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map(
            C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk        => Clk,
            Rst1       => Rst,
            Rst2       => Rst,
            Enable1    => (others => '1'),
            Enable2    => (others => '1'),
            Compare1   => interrupt_m,
            Compare2   => interrupt_voted_m,
            Force      => Force,
            ForceEna   => VoterErrorForceEna,
            MisCompare => VoterErrorMisCompare,
            MisMatch   => VoterError);

      end generate interrupt_voter_check_g;

    end generate tmr_g;

  end generate interrupt_slave_fast_g;

  -- Interrupt Slave, when MicroBlaze does not have Fast Interrupt
  interrupt_slave_g: if (C_INTERFACE = C_S_INTERRUPT and C_LOW_LATENCY = 0) generate
    signal interrupt1_m, interrupt2_m : std_logic_vector(0 to 0);
  begin

    interrupt1_m(0) <= irq1 and C_INCLUDE_MASK(0);
    interrupt2_m(0) <= irq2 and C_INCLUDE_MASK(0);

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map(
        C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk         => Clk,
        Rst1        => Rst,
        Rst2        => rst2,
        Enable1    => (others => '1'),
        Enable2    => (others => '1'),
        Compare1   => interrupt1_m,
        Compare2   => interrupt2_m,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
      signal interrupt3_m : std_logic_vector(0 to 0);
    begin

      interrupt3_m(0) <= irq3 and C_INCLUDE_MASK(0);

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map(
          C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => interrupt1_m,
          Compare2   => interrupt3_m,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map(
          C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk        => Clk,
          Rst1       => Rst,
          Rst2       => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => interrupt2_m,
          Compare2   => interrupt3_m,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      interrupt_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal interrupt_voted   : std_logic_vector(0 to 0);
        signal interrupt_m       : std_logic_vector(0 to 0);
        signal interrupt_voted_m : std_logic_vector(0 to 0);
      begin

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map(
            C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1(0)    => IRQ1,
            Vote2(0)    => IRQ2,
            Vote3(0)    => IRQ3,
            Voted       => interrupt_voted);

        interrupt_m(0)       <= irq and C_INCLUDE_MASK(0);
        interrupt_voted_m(0) <= interrupt_voted(0) and C_INCLUDE_MASK(0);

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map(
            C_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk        => Clk,
            Rst1       => Rst,
            Rst2       => Rst,
            Enable1    => (others => '1'),
            Enable2    => (others => '1'),
            Compare1   => interrupt_m,
            Compare2   => interrupt_voted_m,
            Force      => Force,
            ForceEna   => VoterErrorForceEna,
            MisCompare => VoterErrorMisCompare,
            MisMatch   => VoterError);

      end generate interrupt_voter_check_g;

    end generate tmr_g;

  end generate interrupt_slave_g;

  -- IO Bus
  iobus_g: if (C_INTERFACE = C_IOBUS) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.lmb_comparator
    generic map(
      C_INCLUDE_MASK    => C_INCLUDE_MASK,
      C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
      C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
    port map(
      Clk              => Clk,
      Rst1             => Rst,
      Rst2             => rst2,
      LMB1_ABus        => io1_address,
      LMB1_WriteDBus   => io1_write_data,
      LMB1_AddrStrobe  => io1_addr_strobe,
      LMB1_ReadStrobe  => io1_read_strobe,
      LMB1_WriteStrobe => io1_write_strobe,
      LMB1_BE          => io1_byte_enable,
      LMB2_ABus        => io2_address,
      LMB2_WriteDBus   => io2_write_data,
      LMB2_AddrStrobe  => io2_addr_strobe,
      LMB2_ReadStrobe  => io2_read_strobe,
      LMB2_WriteStrobe => io2_write_strobe,
      LMB2_BE          => io2_byte_enable,
      Force            => Force,
      ForceEna         => ForceEna12,
      MisCompare       => MisCompare12,
      MisMatch         => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk              => Clk,
        Rst1             => Rst,
        Rst2             => Rst,
        LMB1_ABus        => io1_address,
        LMB1_WriteDBus   => io1_write_data,
        LMB1_AddrStrobe  => io1_addr_strobe,
        LMB1_ReadStrobe  => io1_read_strobe,
        LMB1_WriteStrobe => io1_write_strobe,
        LMB1_BE          => io1_byte_enable,
        LMB2_ABus        => io3_address,
        LMB2_WriteDBus   => io3_write_data,
        LMB2_AddrStrobe  => io3_addr_strobe,
        LMB2_ReadStrobe  => io3_read_strobe,
        LMB2_WriteStrobe => io3_write_strobe,
        LMB2_BE          => io3_byte_enable,
        Force            => Force,
        ForceEna         => ForceEna13,
        MisCompare       => MisCompare13,
        MisMatch         => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.lmb_comparator
      generic map(
        C_INCLUDE_MASK    => C_INCLUDE_MASK,
        C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
        C_LMB_AWIDTH      => C_LMB_AWIDTH,
        C_LMB_DWIDTH      => C_LMB_DWIDTH,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER)
      port map(
        Clk              => Clk,
        Rst1             => Rst,
        Rst2             => Rst,
        LMB1_ABus        => io2_address,
        LMB1_WriteDBus   => io2_write_data,
        LMB1_AddrStrobe  => io2_addr_strobe,
        LMB1_ReadStrobe  => io2_read_strobe,
        LMB1_WriteStrobe => io2_write_strobe,
        LMB1_BE          => io2_byte_enable,
        LMB2_ABus        => io3_address,
        LMB2_WriteDBus   => io3_write_data,
        LMB2_AddrStrobe  => io3_addr_strobe,
        LMB2_ReadStrobe  => io3_read_strobe,
        LMB2_WriteStrobe => io3_write_strobe,
        LMB2_BE          => io3_byte_enable,
        Force            => Force,
        ForceEna         => ForceEna23,
        MisCompare       => MisCompare23,
        MisMatch         => MisMatch23);

      iobus_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal io_addr_strobe_voted    : std_logic;
        signal io_read_strobe_voted    : std_logic;
        signal io_write_strobe_voted   : std_logic;
        signal io_address_voted        : std_logic_vector(C_LMB_AWIDTH-1 downto 0);
        signal io_byte_enable_voted    : std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
        signal io_write_data_voted     : std_logic_vector(C_LMB_DWIDTH-1 downto 0);
      begin

        iobus_voter_i : entity tmr_voter_v1_0_5.lmb_voter
        generic map(
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
        port map (
          TMR_Disable      => tmr_disable_vec,
          LMB1_ABus        => IO1_Address,
          LMB1_WriteDBus   => IO1_Write_Data,
          LMB1_AddrStrobe  => IO1_Addr_Strobe,
          LMB1_ReadStrobe  => IO1_Read_Strobe,
          LMB1_WriteStrobe => IO1_Write_Strobe,
          LMB1_BE          => IO1_Byte_Enable,
          Sl1_DBus         => open,
          Sl1_Ready        => open,
          Sl1_Wait         => open,
          Sl1_UE           => open,
          Sl1_CE           => open,
          LMB2_ABus        => IO2_Address,
          LMB2_WriteDBus   => IO2_Write_Data,
          LMB2_AddrStrobe  => IO2_Addr_Strobe,
          LMB2_ReadStrobe  => IO2_Read_Strobe,
          LMB2_WriteStrobe => IO2_Write_Strobe,
          LMB2_BE          => IO2_Byte_Enable,
          Sl2_DBus         => open,
          Sl2_Ready        => open,
          Sl2_Wait         => open,
          Sl2_UE           => open,
          Sl2_CE           => open,
          LMB3_ABus        => IO3_Address,
          LMB3_WriteDBus   => IO3_Write_Data,
          LMB3_AddrStrobe  => IO3_Addr_Strobe,
          LMB3_ReadStrobe  => IO3_Read_Strobe,
          LMB3_WriteStrobe => IO3_Write_Strobe,
          LMB3_BE          => IO3_Byte_Enable,
          Sl3_DBus         => open,
          Sl3_Ready        => open,
          Sl3_Wait         => open,
          Sl3_UE           => open,
          Sl3_CE           => open,
          LMB_ABus         => io_address_voted,
          LMB_WriteDBus    => io_write_data_voted,
          LMB_AddrStrobe   => io_addr_strobe_voted,
          LMB_ReadStrobe   => io_read_strobe_voted,
          LMB_WriteStrobe  => io_write_strobe_voted,
          LMB_BE           => io_byte_enable_voted,
          Sl_DBus          => (others => '0'),
          Sl_Ready         => '0',
          Sl_Wait          => '0',
          Sl_UE            => '0',
          Sl_CE            => '0');

        compare_vote_i : entity tmr_voter_v1_0_5.lmb_comparator
        generic map(
          C_INCLUDE_MASK    => C_INCLUDE_MASK,
          C_COMPARE_WIDTH   => C_COMPARE_WIDTH(C_INTERFACE),
          C_LMB_AWIDTH      => C_LMB_AWIDTH,
          C_LMB_DWIDTH      => C_LMB_DWIDTH,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map(
          Clk              => Clk,
          Rst1             => Rst,
          Rst2             => Rst,
          LMB1_ABus        => io_address,
          LMB1_WriteDBus   => io_write_data,
          LMB1_AddrStrobe  => io_addr_strobe,
          LMB1_ReadStrobe  => io_read_strobe,
          LMB1_WriteStrobe => io_write_strobe,
          LMB1_BE          => io_byte_enable,
          LMB2_ABus        => io_address_voted,
          LMB2_WriteDBus   => io_write_data_voted,
          LMB2_AddrStrobe  => io_addr_strobe_voted,
          LMB2_ReadStrobe  => io_read_strobe_voted,
          LMB2_WriteStrobe => io_write_strobe_voted,
          LMB2_BE          => io_byte_enable_voted,
          Force            => Force,
          ForceEna         => VoterErrorForceEna,
          MisCompare       => VoterErrorMisCompare,
          MisMatch         => VoterError);

      end generate iobus_voter_check_g;

    end generate tmr_g;

  end generate iobus_g;

  -- GPIO
  gpio_g: if (C_INTERFACE = C_GPIO) generate
    function compare_mask return std_logic_vector is
      variable mask : std_logic_vector(C_GPO_SIZE*2-1 downto 0) := (others => '1');
    begin
      if C_GPO_SIZE*2 > 64 then
        mask(63 downto 0) := C_INCLUDE_MASK;
      else
        mask := C_INCLUDE_MASK(C_GPO_SIZE*2-1 downto 0);
      end if;
      return mask;
    end function compare_mask;

    constant C_COMPARE_MASK : std_logic_vector(C_GPO_SIZE*2-1 downto 0) := compare_mask;

    signal gpt1_gpo1   : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt2_gpo2   : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt1_gpo1_m : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt2_gpo2_m : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
  begin

    gpt1_gpo1 <= gpt1 & gpo1;
    gpt2_gpo2 <= gpt2 & gpo2;

    gpt1_gpo1_m <= gpt1_gpo1 and C_COMPARE_MASK;
    gpt2_gpo2_m <= gpt2_gpo2 and C_COMPARE_MASK;

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => C_GPO_SIZE*2,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk         => Clk,
        Rst1        => Rst,
        Rst2        => rst2,
        Enable1    => (others => '1'),
        Enable2    => (others => '1'),
        Compare1   => gpt1_gpo1,
        Compare2   => gpt2_gpo2,
        Force      => Force,
        ForceEna   => ForceEna12,
        MisCompare => MisCompare12,
        MisMatch   => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
      signal gpt3_gpo3   : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
      signal gpt3_gpo3_m : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    begin

      gpt3_gpo3 <= gpt3 & gpo3;

      gpt3_gpo3_m <= gpt3_gpo3 and C_COMPARE_MASK;

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => C_GPO_SIZE*2,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => gpt1_gpo1_m,
          Compare2   => gpt3_gpo3_m,
          Force      => Force,
          ForceEna   => ForceEna13,
          MisCompare => MisCompare13,
          MisMatch   => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => C_GPO_SIZE*2,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1    => (others => '1'),
          Enable2    => (others => '1'),
          Compare1   => gpt2_gpo2_m,
          Compare2   => gpt3_gpo3_m,
          Force      => Force,
          ForceEna   => ForceEna23,
          MisCompare => MisCompare23,
          MisMatch   => MisMatch23);

      gpio_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal gpt1_gpo1_vote  : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt2_gpo2_vote  : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt3_gpo3_vote  : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt_gpo         : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt_gpo_voted   : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt_gpo_m       : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
        signal gpt_gpo_voted_m : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
      begin

        gpt1_gpo1_vote <= GPT1 & GPO1;
        gpt2_gpo2_vote <= GPT2 & GPO2;
        gpt3_gpo3_vote <= GPT3 & GPO3;

        gpt_gpo <= gpt & gpo;

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map (
            C_WIDTH           => C_GPO_SIZE*2,
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1       => gpt1_gpo1_vote,
            Vote2       => gpt2_gpo2_vote,
            Vote3       => gpt3_gpo3_vote,
            Voted       => gpt_gpo_voted);

        gpt_gpo_m       <= gpt_gpo       and C_COMPARE_MASK;
        gpt_gpo_voted_m <= gpt_gpo_voted and C_COMPARE_MASK;

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map (
            C_WIDTH           => C_GPO_SIZE*2,
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk         => Clk,
            Rst1        => Rst,
            Rst2        => Rst,
            Enable1    => (others => '1'),
            Enable2    => (others => '1'),
            Compare1   => gpt_gpo_m,
            Compare2   => gpt_gpo_voted_m,
            Force      => Force,
            ForceEna   => VoterErrorForceEna,
            MisCompare => VoterErrorMisCompare,
            MisMatch   => VoterError);

      end generate gpio_voter_check_g;

    end generate tmr_g;

  end generate gpio_g;

  -- UART
  uart_g: if (C_INTERFACE = C_UART) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => 10,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk         => Clk,
        Rst1        => Rst,
        Rst2        => rst2,
        Enable1     => (others => '1'),
        Enable2     => (others => '1'),
        Compare1(0) => uart1_txd,
        Compare1(1) => uart1_rtsn,
        Compare1(2) => uart1_dtrn,
        Compare1(3) => uart1_baudoutn,
        Compare1(4) => uart1_xout,
        Compare1(5) => uart1_ddis,
        Compare1(6) => uart1_out1n,
        Compare1(7) => uart1_out2n,
        Compare1(8) => uart1_txrdyn,
        Compare1(9) => uart1_rxrdyn,
        Compare2(0) => uart2_txd,
        Compare2(1) => uart2_rtsn,
        Compare2(2) => uart2_dtrn,
        Compare2(3) => uart2_baudoutn,
        Compare2(4) => uart2_xout,
        Compare2(5) => uart2_ddis,
        Compare2(6) => uart2_out1n,
        Compare2(7) => uart2_out2n,
        Compare2(8) => uart2_txrdyn,
        Compare2(9) => uart2_rxrdyn,
        Force       => Force,
        ForceEna    => ForceEna12,
        MisCompare  => MisCompare12,
        MisMatch    => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => 10,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1     => (others => '1'),
          Enable2     => (others => '1'),
          Compare1(0) => uart1_txd,
          Compare1(1) => uart1_rtsn,
          Compare1(2) => uart1_dtrn,
          Compare1(3) => uart1_baudoutn,
          Compare1(4) => uart1_xout,
          Compare1(5) => uart1_ddis,
          Compare1(6) => uart1_out1n,
          Compare1(7) => uart1_out2n,
          Compare1(8) => uart1_txrdyn,
          Compare1(9) => uart1_rxrdyn,
          Compare2(0) => uart3_txd,
          Compare2(1) => uart3_rtsn,
          Compare2(2) => uart3_dtrn,
          Compare2(3) => uart3_baudoutn,
          Compare2(4) => uart3_xout,
          Compare2(5) => uart3_ddis,
          Compare2(6) => uart3_out1n,
          Compare2(7) => uart3_out2n,
          Compare2(8) => uart3_txrdyn,
          Compare2(9) => uart3_rxrdyn,
          Force       => Force,
          ForceEna    => ForceEna13,
          MisCompare  => MisCompare13,
          MisMatch    => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => 10,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1     => (others => '1'),
          Enable2     => (others => '1'),
          Compare1(0) => uart2_txd,
          Compare1(1) => uart2_rtsn,
          Compare1(2) => uart2_dtrn,
          Compare1(3) => uart2_baudoutn,
          Compare1(4) => uart2_xout,
          Compare1(5) => uart2_ddis,
          Compare1(6) => uart2_out1n,
          Compare1(7) => uart2_out2n,
          Compare1(8) => uart2_txrdyn,
          Compare1(9) => uart2_rxrdyn,
          Compare2(0) => uart3_txd,
          Compare2(1) => uart3_rtsn,
          Compare2(2) => uart3_dtrn,
          Compare2(3) => uart3_baudoutn,
          Compare2(4) => uart3_xout,
          Compare2(5) => uart3_ddis,
          Compare2(6) => uart3_out1n,
          Compare2(7) => uart3_out2n,
          Compare2(8) => uart3_txrdyn,
          Compare2(9) => uart3_rxrdyn,
          Force       => Force,
          ForceEna    => ForceEna23,
          MisCompare  => MisCompare23,
          MisMatch    => MisMatch23);

      uart_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal uart_txd_voted        : std_logic;
        signal uart_rtsn_voted       : std_logic;
        signal uart_dtrn_voted       : std_logic;
        signal uart_baudoutn_voted   : std_logic;
        signal uart_xout_voted       : std_logic;
        signal uart_ddis_voted       : std_logic;
        signal uart_out1n_voted      : std_logic;
        signal uart_out2n_voted      : std_logic;
        signal uart_txrdyn_voted     : std_logic;
        signal uart_rxrdy_voted      : std_logic;
      begin

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map (
            C_WIDTH           => 10,
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1(0)    => UART1_TxD,
            Vote1(1)    => UART1_RTSn,
            Vote1(2)    => UART1_DTRn,
            Vote1(3)    => UART1_BAUDOUTn,
            Vote1(4)    => UART1_XOUT,
            Vote1(5)    => UART1_DDIS,
            Vote1(6)    => UART1_OUT1n,
            Vote1(7)    => UART1_OUT2n,
            Vote1(8)    => UART1_TXRDYn,
            Vote1(9)    => UART1_RXRDYn,
            Vote2(0)    => UART2_TxD,
            Vote2(1)    => UART2_RTSn,
            Vote2(2)    => UART2_DTRn,
            Vote2(3)    => UART2_BAUDOUTn,
            Vote2(4)    => UART2_XOUT,
            Vote2(5)    => UART2_DDIS,
            Vote2(6)    => UART2_OUT1n,
            Vote2(7)    => UART2_OUT2n,
            Vote2(8)    => UART2_TXRDYn,
            Vote2(9)    => UART2_RXRDYn,
            Vote3(0)    => UART3_TxD,
            Vote3(1)    => UART3_RTSn,
            Vote3(2)    => UART3_DTRn,
            Vote3(3)    => UART3_BAUDOUTn,
            Vote3(4)    => UART3_XOUT,
            Vote3(5)    => UART3_DDIS,
            Vote3(6)    => UART3_OUT1n,
            Vote3(7)    => UART3_OUT2n,
            Vote3(8)    => UART3_TXRDYn,
            Vote3(9)    => UART3_RXRDYn,
            Voted(0)    => uart_txd_voted,
            Voted(1)    => uart_rtsn_voted,
            Voted(2)    => uart_dtrn_voted,
            Voted(3)    => uart_baudoutn_voted,
            Voted(4)    => uart_xout_voted,
            Voted(5)    => uart_ddis_voted,
            Voted(6)    => uart_out1n_voted,
            Voted(7)    => uart_out2n_voted,
            Voted(8)    => uart_txrdyn_voted,
            Voted(9)    => uart_rxrdy_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map (
            C_WIDTH           => 10,
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk         => Clk,
            Rst1        => Rst,
            Rst2        => Rst,
            Enable1     => (others => '1'),
            Enable2     => (others => '1'),
            Compare1(0) => uart_txd,
            Compare1(1) => uart_rtsn,
            Compare1(2) => uart_dtrn,
            Compare1(3) => uart_baudoutn,
            Compare1(4) => uart_xout,
            Compare1(5) => uart_ddis,
            Compare1(6) => uart_out1n,
            Compare1(7) => uart_out2n,
            Compare1(8) => uart_txrdyn,
            Compare1(9) => uart_rxrdyn,
            Compare2(0) => uart_txd_voted,
            Compare2(1) => uart_rtsn_voted,
            Compare2(2) => uart_dtrn_voted,
            Compare2(3) => uart_baudoutn_voted,
            Compare2(4) => uart_xout_voted,
            Compare2(5) => uart_ddis_voted,
            Compare2(6) => uart_out1n_voted,
            Compare2(7) => uart_out2n_voted,
            Compare2(8) => uart_txrdyn_voted,
            Compare2(9) => uart_rxrdy_voted,
            Force       => Force,
            ForceEna    => VoterErrorForceEna,
            MisCompare  => VoterErrorMisCompare,
            MisMatch    => VoterError);

       end generate uart_voter_check_g;

    end generate tmr_g;

  end generate uart_g;

  -- IIC
  iic_g: if (C_INTERFACE = C_IIC) generate
  begin

    compare12_i : entity tmr_voter_v1_0_5.comparator
      generic map (
        C_WIDTH           => 4,
        C_INPUT_REGISTER1 => C_INPUT_REGISTER1,
        C_INPUT_REGISTER2 => C_INPUT_REGISTER2)
      port map (
        Clk         => Clk,
        Rst1        => Rst,
        Rst2        => rst2,
        Enable1     => (others => '1'),
        Enable2     => (others => '1'),
        Compare1(0) => iic1_scl_o,
        Compare1(1) => iic1_scl_t,
        Compare1(2) => iic1_sda_o,
        Compare1(3) => iic1_sda_t,
        Compare2(0) => iic2_scl_o,
        Compare2(1) => iic2_scl_t,
        Compare2(2) => iic2_sda_o,
        Compare2(3) => iic2_sda_t,
        Force       => Force,
        ForceEna    => ForceEna12,
        MisCompare  => MisCompare12,
        MisMatch    => MisMatch12);

    tmr_g: if (C_TMR = 1) generate
    begin

      compare13_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => 4,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1     => (others => '1'),
          Enable2     => (others => '1'),
          Compare1(0) => iic1_scl_o,
          Compare1(1) => iic1_scl_t,
          Compare1(2) => iic1_sda_o,
          Compare1(3) => iic1_sda_t,
          Compare2(0) => iic3_scl_o,
          Compare2(1) => iic3_scl_t,
          Compare2(2) => iic3_sda_o,
          Compare2(3) => iic3_sda_t,
          Force       => Force,
          ForceEna    => ForceEna13,
          MisCompare  => MisCompare13,
          MisMatch    => MisMatch13);

      compare23_i : entity tmr_voter_v1_0_5.comparator
        generic map (
          C_WIDTH           => 4,
          C_INPUT_REGISTER1 => C_INPUT_REGISTER,
          C_INPUT_REGISTER2 => C_INPUT_REGISTER)
        port map (
          Clk         => Clk,
          Rst1        => Rst,
          Rst2        => Rst,
          Enable1     => (others => '1'),
          Enable2     => (others => '1'),
          Compare1(0) => iic2_scl_o,
          Compare1(1) => iic2_scl_t,
          Compare1(2) => iic2_sda_o,
          Compare1(3) => iic2_sda_t,
          Compare2(0) => iic3_scl_o,
          Compare2(1) => iic3_scl_t,
          Compare2(2) => iic3_sda_o,
          Compare2(3) => iic3_sda_t,
          Force       => Force,
          ForceEna    => ForceEna23,
          MisCompare  => MisCompare23,
          MisMatch    => MisMatch23);

      iic_voter_check_g: if (C_VOTER_CHECK = C_VOTER_CHECK_ENABLED) generate
        signal iic_scl_o_voted : std_logic;
        signal iic_scl_t_voted : std_logic;
        signal iic_sda_o_voted : std_logic;
        signal iic_sda_t_voted : std_logic;
      begin

        vote_i : entity tmr_voter_v1_0_5.voter
          generic map (
            C_WIDTH           => 4,
            C_USE_TMR_DISABLE => C_USE_TMR_DISABLE)
          port map (
            TMR_Disable => tmr_disable_vec,
            Vote1(0)    => IIC1_scl_o,
            Vote1(1)    => IIC1_scl_t,
            Vote1(2)    => IIC1_sda_o,
            Vote1(3)    => IIC1_sda_t,
            Vote2(0)    => IIC2_scl_o,
            Vote2(1)    => IIC2_scl_t,
            Vote2(2)    => IIC2_sda_o,
            Vote2(3)    => IIC2_sda_t,
            Vote3(0)    => IIC3_scl_o,
            Vote3(1)    => IIC3_scl_t,
            Vote3(2)    => IIC3_sda_o,
            Vote3(3)    => IIC3_sda_t,
            Voted(0)    => iic_scl_o_voted,
            Voted(1)    => iic_scl_t_voted,
            Voted(2)    => iic_sda_o_voted,
            Voted(3)    => iic_sda_t_voted);

        compare_vote_i : entity tmr_voter_v1_0_5.comparator
          generic map (
            C_WIDTH           => 4,
            C_INPUT_REGISTER1 => C_INPUT_REGISTER,
            C_INPUT_REGISTER2 => C_INPUT_REGISTER)
          port map (
            Clk         => Clk,
            Rst1        => Rst,
            Rst2        => Rst,
            Enable1     => (others => '1'),
            Enable2     => (others => '1'),
            Compare1(0) => iic_scl_o,
            Compare1(1) => iic_scl_t,
            Compare1(2) => iic_sda_o,
            Compare1(3) => iic_sda_t,
            Compare2(0) => iic_scl_o_voted,
            Compare2(1) => iic_scl_t_voted,
            Compare2(2) => iic_sda_o_voted,
            Compare2(3) => iic_sda_t_voted,
            Force       => Force,
            ForceEna    => VoterErrorForceEna,
            MisCompare  => VoterErrorMisCompare,
            MisMatch    => VoterError);

       end generate iic_voter_check_g;

    end generate tmr_g;

  end generate iic_g;

  -- Trace miscompare
  test_comparator_g: if (C_TEST_COMPARATOR /= 0) generate
    signal test_comparator_data : std_logic_vector(C_COMPARE_WIDTH(C_INTERFACE)-1 downto 0);
  begin

    test_comparator_data <= MisCompare12 or MisCompare13 or MisCompare23 or VoterErrorMisCompare;

    tmr_test_i : entity tmr_voter_v1_0_5.tmr_test
      generic map (
        C_TEST_LAST_INTERFACE  => C_TEST_LAST_INTERFACE,
        C_TEST_WIDTH           => C_COMPARE_WIDTH(C_INTERFACE),
        C_TEST_AXIS_DATA_WIDTH => C_TEST_AXIS_DATA_WIDTH)
      port map (
        Clk                    => Clk,
        Rst                    => Rst,
        Test_Comparator_Trig   => Test_Comparator(0),
        Test_Comparator_Clear  => Test_Comparator(1),
        Test_Comparator_Data   => test_comparator_data,
        Force_Comparator_Data  => Force,
        S_AXIS_TLAST           => S_AXIS_TLAST_Test,
        S_AXIS_TDATA           => S_AXIS_TDATA_Test,
        S_AXIS_TVALID          => S_AXIS_TVALID_Test,
        S_AXIS_TREADY          => S_AXIS_TREADY_Test,
        M_AXIS_TLAST           => M_AXIS_TLAST_Test,
        M_AXIS_TDATA           => M_AXIS_TDATA_Test,
        M_AXIS_TVALID          => M_AXIS_TVALID_Test,
        M_AXIS_TREADY          => M_AXIS_TREADY_Test);

  end generate test_comparator_g;

  test_comparator_inject_g: if (C_TEST_COMPARATOR > 1) generate
  begin
    ForceEna12         <= Test_Comparator(2);
    ForceEna13         <= Test_Comparator(3);
    ForceEna23         <= Test_Comparator(4);
    VoterErrorForceEna <= Test_Comparator(5);
  end generate test_comparator_inject_g;

  no_test_comparator_inject_g: if (C_TEST_COMPARATOR <= 1) generate
  begin
    ForceEna12         <= '0';
    ForceEna13         <= '0';
    ForceEna23         <= '0';
    VoterErrorForceEna <= '0';
  end generate no_test_comparator_inject_g;

  no_test_comparator_g: if (C_TEST_COMPARATOR = 0) generate
  begin
    S_AXIS_TREADY_Test <= '0';
    M_AXIS_TLAST_Test  <= '0';
    M_AXIS_TDATA_Test  <= (others => '0');
    M_AXIS_TVALID_Test <= '0';
    Force              <= (others => '0');
  end generate no_test_comparator_g;

end architecture imp;


-------------------------------------------------------------------------------
-- tmr_voter.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016-2017,2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        tmr_voter.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              tmr_voter
--                 voter
--                 lmb_voter
--                 s_lmb_voter
--                 bram_voter
--                 m_bram_voter
--                 axi_voter
--                 s_axi_voter
--                 m_axis_voter
--                 s_axis_voter
--                 trace_voter
--                 interrupt_voter
--                 tmr_compatator
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2015-09-01    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library tmr_voter_v1_0_5;
use tmr_voter_v1_0_5.all;

entity tmr_voter is
  generic (
    C_INTERFACE             : integer := 0;
    C_TMR                   : integer := 0;
    C_USE_TMR_DISABLE       : integer := 0;
    -- Include Comparator
    C_COMPARATOR            : integer := 0;
    C_INPUT_REGISTER        : integer := 0;
    C_VOTER_CHECK           : integer := 0;
    C_INCLUDE_MASK          : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFFF";
    C_TEMPORAL_DEPTH1       : integer := 0;
    C_TEMPORAL_DEPTH2       : integer := 0;
    -- Comparator test
    C_TEST_COMPARATOR      : integer := 0;
    C_TEST_LAST_INTERFACE  : integer := 0;
    C_TEST_AXIS_DATA_WIDTH : integer := 32;
    -- Discrete
    C_DISCRETE_WIDTH        : integer := 1;
    -- LMB and BRAM
    C_LMB_AWIDTH            : integer := 32;
    C_LMB_DWIDTH            : integer := 32;
    C_LMB_PROTOCOL          : integer := 0;
    -- BRAM
    C_ECC                   : integer := 0;
    -- AXI
    C_AXI_ID_WIDTH          : integer := 1;
    C_AXI_DATA_WIDTH        : integer := 32;
    C_AXI_ADDR_WIDTH        : integer := 32;
    C_AXI_AWUSER_WIDTH      : integer := 1;
    C_AXI_ARUSER_WIDTH      : integer := 1;
    C_AXI_WUSER_WIDTH       : integer := 1;
    C_AXI_RUSER_WIDTH       : integer := 1;
    C_AXI_BUSER_WIDTH       : integer := 1;
    -- AXIS
    C_AXIS_DATA_WIDTH       : integer := 32;
    C_AXIS_ID_WIDTH         : integer := 1;
    C_AXIS_DEST_WIDTH       : integer := 1;
    C_AXIS_USER_WIDTH       : integer := 1;
    -- Trace
    C_ADDR_SIZE             : integer range 32 to 64 := 32;
    C_DATA_SIZE             : integer range 32 to 32 := 32;
    -- Interrupt
    C_LOW_LATENCY           : integer := 0;
    -- GPIO
    C_GPO_SIZE              : integer := 32;
    C_GPI_SIZE              : integer := 32);
  port (
    TMR_Disable             : in std_logic;

    -- Clock and reset
    Clk                     : in  std_logic;
    Rst                     : in  std_logic;

    -- Comparator test
    Test_Comparator         : in  std_logic_vector(1 + Boolean'Pos(C_TEST_COMPARATOR > 1) * 4 downto 0);
    S_AXIS_TLAST_Test       : in  std_logic;
    S_AXIS_TDATA_Test       : in  std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID_Test      : in  std_logic;
    S_AXIS_TREADY_Test      : out std_logic;
    M_AXIS_TLAST_Test       : out std_logic;
    M_AXIS_TDATA_Test       : out std_logic_vector(C_TEST_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID_Test      : out std_logic;
    M_AXIS_TREADY_Test      : in  std_logic;

    -- Discrete
    Discrete1               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete2               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete3               : in  std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);
    Discrete                : out std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);

    -- LMB Voter
    -- LMB #1
    LMB1_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB1_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB1_AddrStrobe         : in  std_logic;
    LMB1_ReadStrobe         : in  std_logic;
    LMB1_WriteStrobe        : in  std_logic;
    LMB1_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl1_DBus                : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl1_Ready               : out std_logic;
    Sl1_Wait                : out std_logic;
    Sl1_UE                  : out std_logic;
    Sl1_CE                  : out std_logic;
    -- LMB #2
    LMB2_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB2_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB2_AddrStrobe         : in  std_logic;
    LMB2_ReadStrobe         : in  std_logic;
    LMB2_WriteStrobe        : in  std_logic;
    LMB2_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl2_DBus                : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl2_Ready               : out std_logic;
    Sl2_Wait                : out std_logic;
    Sl2_UE                  : out std_logic;
    Sl2_CE                  : out std_logic;
    -- LMB #3
    LMB3_ABus               : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB3_WriteDBus          : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB3_AddrStrobe         : in  std_logic;
    LMB3_ReadStrobe         : in  std_logic;
    LMB3_WriteStrobe        : in  std_logic;
    LMB3_BE                 : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl3_DBus                : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl3_Ready               : out std_logic;
    Sl3_Wait                : out std_logic;
    Sl3_UE                  : out std_logic;
    Sl3_CE                  : out std_logic;
    -- LMB Voted
    LMB_ABus                : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    LMB_WriteDBus           : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    LMB_AddrStrobe          : out std_logic;
    LMB_ReadStrobe          : out std_logic;
    LMB_WriteStrobe         : out std_logic;
    LMB_BE                  : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    Sl_DBus                 : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    Sl_Ready                : in  std_logic;
    Sl_Wait                 : in  std_logic;
    Sl_UE                   : in  std_logic;
    Sl_CE                   : in  std_logic;

    -- S_LMB Voter
    -- S_LMB #1
    S_LMB1_ABus             : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB1_WriteDBus        : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB1_AddrStrobe       : out std_logic;
    S_LMB1_ReadStrobe       : out std_logic;
    S_LMB1_WriteStrobe      : out std_logic;
    S_LMB1_BE               : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl1_DBus              : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl1_Ready             : in  std_logic;
    S_Sl1_Wait              : in  std_logic;
    S_Sl1_UE                : in  std_logic;
    S_Sl1_CE                : in  std_logic;
    -- S_LMB #2
    S_LMB2_ABus             : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB2_WriteDBus        : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB2_AddrStrobe       : out std_logic;
    S_LMB2_ReadStrobe       : out std_logic;
    S_LMB2_WriteStrobe      : out std_logic;
    S_LMB2_BE               : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl2_DBus              : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl2_Ready             : in  std_logic;
    S_Sl2_Wait              : in  std_logic;
    S_Sl2_UE                : in  std_logic;
    S_Sl2_CE                : in  std_logic;
    -- S_LMB #3
    S_LMB3_ABus             : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB3_WriteDBus        : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB3_AddrStrobe       : out std_logic;
    S_LMB3_ReadStrobe       : out std_logic;
    S_LMB3_WriteStrobe      : out std_logic;
    S_LMB3_BE               : out std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl3_DBus              : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl3_Ready             : in  std_logic;
    S_Sl3_Wait              : in  std_logic;
    S_Sl3_UE                : in  std_logic;
    S_Sl3_CE                : in  std_logic;
    -- S_LMB Voted
    S_LMB_ABus              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_LMB_WriteDBus         : in  std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_LMB_AddrStrobe        : in  std_logic;
    S_LMB_ReadStrobe        : in  std_logic;
    S_LMB_WriteStrobe       : in  std_logic;
    S_LMB_BE                : in  std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
    S_Sl_DBus               : out std_logic_vector(0 to C_LMB_DWIDTH-1);
    S_Sl_Ready              : out std_logic;
    S_Sl_Wait               : out std_logic;
    S_Sl_UE                 : out std_logic;
    S_Sl_CE                 : out std_logic;

    -- BRAM Voter
    -- BRAM #1
    BRAM1_Rst               : in  std_logic;
    BRAM1_Clk               : in  std_logic;
    BRAM1_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM1_EN                : in  std_logic;
    BRAM1_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM1_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM1_Din               : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #2
    BRAM2_Rst               : in  std_logic;
    BRAM2_Clk               : in  std_logic;
    BRAM2_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM2_EN                : in  std_logic;
    BRAM2_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM2_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM2_Din               : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM #3
    BRAM3_Rst               : in  std_logic;
    BRAM3_Clk               : in  std_logic;
    BRAM3_Addr              : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM3_EN                : in  std_logic;
    BRAM3_WE                : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM3_Dout              : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM3_Din               : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- BRAM Voted
    BRAM_Rst                : out std_logic;
    BRAM_Clk                : out std_logic;
    BRAM_Addr               : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    BRAM_EN                 : out std_logic;
    BRAM_WE                 : out std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    BRAM_Dout               : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    BRAM_Din                : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

    -- M_BRAM Voter
    -- M_BRAM1
    M_BRAM1_Rst             : out std_logic;
    M_BRAM1_Clk             : out std_logic;
    M_BRAM1_Addr            : out std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM1_EN              : out std_logic;
    M_BRAM1_WE              : out std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM1_Dout            : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM1_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM2, none but Din used
    M_BRAM2_Rst             : in  std_logic;
    M_BRAM2_Clk             : in  std_logic;
    M_BRAM2_Addr            : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM2_EN              : in  std_logic;
    M_BRAM2_WE              : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM2_Dout            : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM2_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM3, none but Din used
    M_BRAM3_Rst             : in  std_logic;
    M_BRAM3_Clk             : in  std_logic;
    M_BRAM3_Addr            : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    M_BRAM3_EN              : in  std_logic;
    M_BRAM3_WE              : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    M_BRAM3_Dout            : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    M_BRAM3_Din             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    -- M_BRAM Voted, BRAM slave interface
    S_BRAM_Rst              : in  std_logic;
    S_BRAM_Clk              : in  std_logic;
    S_BRAM_Addr             : in  std_logic_vector(0 to C_LMB_AWIDTH-1);
    S_BRAM_EN               : in  std_logic;
    S_BRAM_WE               : in  std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
    S_BRAM_Dout             : in  std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
    S_BRAM_Din              : out std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

    -- AXI Voter
    -- AXI #1
    S_AXI1_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI1_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI1_AWLOCK           : in  std_logic;
    S_AXI1_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI1_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI1_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI1_AWVALID          : in  std_logic;
    S_AXI1_AWREADY          : out std_logic;
    S_AXI1_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI1_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI1_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI1_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI1_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI1_WLAST            : in  std_logic;
    S_AXI1_WVALID           : in  std_logic;
    S_AXI1_WREADY           : out std_logic;
    S_AXI1_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI1_BID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_BRESP            : out std_logic_vector(1 downto 0);
    S_AXI1_BVALID           : out std_logic;
    S_AXI1_BREADY           : in  std_logic;
    S_AXI1_BUSER            : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI1_WACK             : in  std_logic;
    S_AXI1_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI1_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI1_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI1_ARLOCK           : in  std_logic;
    S_AXI1_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI1_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI1_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI1_ARVALID          : in  std_logic;
    S_AXI1_ARREADY          : out std_logic;
    S_AXI1_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI1_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI1_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI1_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI1_RID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI1_RDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_RRESP            : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI1_RLAST            : out std_logic;
    S_AXI1_RVALID           : out std_logic;
    S_AXI1_RREADY           : in  std_logic;
    S_AXI1_RUSER            : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI1_RACK             : in  std_logic;
    S_AXI1_ACVALID          : out std_logic;
    S_AXI1_ACADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI1_ACSNOOP          : out std_logic_vector(3 downto 0);
    S_AXI1_ACPROT           : out std_logic_vector(2 downto 0);
    S_AXI1_ACREADY          : in  std_logic;
    S_AXI1_CRVALID          : in  std_logic;
    S_AXI1_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI1_CRREADY          : out std_logic;
    S_AXI1_CDVALID          : in  std_logic;
    S_AXI1_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI1_CDLAST           : in  std_logic;
    S_AXI1_CDREADY          : out std_logic;
    -- AXI #2
    S_AXI2_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI2_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI2_AWLOCK           : in  std_logic;
    S_AXI2_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI2_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI2_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI2_AWVALID          : in  std_logic;
    S_AXI2_AWREADY          : out std_logic;
    S_AXI2_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI2_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI2_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI2_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI2_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI2_WLAST            : in  std_logic;
    S_AXI2_WVALID           : in  std_logic;
    S_AXI2_WREADY           : out std_logic;
    S_AXI2_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI2_BID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_BRESP            : out std_logic_vector(1 downto 0);
    S_AXI2_BVALID           : out std_logic;
    S_AXI2_BREADY           : in  std_logic;
    S_AXI2_BUSER            : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI2_WACK             : in  std_logic;
    S_AXI2_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI2_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI2_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI2_ARLOCK           : in  std_logic;
    S_AXI2_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI2_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI2_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI2_ARVALID          : in  std_logic;
    S_AXI2_ARREADY          : out std_logic;
    S_AXI2_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI2_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI2_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI2_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI2_RID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI2_RDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_RRESP            : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI2_RLAST            : out std_logic;
    S_AXI2_RVALID           : out std_logic;
    S_AXI2_RREADY           : in  std_logic;
    S_AXI2_RUSER            : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI2_RACK             : in  std_logic;
    S_AXI2_ACVALID          : out std_logic;
    S_AXI2_ACADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI2_ACSNOOP          : out std_logic_vector(3 downto 0);
    S_AXI2_ACPROT           : out std_logic_vector(2 downto 0);
    S_AXI2_ACREADY          : in  std_logic;
    S_AXI2_CRVALID          : in  std_logic;
    S_AXI2_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI2_CRREADY          : out std_logic;
    S_AXI2_CDVALID          : in  std_logic;
    S_AXI2_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI2_CDLAST           : in  std_logic;
    S_AXI2_CDREADY          : out std_logic;
    -- AXI #3
    S_AXI3_AWID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_AWADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_AWLEN            : in  std_logic_vector(7 downto 0);
    S_AXI3_AWSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI3_AWBURST          : in  std_logic_vector(1 downto 0);
    S_AXI3_AWLOCK           : in  std_logic;
    S_AXI3_AWCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI3_AWPROT           : in  std_logic_vector(2 downto 0);
    S_AXI3_AWQOS            : in  std_logic_vector(3 downto 0);
    S_AXI3_AWVALID          : in  std_logic;
    S_AXI3_AWREADY          : out std_logic;
    S_AXI3_AWDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI3_AWSNOOP          : in  std_logic_vector(2 downto 0);
    S_AXI3_AWBAR            : in  std_logic_vector(1 downto 0);
    S_AXI3_AWUSER           : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI3_WDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_WSTRB            : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI3_WLAST            : in  std_logic;
    S_AXI3_WVALID           : in  std_logic;
    S_AXI3_WREADY           : out std_logic;
    S_AXI3_WUSER            : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI3_BID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_BRESP            : out std_logic_vector(1 downto 0);
    S_AXI3_BVALID           : out std_logic;
    S_AXI3_BREADY           : in  std_logic;
    S_AXI3_BUSER            : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI3_WACK             : in  std_logic;
    S_AXI3_ARID             : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_ARADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_ARLEN            : in  std_logic_vector(7 downto 0);
    S_AXI3_ARSIZE           : in  std_logic_vector(2 downto 0);
    S_AXI3_ARBURST          : in  std_logic_vector(1 downto 0);
    S_AXI3_ARLOCK           : in  std_logic;
    S_AXI3_ARCACHE          : in  std_logic_vector(3 downto 0);
    S_AXI3_ARPROT           : in  std_logic_vector(2 downto 0);
    S_AXI3_ARQOS            : in  std_logic_vector(3 downto 0);
    S_AXI3_ARVALID          : in  std_logic;
    S_AXI3_ARREADY          : out std_logic;
    S_AXI3_ARUSER           : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI3_ARDOMAIN         : in  std_logic_vector(1 downto 0);
    S_AXI3_ARSNOOP          : in  std_logic_vector(3 downto 0);
    S_AXI3_ARBAR            : in  std_logic_vector(1 downto 0);
    S_AXI3_RID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI3_RDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_RRESP            : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI3_RLAST            : out std_logic;
    S_AXI3_RVALID           : out std_logic;
    S_AXI3_RREADY           : in  std_logic;
    S_AXI3_RUSER            : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI3_RACK             : in  std_logic;
    S_AXI3_ACVALID          : out std_logic;
    S_AXI3_ACADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI3_ACSNOOP          : out std_logic_vector(3 downto 0);
    S_AXI3_ACPROT           : out std_logic_vector(2 downto 0);
    S_AXI3_ACREADY          : in  std_logic;
    S_AXI3_CRVALID          : in  std_logic;
    S_AXI3_CRRESP           : in  std_logic_vector(4 downto 0);
    S_AXI3_CRREADY          : out std_logic;
    S_AXI3_CDVALID          : in  std_logic;
    S_AXI3_CDDATA           : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI3_CDLAST           : in  std_logic;
    S_AXI3_CDREADY          : out std_logic;
    -- AXI Voted
    M_AXI_AWID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR            : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN             : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE            : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST           : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK            : out std_logic;
    M_AXI_AWCACHE           : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT            : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS             : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID           : out std_logic;
    M_AXI_AWREADY           : in  std_logic;
    M_AXI_AWUSER            : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI_AWDOMAIN          : out std_logic_vector(1 downto 0);
    M_AXI_AWSNOOP           : out std_logic_vector(2 downto 0);
    M_AXI_AWBAR             : out std_logic_vector(1 downto 0);
    M_AXI_WDATA             : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB             : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST             : out std_logic;
    M_AXI_WVALID            : out std_logic;
    M_AXI_WREADY            : in  std_logic;
    M_AXI_WUSER             : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI_BID               : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_BRESP             : in  std_logic_vector(1 downto 0);
    M_AXI_BVALID            : in  std_logic;
    M_AXI_BREADY            : out std_logic;
    M_AXI_BUSER             : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI_WACK              : out std_logic;
    M_AXI_ARID              : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR            : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN             : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE            : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST           : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK            : out std_logic;
    M_AXI_ARCACHE           : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT            : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS             : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID           : out std_logic;
    M_AXI_ARREADY           : in  std_logic;
    M_AXI_ARUSER            : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI_ARDOMAIN          : out std_logic_vector(1 downto 0);
    M_AXI_ARSNOOP           : out std_logic_vector(3 downto 0);
    M_AXI_ARBAR             : out std_logic_vector(1 downto 0);
    M_AXI_RID               : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI_RDATA             : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP             : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI_RLAST             : in  std_logic;
    M_AXI_RVALID            : in  std_logic;
    M_AXI_RREADY            : out std_logic;
    M_AXI_RUSER             : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI_RACK              : out std_logic;
    M_AXI_ACVALID           : in  std_logic;
    M_AXI_ACADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ACSNOOP           : in  std_logic_vector(3 downto 0);
    M_AXI_ACPROT            : in  std_logic_vector(2 downto 0);
    M_AXI_ACREADY           : out std_logic;
    M_AXI_CRVALID           : out std_logic;
    M_AXI_CRRESP            : out std_logic_vector(4 downto 0);
    M_AXI_CRREADY           : in  std_logic;
    M_AXI_CDVALID           : out std_logic;
    M_AXI_CDDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_CDLAST            : out std_logic;
    M_AXI_CDREADY           : in  std_logic;

    -- AXI Slave Voter
    -- AXI #1
    M_AXI1_AWID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_AWADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI1_AWLEN            : out std_logic_vector(7 downto 0);
    M_AXI1_AWSIZE           : out std_logic_vector(2 downto 0);
    M_AXI1_AWBURST          : out std_logic_vector(1 downto 0);
    M_AXI1_AWLOCK           : out std_logic;
    M_AXI1_AWCACHE          : out std_logic_vector(3 downto 0);
    M_AXI1_AWPROT           : out std_logic_vector(2 downto 0);
    M_AXI1_AWQOS            : out std_logic_vector(3 downto 0);
    M_AXI1_AWVALID          : out std_logic;
    M_AXI1_AWREADY          : in  std_logic;
    M_AXI1_AWUSER           : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI1_AWDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI1_AWSNOOP          : out std_logic_vector(2 downto 0);
    M_AXI1_AWBAR            : out std_logic_vector(1 downto 0);
    M_AXI1_WDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI1_WSTRB            : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI1_WLAST            : out std_logic;
    M_AXI1_WVALID           : out std_logic;
    M_AXI1_WREADY           : in  std_logic;
    M_AXI1_WUSER            : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI1_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_BRESP            : in  std_logic_vector(1 downto 0);
    M_AXI1_BVALID           : in  std_logic;
    M_AXI1_BREADY           : out std_logic;
    M_AXI1_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI1_WACK             : out std_logic;
    M_AXI1_ARID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_ARADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI1_ARLEN            : out std_logic_vector(7 downto 0);
    M_AXI1_ARSIZE           : out std_logic_vector(2 downto 0);
    M_AXI1_ARBURST          : out std_logic_vector(1 downto 0);
    M_AXI1_ARLOCK           : out std_logic;
    M_AXI1_ARCACHE          : out std_logic_vector(3 downto 0);
    M_AXI1_ARPROT           : out std_logic_vector(2 downto 0);
    M_AXI1_ARQOS            : out std_logic_vector(3 downto 0);
    M_AXI1_ARVALID          : out std_logic;
    M_AXI1_ARREADY          : in  std_logic;
    M_AXI1_ARUSER           : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI1_ARDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI1_ARSNOOP          : out std_logic_vector(3 downto 0);
    M_AXI1_ARBAR            : out std_logic_vector(1 downto 0);
    M_AXI1_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI1_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI1_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI1_RLAST            : in  std_logic;
    M_AXI1_RVALID           : in  std_logic;
    M_AXI1_RREADY           : out std_logic;
    M_AXI1_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI1_RACK             : out std_logic;
    M_AXI1_ACVALID          : in  std_logic;
    M_AXI1_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI1_ACSNOOP          : in  std_logic_vector(3 downto 0);
    M_AXI1_ACPROT           : in  std_logic_vector(2 downto 0);
    M_AXI1_ACREADY          : out std_logic;
    M_AXI1_CRVALID          : out std_logic;
    M_AXI1_CRRESP           : out std_logic_vector(4 downto 0);
    M_AXI1_CRREADY          : in  std_logic;
    M_AXI1_CDVALID          : out std_logic;
    M_AXI1_CDDATA           : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI1_CDLAST           : out std_logic;
    M_AXI1_CDREADY          : in  std_logic;
    -- AXI #2
    M_AXI2_AWID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_AWADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI2_AWLEN            : out std_logic_vector(7 downto 0);
    M_AXI2_AWSIZE           : out std_logic_vector(2 downto 0);
    M_AXI2_AWBURST          : out std_logic_vector(1 downto 0);
    M_AXI2_AWLOCK           : out std_logic;
    M_AXI2_AWCACHE          : out std_logic_vector(3 downto 0);
    M_AXI2_AWPROT           : out std_logic_vector(2 downto 0);
    M_AXI2_AWQOS            : out std_logic_vector(3 downto 0);
    M_AXI2_AWVALID          : out std_logic;
    M_AXI2_AWREADY          : in  std_logic;
    M_AXI2_AWUSER           : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI2_AWDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI2_AWSNOOP          : out std_logic_vector(2 downto 0);
    M_AXI2_AWBAR            : out std_logic_vector(1 downto 0);
    M_AXI2_WDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI2_WSTRB            : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI2_WLAST            : out std_logic;
    M_AXI2_WVALID           : out std_logic;
    M_AXI2_WREADY           : in  std_logic;
    M_AXI2_WUSER            : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI2_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_BRESP            : in  std_logic_vector(1 downto 0);
    M_AXI2_BVALID           : in  std_logic;
    M_AXI2_BREADY           : out std_logic;
    M_AXI2_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI2_WACK             : out std_logic;
    M_AXI2_ARID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_ARADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI2_ARLEN            : out std_logic_vector(7 downto 0);
    M_AXI2_ARSIZE           : out std_logic_vector(2 downto 0);
    M_AXI2_ARBURST          : out std_logic_vector(1 downto 0);
    M_AXI2_ARLOCK           : out std_logic;
    M_AXI2_ARCACHE          : out std_logic_vector(3 downto 0);
    M_AXI2_ARPROT           : out std_logic_vector(2 downto 0);
    M_AXI2_ARQOS            : out std_logic_vector(3 downto 0);
    M_AXI2_ARVALID          : out std_logic;
    M_AXI2_ARREADY          : in  std_logic;
    M_AXI2_ARUSER           : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI2_ARDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI2_ARSNOOP          : out std_logic_vector(3 downto 0);
    M_AXI2_ARBAR            : out std_logic_vector(1 downto 0);
    M_AXI2_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI2_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI2_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI2_RLAST            : in  std_logic;
    M_AXI2_RVALID           : in  std_logic;
    M_AXI2_RREADY           : out std_logic;
    M_AXI2_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI2_RACK             : out std_logic;
    M_AXI2_ACVALID          : in  std_logic;
    M_AXI2_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI2_ACSNOOP          : in  std_logic_vector(3 downto 0);
    M_AXI2_ACPROT           : in  std_logic_vector(2 downto 0);
    M_AXI2_ACREADY          : out std_logic;
    M_AXI2_CRVALID          : out std_logic;
    M_AXI2_CRRESP           : out std_logic_vector(4 downto 0);
    M_AXI2_CRREADY          : in  std_logic;
    M_AXI2_CDVALID          : out std_logic;
    M_AXI2_CDDATA           : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI2_CDLAST           : out std_logic;
    M_AXI2_CDREADY          : in  std_logic;
    -- AXI #3
    M_AXI3_AWID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_AWADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI3_AWLEN            : out std_logic_vector(7 downto 0);
    M_AXI3_AWSIZE           : out std_logic_vector(2 downto 0);
    M_AXI3_AWBURST          : out std_logic_vector(1 downto 0);
    M_AXI3_AWLOCK           : out std_logic;
    M_AXI3_AWCACHE          : out std_logic_vector(3 downto 0);
    M_AXI3_AWPROT           : out std_logic_vector(2 downto 0);
    M_AXI3_AWQOS            : out std_logic_vector(3 downto 0);
    M_AXI3_AWVALID          : out std_logic;
    M_AXI3_AWREADY          : in  std_logic;
    M_AXI3_AWDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI3_AWSNOOP          : out std_logic_vector(2 downto 0);
    M_AXI3_AWBAR            : out std_logic_vector(1 downto 0);
    M_AXI3_AWUSER           : out std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI3_WDATA            : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI3_WSTRB            : out std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI3_WLAST            : out std_logic;
    M_AXI3_WVALID           : out std_logic;
    M_AXI3_WREADY           : in  std_logic;
    M_AXI3_WUSER            : out std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI3_BID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_BRESP            : in  std_logic_vector(1 downto 0);
    M_AXI3_BVALID           : in  std_logic;
    M_AXI3_BREADY           : out std_logic;
    M_AXI3_BUSER            : in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI3_WACK             : out std_logic;
    M_AXI3_ARID             : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_ARADDR           : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI3_ARLEN            : out std_logic_vector(7 downto 0);
    M_AXI3_ARSIZE           : out std_logic_vector(2 downto 0);
    M_AXI3_ARBURST          : out std_logic_vector(1 downto 0);
    M_AXI3_ARLOCK           : out std_logic;
    M_AXI3_ARCACHE          : out std_logic_vector(3 downto 0);
    M_AXI3_ARPROT           : out std_logic_vector(2 downto 0);
    M_AXI3_ARQOS            : out std_logic_vector(3 downto 0);
    M_AXI3_ARVALID          : out std_logic;
    M_AXI3_ARREADY          : in  std_logic;
    M_AXI3_ARUSER           : out std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI3_ARDOMAIN         : out std_logic_vector(1 downto 0);
    M_AXI3_ARSNOOP          : out std_logic_vector(3 downto 0);
    M_AXI3_ARBAR            : out std_logic_vector(1 downto 0);
    M_AXI3_RID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    M_AXI3_RDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI3_RRESP            : in  std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    M_AXI3_RLAST            : in  std_logic;
    M_AXI3_RVALID           : in  std_logic;
    M_AXI3_RREADY           : out std_logic;
    M_AXI3_RUSER            : in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI3_RACK             : out std_logic;
    M_AXI3_ACVALID          : in  std_logic;
    M_AXI3_ACADDR           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI3_ACSNOOP          : in  std_logic_vector(3 downto 0);
    M_AXI3_ACPROT           : in  std_logic_vector(2 downto 0);
    M_AXI3_ACREADY          : out std_logic;
    M_AXI3_CRVALID          : out std_logic;
    M_AXI3_CRRESP           : out std_logic_vector(4 downto 0);
    M_AXI3_CRREADY          : in  std_logic;
    M_AXI3_CDVALID          : out std_logic;
    M_AXI3_CDDATA           : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    M_AXI3_CDLAST           : out std_logic;
    M_AXI3_CDREADY          : in  std_logic;
    -- AXI Voted
    S_AXI_AWID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_AWADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWLEN             : in  std_logic_vector(7 downto 0);
    S_AXI_AWSIZE            : in  std_logic_vector(2 downto 0);
    S_AXI_AWBURST           : in  std_logic_vector(1 downto 0);
    S_AXI_AWLOCK            : in  std_logic;
    S_AXI_AWCACHE           : in  std_logic_vector(3 downto 0);
    S_AXI_AWPROT            : in  std_logic_vector(2 downto 0);
    S_AXI_AWQOS             : in  std_logic_vector(3 downto 0);
    S_AXI_AWVALID           : in  std_logic;
    S_AXI_AWREADY           : out std_logic;
    S_AXI_AWUSER            : in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
    S_AXI_AWDOMAIN          : in  std_logic_vector(1 downto 0);
    S_AXI_AWSNOOP           : in  std_logic_vector(2 downto 0);
    S_AXI_AWBAR             : in  std_logic_vector(1 downto 0);
    S_AXI_WDATA             : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB             : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WLAST             : in  std_logic;
    S_AXI_WVALID            : in  std_logic;
    S_AXI_WREADY            : out std_logic;
    S_AXI_WUSER             : in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
    S_AXI_BID               : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_BRESP             : out std_logic_vector(1 downto 0);
    S_AXI_BVALID            : out std_logic;
    S_AXI_BREADY            : in  std_logic;
    S_AXI_BUSER             : out std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
    S_AXI_WACK              : in  std_logic;
    S_AXI_ARID              : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_ARADDR            : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARLEN             : in  std_logic_vector(7 downto 0);
    S_AXI_ARSIZE            : in  std_logic_vector(2 downto 0);
    S_AXI_ARBURST           : in  std_logic_vector(1 downto 0);
    S_AXI_ARLOCK            : in  std_logic;
    S_AXI_ARCACHE           : in  std_logic_vector(3 downto 0);
    S_AXI_ARPROT            : in  std_logic_vector(2 downto 0);
    S_AXI_ARQOS             : in  std_logic_vector(3 downto 0);
    S_AXI_ARVALID           : in  std_logic;
    S_AXI_ARREADY           : out std_logic;
    S_AXI_ARUSER            : in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
    S_AXI_ARDOMAIN          : in  std_logic_vector(1 downto 0);
    S_AXI_ARSNOOP           : in  std_logic_vector(3 downto 0);
    S_AXI_ARBAR             : in  std_logic_vector(1 downto 0);
    S_AXI_RID               : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_RDATA             : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP             : out std_logic_vector(2 * Boolean'Pos(C_INTERFACE = 6) +
                                                   2 * Boolean'Pos(C_INTERFACE = 17) + 1 downto 0);
    S_AXI_RLAST             : out std_logic;
    S_AXI_RVALID            : out std_logic;
    S_AXI_RREADY            : in  std_logic;
    S_AXI_RUSER             : out std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
    S_AXI_RACK              : in  std_logic;
    S_AXI_ACVALID           : out std_logic;
    S_AXI_ACADDR            : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ACSNOOP           : out std_logic_vector(3 downto 0);
    S_AXI_ACPROT            : out std_logic_vector(2 downto 0);
    S_AXI_ACREADY           : in  std_logic;
    S_AXI_CRVALID           : in  std_logic;
    S_AXI_CRRESP            : in  std_logic_vector(4 downto 0);
    S_AXI_CRREADY           : out std_logic;
    S_AXI_CDVALID           : in  std_logic;
    S_AXI_CDDATA            : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_CDLAST            : in  std_logic;
    S_AXI_CDREADY           : out std_logic;

    -- Master AXI Stream Voter
    -- AXIS #1
    S_AXIS1_TLAST           : in  std_logic;
    S_AXIS1_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS1_TVALID          : in  std_logic;
    S_AXIS1_TREADY          : out std_logic;
    S_AXIS1_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS1_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS1_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS1_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    S_AXIS2_TLAST           : in  std_logic;
    S_AXIS2_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS2_TVALID          : in  std_logic;
    S_AXIS2_TREADY          : out std_logic;
    S_AXIS2_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS2_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS2_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS2_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    S_AXIS3_TLAST           : in  std_logic;
    S_AXIS3_TDATA           : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS3_TVALID          : in  std_logic;
    S_AXIS3_TREADY          : out std_logic;
    S_AXIS3_TSTRB           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TKEEP           : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS3_TID             : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS3_TDEST           : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS3_TUSER           : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    M_AXIS_TLAST            : out std_logic;
    M_AXIS_TDATA            : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TVALID           : out std_logic;
    M_AXIS_TREADY           : in  std_logic;
    M_AXIS_TSTRB            : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TKEEP            : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS_TID              : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TDEST            : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS_TUSER            : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);

    -- Slave AXI Stream Voter
    -- AXIS #1
    M_AXIS1_TLAST           : out std_logic;
    M_AXIS1_TDATA           : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS1_TVALID          : out std_logic;
    M_AXIS1_TREADY          : in  std_logic;
    M_AXIS1_TSTRB           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TKEEP           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS1_TID             : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS1_TDEST           : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS1_TUSER           : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #2
    M_AXIS2_TLAST           : out std_logic;
    M_AXIS2_TDATA           : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS2_TVALID          : out std_logic;
    M_AXIS2_TREADY          : in  std_logic;
    M_AXIS2_TSTRB           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TKEEP           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS2_TID             : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS2_TDEST           : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS2_TUSER           : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS #3
    M_AXIS3_TLAST           : out std_logic;
    M_AXIS3_TDATA           : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS3_TVALID          : out std_logic;
    M_AXIS3_TREADY          : in  std_logic;
    M_AXIS3_TSTRB           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TKEEP           : out std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    M_AXIS3_TID             : out std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS3_TDEST           : out std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    M_AXIS3_TUSER           : out std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
    -- AXIS Voted
    S_AXIS_TLAST            : in  std_logic;
    S_AXIS_TDATA            : in  std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
    S_AXIS_TVALID           : in  std_logic;
    S_AXIS_TREADY           : out std_logic;
    S_AXIS_TSTRB            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TKEEP            : in  std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
    S_AXIS_TID              : in  std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
    S_AXIS_TDEST            : in  std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
    S_AXIS_TUSER            : in  std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);

    -- Trace Voter
    -- Trace #1
    Trace1_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Valid_Instr      : in  std_logic;
    Trace1_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Reg_Write        : in  std_logic;
    Trace1_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace1_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace1_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace1_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Exception_Taken  : in  std_logic;
    Trace1_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace1_Jump_Taken       : in  std_logic;
    Trace1_Delay_Slot       : in  std_logic;
    Trace1_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace1_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace1_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace1_Data_Access      : in  std_logic;
    Trace1_Data_Read        : in  std_logic;
    Trace1_Data_Write       : in  std_logic;
    Trace1_DCache_Req       : in  std_logic;
    Trace1_DCache_Hit       : in  std_logic;
    Trace1_DCache_Rdy       : in  std_logic;
    Trace1_DCache_Read      : in  std_logic;
    Trace1_ICache_Req       : in  std_logic;
    Trace1_ICache_Hit       : in  std_logic;
    Trace1_ICache_Rdy       : in  std_logic;
    Trace1_OF_PipeRun       : in  std_logic;
    Trace1_EX_PipeRun       : in  std_logic;
    Trace1_MEM_PipeRun      : in  std_logic;
    Trace1_MB_Halted        : in  std_logic;
    Trace1_Jump_Hit         : in  std_logic;
    -- Trace #2
    Trace2_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Valid_Instr      : in  std_logic;
    Trace2_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Reg_Write        : in  std_logic;
    Trace2_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace2_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace2_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace2_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Exception_Taken  : in  std_logic;
    Trace2_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace2_Jump_Taken       : in  std_logic;
    Trace2_Delay_Slot       : in  std_logic;
    Trace2_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace2_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace2_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace2_Data_Access      : in  std_logic;
    Trace2_Data_Read        : in  std_logic;
    Trace2_Data_Write       : in  std_logic;
    Trace2_DCache_Req       : in  std_logic;
    Trace2_DCache_Hit       : in  std_logic;
    Trace2_DCache_Rdy       : in  std_logic;
    Trace2_DCache_Read      : in  std_logic;
    Trace2_ICache_Req       : in  std_logic;
    Trace2_ICache_Hit       : in  std_logic;
    Trace2_ICache_Rdy       : in  std_logic;
    Trace2_OF_PipeRun       : in  std_logic;
    Trace2_EX_PipeRun       : in  std_logic;
    Trace2_MEM_PipeRun      : in  std_logic;
    Trace2_MB_Halted        : in  std_logic;
    Trace2_Jump_Hit         : in  std_logic;
    -- Trace #3
    Trace3_Instruction      : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Valid_Instr      : in  std_logic;
    Trace3_PC               : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Reg_Write        : in  std_logic;
    Trace3_Reg_Addr         : in  std_logic_vector(0 to 4);
    Trace3_MSR_Reg          : in  std_logic_vector(0 to 14);
    Trace3_PID_Reg          : in  std_logic_vector(0 to 7);
    Trace3_New_Reg_Value    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Exception_Taken  : in  std_logic;
    Trace3_Exception_Kind   : in  std_logic_vector(0 to 4);
    Trace3_Jump_Taken       : in  std_logic;
    Trace3_Delay_Slot       : in  std_logic;
    Trace3_Data_Address     : in  std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace3_Data_Write_Value : in  std_logic_vector(0 to C_DATA_SIZE-1);
    Trace3_Data_Byte_Enable : in  std_logic_vector(0 to 3);
    Trace3_Data_Access      : in  std_logic;
    Trace3_Data_Read        : in  std_logic;
    Trace3_Data_Write       : in  std_logic;
    Trace3_DCache_Req       : in  std_logic;
    Trace3_DCache_Hit       : in  std_logic;
    Trace3_DCache_Rdy       : in  std_logic;
    Trace3_DCache_Read      : in  std_logic;
    Trace3_ICache_Req       : in  std_logic;
    Trace3_ICache_Hit       : in  std_logic;
    Trace3_ICache_Rdy       : in  std_logic;
    Trace3_OF_PipeRun       : in  std_logic;
    Trace3_EX_PipeRun       : in  std_logic;
    Trace3_MEM_PipeRun      : in  std_logic;
    Trace3_MB_Halted        : in  std_logic;
    Trace3_Jump_Hit         : in  std_logic;
    -- Trace Voted
    Trace_Instruction       : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Valid_Instr       : out std_logic;
    Trace_PC                : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Reg_Write         : out std_logic;
    Trace_Reg_Addr          : out std_logic_vector(0 to 4);
    Trace_MSR_Reg           : out std_logic_vector(0 to 14);
    Trace_PID_Reg           : out std_logic_vector(0 to 7);
    Trace_New_Reg_Value     : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Exception_Taken   : out std_logic;
    Trace_Exception_Kind    : out std_logic_vector(0 to 4);
    Trace_Jump_Taken        : out std_logic;
    Trace_Delay_Slot        : out std_logic;
    Trace_Data_Address      : out std_logic_vector(0 to C_ADDR_SIZE-1);
    Trace_Data_Write_Value  : out std_logic_vector(0 to C_DATA_SIZE-1);
    Trace_Data_Byte_Enable  : out std_logic_vector(0 to 3);
    Trace_Data_Access       : out std_logic;
    Trace_Data_Read         : out std_logic;
    Trace_Data_Write        : out std_logic;
    Trace_DCache_Req        : out std_logic;
    Trace_DCache_Hit        : out std_logic;
    Trace_DCache_Rdy        : out std_logic;
    Trace_DCache_Read       : out std_logic;
    Trace_ICache_Req        : out std_logic;
    Trace_ICache_Hit        : out std_logic;
    Trace_ICache_Rdy        : out std_logic;
    Trace_OF_PipeRun        : out std_logic;
    Trace_EX_PipeRun        : out std_logic;
    Trace_MEM_PipeRun       : out std_logic;
    Trace_MB_Halted         : out std_logic;
    Trace_Jump_Hit          : out std_logic;

    -- Interrupt
    -- Interrupt #1
    IRQ1                    : out std_logic;
    IRQ1_Address            : out std_logic_vector(0 to 31);
    IRQ1_Ack                : in  std_logic_vector(0 to 1);
    -- Interrupt #2
    IRQ2                    : out std_logic;
    IRQ2_Address            : out std_logic_vector(0 to 31);
    IRQ2_Ack                : in  std_logic_vector(0 to 1);
    -- Interrupt #3
    IRQ3                    : out std_logic;
    IRQ3_Address            : out std_logic_vector(0 to 31);
    IRQ3_Ack                : in  std_logic_vector(0 to 1);
    -- Interrupt voted
    IRQ                     : in  std_logic;
    IRQ_Address             : in  std_logic_vector(0 to 31);
    IRQ_Ack                 : out std_logic_vector(0 to 1);

    -- Slave Interrupt
    -- Interrupt #1
    S_IRQ1                  : in  std_logic;
    S_IRQ1_Address          : in  std_logic_vector(0 to 31);
    S_IRQ1_Ack              : out std_logic_vector(0 to 1);
    -- Interrupt #2
    S_IRQ2                  : in  std_logic;
    S_IRQ2_Address          : in  std_logic_vector(0 to 31);
    S_IRQ2_Ack              : out std_logic_vector(0 to 1);
    -- Interrupt #3
    S_IRQ3                  : in  std_logic;
    S_IRQ3_Address          : in  std_logic_vector(0 to 31);
    S_IRQ3_Ack              : out std_logic_vector(0 to 1);
    -- Interrupt voted
    M_IRQ                   : out std_logic;
    M_IRQ_Address           : out std_logic_vector(0 to 31);
    M_IRQ_Ack               : in  std_logic_vector(0 to 1);

    -- IO Bus
    -- IO Bus #1
    IO1_Addr_Strobe         : in  std_logic;
    IO1_Read_Strobe         : in  std_logic;
    IO1_Write_Strobe        : in  std_logic;
    IO1_Address             : in  std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO1_Byte_Enable         : in  std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO1_Write_Data          : in  std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO1_Read_Data           : out std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO1_Ready               : out std_logic;
    -- IO Bus #2
    IO2_Addr_Strobe         : in  std_logic;
    IO2_Read_Strobe         : in  std_logic;
    IO2_Write_Strobe        : in  std_logic;
    IO2_Address             : in  std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO2_Byte_Enable         : in  std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO2_Write_Data          : in  std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO2_Read_Data           : out std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO2_Ready               : out std_logic;
    -- IO Bus #3
    IO3_Addr_Strobe         : in  std_logic;
    IO3_Read_Strobe         : in  std_logic;
    IO3_Write_Strobe        : in  std_logic;
    IO3_Address             : in  std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO3_Byte_Enable         : in  std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO3_Write_Data          : in  std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO3_Read_Data           : out std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO3_Ready               : out std_logic;
    -- IO Bus voted
    IO_Addr_Strobe          : out std_logic;
    IO_Read_Strobe          : out std_logic;
    IO_Write_Strobe         : out std_logic;
    IO_Address              : out std_logic_vector(C_LMB_AWIDTH-1 downto 0);
    IO_Byte_Enable          : out std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
    IO_Write_Data           : out std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO_Read_Data            : in  std_logic_vector(C_LMB_DWIDTH-1 downto 0);
    IO_Ready                : in  std_logic;

    -- GPIO
    -- GPIO #1
    GPO1                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT1                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI1                    : out std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO #2
    GPO2                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT2                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI2                    : out std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO #3
    GPO3                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT3                    : in  std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI3                    : out std_logic_vector(C_GPI_SIZE-1 downto 0);
    -- GPIO voted
    GPO                     : out std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPT                     : out std_logic_vector(C_GPO_SIZE-1 downto 0);
    GPI                     : in  std_logic_vector(C_GPI_SIZE-1 downto 0);

    -- UART
    -- UART #1
    UART1_TxD               : in  std_logic;
    UART1_RxD               : out std_logic;
    UART1_RTSn              : in  std_logic;
    UART1_CTSn              : out std_logic;
    UART1_DTRn              : in  std_logic;
    UART1_DSRn              : out std_logic;
    UART1_BAUDOUTn          : in  std_logic;
    UART1_RCLK              : out std_logic;
    UART1_XIN               : out std_logic;
    UART1_XOUT              : in  std_logic;
    UART1_DCDn              : out std_logic;
    UART1_DDIS              : in  std_logic;
    UART1_OUT1n             : in  std_logic;
    UART1_OUT2n             : in  std_logic;
    UART1_TXRDYn            : in  std_logic;
    UART1_RXRDYn            : in  std_logic;
    UART1_RI                : out std_logic;
    -- UART #2
    UART2_TxD               : in  std_logic;
    UART2_RxD               : out std_logic;
    UART2_RTSn              : in  std_logic;
    UART2_CTSn              : out std_logic;
    UART2_DTRn              : in  std_logic;
    UART2_DSRn              : out std_logic;
    UART2_BAUDOUTn          : in  std_logic;
    UART2_RCLK              : out std_logic;
    UART2_XIN               : out std_logic;
    UART2_XOUT              : in  std_logic;
    UART2_DCDn              : out std_logic;
    UART2_DDIS              : in  std_logic;
    UART2_OUT1n             : in  std_logic;
    UART2_OUT2n             : in  std_logic;
    UART2_TXRDYn            : in  std_logic;
    UART2_RXRDYn            : in  std_logic;
    UART2_RI                : out std_logic;
    -- UART #3
    UART3_TxD               : in  std_logic;
    UART3_RxD               : out std_logic;
    UART3_RTSn              : in  std_logic;
    UART3_CTSn              : out std_logic;
    UART3_DTRn              : in  std_logic;
    UART3_DSRn              : out std_logic;
    UART3_BAUDOUTn          : in  std_logic;
    UART3_RCLK              : out std_logic;
    UART3_XIN               : out std_logic;
    UART3_XOUT              : in  std_logic;
    UART3_DCDn              : out std_logic;
    UART3_DDIS              : in  std_logic;
    UART3_OUT1n             : in  std_logic;
    UART3_OUT2n             : in  std_logic;
    UART3_TXRDYn            : in  std_logic;
    UART3_RXRDYn            : in  std_logic;
    UART3_RI                : out std_logic;
    -- UART Voted
    UART_TxD                : out std_logic;
    UART_RxD                : in  std_logic;
    UART_RTSn               : out std_logic;
    UART_CTSn               : in  std_logic;
    UART_DTRn               : out std_logic;
    UART_DSRn               : in  std_logic;
    UART_BAUDOUTn           : out std_logic;
    UART_RCLK               : in  std_logic;
    UART_XIN                : in  std_logic;
    UART_XOUT               : out std_logic;
    UART_DCDn               : in  std_logic;
    UART_DDIS               : out std_logic;
    UART_OUT1n              : out std_logic;
    UART_OUT2n              : out std_logic;
    UART_TXRDYn             : out std_logic;
    UART_RXRDYn             : out std_logic;
    UART_RI                 : in  std_logic;

    -- IIC
    -- IIC #1
    IIC1_scl_i             : out std_logic;
    IIC1_scl_o             : in  std_logic;
    IIC1_scl_t             : in  std_logic;
    IIC1_sda_i             : out std_logic;
    IIC1_sda_o             : in  std_logic;
    IIC1_sda_t             : in  std_logic;
    -- IIC #2
    IIC2_scl_i             : out std_logic;
    IIC2_scl_o             : in  std_logic;
    IIC2_scl_t             : in  std_logic;
    IIC2_sda_i             : out std_logic;
    IIC2_sda_o             : in  std_logic;
    IIC2_sda_t             : in  std_logic;
    -- IIC #3
    IIC3_scl_i             : out std_logic;
    IIC3_scl_o             : in  std_logic;
    IIC3_scl_t             : in  std_logic;
    IIC3_sda_i             : out std_logic;
    IIC3_sda_o             : in  std_logic;
    IIC3_sda_t             : in  std_logic;
    -- IIC Voted
    IIC_scl_i              : in  std_logic;
    IIC_scl_o              : out std_logic;
    IIC_scl_t              : out std_logic;
    IIC_sda_i              : in  std_logic;
    IIC_sda_o              : out std_logic;
    IIC_sda_t              : out std_logic;

    -- Error signals
    Compare                 : out std_logic_vector(3 downto 0);
    M_BRAM_MisMatch         : out std_logic);
end entity tmr_voter;

architecture imp  of tmr_voter is

  component temporal_bit is
  generic(
    C_TEMPORAL_DEPTH : natural   := 2;
    C_RESET_VALUE    : std_logic := '0');
  port(
    Clk      : in  std_logic;
    Rst      : in  std_logic;
    Nominal  : in  std_logic;
    Temporal : out std_logic);
  end component temporal_bit;

  component temporal_vec is
    generic(
      C_TEMPORAL_DEPTH : natural   := 2;
      C_WIDTH          : natural;
      C_RESET_VALUE    : std_logic := '0');
    port(
      Clk      : in  std_logic;
      Rst      : in  std_logic;
      Nominal  : in  std_logic_vector(0 to C_WIDTH-1);
      Temporal : out std_logic_vector(0 to C_WIDTH-1));
  end component temporal_vec;

  constant C_DISCRETE        : integer := 0;
  constant C_LMB             : integer := 1;
  constant C_BRAM            : integer := 2;
  constant C_AXI4            : integer := 3;
  constant C_M_AXIS          : integer := 4;
  constant C_S_AXIS          : integer := 5;
  constant C_ACE             : integer := 6;
  constant C_TRACE           : integer := 7;
  constant C_AXI4LITE        : integer := 8;
  constant C_INTERRUPT       : integer := 9;
  constant C_IOBUS           : integer := 10;
  constant C_GPIO            : integer := 11;
  constant C_UART            : integer := 12;
  constant C_M_BRAM          : integer := 13;
  constant C_S_LMB           : integer := 14;
  constant C_S_AXI4          : integer := 15;
  constant C_S_AXI4LITE      : integer := 16;
  constant C_S_ACE           : integer := 17;
  constant C_S_INTERRUPT     : integer := 18;
  constant C_IIC             : integer := 19;

  -- Disable voting in lockstep mode
  constant C_USE_DISABLE     : integer := Boolean'pos(C_USE_TMR_DISABLE = 1 or C_TMR = 0);

  -- Discrete internal
  signal Discrete_i  : std_logic_vector(C_DISCRETE_WIDTH-1 downto 0);

  -- LMB internal
  signal Sl1_DBus_i        : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal Sl1_Ready_i       : std_logic;
  signal Sl1_Wait_i        : std_logic;
  signal Sl1_UE_i          : std_logic;
  signal Sl1_CE_i          : std_logic;
  signal Sl2_DBus_i        : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal Sl2_Ready_i       : std_logic;
  signal Sl2_Wait_i        : std_logic;
  signal Sl2_UE_i          : std_logic;
  signal Sl2_CE_i          : std_logic;
  signal Sl3_DBus_i        : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal Sl3_Ready_i       : std_logic;
  signal Sl3_Wait_i        : std_logic;
  signal Sl3_UE_i          : std_logic;
  signal Sl3_CE_i          : std_logic;
  signal LMB_ABus_i        : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal LMB_WriteDBus_i   : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal LMB_AddrStrobe_i  : std_logic;
  signal LMB_ReadStrobe_i  : std_logic;
  signal LMB_WriteStrobe_i : std_logic;
  signal LMB_BE_i          : std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));

  -- S_LMB internal
  signal S_Sl_DBus_i          : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal S_Sl_Ready_i         : std_logic;
  signal S_Sl_Wait_i          : std_logic;
  signal S_Sl_UE_i            : std_logic;
  signal S_Sl_CE_i            : std_logic;
  signal S_LMB1_ABus_i        : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal S_LMB1_WriteDBus_i   : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal S_LMB1_AddrStrobe_i  : std_logic;
  signal S_LMB1_ReadStrobe_i  : std_logic;
  signal S_LMB1_WriteStrobe_i : std_logic;
  signal S_LMB1_BE_i          : std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
  signal S_LMB2_ABus_i        : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal S_LMB2_WriteDBus_i   : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal S_LMB2_AddrStrobe_i  : std_logic;
  signal S_LMB2_ReadStrobe_i  : std_logic;
  signal S_LMB2_WriteStrobe_i : std_logic;
  signal S_LMB2_BE_i          : std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));
  signal S_LMB3_ABus_i        : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal S_LMB3_WriteDBus_i   : std_logic_vector(0 to C_LMB_DWIDTH-1);
  signal S_LMB3_AddrStrobe_i  : std_logic;
  signal S_LMB3_ReadStrobe_i  : std_logic;
  signal S_LMB3_WriteStrobe_i : std_logic;
  signal S_LMB3_BE_i          : std_logic_vector(0 to (C_LMB_DWIDTH/8 - 1));

  -- BRAM internal
  signal BRAM1_Din_i : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
  signal BRAM2_Din_i : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
  signal BRAM3_Din_i : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
  signal BRAM_Rst_i  : std_logic;
  signal BRAM_Clk_i  : std_logic;
  signal BRAM_Addr_i : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal BRAM_EN_i   : std_logic;
  signal BRAM_WE_i   : std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
  signal BRAM_Dout_i : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

  -- M_BRAM internal
  signal M_BRAM1_Rst_i  : std_logic;
  signal M_BRAM1_Clk_i  : std_logic;
  signal M_BRAM1_Addr_i : std_logic_vector(0 to C_LMB_AWIDTH-1);
  signal M_BRAM1_EN_i   : std_logic;
  signal M_BRAM1_WE_i   : std_logic_vector(0 to (C_LMB_DWIDTH+8*C_ECC)/8-1);
  signal M_BRAM1_Dout_i : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);
  signal S_BRAM_Din_i   : std_logic_vector(0 to C_LMB_DWIDTH+8*C_ECC-1);

  -- AXI internal
  constant C_AXI_RRESP_WIDTH : natural := 2 * Boolean'Pos(C_INTERFACE = 6) + 2 * Boolean'Pos(C_INTERFACE = 17) + 2;

  signal S_AXI1_AWREADY_i  : std_logic;
  signal S_AXI1_WREADY_i   : std_logic;
  signal S_AXI1_BID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI1_BRESP_i    : std_logic_vector(1 downto 0);
  signal S_AXI1_BVALID_i   : std_logic;
  signal S_AXI1_BUSER_i    : std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
  signal S_AXI1_ARREADY_i  : std_logic;
  signal S_AXI1_RID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI1_RDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI1_RRESP_i    : std_logic_vector(C_AXI_RRESP_WIDTH-1 downto 0);
  signal S_AXI1_RLAST_i    : std_logic;
  signal S_AXI1_RVALID_i   : std_logic;
  signal S_AXI1_RUSER_i    : std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
  signal S_AXI1_ACVALID_i  : std_logic;
  signal S_AXI1_ACADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI1_ACSNOOP_i  : std_logic_vector(3 downto 0);
  signal S_AXI1_ACPROT_i   : std_logic_vector(2 downto 0);
  signal S_AXI1_CRREADY_i  : std_logic;
  signal S_AXI1_CDREADY_i  : std_logic;
  signal S_AXI2_AWREADY_i  : std_logic;
  signal S_AXI2_WREADY_i   : std_logic;
  signal S_AXI2_BID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI2_BRESP_i    : std_logic_vector(1 downto 0);
  signal S_AXI2_BVALID_i   : std_logic;
  signal S_AXI2_BUSER_i    : std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
  signal S_AXI2_ARREADY_i  : std_logic;
  signal S_AXI2_RID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI2_RDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI2_RRESP_i    : std_logic_vector(C_AXI_RRESP_WIDTH-1 downto 0);
  signal S_AXI2_RLAST_i    : std_logic;
  signal S_AXI2_RVALID_i   : std_logic;
  signal S_AXI2_RUSER_i    : std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
  signal S_AXI2_ACVALID_i  : std_logic;
  signal S_AXI2_ACADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI2_ACSNOOP_i  : std_logic_vector(3 downto 0);
  signal S_AXI2_ACPROT_i   : std_logic_vector(2 downto 0);
  signal S_AXI2_CRREADY_i  : std_logic;
  signal S_AXI2_CDREADY_i  : std_logic;
  signal S_AXI3_AWREADY_i  : std_logic;
  signal S_AXI3_WREADY_i   : std_logic;
  signal S_AXI3_BID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI3_BRESP_i    : std_logic_vector(1 downto 0);
  signal S_AXI3_BVALID_i   : std_logic;
  signal S_AXI3_BUSER_i    : std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
  signal S_AXI3_ARREADY_i  : std_logic;
  signal S_AXI3_RID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI3_RDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI3_RRESP_i    : std_logic_vector(C_AXI_RRESP_WIDTH-1 downto 0);
  signal S_AXI3_RLAST_i    : std_logic;
  signal S_AXI3_RVALID_i   : std_logic;
  signal S_AXI3_RUSER_i    : std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
  signal S_AXI3_ACVALID_i  : std_logic;
  signal S_AXI3_ACADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI3_ACSNOOP_i  : std_logic_vector(3 downto 0);
  signal S_AXI3_ACPROT_i   : std_logic_vector(2 downto 0);
  signal S_AXI3_CRREADY_i  : std_logic;
  signal S_AXI3_CDREADY_i  : std_logic;
  signal M_AXI_AWID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI_AWADDR_i    : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI_AWLEN_i     : std_logic_vector(7 downto 0);
  signal M_AXI_AWSIZE_i    : std_logic_vector(2 downto 0);
  signal M_AXI_AWBURST_i   : std_logic_vector(1 downto 0);
  signal M_AXI_AWLOCK_i    : std_logic;
  signal M_AXI_AWCACHE_i   : std_logic_vector(3 downto 0);
  signal M_AXI_AWPROT_i    : std_logic_vector(2 downto 0);
  signal M_AXI_AWQOS_i     : std_logic_vector(3 downto 0);
  signal M_AXI_AWVALID_i   : std_logic;
  signal M_AXI_AWUSER_i    : std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
  signal M_AXI_AWDOMAIN_i  : std_logic_vector(1 downto 0);
  signal M_AXI_AWSNOOP_i   : std_logic_vector(2 downto 0);
  signal M_AXI_AWBAR_i     : std_logic_vector(1 downto 0);
  signal M_AXI_WDATA_i     : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI_WSTRB_i     : std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
  signal M_AXI_WLAST_i     : std_logic;
  signal M_AXI_WVALID_i    : std_logic;
  signal M_AXI_WUSER_i     : std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
  signal M_AXI_BREADY_i    : std_logic;
  signal M_AXI_WACK_i      : std_logic;
  signal M_AXI_ARID_i      : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI_ARADDR_i    : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI_ARLEN_i     : std_logic_vector(7 downto 0);
  signal M_AXI_ARSIZE_i    : std_logic_vector(2 downto 0);
  signal M_AXI_ARBURST_i   : std_logic_vector(1 downto 0);
  signal M_AXI_ARLOCK_i    : std_logic;
  signal M_AXI_ARCACHE_i   : std_logic_vector(3 downto 0);
  signal M_AXI_ARPROT_i    : std_logic_vector(2 downto 0);
  signal M_AXI_ARQOS_i     : std_logic_vector(3 downto 0);
  signal M_AXI_ARVALID_i   : std_logic;
  signal M_AXI_ARUSER_i    : std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
  signal M_AXI_ARDOMAIN_i  : std_logic_vector(1 downto 0);
  signal M_AXI_ARSNOOP_i   : std_logic_vector(3 downto 0);
  signal M_AXI_ARBAR_i     : std_logic_vector(1 downto 0);
  signal M_AXI_RREADY_i    : std_logic;
  signal M_AXI_RACK_i      : std_logic;
  signal M_AXI_ACREADY_i   : std_logic;
  signal M_AXI_CRVALID_i   : std_logic;
  signal M_AXI_CRRESP_i    : std_logic_vector(4 downto 0);
  signal M_AXI_CDVALID_i   : std_logic;
  signal M_AXI_CDDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI_CDLAST_i    : std_logic;

  -- AXI Slave internal
  signal M_AXI1_AWID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI1_AWADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI1_AWLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI1_AWSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI1_AWBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI1_AWLOCK_i   : std_logic;
  signal M_AXI1_AWCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI1_AWPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI1_AWQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI1_AWVALID_i  : std_logic;
  signal M_AXI1_AWUSER_i   : std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
  signal M_AXI1_AWDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI1_AWSNOOP_i  : std_logic_vector(2 downto 0);
  signal M_AXI1_AWBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI1_WDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI1_WSTRB_i    : std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
  signal M_AXI1_WLAST_i    : std_logic;
  signal M_AXI1_WVALID_i   : std_logic;
  signal M_AXI1_WUSER_i    : std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
  signal M_AXI1_BREADY_i   : std_logic;
  signal M_AXI1_WACK_i     : std_logic;
  signal M_AXI1_ARID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI1_ARADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI1_ARLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI1_ARSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI1_ARBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI1_ARLOCK_i   : std_logic;
  signal M_AXI1_ARCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI1_ARPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI1_ARQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI1_ARVALID_i  : std_logic;
  signal M_AXI1_ARUSER_i   : std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
  signal M_AXI1_ARDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI1_ARSNOOP_i  : std_logic_vector(3 downto 0);
  signal M_AXI1_ARBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI1_RREADY_i   : std_logic;
  signal M_AXI1_RACK_i     : std_logic;
  signal M_AXI1_ACREADY_i  : std_logic;
  signal M_AXI1_CRVALID_i  : std_logic;
  signal M_AXI1_CRRESP_i   : std_logic_vector(4 downto 0);
  signal M_AXI1_CDVALID_i  : std_logic;
  signal M_AXI1_CDDATA_i   : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI1_CDLAST_i   : std_logic;
  signal M_AXI2_AWID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI2_AWADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI2_AWLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI2_AWSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI2_AWBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI2_AWLOCK_i   : std_logic;
  signal M_AXI2_AWCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI2_AWPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI2_AWQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI2_AWVALID_i  : std_logic;
  signal M_AXI2_AWUSER_i   : std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
  signal M_AXI2_AWDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI2_AWSNOOP_i  : std_logic_vector(2 downto 0);
  signal M_AXI2_AWBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI2_WDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI2_WSTRB_i    : std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
  signal M_AXI2_WLAST_i    : std_logic;
  signal M_AXI2_WVALID_i   : std_logic;
  signal M_AXI2_WUSER_i    : std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
  signal M_AXI2_BREADY_i   : std_logic;
  signal M_AXI2_WACK_i     : std_logic;
  signal M_AXI2_ARID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI2_ARADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI2_ARLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI2_ARSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI2_ARBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI2_ARLOCK_i   : std_logic;
  signal M_AXI2_ARCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI2_ARPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI2_ARQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI2_ARVALID_i  : std_logic;
  signal M_AXI2_ARUSER_i   : std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
  signal M_AXI2_ARDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI2_ARSNOOP_i  : std_logic_vector(3 downto 0);
  signal M_AXI2_ARBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI2_RREADY_i   : std_logic;
  signal M_AXI2_RACK_i     : std_logic;
  signal M_AXI2_ACREADY_i  : std_logic;
  signal M_AXI2_CRVALID_i  : std_logic;
  signal M_AXI2_CRRESP_i   : std_logic_vector(4 downto 0);
  signal M_AXI2_CDVALID_i  : std_logic;
  signal M_AXI2_CDDATA_i   : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI2_CDLAST_i   : std_logic;
  signal M_AXI3_AWID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI3_AWADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI3_AWLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI3_AWSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI3_AWBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI3_AWLOCK_i   : std_logic;
  signal M_AXI3_AWCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI3_AWPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI3_AWQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI3_AWVALID_i  : std_logic;
  signal M_AXI3_AWDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI3_AWSNOOP_i  : std_logic_vector(2 downto 0);
  signal M_AXI3_AWBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI3_AWUSER_i   : std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
  signal M_AXI3_WDATA_i    : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI3_WSTRB_i    : std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
  signal M_AXI3_WLAST_i    : std_logic;
  signal M_AXI3_WVALID_i   : std_logic;
  signal M_AXI3_WUSER_i    : std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
  signal M_AXI3_BREADY_i   : std_logic;
  signal M_AXI3_WACK_i     : std_logic;
  signal M_AXI3_ARID_i     : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_AXI3_ARADDR_i   : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal M_AXI3_ARLEN_i    : std_logic_vector(7 downto 0);
  signal M_AXI3_ARSIZE_i   : std_logic_vector(2 downto 0);
  signal M_AXI3_ARBURST_i  : std_logic_vector(1 downto 0);
  signal M_AXI3_ARLOCK_i   : std_logic;
  signal M_AXI3_ARCACHE_i  : std_logic_vector(3 downto 0);
  signal M_AXI3_ARPROT_i   : std_logic_vector(2 downto 0);
  signal M_AXI3_ARQOS_i    : std_logic_vector(3 downto 0);
  signal M_AXI3_ARVALID_i  : std_logic;
  signal M_AXI3_ARUSER_i   : std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
  signal M_AXI3_ARDOMAIN_i : std_logic_vector(1 downto 0);
  signal M_AXI3_ARSNOOP_i  : std_logic_vector(3 downto 0);
  signal M_AXI3_ARBAR_i    : std_logic_vector(1 downto 0);
  signal M_AXI3_RREADY_i   : std_logic;
  signal M_AXI3_RACK_i     : std_logic;
  signal M_AXI3_ACREADY_i  : std_logic;
  signal M_AXI3_CRVALID_i  : std_logic;
  signal M_AXI3_CRRESP_i   : std_logic_vector(4 downto 0);
  signal M_AXI3_CDVALID_i  : std_logic;
  signal M_AXI3_CDDATA_i   : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal M_AXI3_CDLAST_i   : std_logic;
  signal S_AXI_AWREADY_i   : std_logic;
  signal S_AXI_WREADY_i    : std_logic;
  signal S_AXI_BID_i       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_BRESP_i     : std_logic_vector(1 downto 0);
  signal S_AXI_BVALID_i    : std_logic;
  signal S_AXI_BUSER_i     : std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
  signal S_AXI_ARREADY_i   : std_logic;
  signal S_AXI_RID_i       : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_RDATA_i     : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI_RRESP_i     : std_logic_vector(C_AXI_RRESP_WIDTH-1 downto 0);
  signal S_AXI_RLAST_i     : std_logic;
  signal S_AXI_RVALID_i    : std_logic;
  signal S_AXI_RUSER_i     : std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
  signal S_AXI_ACVALID_i   : std_logic;
  signal S_AXI_ACADDR_i    : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI_ACSNOOP_i   : std_logic_vector(3 downto 0);
  signal S_AXI_ACPROT_i    : std_logic_vector(2 downto 0);
  signal S_AXI_CRREADY_i   : std_logic;
  signal S_AXI_CDREADY_i   : std_logic;

  -- Master AXI Stream
  signal S_AXIS1_TREADY_i  : std_logic;
  signal S_AXIS2_TREADY_i  : std_logic;
  signal S_AXIS3_TREADY_i  : std_logic;
  signal M_AXIS_TLAST_i    : std_logic;
  signal M_AXIS_TDATA_i    : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
  signal M_AXIS_TVALID_i   : std_logic;
  signal M_AXIS_TSTRB_i    : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS_TKEEP_i    : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS_TID_i      : std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
  signal M_AXIS_TDEST_i    : std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
  signal M_AXIS_TUSER_i    : std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);

  -- Slave AXI Stream
  signal M_AXIS1_TLAST_i  : std_logic;
  signal M_AXIS1_TDATA_i  : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
  signal M_AXIS1_TVALID_i : std_logic;
  signal M_AXIS1_TSTRB_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS1_TKEEP_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS1_TID_i    : std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
  signal M_AXIS1_TDEST_i  : std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
  signal M_AXIS1_TUSER_i  : std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
  signal M_AXIS2_TLAST_i  : std_logic;
  signal M_AXIS2_TDATA_i  : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
  signal M_AXIS2_TVALID_i : std_logic;
  signal M_AXIS2_TSTRB_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS2_TKEEP_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS2_TID_i    : std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
  signal M_AXIS2_TDEST_i  : std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
  signal M_AXIS2_TUSER_i  : std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
  signal M_AXIS3_TLAST_i  : std_logic;
  signal M_AXIS3_TDATA_i  : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
  signal M_AXIS3_TVALID_i : std_logic;
  signal M_AXIS3_TSTRB_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS3_TKEEP_i  : std_logic_vector(C_AXIS_DATA_WIDTH/8-1 downto 0);
  signal M_AXIS3_TID_i    : std_logic_vector(C_AXIS_ID_WIDTH-1 downto 0);
  signal M_AXIS3_TDEST_i  : std_logic_vector(C_AXIS_DEST_WIDTH-1 downto 0);
  signal M_AXIS3_TUSER_i  : std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
  signal S_AXIS_TREADY_i  : std_logic;

  -- Trace internal
  signal Trace_Instruction_i      : std_logic_vector(0 to C_DATA_SIZE-1);
  signal Trace_Valid_Instr_i      : std_logic;
  signal Trace_PC_i               : std_logic_vector(0 to C_DATA_SIZE-1);
  signal Trace_Reg_Write_i        : std_logic;
  signal Trace_Reg_Addr_i         : std_logic_vector(0 to 4);
  signal Trace_MSR_Reg_i          : std_logic_vector(0 to 14);
  signal Trace_PID_Reg_i          : std_logic_vector(0 to 7);
  signal Trace_New_Reg_Value_i    : std_logic_vector(0 to C_DATA_SIZE-1);
  signal Trace_Exception_Taken_i  : std_logic;
  signal Trace_Exception_Kind_i   : std_logic_vector(0 to 4);
  signal Trace_Jump_Taken_i       : std_logic;
  signal Trace_Delay_Slot_i       : std_logic;
  signal Trace_Data_Address_i     : std_logic_vector(0 to C_ADDR_SIZE-1);
  signal Trace_Data_Write_Value_i : std_logic_vector(0 to C_DATA_SIZE-1);
  signal Trace_Data_Byte_Enable_i : std_logic_vector(0 to 3);
  signal Trace_Data_Access_i      : std_logic;
  signal Trace_Data_Read_i        : std_logic;
  signal Trace_Data_Write_i       : std_logic;
  signal Trace_DCache_Req_i       : std_logic;
  signal Trace_DCache_Hit_i       : std_logic;
  signal Trace_DCache_Rdy_i       : std_logic;
  signal Trace_DCache_Read_i      : std_logic;
  signal Trace_ICache_Req_i       : std_logic;
  signal Trace_ICache_Hit_i       : std_logic;
  signal Trace_ICache_Rdy_i       : std_logic;
  signal Trace_OF_PipeRun_i       : std_logic;
  signal Trace_EX_PipeRun_i       : std_logic;
  signal Trace_MEM_PipeRun_i      : std_logic;
  signal Trace_MB_Halted_i        : std_logic;
  signal Trace_Jump_Hit_i         : std_logic;

  -- IRQ Internal
  signal IRQ1_i         : std_logic;
  signal IRQ1_Address_i : std_logic_vector(0 to 31);
  signal IRQ2_i         : std_logic;
  signal IRQ2_Address_i : std_logic_vector(0 to 31);
  signal IRQ3_i         : std_logic;
  signal IRQ3_Address_i : std_logic_vector(0 to 31);
  signal IRQ_Ack_i      : std_logic_vector(0 to 1);

  -- IRQ Slave Internal
  signal S_IRQ1_Ack_i    : std_logic_vector(0 to 1);
  signal S_IRQ2_Ack_i    : std_logic_vector(0 to 1);
  signal S_IRQ3_Ack_i    : std_logic_vector(0 to 1);
  signal M_IRQ_i         : std_logic;
  signal M_IRQ_Address_i : std_logic_vector(0 to 31);

  -- IO Bus Internal
  signal IO1_Read_Data_i   : std_logic_vector(C_LMB_DWIDTH-1 downto 0);
  signal IO1_Ready_i       : std_logic;
  signal IO2_Read_Data_i   : std_logic_vector(C_LMB_DWIDTH-1 downto 0);
  signal IO2_Ready_i       : std_logic;
  signal IO3_Read_Data_i   : std_logic_vector(C_LMB_DWIDTH-1 downto 0);
  signal IO3_Ready_i       : std_logic;
  signal IO_Addr_Strobe_i  : std_logic;
  signal IO_Read_Strobe_i  : std_logic;
  signal IO_Write_Strobe_i : std_logic;
  signal IO_Address_i      : std_logic_vector(C_LMB_AWIDTH-1 downto 0);
  signal IO_Byte_Enable_i  : std_logic_vector((C_LMB_DWIDTH/8 - 1) downto 0);
  signal IO_Write_Data_i   : std_logic_vector(C_LMB_DWIDTH-1 downto 0);

  -- GPIO Internal
  signal GPI1_i : std_logic_vector(C_GPI_SIZE-1 downto 0);
  signal GPI2_i : std_logic_vector(C_GPI_SIZE-1 downto 0);
  signal GPI3_i : std_logic_vector(C_GPI_SIZE-1 downto 0);
  signal GPO_i  : std_logic_vector(C_GPO_SIZE-1 downto 0);
  signal GPT_i  : std_logic_vector(C_GPO_SIZE-1 downto 0);

  -- UART Internal
  signal UART1_RxD_i     : std_logic;
  signal UART1_CTSn_i    : std_logic;
  signal UART1_DSRn_i    : std_logic;
  signal UART1_RCLK_i    : std_logic;
  signal UART1_XIN_i     : std_logic;
  signal UART1_DCDn_i    : std_logic;
  signal UART1_RI_i      : std_logic;
  signal UART2_RxD_i     : std_logic;
  signal UART2_CTSn_i    : std_logic;
  signal UART2_DSRn_i    : std_logic;
  signal UART2_RCLK_i    : std_logic;
  signal UART2_XIN_i     : std_logic;
  signal UART2_DCDn_i    : std_logic;
  signal UART2_RI_i      : std_logic;
  signal UART3_RxD_i     : std_logic;
  signal UART3_CTSn_i    : std_logic;
  signal UART3_DSRn_i    : std_logic;
  signal UART3_RCLK_i    : std_logic;
  signal UART3_XIN_i     : std_logic;
  signal UART3_DCDn_i    : std_logic;
  signal UART3_RI_i      : std_logic;
  signal UART_TxD_i      : std_logic;
  signal UART_RTSn_i     : std_logic;
  signal UART_DTRn_i     : std_logic;
  signal UART_BAUDOUTn_i : std_logic;
  signal UART_XOUT_i     : std_logic;
  signal UART_DDIS_i     : std_logic;
  signal UART_OUT1n_i    : std_logic;
  signal UART_OUT2n_i    : std_logic;
  signal UART_TXRDYn_i   : std_logic;
  signal UART_RXRDYn_i   : std_logic;

  -- IIC internal
  signal IIC1_scl_i_i    : std_logic;
  signal IIC1_sda_i_i    : std_logic;
  signal IIC2_scl_i_i    : std_logic;
  signal IIC2_sda_i_i    : std_logic;
  signal IIC3_scl_i_i    : std_logic;
  signal IIC3_sda_i_i    : std_logic;
  signal IIC_scl_o_i     : std_logic;
  signal IIC_scl_t_i     : std_logic;
  signal IIC_sda_o_i     : std_logic;
  signal IIC_sda_t_i     : std_logic;

  -- Compare internal
  signal Compare_i : std_logic_vector(3 downto 0);

  signal tmr_disable_vec : std_logic_vector(3 downto 0);

begin

  tmr_g: if (C_TMR = 1) generate
  begin
    tmr_disable_vec <= TMR_Disable & TMR_Disable & TMR_Disable & TMR_Disable;
  end generate tmr_g;

  lockstep_g: if (C_TMR = 0) generate
  begin
    tmr_disable_vec <= (others => '1');
  end generate lockstep_g;

  -- Discrete
  discrete_g: if (C_INTERFACE = C_DISCRETE) generate
  begin

    vote_i : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => C_DISCRETE_WIDTH,
        C_USE_TMR_DISABLE => C_USE_DISABLE)
      port map (
        TMR_Disable => tmr_disable_vec,
        Vote1       => Discrete1,
        Vote2       => Discrete2,
        Vote3       => Discrete3,
        Voted       => Discrete_i);

  end generate discrete_g;

  not_discrete_g: if (C_INTERFACE /= C_DISCRETE) generate
  begin
    Discrete_i <= (others => '0');
  end generate not_discrete_g;

  Discrete <= Discrete_i;

  -- LMB
  lmb_g: if (C_INTERFACE = C_LMB) generate
  begin

    lmb_voter_i : entity tmr_voter_v1_0_5.lmb_voter
    generic map(
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable      => tmr_disable_vec,
      LMB1_ABus        => LMB1_ABus,
      LMB1_WriteDBus   => LMB1_WriteDBus,
      LMB1_AddrStrobe  => LMB1_AddrStrobe,
      LMB1_ReadStrobe  => LMB1_ReadStrobe,
      LMB1_WriteStrobe => LMB1_WriteStrobe,
      LMB1_BE          => LMB1_BE,
      Sl1_DBus         => Sl1_DBus_i,
      Sl1_Ready        => Sl1_Ready_i,
      Sl1_Wait         => Sl1_Wait_i,
      Sl1_UE           => Sl1_UE_i,
      Sl1_CE           => Sl1_CE_i,
      LMB2_ABus        => LMB2_ABus,
      LMB2_WriteDBus   => LMB2_WriteDBus,
      LMB2_AddrStrobe  => LMB2_AddrStrobe,
      LMB2_ReadStrobe  => LMB2_ReadStrobe,
      LMB2_WriteStrobe => LMB2_WriteStrobe,
      LMB2_BE          => LMB2_BE,
      Sl2_DBus         => Sl2_DBus_i,
      Sl2_Ready        => Sl2_Ready_i,
      Sl2_Wait         => Sl2_Wait_i,
      Sl2_UE           => Sl2_UE_i,
      Sl2_CE           => Sl2_CE_i,
      LMB3_ABus        => LMB3_ABus,
      LMB3_WriteDBus   => LMB3_WriteDBus,
      LMB3_AddrStrobe  => LMB3_AddrStrobe,
      LMB3_ReadStrobe  => LMB3_ReadStrobe,
      LMB3_WriteStrobe => LMB3_WriteStrobe,
      LMB3_BE          => LMB3_BE,
      Sl3_DBus         => Sl3_DBus_i,
      Sl3_Ready        => Sl3_Ready_i,
      Sl3_Wait         => Sl3_Wait_i,
      Sl3_UE           => Sl3_UE_i,
      Sl3_CE           => Sl3_CE_i,
      LMB_ABus         => LMB_ABus_i,
      LMB_WriteDBus    => LMB_WriteDBus_i,
      LMB_AddrStrobe   => LMB_AddrStrobe_i,
      LMB_ReadStrobe   => LMB_ReadStrobe_i,
      LMB_WriteStrobe  => LMB_WriteStrobe_i,
      LMB_BE           => LMB_BE_i,
      Sl_DBus          => Sl_DBus,
      Sl_Ready         => Sl_Ready,
      Sl_Wait          => Sl_Wait,
      Sl_UE            => Sl_UE,
      Sl_CE            => Sl_CE);

  end generate lmb_g;

  not_lmb_g: if (C_INTERFACE /= C_LMB) generate
  begin
    Sl1_DBus_i        <= (others => '0');
    Sl1_Ready_i       <= '0';
    Sl1_Wait_i        <= '0';
    Sl1_UE_i          <= '0';
    Sl1_CE_i          <= '0';
    Sl2_DBus_i        <= (others => '0');
    Sl2_Ready_i       <= '0';
    Sl2_Wait_i        <= '0';
    Sl2_UE_i          <= '0';
    Sl2_CE_i          <= '0';
    Sl3_DBus_i        <= (others => '0');
    Sl3_Ready_i       <= '0';
    Sl3_Wait_i        <= '0';
    Sl3_UE_i          <= '0';
    Sl3_CE_i          <= '0';
    LMB_ABus_i        <= (others => '0');
    LMB_WriteDBus_i   <= (others => '0');
    LMB_AddrStrobe_i  <= '0';
    LMB_ReadStrobe_i  <= '0';
    LMB_WriteStrobe_i <= '0';
    LMB_BE_i          <= (others => '0');
  end generate not_lmb_g;

  sl1_dbus_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH) port map(Clk, Rst, Sl1_DBus_i,  Sl1_DBus);
  sl1_ready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)               port map(Clk, Rst, SL1_Ready_i, Sl1_Ready);
  sl1_wait_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)               port map(Clk, Rst, Sl1_Wait_i,  Sl1_Wait);
  sl1_ue_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH1)               port map(Clk, Rst, Sl1_UE_i,    Sl1_UE);
  sl1_ce_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH1)               port map(Clk, Rst, Sl1_CE_i,    Sl1_CE);
  sl2_dbus_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_DWIDTH) port map(Clk, Rst, Sl2_DBus_i,  Sl2_DBus);
  sl2_ready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)               port map(Clk, Rst, Sl2_Ready_i, Sl2_Ready);
  sl2_wait_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)               port map(Clk, Rst, Sl2_Wait_i,  Sl2_Wait);
  sl2_ue_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH2)               port map(Clk, Rst, Sl2_UE_i,    Sl2_UE);
  sl2_ce_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH2)               port map(Clk, Rst, Sl2_CE_i,    Sl2_CE);
  Sl3_DBus        <= Sl3_DBus_i;
  Sl3_Ready       <= Sl3_Ready_i;
  Sl3_Wait        <= Sl3_Wait_i;
  Sl3_UE          <= Sl3_UE_i;
  Sl3_CE          <= Sl3_CE_i;
  LMB_ABus        <= LMB_ABus_i;
  LMB_WriteDBus   <= LMB_WriteDBus_i;
  LMB_AddrStrobe  <= LMB_AddrStrobe_i;
  LMB_ReadStrobe  <= LMB_ReadStrobe_i;
  LMB_WriteStrobe <= LMB_WriteStrobe_i;
  LMB_BE          <= LMB_BE_i;

  -- S_LMB
  s_lmb_g: if (C_INTERFACE = C_S_LMB) generate
  begin

    s_lmb_voter_i : entity tmr_voter_v1_0_5.s_lmb_voter
    generic map(
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable        => tmr_disable_vec,
      S_LMB1_ABus        => S_LMB1_ABus_i,
      S_LMB1_WriteDBus   => S_LMB1_WriteDBus_i,
      S_LMB1_AddrStrobe  => S_LMB1_AddrStrobe_i,
      S_LMB1_ReadStrobe  => S_LMB1_ReadStrobe_i,
      S_LMB1_WriteStrobe => S_LMB1_WriteStrobe_i,
      S_LMB1_BE          => S_LMB1_BE_i,
      S_Sl1_DBus         => S_Sl1_DBus,
      S_Sl1_Ready        => S_Sl1_Ready,
      S_Sl1_Wait         => S_Sl1_Wait,
      S_Sl1_UE           => S_Sl1_UE,
      S_Sl1_CE           => S_Sl1_CE,
      S_LMB2_ABus        => S_LMB2_ABus_i,
      S_LMB2_WriteDBus   => S_LMB2_WriteDBus_i,
      S_LMB2_AddrStrobe  => S_LMB2_AddrStrobe_i,
      S_LMB2_ReadStrobe  => S_LMB2_ReadStrobe_i,
      S_LMB2_WriteStrobe => S_LMB2_WriteStrobe_i,
      S_LMB2_BE          => S_LMB2_BE_i,
      S_Sl2_DBus         => S_Sl2_DBus,
      S_Sl2_Ready        => S_Sl2_Ready,
      S_Sl2_Wait         => S_Sl2_Wait,
      S_Sl2_UE           => S_Sl2_UE,
      S_Sl2_CE           => S_Sl2_CE,
      S_LMB3_ABus        => S_LMB3_ABus_i,
      S_LMB3_WriteDBus   => S_LMB3_WriteDBus_i,
      S_LMB3_AddrStrobe  => S_LMB3_AddrStrobe_i,
      S_LMB3_ReadStrobe  => S_LMB3_ReadStrobe_i,
      S_LMB3_WriteStrobe => S_LMB3_WriteStrobe_i,
      S_LMB3_BE          => S_LMB3_BE_i,
      S_Sl3_DBus         => S_Sl3_DBus,
      S_Sl3_Ready        => S_Sl3_Ready,
      S_Sl3_Wait         => S_Sl3_Wait,
      S_Sl3_UE           => S_Sl3_UE,
      S_Sl3_CE           => S_Sl3_CE,
      S_LMB_ABus         => S_LMB_ABus,
      S_LMB_WriteDBus    => S_LMB_WriteDBus,
      S_LMB_AddrStrobe   => S_LMB_AddrStrobe,
      S_LMB_ReadStrobe   => S_LMB_ReadStrobe,
      S_LMB_WriteStrobe  => S_LMB_WriteStrobe,
      S_LMB_BE           => S_LMB_BE,
      S_Sl_DBus          => S_Sl_DBus_i,
      S_Sl_Ready         => S_Sl_Ready_i,
      S_Sl_Wait          => S_Sl_Wait_i,
      S_Sl_UE            => S_Sl_UE_i,
      S_Sl_CE            => S_Sl_CE_i);

  end generate s_lmb_g;

  not_s_lmb_g: if (C_INTERFACE /= C_S_LMB) generate
  begin
    S_Sl_DBus_i        <= (others => '0');
    S_Sl_Ready_i       <= '0';
    S_Sl_Wait_i        <= '0';
    S_Sl_UE_i          <= '0';
    S_Sl_CE_i          <= '0';
    S_LMB1_ABus_i        <= (others => '0');
    S_LMB1_WriteDBus_i   <= (others => '0');
    S_LMB1_AddrStrobe_i  <= '0';
    S_LMB1_ReadStrobe_i  <= '0';
    S_LMB1_WriteStrobe_i <= '0';
    S_LMB1_BE_i          <= (others => '0');
    S_LMB2_ABus_i        <= (others => '0');
    S_LMB2_WriteDBus_i   <= (others => '0');
    S_LMB2_AddrStrobe_i  <= '0';
    S_LMB2_ReadStrobe_i  <= '0';
    S_LMB2_WriteStrobe_i <= '0';
    S_LMB2_BE_i          <= (others => '0');
    S_LMB3_ABus_i        <= (others => '0');
    S_LMB3_WriteDBus_i   <= (others => '0');
    S_LMB3_AddrStrobe_i  <= '0';
    S_LMB3_ReadStrobe_i  <= '0';
    S_LMB3_WriteStrobe_i <= '0';
    S_LMB3_BE_i          <= (others => '0');
  end generate not_s_lmb_g;

  S_Sl_DBus          <= S_Sl_DBus_i;
  S_Sl_Ready         <= S_Sl_Ready_i;
  S_Sl_Wait          <= S_Sl_Wait_i;
  S_Sl_UE            <= S_Sl_UE_i;
  S_Sl_CE            <= S_Sl_CE_i;
  s_lmb1_abus_vec_i:        temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_AWIDTH)   port map(Clk, Rst, S_LMB1_ABus_i,        S_LMB1_ABus);
  s_lmb1_writedbus_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH)   port map(Clk, Rst, S_LMB1_WriteDBus_i,   S_LMB1_WriteDBus);
  s_lmb1_addrstrobe_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                 port map(Clk, Rst, S_LMB1_AddrStrobe_i,  S_LMB1_AddrStrobe);
  s_lmb1_readstrobe_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                 port map(Clk, Rst, S_LMB1_ReadStrobe_i,  S_LMB1_ReadStrobe);
  s_lmb1_writestrobe_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                 port map(Clk, Rst, S_LMB1_WriteStrobe_i, S_LMB1_WriteStrobe);
  s_lmb1_be_vec_i:          temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH/8) port map(Clk, Rst, S_LMB1_BE_i,          S_LMB1_BE);
  s_lmb2_abus_vec_i:        temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_AWIDTH)   port map(Clk, Rst, S_LMB2_ABus_i,        S_LMB2_ABus);
  s_lmb2_writedbus_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_DWIDTH)   port map(Clk, Rst, S_LMB2_WriteDBus_i,   S_LMB2_WriteDBus);
  s_lmb2_addrstrobe_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                 port map(Clk, Rst, S_LMB2_AddrStrobe_i,  S_LMB2_AddrStrobe);
  s_lmb2_readstrobe_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                 port map(Clk, Rst, S_LMB2_ReadStrobe_i,  S_LMB2_ReadStrobe);
  s_lmb2_writestrobe_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                 port map(Clk, Rst, S_LMB2_WriteStrobe_i, S_LMB2_WriteStrobe);
  s_lmb2_be_vec_i:          temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_DWIDTH/8) port map(Clk, Rst, S_LMB2_BE_i,          S_LMB2_BE);
  S_LMB3_ABus        <= S_LMB3_ABus_i;
  S_LMB3_WriteDBus   <= S_LMB3_WriteDBus_i;
  S_LMB3_AddrStrobe  <= S_LMB3_AddrStrobe_i;
  S_LMB3_ReadStrobe  <= S_LMB3_ReadStrobe_i;
  S_LMB3_WriteStrobe <= S_LMB3_WriteStrobe_i;
  S_LMB3_BE          <= S_LMB3_BE_i;

  -- BRAM
  bram_g: if (C_INTERFACE = C_BRAM) generate
  begin

    bram_voter_i : entity tmr_voter_v1_0_5.bram_voter
    generic map(
      C_ECC             => C_ECC,
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable => tmr_disable_vec,
      Clk         => Clk,
      BRAM1_Rst   => BRAM1_Rst,
      BRAM1_Clk   => BRAM1_Clk,
      BRAM1_Addr  => BRAM1_Addr,
      BRAM1_EN    => BRAM1_EN,
      BRAM1_WE    => BRAM1_WE,
      BRAM1_Dout  => BRAM1_Dout,
      BRAM1_Din   => BRAM1_Din_i,
      BRAM2_Rst   => BRAM2_Rst,
      BRAM2_Clk   => BRAM2_Clk,
      BRAM2_Addr  => BRAM2_Addr,
      BRAM2_EN    => BRAM2_EN,
      BRAM2_WE    => BRAM2_WE,
      BRAM2_Dout  => BRAM2_Dout,
      BRAM2_Din   => BRAM2_Din_i,
      BRAM3_Rst   => BRAM3_Rst,
      BRAM3_Clk   => BRAM3_Clk,
      BRAM3_Addr  => BRAM3_Addr,
      BRAM3_EN    => BRAM3_EN,
      BRAM3_WE    => BRAM3_WE,
      BRAM3_Dout  => BRAM3_Dout,
      BRAM3_Din   => BRAM3_Din_i,
      BRAM_Rst    => BRAM_Rst_i,
      BRAM_Clk    => BRAM_Clk_i,
      BRAM_Addr   => BRAM_Addr_i,
      BRAM_EN     => BRAM_EN_i,
      BRAM_WE     => BRAM_WE_i,
      BRAM_Dout   => BRAM_Dout_i,
      BRAM_Din    => BRAM_Din);

  end generate bram_g;

  not_bram_g: if (C_INTERFACE /= C_BRAM) generate
  begin
    BRAM1_Din_i  <= (others => '0');
    BRAM2_Din_i  <= (others => '0');
    BRAM3_Din_i  <= (others => '0');
    BRAM_Rst_i   <= '0';
    BRAM_Clk_i   <= '0';
    BRAM_Addr_i  <= (others => '0');
    BRAM_EN_i    <= '0';
    BRAM_WE_i    <= (others => '0');
    BRAM_Dout_i  <= (others => '0');
  end generate not_bram_g;

  bram1_din_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH+8*C_ECC) port map(Clk, Rst, BRAM1_Din_i, BRAM1_Din);
  bram2_din_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_DWIDTH+8*C_ECC) port map(Clk, Rst, BRAM2_Din_i, BRAM2_Din);
  BRAM3_Din <= BRAM3_Din_i;
  BRAM_Rst  <= BRAM_Rst_i;
  BRAM_Clk  <= BRAM_Clk_i;
  BRAM_Addr <= BRAM_Addr_i;
  BRAM_EN   <= BRAM_EN_i;
  BRAM_WE   <= BRAM_WE_i;
  BRAM_Dout <= BRAM_Dout_i;

  -- M_BRAM
  m_bram_g: if (C_INTERFACE = C_M_BRAM) generate
  begin

    m_bram_voter_i : entity tmr_voter_v1_0_5.m_bram_voter
    generic map(
      C_ECC             => C_ECC,
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable  => tmr_disable_vec,
      M_BRAM1_Rst  => M_BRAM1_Rst_i,
      M_BRAM1_Clk  => M_BRAM1_Clk_i,
      M_BRAM1_Addr => M_BRAM1_Addr_i,
      M_BRAM1_EN   => M_BRAM1_EN_i,
      M_BRAM1_WE   => M_BRAM1_WE_i,
      M_BRAM1_Dout => M_BRAM1_Dout_i,
      M_BRAM1_Din  => M_BRAM1_Din,
      M_BRAM2_Rst  => M_BRAM2_Rst,
      M_BRAM2_Clk  => M_BRAM2_Clk,
      M_BRAM2_Addr => M_BRAM2_Addr,
      M_BRAM2_EN   => M_BRAM2_EN,
      M_BRAM2_WE   => M_BRAM2_WE,
      M_BRAM2_Dout => M_BRAM2_Dout,
      M_BRAM2_Din  => M_BRAM2_Din,
      M_BRAM3_Rst  => M_BRAM3_Rst,
      M_BRAM3_Clk  => M_BRAM3_Clk,
      M_BRAM3_Addr => M_BRAM3_Addr,
      M_BRAM3_EN   => M_BRAM3_EN,
      M_BRAM3_WE   => M_BRAM3_WE,
      M_BRAM3_Dout => M_BRAM3_Dout,
      M_BRAM3_Din  => M_BRAM3_Din,
      S_BRAM_Rst   => S_BRAM_Rst,
      S_BRAM_Clk   => S_BRAM_Clk,
      S_BRAM_Addr  => S_BRAM_Addr,
      S_BRAM_EN    => S_BRAM_EN,
      S_BRAM_WE    => S_BRAM_WE,
      S_BRAM_Dout  => S_BRAM_Dout,
      S_BRAM_Din   => S_BRAM_Din_i);

    count_seu_g: if (C_COMPARATOR = 1) generate
      signal MisMatch_Enable : std_logic;
    begin

      EN_Reg : process(Clk) is
      begin
        if Clk'event and Clk = '1' then
          if Rst = '1' then
            M_BRAM_MisMatch <= '0';
            MisMatch_Enable <= '0';
          else
            M_BRAM_MisMatch <= MisMatch_Enable and (Compare_i(2) or Compare_i(1) or Compare_i(0));
            MisMatch_Enable <= M_BRAM1_EN_i and not
                               (M_BRAM1_WE_i(3) or M_BRAM1_WE_i(2) or M_BRAM1_WE_i(1) or M_BRAM1_WE_i(0));
          end if;
        end if;
      end process EN_Reg;

    end generate count_seu_g;

    no_count_seu_g: if (C_COMPARATOR = 0) generate
    begin
      M_BRAM_MisMatch <= '0';
    end generate no_count_seu_g;

  end generate m_bram_g;

  not_m_bram_g: if (C_INTERFACE /= C_M_BRAM) generate
  begin
    M_BRAM1_Rst_i   <= '0';
    M_BRAM1_Clk_i   <= '0';
    M_BRAM1_Addr_i  <= (others => '0');
    M_BRAM1_EN_i    <= '0';
    M_BRAM1_WE_i    <= (others => '0');
    M_BRAM1_Dout_i  <= (others => '0');
    S_BRAM_Din_i    <= (others => '0');
    M_BRAM_MisMatch <= '0';
  end generate not_m_bram_g;

  m_bram1_rst_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                           port map(Clk, Rst, M_BRAM1_Rst_i,  M_BRAM1_Rst);
  m_bram1_clk_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                           port map(Clk, Rst, M_BRAM1_Clk_i,  M_BRAM1_Clk);
  m_bram1_addr_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_AWIDTH)             port map(Clk, Rst, M_BRAM1_Addr_i, M_BRAM1_Addr);
  m_bram1_en_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                           port map(Clk, Rst, M_BRAM1_EN_i,   M_BRAM1_EN);
  m_bram1_we_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, (C_LMB_DWIDTH+8*C_ECC)/8) port map(Clk, Rst, M_BRAM1_WE_i,   M_BRAM1_WE);
  m_bram1_dout_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH+8*C_ECC)     port map(Clk, Rst, M_BRAM1_Dout_i, M_BRAM1_Dout);
  S_BRAM_Din   <= S_BRAM_Din_i;

  -- AXI
  axi_g: if (C_INTERFACE = C_AXI4 or C_INTERFACE = C_ACE or C_INTERFACE = C_AXI4LITE) generate
  begin

    axi_voter_i : entity tmr_voter_v1_0_5.axi_voter
    generic map (
      C_INTERFACE        => C_INTERFACE,
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
      C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
      C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
      C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
      C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
      C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
      C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
      C_USE_TMR_DISABLE  => C_USE_DISABLE)
    port map (
      TMR_Disable     => tmr_disable_vec,
      S_AXI1_AWID     => S_AXI1_AWID,
      S_AXI1_AWADDR   => S_AXI1_AWADDR,
      S_AXI1_AWLEN    => S_AXI1_AWLEN,
      S_AXI1_AWSIZE   => S_AXI1_AWSIZE,
      S_AXI1_AWBURST  => S_AXI1_AWBURST,
      S_AXI1_AWLOCK   => S_AXI1_AWLOCK,
      S_AXI1_AWCACHE  => S_AXI1_AWCACHE,
      S_AXI1_AWPROT   => S_AXI1_AWPROT,
      S_AXI1_AWQOS    => S_AXI1_AWQOS,
      S_AXI1_AWVALID  => S_AXI1_AWVALID,
      S_AXI1_AWREADY  => S_AXI1_AWREADY_i,
      S_AXI1_AWUSER   => S_AXI1_AWUSER,
      S_AXI1_AWDOMAIN => S_AXI1_AWDOMAIN,
      S_AXI1_AWSNOOP  => S_AXI1_AWSNOOP,
      S_AXI1_AWBAR    => S_AXI1_AWBAR,
      S_AXI1_WDATA    => S_AXI1_WDATA,
      S_AXI1_WSTRB    => S_AXI1_WSTRB,
      S_AXI1_WLAST    => S_AXI1_WLAST,
      S_AXI1_WVALID   => S_AXI1_WVALID,
      S_AXI1_WREADY   => S_AXI1_WREADY_i,
      S_AXI1_WUSER    => S_AXI1_WUSER,
      S_AXI1_BID      => S_AXI1_BID_i,
      S_AXI1_BRESP    => S_AXI1_BRESP_i,
      S_AXI1_BVALID   => S_AXI1_BVALID_i,
      S_AXI1_BREADY   => S_AXI1_BREADY,
      S_AXI1_BUSER    => S_AXI1_BUSER_i,
      S_AXI1_WACK     => S_AXI1_WACK,
      S_AXI1_ARID     => S_AXI1_ARID,
      S_AXI1_ARADDR   => S_AXI1_ARADDR,
      S_AXI1_ARLEN    => S_AXI1_ARLEN,
      S_AXI1_ARSIZE   => S_AXI1_ARSIZE,
      S_AXI1_ARBURST  => S_AXI1_ARBURST,
      S_AXI1_ARLOCK   => S_AXI1_ARLOCK,
      S_AXI1_ARCACHE  => S_AXI1_ARCACHE,
      S_AXI1_ARPROT   => S_AXI1_ARPROT,
      S_AXI1_ARQOS    => S_AXI1_ARQOS,
      S_AXI1_ARVALID  => S_AXI1_ARVALID,
      S_AXI1_ARREADY  => S_AXI1_ARREADY_i,
      S_AXI1_ARUSER   => S_AXI1_ARUSER,
      S_AXI1_ARDOMAIN => S_AXI1_ARDOMAIN,
      S_AXI1_ARSNOOP  => S_AXI1_ARSNOOP,
      S_AXI1_ARBAR    => S_AXI1_ARBAR,
      S_AXI1_RID      => S_AXI1_RID_i,
      S_AXI1_RDATA    => S_AXI1_RDATA_i,
      S_AXI1_RRESP    => S_AXI1_RRESP_i,
      S_AXI1_RLAST    => S_AXI1_RLAST_i,
      S_AXI1_RVALID   => S_AXI1_RVALID_i,
      S_AXI1_RREADY   => S_AXI1_RREADY,
      S_AXI1_RUSER    => S_AXI1_RUSER_i,
      S_AXI1_RACK     => S_AXI1_RACK,
      S_AXI1_ACVALID  => S_AXI1_ACVALID_i,
      S_AXI1_ACADDR   => S_AXI1_ACADDR_i,
      S_AXI1_ACSNOOP  => S_AXI1_ACSNOOP_i,
      S_AXI1_ACPROT   => S_AXI1_ACPROT_i,
      S_AXI1_ACREADY  => S_AXI1_ACREADY,
      S_AXI1_CRVALID  => S_AXI1_CRVALID,
      S_AXI1_CRRESP   => S_AXI1_CRRESP,
      S_AXI1_CRREADY  => S_AXI1_CRREADY_i,
      S_AXI1_CDVALID  => S_AXI1_CDVALID,
      S_AXI1_CDDATA   => S_AXI1_CDDATA,
      S_AXI1_CDLAST   => S_AXI1_CDLAST,
      S_AXI1_CDREADY  => S_AXI1_CDREADY_i,
      S_AXI2_AWID     => S_AXI2_AWID,
      S_AXI2_AWADDR   => S_AXI2_AWADDR,
      S_AXI2_AWLEN    => S_AXI2_AWLEN,
      S_AXI2_AWSIZE   => S_AXI2_AWSIZE,
      S_AXI2_AWBURST  => S_AXI2_AWBURST,
      S_AXI2_AWLOCK   => S_AXI2_AWLOCK,
      S_AXI2_AWCACHE  => S_AXI2_AWCACHE,
      S_AXI2_AWPROT   => S_AXI2_AWPROT,
      S_AXI2_AWQOS    => S_AXI2_AWQOS,
      S_AXI2_AWVALID  => S_AXI2_AWVALID,
      S_AXI2_AWREADY  => S_AXI2_AWREADY_i,
      S_AXI2_AWUSER   => S_AXI2_AWUSER,
      S_AXI2_AWDOMAIN => S_AXI2_AWDOMAIN,
      S_AXI2_AWSNOOP  => S_AXI2_AWSNOOP,
      S_AXI2_AWBAR    => S_AXI2_AWBAR,
      S_AXI2_WDATA    => S_AXI2_WDATA,
      S_AXI2_WSTRB    => S_AXI2_WSTRB,
      S_AXI2_WLAST    => S_AXI2_WLAST,
      S_AXI2_WVALID   => S_AXI2_WVALID,
      S_AXI2_WREADY   => S_AXI2_WREADY_i,
      S_AXI2_WUSER    => S_AXI2_WUSER,
      S_AXI2_BID      => S_AXI2_BID_i,
      S_AXI2_BRESP    => S_AXI2_BRESP_i,
      S_AXI2_BVALID   => S_AXI2_BVALID_i,
      S_AXI2_BREADY   => S_AXI2_BREADY,
      S_AXI2_BUSER    => S_AXI2_BUSER_i,
      S_AXI2_WACK     => S_AXI2_WACK,
      S_AXI2_ARID     => S_AXI2_ARID,
      S_AXI2_ARADDR   => S_AXI2_ARADDR,
      S_AXI2_ARLEN    => S_AXI2_ARLEN,
      S_AXI2_ARSIZE   => S_AXI2_ARSIZE,
      S_AXI2_ARBURST  => S_AXI2_ARBURST,
      S_AXI2_ARLOCK   => S_AXI2_ARLOCK,
      S_AXI2_ARCACHE  => S_AXI2_ARCACHE,
      S_AXI2_ARPROT   => S_AXI2_ARPROT,
      S_AXI2_ARQOS    => S_AXI2_ARQOS,
      S_AXI2_ARVALID  => S_AXI2_ARVALID,
      S_AXI2_ARREADY  => S_AXI2_ARREADY_i,
      S_AXI2_ARUSER   => S_AXI2_ARUSER,
      S_AXI2_ARDOMAIN => S_AXI2_ARDOMAIN,
      S_AXI2_ARSNOOP  => S_AXI2_ARSNOOP,
      S_AXI2_ARBAR    => S_AXI2_ARBAR,
      S_AXI2_RID      => S_AXI2_RID_i,
      S_AXI2_RDATA    => S_AXI2_RDATA_i,
      S_AXI2_RRESP    => S_AXI2_RRESP_i,
      S_AXI2_RLAST    => S_AXI2_RLAST_i,
      S_AXI2_RVALID   => S_AXI2_RVALID_i,
      S_AXI2_RREADY   => S_AXI2_RREADY,
      S_AXI2_RUSER    => S_AXI2_RUSER_i,
      S_AXI2_RACK     => S_AXI2_RACK,
      S_AXI2_ACVALID  => S_AXI2_ACVALID_i,
      S_AXI2_ACADDR   => S_AXI2_ACADDR_i,
      S_AXI2_ACSNOOP  => S_AXI2_ACSNOOP_i,
      S_AXI2_ACPROT   => S_AXI2_ACPROT_i,
      S_AXI2_ACREADY  => S_AXI2_ACREADY,
      S_AXI2_CRVALID  => S_AXI2_CRVALID,
      S_AXI2_CRRESP   => S_AXI2_CRRESP,
      S_AXI2_CRREADY  => S_AXI2_CRREADY_i,
      S_AXI2_CDVALID  => S_AXI2_CDVALID,
      S_AXI2_CDDATA   => S_AXI2_CDDATA,
      S_AXI2_CDLAST   => S_AXI2_CDLAST,
      S_AXI2_CDREADY  => S_AXI2_CDREADY_i,
      S_AXI3_AWID     => S_AXI3_AWID,
      S_AXI3_AWADDR   => S_AXI3_AWADDR,
      S_AXI3_AWLEN    => S_AXI3_AWLEN,
      S_AXI3_AWSIZE   => S_AXI3_AWSIZE,
      S_AXI3_AWBURST  => S_AXI3_AWBURST,
      S_AXI3_AWLOCK   => S_AXI3_AWLOCK,
      S_AXI3_AWCACHE  => S_AXI3_AWCACHE,
      S_AXI3_AWPROT   => S_AXI3_AWPROT,
      S_AXI3_AWQOS    => S_AXI3_AWQOS,
      S_AXI3_AWVALID  => S_AXI3_AWVALID,
      S_AXI3_AWREADY  => S_AXI3_AWREADY_i,
      S_AXI3_AWDOMAIN => S_AXI3_AWDOMAIN,
      S_AXI3_AWSNOOP  => S_AXI3_AWSNOOP,
      S_AXI3_AWBAR    => S_AXI3_AWBAR,
      S_AXI3_AWUSER   => S_AXI3_AWUSER,
      S_AXI3_WDATA    => S_AXI3_WDATA,
      S_AXI3_WSTRB    => S_AXI3_WSTRB,
      S_AXI3_WLAST    => S_AXI3_WLAST,
      S_AXI3_WVALID   => S_AXI3_WVALID,
      S_AXI3_WREADY   => S_AXI3_WREADY_i,
      S_AXI3_WUSER    => S_AXI3_WUSER,
      S_AXI3_BID      => S_AXI3_BID_i,
      S_AXI3_BRESP    => S_AXI3_BRESP_i,
      S_AXI3_BVALID   => S_AXI3_BVALID_i,
      S_AXI3_BREADY   => S_AXI3_BREADY,
      S_AXI3_BUSER    => S_AXI3_BUSER_i,
      S_AXI3_WACK     => S_AXI3_WACK,
      S_AXI3_ARID     => S_AXI3_ARID,
      S_AXI3_ARADDR   => S_AXI3_ARADDR,
      S_AXI3_ARLEN    => S_AXI3_ARLEN,
      S_AXI3_ARSIZE   => S_AXI3_ARSIZE,
      S_AXI3_ARBURST  => S_AXI3_ARBURST,
      S_AXI3_ARLOCK   => S_AXI3_ARLOCK,
      S_AXI3_ARCACHE  => S_AXI3_ARCACHE,
      S_AXI3_ARPROT   => S_AXI3_ARPROT,
      S_AXI3_ARQOS    => S_AXI3_ARQOS,
      S_AXI3_ARVALID  => S_AXI3_ARVALID,
      S_AXI3_ARREADY  => S_AXI3_ARREADY_i,
      S_AXI3_ARUSER   => S_AXI3_ARUSER,
      S_AXI3_ARDOMAIN => S_AXI3_ARDOMAIN,
      S_AXI3_ARSNOOP  => S_AXI3_ARSNOOP,
      S_AXI3_ARBAR    => S_AXI3_ARBAR,
      S_AXI3_RID      => S_AXI3_RID_i,
      S_AXI3_RDATA    => S_AXI3_RDATA_i,
      S_AXI3_RRESP    => S_AXI3_RRESP_i,
      S_AXI3_RLAST    => S_AXI3_RLAST_i,
      S_AXI3_RVALID   => S_AXI3_RVALID_i,
      S_AXI3_RREADY   => S_AXI3_RREADY,
      S_AXI3_RUSER    => S_AXI3_RUSER_i,
      S_AXI3_RACK     => S_AXI3_RACK,
      S_AXI3_ACVALID  => S_AXI3_ACVALID_i,
      S_AXI3_ACADDR   => S_AXI3_ACADDR_i,
      S_AXI3_ACSNOOP  => S_AXI3_ACSNOOP_i,
      S_AXI3_ACPROT   => S_AXI3_ACPROT_i,
      S_AXI3_ACREADY  => S_AXI3_ACREADY,
      S_AXI3_CRVALID  => S_AXI3_CRVALID,
      S_AXI3_CRRESP   => S_AXI3_CRRESP,
      S_AXI3_CRREADY  => S_AXI3_CRREADY_i,
      S_AXI3_CDVALID  => S_AXI3_CDVALID,
      S_AXI3_CDDATA   => S_AXI3_CDDATA,
      S_AXI3_CDLAST   => S_AXI3_CDLAST,
      S_AXI3_CDREADY  => S_AXI3_CDREADY_i,
      M_AXI_AWID      => M_AXI_AWID_i,
      M_AXI_AWADDR    => M_AXI_AWADDR_i,
      M_AXI_AWLEN     => M_AXI_AWLEN_i,
      M_AXI_AWSIZE    => M_AXI_AWSIZE_i,
      M_AXI_AWBURST   => M_AXI_AWBURST_i,
      M_AXI_AWLOCK    => M_AXI_AWLOCK_i,
      M_AXI_AWCACHE   => M_AXI_AWCACHE_i,
      M_AXI_AWPROT    => M_AXI_AWPROT_i,
      M_AXI_AWQOS     => M_AXI_AWQOS_i,
      M_AXI_AWVALID   => M_AXI_AWVALID_i,
      M_AXI_AWREADY   => M_AXI_AWREADY,
      M_AXI_AWUSER    => M_AXI_AWUSER_i,
      M_AXI_AWDOMAIN  => M_AXI_AWDOMAIN_i,
      M_AXI_AWSNOOP   => M_AXI_AWSNOOP_i,
      M_AXI_AWBAR     => M_AXI_AWBAR_i,
      M_AXI_WDATA     => M_AXI_WDATA_i,
      M_AXI_WSTRB     => M_AXI_WSTRB_i,
      M_AXI_WLAST     => M_AXI_WLAST_i,
      M_AXI_WVALID    => M_AXI_WVALID_i,
      M_AXI_WREADY    => M_AXI_WREADY,
      M_AXI_WUSER     => M_AXI_WUSER_i,
      M_AXI_BID       => M_AXI_BID,
      M_AXI_BRESP     => M_AXI_BRESP,
      M_AXI_BVALID    => M_AXI_BVALID,
      M_AXI_BREADY    => M_AXI_BREADY_i,
      M_AXI_BUSER     => M_AXI_BUSER,
      M_AXI_WACK      => M_AXI_WACK_i,
      M_AXI_ARID      => M_AXI_ARID_i,
      M_AXI_ARADDR    => M_AXI_ARADDR_i,
      M_AXI_ARLEN     => M_AXI_ARLEN_i,
      M_AXI_ARSIZE    => M_AXI_ARSIZE_i,
      M_AXI_ARBURST   => M_AXI_ARBURST_i,
      M_AXI_ARLOCK    => M_AXI_ARLOCK_i,
      M_AXI_ARCACHE   => M_AXI_ARCACHE_i,
      M_AXI_ARPROT    => M_AXI_ARPROT_i,
      M_AXI_ARQOS     => M_AXI_ARQOS_i,
      M_AXI_ARVALID   => M_AXI_ARVALID_i,
      M_AXI_ARREADY   => M_AXI_ARREADY,
      M_AXI_ARUSER    => M_AXI_ARUSER_i,
      M_AXI_ARDOMAIN  => M_AXI_ARDOMAIN_i,
      M_AXI_ARSNOOP   => M_AXI_ARSNOOP_i,
      M_AXI_ARBAR     => M_AXI_ARBAR_i,
      M_AXI_RID       => M_AXI_RID,
      M_AXI_RDATA     => M_AXI_RDATA,
      M_AXI_RRESP     => M_AXI_RRESP,
      M_AXI_RLAST     => M_AXI_RLAST,
      M_AXI_RVALID    => M_AXI_RVALID,
      M_AXI_RREADY    => M_AXI_RREADY_i,
      M_AXI_RUSER     => M_AXI_RUSER,
      M_AXI_RACK      => M_AXI_RACK_i,
      M_AXI_ACVALID   => M_AXI_ACVALID,
      M_AXI_ACADDR    => M_AXI_ACADDR,
      M_AXI_ACSNOOP   => M_AXI_ACSNOOP,
      M_AXI_ACPROT    => M_AXI_ACPROT,
      M_AXI_ACREADY   => M_AXI_ACREADY_i,
      M_AXI_CRVALID   => M_AXI_CRVALID_i,
      M_AXI_CRRESP    => M_AXI_CRRESP_i,
      M_AXI_CRREADY   => M_AXI_CRREADY,
      M_AXI_CDVALID   => M_AXI_CDVALID_i,
      M_AXI_CDDATA    => M_AXI_CDDATA_i,
      M_AXI_CDLAST    => M_AXI_CDLAST_i,
      M_AXI_CDREADY   => M_AXI_CDREADY);
  end generate axi_g;

  not_axi_g: if (C_INTERFACE /= C_AXI4 and C_INTERFACE /= C_ACE and C_INTERFACE /= C_AXI4LITE) generate
  begin
    S_AXI1_AWREADY_i  <= '0';
    S_AXI1_WREADY_i   <= '0';
    S_AXI1_BID_i      <= (others => '0');
    S_AXI1_BRESP_i    <= (others => '0');
    S_AXI1_BVALID_i   <= '0';
    S_AXI1_BUSER_i    <= (others => '0');
    S_AXI1_ARREADY_i  <= '0';
    S_AXI1_RID_i      <= (others => '0');
    S_AXI1_RDATA_i    <= (others => '0');
    S_AXI1_RRESP_i    <= (others => '0');
    S_AXI1_RLAST_i    <= '0';
    S_AXI1_RVALID_i   <= '0';
    S_AXI1_RUSER_i    <= (others => '0');
    S_AXI1_ACVALID_i  <= '0';
    S_AXI1_ACADDR_i   <= (others => '0');
    S_AXI1_ACSNOOP_i  <= (others => '0');
    S_AXI1_ACPROT_i   <= (others => '0');
    S_AXI1_CRREADY_i  <= '0';
    S_AXI1_CDREADY_i  <= '0';
    S_AXI2_AWREADY_i  <= '0';
    S_AXI2_WREADY_i   <= '0';
    S_AXI2_BID_i      <= (others => '0');
    S_AXI2_BRESP_i    <= (others => '0');
    S_AXI2_BVALID_i   <= '0';
    S_AXI2_BUSER_i    <= (others => '0');
    S_AXI2_ARREADY_i  <= '0';
    S_AXI2_RID_i      <= (others => '0');
    S_AXI2_RDATA_i    <= (others => '0');
    S_AXI2_RRESP_i    <= (others => '0');
    S_AXI2_RLAST_i    <= '0';
    S_AXI2_RVALID_i   <= '0';
    S_AXI2_RUSER_i    <= (others => '0');
    S_AXI2_ACVALID_i  <= '0';
    S_AXI2_ACADDR_i   <= (others => '0');
    S_AXI2_ACSNOOP_i  <= (others => '0');
    S_AXI2_ACPROT_i   <= (others => '0');
    S_AXI2_CRREADY_i  <= '0';
    S_AXI2_CDREADY_i  <= '0';
    S_AXI3_AWREADY_i  <= '0';
    S_AXI3_WREADY_i   <= '0';
    S_AXI3_BID_i      <= (others => '0');
    S_AXI3_BRESP_i    <= (others => '0');
    S_AXI3_BVALID_i   <= '0';
    S_AXI3_BUSER_i    <= (others => '0');
    S_AXI3_ARREADY_i  <= '0';
    S_AXI3_RID_i      <= (others => '0');
    S_AXI3_RDATA_i    <= (others => '0');
    S_AXI3_RRESP_i    <= (others => '0');
    S_AXI3_RLAST_i    <= '0';
    S_AXI3_RVALID_i   <= '0';
    S_AXI3_RUSER_i    <= (others => '0');
    S_AXI3_ACVALID_i  <= '0';
    S_AXI3_ACADDR_i   <= (others => '0');
    S_AXI3_ACSNOOP_i  <= (others => '0');
    S_AXI3_ACPROT_i   <= (others => '0');
    S_AXI3_CRREADY_i  <= '0';
    S_AXI3_CDREADY_i  <= '0';
    M_AXI_AWID_i      <= (others => '0');
    M_AXI_AWADDR_i    <= (others => '0');
    M_AXI_AWLEN_i     <= (others => '0');
    M_AXI_AWSIZE_i    <= (others => '0');
    M_AXI_AWBURST_i   <= (others => '0');
    M_AXI_AWLOCK_i    <= '0';
    M_AXI_AWCACHE_i   <= (others => '0');
    M_AXI_AWPROT_i    <= (others => '0');
    M_AXI_AWQOS_i     <= (others => '0');
    M_AXI_AWVALID_i   <= '0';
    M_AXI_AWUSER_i    <= (others => '0');
    M_AXI_AWDOMAIN_i  <= (others => '0');
    M_AXI_AWSNOOP_i   <= (others => '0');
    M_AXI_AWBAR_i     <= (others => '0');
    M_AXI_WDATA_i     <= (others => '0');
    M_AXI_WSTRB_i     <= (others => '0');
    M_AXI_WLAST_i     <= '0';
    M_AXI_WVALID_i    <= '0';
    M_AXI_WUSER_i     <= (others => '0');
    M_AXI_BREADY_i    <= '0';
    M_AXI_WACK_i      <= '0';
    M_AXI_ARID_i      <= (others => '0');
    M_AXI_ARADDR_i    <= (others => '0');
    M_AXI_ARLEN_i     <= (others => '0');
    M_AXI_ARSIZE_i    <= (others => '0');
    M_AXI_ARBURST_i   <= (others => '0');
    M_AXI_ARLOCK_i    <= '0';
    M_AXI_ARCACHE_i   <= (others => '0');
    M_AXI_ARPROT_i    <= (others => '0');
    M_AXI_ARQOS_i     <= (others => '0');
    M_AXI_ARVALID_i   <= '0';
    M_AXI_ARUSER_i    <= (others => '0');
    M_AXI_ARDOMAIN_i  <= (others => '0');
    M_AXI_ARSNOOP_i   <= (others => '0');
    M_AXI_ARBAR_i     <= (others => '0');
    M_AXI_RREADY_i    <= '0';
    M_AXI_RACK_i      <= '0';
    M_AXI_ACREADY_i   <= '0';
    M_AXI_CRVALID_i   <= '0';
    M_AXI_CRRESP_i    <= (others => '0');
    M_AXI_CDVALID_i   <= '0';
    M_AXI_CDDATA_i    <= (others => '0');
    M_AXI_CDLAST_i    <= '0';
  end generate not_axi_g;

  s_axi1_awready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_AWREADY_i, S_AXI1_AWREADY);
  s_axi1_wready_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_WREADY_i,  S_AXI1_WREADY);
  s_axi1_bid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ID_WIDTH)    port map(Clk, Rst, S_AXI1_BID_i,     S_AXI1_BID);
  s_axi1_bresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                 port map(Clk, Rst, S_AXI1_BRESP_i,   S_AXI1_BRESP);
  s_axi1_bvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_BVALID_i,  S_AXI1_BVALID);
  s_axi1_buser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_BUSER_WIDTH) port map(Clk, Rst, S_AXI1_BUSER_i,   S_AXI1_BUSER);
  s_axi1_arready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_ARREADY_i, S_AXI1_ARREADY);
  s_axi1_rid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ID_WIDTH)    port map(Clk, Rst, S_AXI1_RID_i,     S_AXI1_RID);
  s_axi1_rdata_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_DATA_WIDTH)  port map(Clk, Rst, S_AXI1_RDATA_i,   S_AXI1_RDATA);
  s_axi1_rresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_RRESP_WIDTH) port map(Clk, Rst, S_AXI1_RRESP_i,   S_AXI1_RRESP);
  s_axi1_rlast_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_RLAST_i,   S_AXI1_RLAST);
  s_axi1_rvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_RVALID_i,  S_AXI1_RVALID);
  s_axi1_ruser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_RUSER_WIDTH) port map(Clk, Rst, S_AXI1_RUSER_i,   S_AXI1_RUSER);
  s_axi1_acvalid_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_ACVALID_i, S_AXI1_ACVALID);
  s_axi1_acaddr_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ADDR_WIDTH)  port map(Clk, Rst, S_AXI1_ACADDR_i,  S_AXI1_ACADDR);
  s_axi1_acsnoop_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                 port map(Clk, Rst, S_AXI1_ACSNOOP_i, S_AXI1_ACSNOOP);
  s_axi1_acprot_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                 port map(Clk, Rst, S_AXI1_ACPROT_i,  S_AXI1_ACPROT);
  s_axi1_crready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_CRREADY_i, S_AXI1_CRREADY);
  s_axi1_cdready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                    port map(Clk, Rst, S_AXI1_CDREADY_i, S_AXI1_CDREADY);
  s_axi2_awready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_AWREADY_i, S_AXI2_AWREADY);
  s_axi2_wready_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_WREADY_i,  S_AXI2_WREADY);
  s_axi2_bid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ID_WIDTH)    port map(Clk, Rst, S_AXI2_BID_i,     S_AXI2_BID);
  s_axi2_bresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                 port map(Clk, Rst, S_AXI2_BRESP_i,   S_AXI2_BRESP);
  s_axi2_bvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_BVALID_i,  S_AXI2_BVALID);
  s_axi2_buser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_BUSER_WIDTH) port map(Clk, Rst, S_AXI2_BUSER_i,   S_AXI2_BUSER);
  s_axi2_arready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_ARREADY_i, S_AXI2_ARREADY);
  s_axi2_rid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ID_WIDTH)    port map(Clk, Rst, S_AXI2_RID_i,     S_AXI2_RID);
  s_axi2_rdata_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_DATA_WIDTH)  port map(Clk, Rst, S_AXI2_RDATA_i,   S_AXI2_RDATA);
  s_axi2_rresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_RRESP_WIDTH) port map(Clk, Rst, S_AXI2_RRESP_i,   S_AXI2_RRESP);
  s_axi2_rlast_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_RLAST_i,   S_AXI2_RLAST);
  s_axi2_rvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_RVALID_i,  S_AXI2_RVALID);
  s_axi2_ruser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_RUSER_WIDTH) port map(Clk, Rst, S_AXI2_RUSER_i,   S_AXI2_RUSER);
  s_axi2_acvalid_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_ACVALID_i, S_AXI2_ACVALID);
  s_axi2_acaddr_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ADDR_WIDTH)  port map(Clk, Rst, S_AXI2_ACADDR_i,  S_AXI2_ACADDR);
  s_axi2_acsnoop_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                 port map(Clk, Rst, S_AXI2_ACSNOOP_i, S_AXI2_ACSNOOP);
  s_axi2_acprot_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                 port map(Clk, Rst, S_AXI2_ACPROT_i,  S_AXI2_ACPROT);
  s_axi2_crready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_CRREADY_i, S_AXI2_CRREADY);
  s_axi2_cdready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                    port map(Clk, Rst, S_AXI2_CDREADY_i, S_AXI2_CDREADY);
  S_AXI3_AWREADY  <= S_AXI3_AWREADY_i;
  S_AXI3_WREADY   <= S_AXI3_WREADY_i;
  S_AXI3_BID      <= S_AXI3_BID_i;
  S_AXI3_BRESP    <= S_AXI3_BRESP_i;
  S_AXI3_BVALID   <= S_AXI3_BVALID_i;
  S_AXI3_BUSER    <= S_AXI3_BUSER_i;
  S_AXI3_ARREADY  <= S_AXI3_ARREADY_i;
  S_AXI3_RID      <= S_AXI3_RID_i;
  S_AXI3_RDATA    <= S_AXI3_RDATA_i;
  S_AXI3_RRESP    <= S_AXI3_RRESP_i;
  S_AXI3_RLAST    <= S_AXI3_RLAST_i;
  S_AXI3_RVALID   <= S_AXI3_RVALID_i;
  S_AXI3_RUSER    <= S_AXI3_RUSER_i;
  S_AXI3_ACVALID  <= S_AXI3_ACVALID_i;
  S_AXI3_ACADDR   <= S_AXI3_ACADDR_i;
  S_AXI3_ACSNOOP  <= S_AXI3_ACSNOOP_i;
  S_AXI3_ACPROT   <= S_AXI3_ACPROT_i;
  S_AXI3_CRREADY  <= S_AXI3_CRREADY_i;
  S_AXI3_CDREADY  <= S_AXI3_CDREADY_i;
  M_AXI_AWID      <= M_AXI_AWID_i;
  M_AXI_AWADDR    <= M_AXI_AWADDR_i;
  M_AXI_AWLEN     <= M_AXI_AWLEN_i;
  M_AXI_AWSIZE    <= M_AXI_AWSIZE_i;
  M_AXI_AWBURST   <= M_AXI_AWBURST_i;
  M_AXI_AWLOCK    <= M_AXI_AWLOCK_i;
  M_AXI_AWCACHE   <= M_AXI_AWCACHE_i;
  M_AXI_AWPROT    <= M_AXI_AWPROT_i;
  M_AXI_AWQOS     <= M_AXI_AWQOS_i;
  M_AXI_AWVALID   <= M_AXI_AWVALID_i;
  M_AXI_AWUSER    <= M_AXI_AWUSER_i;
  M_AXI_AWDOMAIN  <= M_AXI_AWDOMAIN_i;
  M_AXI_AWSNOOP   <= M_AXI_AWSNOOP_i;
  M_AXI_AWBAR     <= M_AXI_AWBAR_i;
  M_AXI_WDATA     <= M_AXI_WDATA_i;
  M_AXI_WSTRB     <= M_AXI_WSTRB_i;
  M_AXI_WLAST     <= M_AXI_WLAST_i;
  M_AXI_WVALID    <= M_AXI_WVALID_i;
  M_AXI_WUSER     <= M_AXI_WUSER_i;
  M_AXI_BREADY    <= M_AXI_BREADY_i;
  M_AXI_WACK      <= M_AXI_WACK_i;
  M_AXI_ARID      <= M_AXI_ARID_i;
  M_AXI_ARADDR    <= M_AXI_ARADDR_i;
  M_AXI_ARLEN     <= M_AXI_ARLEN_i;
  M_AXI_ARSIZE    <= M_AXI_ARSIZE_i;
  M_AXI_ARBURST   <= M_AXI_ARBURST_i;
  M_AXI_ARLOCK    <= M_AXI_ARLOCK_i;
  M_AXI_ARCACHE   <= M_AXI_ARCACHE_i;
  M_AXI_ARPROT    <= M_AXI_ARPROT_i;
  M_AXI_ARQOS     <= M_AXI_ARQOS_i;
  M_AXI_ARVALID   <= M_AXI_ARVALID_i;
  M_AXI_ARUSER    <= M_AXI_ARUSER_i;
  M_AXI_ARDOMAIN  <= M_AXI_ARDOMAIN_i;
  M_AXI_ARSNOOP   <= M_AXI_ARSNOOP_i;
  M_AXI_ARBAR     <= M_AXI_ARBAR_i;
  M_AXI_RREADY    <= M_AXI_RREADY_i;
  M_AXI_RACK      <= M_AXI_RACK_i;
  M_AXI_ACREADY   <= M_AXI_ACREADY_i;
  M_AXI_CRVALID   <= M_AXI_CRVALID_i;
  M_AXI_CRRESP    <= M_AXI_CRRESP_i;
  M_AXI_CDVALID   <= M_AXI_CDVALID_i;
  M_AXI_CDDATA    <= M_AXI_CDDATA_i;
  M_AXI_CDLAST    <= M_AXI_CDLAST_i;

  -- AXI Slave
  axi_slave_g: if (C_INTERFACE = C_S_AXI4 or C_INTERFACE = C_S_ACE or C_INTERFACE = C_S_AXI4LITE) generate
  begin

    axi_slave_voter_i : entity tmr_voter_v1_0_5.s_axi_voter
    generic map (
      C_INTERFACE        => C_INTERFACE,
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      C_AXI_DATA_WIDTH   => C_AXI_DATA_WIDTH,
      C_AXI_ADDR_WIDTH   => C_AXI_ADDR_WIDTH,
      C_AXI_AWUSER_WIDTH => C_AXI_AWUSER_WIDTH,
      C_AXI_ARUSER_WIDTH => C_AXI_ARUSER_WIDTH,
      C_AXI_WUSER_WIDTH  => C_AXI_WUSER_WIDTH,
      C_AXI_RUSER_WIDTH  => C_AXI_RUSER_WIDTH,
      C_AXI_BUSER_WIDTH  => C_AXI_BUSER_WIDTH,
      C_USE_TMR_DISABLE  => C_USE_DISABLE)
    port map (
      TMR_Disable     => tmr_disable_vec,
      M_AXI1_AWID     => M_AXI1_AWID_i,
      M_AXI1_AWADDR   => M_AXI1_AWADDR_i,
      M_AXI1_AWLEN    => M_AXI1_AWLEN_i,
      M_AXI1_AWSIZE   => M_AXI1_AWSIZE_i,
      M_AXI1_AWBURST  => M_AXI1_AWBURST_i,
      M_AXI1_AWLOCK   => M_AXI1_AWLOCK_i,
      M_AXI1_AWCACHE  => M_AXI1_AWCACHE_i,
      M_AXI1_AWPROT   => M_AXI1_AWPROT_i,
      M_AXI1_AWQOS    => M_AXI1_AWQOS_i,
      M_AXI1_AWVALID  => M_AXI1_AWVALID_i,
      M_AXI1_AWREADY  => M_AXI1_AWREADY,
      M_AXI1_AWUSER   => M_AXI1_AWUSER_i,
      M_AXI1_AWDOMAIN => M_AXI1_AWDOMAIN_i,
      M_AXI1_AWSNOOP  => M_AXI1_AWSNOOP_i,
      M_AXI1_AWBAR    => M_AXI1_AWBAR_i,
      M_AXI1_WDATA    => M_AXI1_WDATA_i,
      M_AXI1_WSTRB    => M_AXI1_WSTRB_i,
      M_AXI1_WLAST    => M_AXI1_WLAST_i,
      M_AXI1_WVALID   => M_AXI1_WVALID_i,
      M_AXI1_WREADY   => M_AXI1_WREADY,
      M_AXI1_WUSER    => M_AXI1_WUSER_i,
      M_AXI1_BID      => M_AXI1_BID,
      M_AXI1_BRESP    => M_AXI1_BRESP,
      M_AXI1_BVALID   => M_AXI1_BVALID,
      M_AXI1_BREADY   => M_AXI1_BREADY_i,
      M_AXI1_BUSER    => M_AXI1_BUSER,
      M_AXI1_WACK     => M_AXI1_WACK_i,
      M_AXI1_ARID     => M_AXI1_ARID_i,
      M_AXI1_ARADDR   => M_AXI1_ARADDR_i,
      M_AXI1_ARLEN    => M_AXI1_ARLEN_i,
      M_AXI1_ARSIZE   => M_AXI1_ARSIZE_i,
      M_AXI1_ARBURST  => M_AXI1_ARBURST_i,
      M_AXI1_ARLOCK   => M_AXI1_ARLOCK_i,
      M_AXI1_ARCACHE  => M_AXI1_ARCACHE_i,
      M_AXI1_ARPROT   => M_AXI1_ARPROT_i,
      M_AXI1_ARQOS    => M_AXI1_ARQOS_i,
      M_AXI1_ARVALID  => M_AXI1_ARVALID_i,
      M_AXI1_ARREADY  => M_AXI1_ARREADY,
      M_AXI1_ARUSER   => M_AXI1_ARUSER_i,
      M_AXI1_ARDOMAIN => M_AXI1_ARDOMAIN_i,
      M_AXI1_ARSNOOP  => M_AXI1_ARSNOOP_i,
      M_AXI1_ARBAR    => M_AXI1_ARBAR_i,
      M_AXI1_RID      => M_AXI1_RID,
      M_AXI1_RDATA    => M_AXI1_RDATA,
      M_AXI1_RRESP    => M_AXI1_RRESP,
      M_AXI1_RLAST    => M_AXI1_RLAST,
      M_AXI1_RVALID   => M_AXI1_RVALID,
      M_AXI1_RREADY   => M_AXI1_RREADY_i,
      M_AXI1_RUSER    => M_AXI1_RUSER,
      M_AXI1_RACK     => M_AXI1_RACK_i,
      M_AXI1_ACVALID  => M_AXI1_ACVALID,
      M_AXI1_ACADDR   => M_AXI1_ACADDR,
      M_AXI1_ACSNOOP  => M_AXI1_ACSNOOP,
      M_AXI1_ACPROT   => M_AXI1_ACPROT,
      M_AXI1_ACREADY  => M_AXI1_ACREADY_i,
      M_AXI1_CRVALID  => M_AXI1_CRVALID_i,
      M_AXI1_CRRESP   => M_AXI1_CRRESP_i,
      M_AXI1_CRREADY  => M_AXI1_CRREADY,
      M_AXI1_CDVALID  => M_AXI1_CDVALID_i,
      M_AXI1_CDDATA   => M_AXI1_CDDATA_i,
      M_AXI1_CDLAST   => M_AXI1_CDLAST_i,
      M_AXI1_CDREADY  => M_AXI1_CDREADY,
      M_AXI2_AWID     => M_AXI2_AWID_i,
      M_AXI2_AWADDR   => M_AXI2_AWADDR_i,
      M_AXI2_AWLEN    => M_AXI2_AWLEN_i,
      M_AXI2_AWSIZE   => M_AXI2_AWSIZE_i,
      M_AXI2_AWBURST  => M_AXI2_AWBURST_i,
      M_AXI2_AWLOCK   => M_AXI2_AWLOCK_i,
      M_AXI2_AWCACHE  => M_AXI2_AWCACHE_i,
      M_AXI2_AWPROT   => M_AXI2_AWPROT_i,
      M_AXI2_AWQOS    => M_AXI2_AWQOS_i,
      M_AXI2_AWVALID  => M_AXI2_AWVALID_i,
      M_AXI2_AWREADY  => M_AXI2_AWREADY,
      M_AXI2_AWUSER   => M_AXI2_AWUSER_i,
      M_AXI2_AWDOMAIN => M_AXI2_AWDOMAIN_i,
      M_AXI2_AWSNOOP  => M_AXI2_AWSNOOP_i,
      M_AXI2_AWBAR    => M_AXI2_AWBAR_i,
      M_AXI2_WDATA    => M_AXI2_WDATA_i,
      M_AXI2_WSTRB    => M_AXI2_WSTRB_i,
      M_AXI2_WLAST    => M_AXI2_WLAST_i,
      M_AXI2_WVALID   => M_AXI2_WVALID_i,
      M_AXI2_WREADY   => M_AXI2_WREADY,
      M_AXI2_WUSER    => M_AXI2_WUSER_i,
      M_AXI2_BID      => M_AXI2_BID,
      M_AXI2_BRESP    => M_AXI2_BRESP,
      M_AXI2_BVALID   => M_AXI2_BVALID,
      M_AXI2_BREADY   => M_AXI2_BREADY_i,
      M_AXI2_BUSER    => M_AXI2_BUSER,
      M_AXI2_WACK     => M_AXI2_WACK_i,
      M_AXI2_ARID     => M_AXI2_ARID_i,
      M_AXI2_ARADDR   => M_AXI2_ARADDR_i,
      M_AXI2_ARLEN    => M_AXI2_ARLEN_i,
      M_AXI2_ARSIZE   => M_AXI2_ARSIZE_i,
      M_AXI2_ARBURST  => M_AXI2_ARBURST_i,
      M_AXI2_ARLOCK   => M_AXI2_ARLOCK_i,
      M_AXI2_ARCACHE  => M_AXI2_ARCACHE_i,
      M_AXI2_ARPROT   => M_AXI2_ARPROT_i,
      M_AXI2_ARQOS    => M_AXI2_ARQOS_i,
      M_AXI2_ARVALID  => M_AXI2_ARVALID_i,
      M_AXI2_ARREADY  => M_AXI2_ARREADY,
      M_AXI2_ARUSER   => M_AXI2_ARUSER_i,
      M_AXI2_ARDOMAIN => M_AXI2_ARDOMAIN_i,
      M_AXI2_ARSNOOP  => M_AXI2_ARSNOOP_i,
      M_AXI2_ARBAR    => M_AXI2_ARBAR_i,
      M_AXI2_RID      => M_AXI2_RID,
      M_AXI2_RDATA    => M_AXI2_RDATA,
      M_AXI2_RRESP    => M_AXI2_RRESP,
      M_AXI2_RLAST    => M_AXI2_RLAST,
      M_AXI2_RVALID   => M_AXI2_RVALID,
      M_AXI2_RREADY   => M_AXI2_RREADY_i,
      M_AXI2_RUSER    => M_AXI2_RUSER,
      M_AXI2_RACK     => M_AXI2_RACK_i,
      M_AXI2_ACVALID  => M_AXI2_ACVALID,
      M_AXI2_ACADDR   => M_AXI2_ACADDR,
      M_AXI2_ACSNOOP  => M_AXI2_ACSNOOP,
      M_AXI2_ACPROT   => M_AXI2_ACPROT,
      M_AXI2_ACREADY  => M_AXI2_ACREADY_i,
      M_AXI2_CRVALID  => M_AXI2_CRVALID_i,
      M_AXI2_CRRESP   => M_AXI2_CRRESP_i,
      M_AXI2_CRREADY  => M_AXI2_CRREADY,
      M_AXI2_CDVALID  => M_AXI2_CDVALID_i,
      M_AXI2_CDDATA   => M_AXI2_CDDATA_i,
      M_AXI2_CDLAST   => M_AXI2_CDLAST_i,
      M_AXI2_CDREADY  => M_AXI2_CDREADY,
      M_AXI3_AWID     => M_AXI3_AWID_i,
      M_AXI3_AWADDR   => M_AXI3_AWADDR_i,
      M_AXI3_AWLEN    => M_AXI3_AWLEN_i,
      M_AXI3_AWSIZE   => M_AXI3_AWSIZE_i,
      M_AXI3_AWBURST  => M_AXI3_AWBURST_i,
      M_AXI3_AWLOCK   => M_AXI3_AWLOCK_i,
      M_AXI3_AWCACHE  => M_AXI3_AWCACHE_i,
      M_AXI3_AWPROT   => M_AXI3_AWPROT_i,
      M_AXI3_AWQOS    => M_AXI3_AWQOS_i,
      M_AXI3_AWVALID  => M_AXI3_AWVALID_i,
      M_AXI3_AWREADY  => M_AXI3_AWREADY,
      M_AXI3_AWDOMAIN => M_AXI3_AWDOMAIN_i,
      M_AXI3_AWSNOOP  => M_AXI3_AWSNOOP_i,
      M_AXI3_AWBAR    => M_AXI3_AWBAR_i,
      M_AXI3_AWUSER   => M_AXI3_AWUSER_i,
      M_AXI3_WDATA    => M_AXI3_WDATA_i,
      M_AXI3_WSTRB    => M_AXI3_WSTRB_i,
      M_AXI3_WLAST    => M_AXI3_WLAST_i,
      M_AXI3_WVALID   => M_AXI3_WVALID_i,
      M_AXI3_WREADY   => M_AXI3_WREADY,
      M_AXI3_WUSER    => M_AXI3_WUSER_i,
      M_AXI3_BID      => M_AXI3_BID,
      M_AXI3_BRESP    => M_AXI3_BRESP,
      M_AXI3_BVALID   => M_AXI3_BVALID,
      M_AXI3_BREADY   => M_AXI3_BREADY_i,
      M_AXI3_BUSER    => M_AXI3_BUSER,
      M_AXI3_WACK     => M_AXI3_WACK_i,
      M_AXI3_ARID     => M_AXI3_ARID_i,
      M_AXI3_ARADDR   => M_AXI3_ARADDR_i,
      M_AXI3_ARLEN    => M_AXI3_ARLEN_i,
      M_AXI3_ARSIZE   => M_AXI3_ARSIZE_i,
      M_AXI3_ARBURST  => M_AXI3_ARBURST_i,
      M_AXI3_ARLOCK   => M_AXI3_ARLOCK_i,
      M_AXI3_ARCACHE  => M_AXI3_ARCACHE_i,
      M_AXI3_ARPROT   => M_AXI3_ARPROT_i,
      M_AXI3_ARQOS    => M_AXI3_ARQOS_i,
      M_AXI3_ARVALID  => M_AXI3_ARVALID_i,
      M_AXI3_ARREADY  => M_AXI3_ARREADY,
      M_AXI3_ARUSER   => M_AXI3_ARUSER_i,
      M_AXI3_ARDOMAIN => M_AXI3_ARDOMAIN_i,
      M_AXI3_ARSNOOP  => M_AXI3_ARSNOOP_i,
      M_AXI3_ARBAR    => M_AXI3_ARBAR_i,
      M_AXI3_RID      => M_AXI3_RID,
      M_AXI3_RDATA    => M_AXI3_RDATA,
      M_AXI3_RRESP    => M_AXI3_RRESP,
      M_AXI3_RLAST    => M_AXI3_RLAST,
      M_AXI3_RVALID   => M_AXI3_RVALID,
      M_AXI3_RREADY   => M_AXI3_RREADY_i,
      M_AXI3_RUSER    => M_AXI3_RUSER,
      M_AXI3_RACK     => M_AXI3_RACK_i,
      M_AXI3_ACVALID  => M_AXI3_ACVALID,
      M_AXI3_ACADDR   => M_AXI3_ACADDR,
      M_AXI3_ACSNOOP  => M_AXI3_ACSNOOP,
      M_AXI3_ACPROT   => M_AXI3_ACPROT,
      M_AXI3_ACREADY  => M_AXI3_ACREADY_i,
      M_AXI3_CRVALID  => M_AXI3_CRVALID_i,
      M_AXI3_CRRESP   => M_AXI3_CRRESP_i,
      M_AXI3_CRREADY  => M_AXI3_CRREADY,
      M_AXI3_CDVALID  => M_AXI3_CDVALID_i,
      M_AXI3_CDDATA   => M_AXI3_CDDATA_i,
      M_AXI3_CDLAST   => M_AXI3_CDLAST_i,
      M_AXI3_CDREADY  => M_AXI3_CDREADY,
      S_AXI_AWID      => S_AXI_AWID,
      S_AXI_AWADDR    => S_AXI_AWADDR,
      S_AXI_AWLEN     => S_AXI_AWLEN,
      S_AXI_AWSIZE    => S_AXI_AWSIZE,
      S_AXI_AWBURST   => S_AXI_AWBURST,
      S_AXI_AWLOCK    => S_AXI_AWLOCK,
      S_AXI_AWCACHE   => S_AXI_AWCACHE,
      S_AXI_AWPROT    => S_AXI_AWPROT,
      S_AXI_AWQOS     => S_AXI_AWQOS,
      S_AXI_AWVALID   => S_AXI_AWVALID,
      S_AXI_AWREADY   => S_AXI_AWREADY_i,
      S_AXI_AWUSER    => S_AXI_AWUSER,
      S_AXI_AWDOMAIN  => S_AXI_AWDOMAIN,
      S_AXI_AWSNOOP   => S_AXI_AWSNOOP,
      S_AXI_AWBAR     => S_AXI_AWBAR,
      S_AXI_WDATA     => S_AXI_WDATA,
      S_AXI_WSTRB     => S_AXI_WSTRB,
      S_AXI_WLAST     => S_AXI_WLAST,
      S_AXI_WVALID    => S_AXI_WVALID,
      S_AXI_WREADY    => S_AXI_WREADY_i,
      S_AXI_WUSER     => S_AXI_WUSER,
      S_AXI_BID       => S_AXI_BID_i,
      S_AXI_BRESP     => S_AXI_BRESP_i,
      S_AXI_BVALID    => S_AXI_BVALID_i,
      S_AXI_BREADY    => S_AXI_BREADY,
      S_AXI_BUSER     => S_AXI_BUSER_i,
      S_AXI_WACK      => S_AXI_WACK,
      S_AXI_ARID      => S_AXI_ARID,
      S_AXI_ARADDR    => S_AXI_ARADDR,
      S_AXI_ARLEN     => S_AXI_ARLEN,
      S_AXI_ARSIZE    => S_AXI_ARSIZE,
      S_AXI_ARBURST   => S_AXI_ARBURST,
      S_AXI_ARLOCK    => S_AXI_ARLOCK,
      S_AXI_ARCACHE   => S_AXI_ARCACHE,
      S_AXI_ARPROT    => S_AXI_ARPROT,
      S_AXI_ARQOS     => S_AXI_ARQOS,
      S_AXI_ARVALID   => S_AXI_ARVALID,
      S_AXI_ARREADY   => S_AXI_ARREADY_i,
      S_AXI_ARUSER    => S_AXI_ARUSER,
      S_AXI_ARDOMAIN  => S_AXI_ARDOMAIN,
      S_AXI_ARSNOOP   => S_AXI_ARSNOOP,
      S_AXI_ARBAR     => S_AXI_ARBAR,
      S_AXI_RID       => S_AXI_RID_i,
      S_AXI_RDATA     => S_AXI_RDATA_i,
      S_AXI_RRESP     => S_AXI_RRESP_i,
      S_AXI_RLAST     => S_AXI_RLAST_i,
      S_AXI_RVALID    => S_AXI_RVALID_i,
      S_AXI_RREADY    => S_AXI_RREADY,
      S_AXI_RUSER     => S_AXI_RUSER_i,
      S_AXI_RACK      => S_AXI_RACK,
      S_AXI_ACVALID   => S_AXI_ACVALID_i,
      S_AXI_ACADDR    => S_AXI_ACADDR_i,
      S_AXI_ACSNOOP   => S_AXI_ACSNOOP_i,
      S_AXI_ACPROT    => S_AXI_ACPROT_i,
      S_AXI_ACREADY   => S_AXI_ACREADY,
      S_AXI_CRVALID   => S_AXI_CRVALID,
      S_AXI_CRRESP    => S_AXI_CRRESP,
      S_AXI_CRREADY   => S_AXI_CRREADY_i,
      S_AXI_CDVALID   => S_AXI_CDVALID,
      S_AXI_CDDATA    => S_AXI_CDDATA,
      S_AXI_CDLAST    => S_AXI_CDLAST,
      S_AXI_CDREADY   => S_AXI_CDREADY_i);
  end generate axi_slave_g;

  not_axi_slave_g: if (C_INTERFACE /= C_S_AXI4 and C_INTERFACE /= C_S_ACE and C_INTERFACE /= C_S_AXI4LITE) generate
  begin
    M_AXI1_AWID_i     <= (others => '0');
    M_AXI1_AWADDR_i   <= (others => '0');
    M_AXI1_AWLEN_i    <= (others => '0');
    M_AXI1_AWSIZE_i   <= (others => '0');
    M_AXI1_AWBURST_i  <= (others => '0');
    M_AXI1_AWLOCK_i   <= '0';
    M_AXI1_AWCACHE_i  <= (others => '0');
    M_AXI1_AWPROT_i   <= (others => '0');
    M_AXI1_AWQOS_i    <= (others => '0');
    M_AXI1_AWVALID_i  <= '0';
    M_AXI1_AWUSER_i   <= (others => '0');
    M_AXI1_AWDOMAIN_i <= (others => '0');
    M_AXI1_AWSNOOP_i  <= (others => '0');
    M_AXI1_AWBAR_i    <= (others => '0');
    M_AXI1_WDATA_i    <= (others => '0');
    M_AXI1_WSTRB_i    <= (others => '0');
    M_AXI1_WLAST_i    <= '0';
    M_AXI1_WVALID_i   <= '0';
    M_AXI1_WUSER_i    <= (others => '0');
    M_AXI1_BREADY_i   <= '0';
    M_AXI1_WACK_i     <= '0';
    M_AXI1_ARID_i     <= (others => '0');
    M_AXI1_ARADDR_i   <= (others => '0');
    M_AXI1_ARLEN_i    <= (others => '0');
    M_AXI1_ARSIZE_i   <= (others => '0');
    M_AXI1_ARBURST_i  <= (others => '0');
    M_AXI1_ARLOCK_i   <= '0';
    M_AXI1_ARCACHE_i  <= (others => '0');
    M_AXI1_ARPROT_i   <= (others => '0');
    M_AXI1_ARQOS_i    <= (others => '0');
    M_AXI1_ARVALID_i  <= '0';
    M_AXI1_ARUSER_i   <= (others => '0');
    M_AXI1_ARDOMAIN_i <= (others => '0');
    M_AXI1_ARSNOOP_i  <= (others => '0');
    M_AXI1_ARBAR_i    <= (others => '0');
    M_AXI1_RREADY_i   <= '0';
    M_AXI1_RACK_i     <= '0';
    M_AXI1_ACREADY_i  <= '0';
    M_AXI1_CRVALID_i  <= '0';
    M_AXI1_CRRESP_i   <= (others => '0');
    M_AXI1_CDVALID_i  <= '0';
    M_AXI1_CDDATA_i   <= (others => '0');
    M_AXI1_CDLAST_i   <= '0';
    M_AXI2_AWID_i     <= (others => '0');
    M_AXI2_AWADDR_i   <= (others => '0');
    M_AXI2_AWLEN_i    <= (others => '0');
    M_AXI2_AWSIZE_i   <= (others => '0');
    M_AXI2_AWBURST_i  <= (others => '0');
    M_AXI2_AWLOCK_i   <= '0';
    M_AXI2_AWCACHE_i  <= (others => '0');
    M_AXI2_AWPROT_i   <= (others => '0');
    M_AXI2_AWQOS_i    <= (others => '0');
    M_AXI2_AWVALID_i  <= '0';
    M_AXI2_AWUSER_i   <= (others => '0');
    M_AXI2_AWDOMAIN_i <= (others => '0');
    M_AXI2_AWSNOOP_i  <= (others => '0');
    M_AXI2_AWBAR_i    <= (others => '0');
    M_AXI2_WDATA_i    <= (others => '0');
    M_AXI2_WSTRB_i    <= (others => '0');
    M_AXI2_WLAST_i    <= '0';
    M_AXI2_WVALID_i   <= '0';
    M_AXI2_WUSER_i    <= (others => '0');
    M_AXI2_BREADY_i   <= '0';
    M_AXI2_WACK_i     <= '0';
    M_AXI2_ARID_i     <= (others => '0');
    M_AXI2_ARADDR_i   <= (others => '0');
    M_AXI2_ARLEN_i    <= (others => '0');
    M_AXI2_ARSIZE_i   <= (others => '0');
    M_AXI2_ARBURST_i  <= (others => '0');
    M_AXI2_ARLOCK_i   <= '0';
    M_AXI2_ARCACHE_i  <= (others => '0');
    M_AXI2_ARPROT_i   <= (others => '0');
    M_AXI2_ARQOS_i    <= (others => '0');
    M_AXI2_ARVALID_i  <= '0';
    M_AXI2_ARUSER_i   <= (others => '0');
    M_AXI2_ARDOMAIN_i <= (others => '0');
    M_AXI2_ARSNOOP_i  <= (others => '0');
    M_AXI2_ARBAR_i    <= (others => '0');
    M_AXI2_RREADY_i   <= '0';
    M_AXI2_RACK_i     <= '0';
    M_AXI2_ACREADY_i  <= '0';
    M_AXI2_CRVALID_i  <= '0';
    M_AXI2_CRRESP_i   <= (others => '0');
    M_AXI2_CDVALID_i  <= '0';
    M_AXI2_CDDATA_i   <= (others => '0');
    M_AXI2_CDLAST_i   <= '0';
    M_AXI3_AWID_i     <= (others => '0');
    M_AXI3_AWADDR_i   <= (others => '0');
    M_AXI3_AWLEN_i    <= (others => '0');
    M_AXI3_AWSIZE_i   <= (others => '0');
    M_AXI3_AWBURST_i  <= (others => '0');
    M_AXI3_AWLOCK_i   <= '0';
    M_AXI3_AWCACHE_i  <= (others => '0');
    M_AXI3_AWPROT_i   <= (others => '0');
    M_AXI3_AWQOS_i    <= (others => '0');
    M_AXI3_AWVALID_i  <= '0';
    M_AXI3_AWDOMAIN_i <= (others => '0');
    M_AXI3_AWSNOOP_i  <= (others => '0');
    M_AXI3_AWBAR_i    <= (others => '0');
    M_AXI3_AWUSER_i   <= (others => '0');
    M_AXI3_WDATA_i    <= (others => '0');
    M_AXI3_WSTRB_i    <= (others => '0');
    M_AXI3_WLAST_i    <= '0';
    M_AXI3_WVALID_i   <= '0';
    M_AXI3_WUSER_i    <= (others => '0');
    M_AXI3_BREADY_i   <= '0';
    M_AXI3_WACK_i     <= '0';
    M_AXI3_ARID_i     <= (others => '0');
    M_AXI3_ARADDR_i   <= (others => '0');
    M_AXI3_ARLEN_i    <= (others => '0');
    M_AXI3_ARSIZE_i   <= (others => '0');
    M_AXI3_ARBURST_i  <= (others => '0');
    M_AXI3_ARLOCK_i   <= '0';
    M_AXI3_ARCACHE_i  <= (others => '0');
    M_AXI3_ARPROT_i   <= (others => '0');
    M_AXI3_ARQOS_i    <= (others => '0');
    M_AXI3_ARVALID_i  <= '0';
    M_AXI3_ARUSER_i   <= (others => '0');
    M_AXI3_ARDOMAIN_i <= (others => '0');
    M_AXI3_ARSNOOP_i  <= (others => '0');
    M_AXI3_ARBAR_i    <= (others => '0');
    M_AXI3_RREADY_i   <= '0';
    M_AXI3_RACK_i     <= '0';
    M_AXI3_ACREADY_i  <= '0';
    M_AXI3_CRVALID_i  <= '0';
    M_AXI3_CRRESP_i   <= (others => '0');
    M_AXI3_CDVALID_i  <= '0';
    M_AXI3_CDDATA_i   <= (others => '0');
    M_AXI3_CDLAST_i   <= '0';
    S_AXI_AWREADY_i   <= '0';
    S_AXI_WREADY_i    <= '0';
    S_AXI_BID_i       <= (others => '0');
    S_AXI_BRESP_i     <= (others => '0');
    S_AXI_BVALID_i    <= '0';
    S_AXI_BUSER_i     <= (others => '0');
    S_AXI_ARREADY_i   <= '0';
    S_AXI_RID_i       <= (others => '0');
    S_AXI_RDATA_i     <= (others => '0');
    S_AXI_RRESP_i     <= (others => '0');
    S_AXI_RLAST_i     <= '0';
    S_AXI_RVALID_i    <= '0';
    S_AXI_RUSER_i     <= (others => '0');
    S_AXI_ACVALID_i   <= '0';
    S_AXI_ACADDR_i    <= (others => '0');
    S_AXI_ACSNOOP_i   <= (others => '0');
    S_AXI_ACPROT_i    <= (others => '0');
    S_AXI_CRREADY_i   <= '0';
    S_AXI_CDREADY_i   <= '0';
  end generate not_axi_slave_g;

  m_axi1_awid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ID_WIDTH)     port map(Clk, Rst, M_AXI1_AWID_i,     M_AXI1_AWID);
  m_axi1_awaddr_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ADDR_WIDTH)   port map(Clk, Rst, M_AXI1_AWADDR_i,   M_AXI1_AWADDR);
  m_axi1_awlen_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 8)                  port map(Clk, Rst, M_AXI1_AWLEN_i,    M_AXI1_AWLEN);
  m_axi1_awsize_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                  port map(Clk, Rst, M_AXI1_AWSIZE_i,   M_AXI1_AWSIZE);
  m_axi1_awburst_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_AWBURST_i,  M_AXI1_AWBURST);
  m_axi1_awlock_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_AWLOCK_i,   M_AXI1_AWLOCK);
  m_axi1_awcache_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                  port map(Clk, Rst, M_AXI1_AWCACHE_i,  M_AXI1_AWCACHE);
  m_axi1_awprot_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                  port map(Clk, Rst, M_AXI1_AWPROT_i,   M_AXI1_AWPROT);
  m_axi1_awqos_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                  port map(Clk, Rst, M_AXI1_AWQOS_i,    M_AXI1_AWQOS);
  m_axi1_awvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_AWVALID_i,  M_AXI1_AWVALID);
  m_axi1_awuser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_AWUSER_WIDTH) port map(Clk, Rst, M_AXI1_AWUSER_i,   M_AXI1_AWUSER);
  m_axi1_awdomain_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_AWDOMAIN_i, M_AXI1_AWDOMAIN);
  m_axi1_awsnoop_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                  port map(Clk, Rst, M_AXI1_AWSNOOP_i,  M_AXI1_AWSNOOP);
  m_axi1_awbar_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_AWBAR_i,    M_AXI1_AWBAR);
  m_axi1_wdata_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_DATA_WIDTH)   port map(Clk, Rst, M_AXI1_WDATA_i,    M_AXI1_WDATA);
  m_axi1_wstrb_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_DATA_WIDTH/8) port map(Clk, Rst, M_AXI1_WSTRB_i,    M_AXI1_WSTRB);
  m_axi1_wlast_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_WLAST_i,    M_AXI1_WLAST);
  m_axi1_wvalid_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_WVALID_i,   M_AXI1_WVALID);
  m_axi1_wuser_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_WUSER_WIDTH)  port map(Clk, Rst, M_AXI1_WUSER_i,    M_AXI1_WUSER);
  m_axi1_bready_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_BREADY_i,   M_AXI1_BREADY);
  m_axi1_wack_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_WACK_i,     M_AXI1_WACK);
  m_axi1_arid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ID_WIDTH)     port map(Clk, Rst, M_AXI1_ARID_i,     M_AXI1_ARID);
  m_axi1_araddr_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ADDR_WIDTH)   port map(Clk, Rst, M_AXI1_ARADDR_i,   M_AXI1_ARADDR);
  m_axi1_arlen_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 8)                  port map(Clk, Rst, M_AXI1_ARLEN_i,    M_AXI1_ARLEN);
  m_axi1_arsize_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                  port map(Clk, Rst, M_AXI1_ARSIZE_i,   M_AXI1_ARSIZE);
  m_axi1_arburst_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_ARBURST_i,  M_AXI1_ARBURST);
  m_axi1_arlock_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_ARLOCK_i,   M_AXI1_ARLOCK);
  m_axi1_arcache_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                  port map(Clk, Rst, M_AXI1_ARCACHE_i,  M_AXI1_ARCACHE);
  m_axi1_arprot_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 3)                  port map(Clk, Rst, M_AXI1_ARPROT_i,   M_AXI1_ARPROT);
  m_axi1_arqos_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                  port map(Clk, Rst, M_AXI1_ARQOS_i,    M_AXI1_ARQOS);
  m_axi1_arvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_ARVALID_i,  M_AXI1_ARVALID);
  m_axi1_aruser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_ARUSER_WIDTH) port map(Clk, Rst, M_AXI1_ARUSER_i,   M_AXI1_ARUSER);
  m_axi1_ardomain_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_ARDOMAIN_i, M_AXI1_ARDOMAIN);
  m_axi1_arsnoop_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, 4)                  port map(Clk, Rst, M_AXI1_ARSNOOP_i,  M_AXI1_ARSNOOP);
  m_axi1_arbar_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, 2)                  port map(Clk, Rst, M_AXI1_ARBAR_i,    M_AXI1_ARBAR);
  m_axi1_rready_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_RREADY_i,   M_AXI1_RREADY);
  m_axi1_rack_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_RACK_i,     M_AXI1_RACK);
  m_axi1_acready_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_ACREADY_i,  M_AXI1_ACREADY);
  m_axi1_crvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_CRVALID_i,  M_AXI1_CRVALID);
  m_axi1_crresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, 5)                  port map(Clk, Rst, M_AXI1_CRRESP_i,   M_AXI1_CRRESP);
  m_axi1_cdvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_CDVALID_i,  M_AXI1_CDVALID);
  m_axi1_cddata_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXI_DATA_WIDTH)   port map(Clk, Rst, M_AXI1_CDDATA_i,   M_AXI1_CDDATA);
  m_axi1_cdlast_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1)                     port map(Clk, Rst, M_AXI1_CDLAST_i,   M_AXI1_CDLAST);
  m_axi2_awid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ID_WIDTH)     port map(Clk, Rst, M_AXI2_AWID_i,     M_AXI2_AWID);
  m_axi2_awaddr_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ADDR_WIDTH)   port map(Clk, Rst, M_AXI2_AWADDR_i,   M_AXI2_AWADDR);
  m_axi2_awlen_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 8)                  port map(Clk, Rst, M_AXI2_AWLEN_i,    M_AXI2_AWLEN);
  m_axi2_awsize_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                  port map(Clk, Rst, M_AXI2_AWSIZE_i,   M_AXI2_AWSIZE);
  m_axi2_awburst_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_AWBURST_i,  M_AXI2_AWBURST);
  m_axi2_awlock_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_AWLOCK_i,   M_AXI2_AWLOCK);
  m_axi2_awcache_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                  port map(Clk, Rst, M_AXI2_AWCACHE_i,  M_AXI2_AWCACHE);
  m_axi2_awprot_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                  port map(Clk, Rst, M_AXI2_AWPROT_i,   M_AXI2_AWPROT);
  m_axi2_awqos_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                  port map(Clk, Rst, M_AXI2_AWQOS_i,    M_AXI2_AWQOS);
  m_axi2_awvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_AWVALID_i,  M_AXI2_AWVALID);
  m_axi2_awuser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_AWUSER_WIDTH) port map(Clk, Rst, M_AXI2_AWUSER_i,   M_AXI2_AWUSER);
  m_axi2_awdomain_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_AWDOMAIN_i, M_AXI2_AWDOMAIN);
  m_axi2_awsnoop_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                  port map(Clk, Rst, M_AXI2_AWSNOOP_i,  M_AXI2_AWSNOOP);
  m_axi2_awbar_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_AWBAR_i,    M_AXI2_AWBAR);
  m_axi2_wdata_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_DATA_WIDTH)   port map(Clk, Rst, M_AXI2_WDATA_i,    M_AXI2_WDATA);
  m_axi2_wstrb_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_DATA_WIDTH/8) port map(Clk, Rst, M_AXI2_WSTRB_i,    M_AXI2_WSTRB);
  m_axi2_wlast_bit_i:    temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_WLAST_i,    M_AXI2_WLAST);
  m_axi2_wvalid_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_WVALID_i,   M_AXI2_WVALID);
  m_axi2_wuser_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_WUSER_WIDTH)  port map(Clk, Rst, M_AXI2_WUSER_i,    M_AXI2_WUSER);
  m_axi2_bready_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_BREADY_i,   M_AXI2_BREADY);
  m_axi2_wack_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_WACK_i,     M_AXI2_WACK);
  m_axi2_arid_vec_i:     temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ID_WIDTH)     port map(Clk, Rst, M_AXI2_ARID_i,     M_AXI2_ARID);
  m_axi2_araddr_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ADDR_WIDTH)   port map(Clk, Rst, M_AXI2_ARADDR_i,   M_AXI2_ARADDR);
  m_axi2_arlen_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 8)                  port map(Clk, Rst, M_AXI2_ARLEN_i,    M_AXI2_ARLEN);
  m_axi2_arsize_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                  port map(Clk, Rst, M_AXI2_ARSIZE_i,   M_AXI2_ARSIZE);
  m_axi2_arburst_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_ARBURST_i,  M_AXI2_ARBURST);
  m_axi2_arlock_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_ARLOCK_i,   M_AXI2_ARLOCK);
  m_axi2_arcache_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                  port map(Clk, Rst, M_AXI2_ARCACHE_i,  M_AXI2_ARCACHE);
  m_axi2_arprot_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 3)                  port map(Clk, Rst, M_AXI2_ARPROT_i,   M_AXI2_ARPROT);
  m_axi2_arqos_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                  port map(Clk, Rst, M_AXI2_ARQOS_i,    M_AXI2_ARQOS);
  m_axi2_arvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_ARVALID_i,  M_AXI2_ARVALID);
  m_axi2_aruser_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_ARUSER_WIDTH) port map(Clk, Rst, M_AXI2_ARUSER_i,   M_AXI2_ARUSER);
  m_axi2_ardomain_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_ARDOMAIN_i, M_AXI2_ARDOMAIN);
  m_axi2_arsnoop_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, 4)                  port map(Clk, Rst, M_AXI2_ARSNOOP_i,  M_AXI2_ARSNOOP);
  m_axi2_arbar_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, 2)                  port map(Clk, Rst, M_AXI2_ARBAR_i,    M_AXI2_ARBAR);
  m_axi2_rready_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_RREADY_i,   M_AXI2_RREADY);
  m_axi2_rack_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_RACK_i,     M_AXI2_RACK);
  m_axi2_acready_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_ACREADY_i,  M_AXI2_ACREADY);
  m_axi2_crvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_CRVALID_i,  M_AXI2_CRVALID);
  m_axi2_crresp_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, 5)                  port map(Clk, Rst, M_AXI2_CRRESP_i,   M_AXI2_CRRESP);
  m_axi2_cdvalid_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_CDVALID_i,  M_AXI2_CDVALID);
  m_axi2_cddata_vec_i:   temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXI_DATA_WIDTH)   port map(Clk, Rst, M_AXI2_CDDATA_i,   M_AXI2_CDDATA);
  m_axi2_cdlast_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2)                     port map(Clk, Rst, M_AXI2_CDLAST_i,   M_AXI2_CDLAST);
  M_AXI3_AWID     <= M_AXI3_AWID_i;
  M_AXI3_AWADDR   <= M_AXI3_AWADDR_i;
  M_AXI3_AWLEN    <= M_AXI3_AWLEN_i;
  M_AXI3_AWSIZE   <= M_AXI3_AWSIZE_i;
  M_AXI3_AWBURST  <= M_AXI3_AWBURST_i;
  M_AXI3_AWLOCK   <= M_AXI3_AWLOCK_i;
  M_AXI3_AWCACHE  <= M_AXI3_AWCACHE_i;
  M_AXI3_AWPROT   <= M_AXI3_AWPROT_i;
  M_AXI3_AWQOS    <= M_AXI3_AWQOS_i;
  M_AXI3_AWVALID  <= M_AXI3_AWVALID_i;
  M_AXI3_AWDOMAIN <= M_AXI3_AWDOMAIN_i;
  M_AXI3_AWSNOOP  <= M_AXI3_AWSNOOP_i;
  M_AXI3_AWBAR    <= M_AXI3_AWBAR_i;
  M_AXI3_AWUSER   <= M_AXI3_AWUSER_i;
  M_AXI3_WDATA    <= M_AXI3_WDATA_i;
  M_AXI3_WSTRB    <= M_AXI3_WSTRB_i;
  M_AXI3_WLAST    <= M_AXI3_WLAST_i;
  M_AXI3_WVALID   <= M_AXI3_WVALID_i;
  M_AXI3_WUSER    <= M_AXI3_WUSER_i;
  M_AXI3_BREADY   <= M_AXI3_BREADY_i;
  M_AXI3_WACK     <= M_AXI3_WACK_i;
  M_AXI3_ARID     <= M_AXI3_ARID_i;
  M_AXI3_ARADDR   <= M_AXI3_ARADDR_i;
  M_AXI3_ARLEN    <= M_AXI3_ARLEN_i;
  M_AXI3_ARSIZE   <= M_AXI3_ARSIZE_i;
  M_AXI3_ARBURST  <= M_AXI3_ARBURST_i;
  M_AXI3_ARLOCK   <= M_AXI3_ARLOCK_i;
  M_AXI3_ARCACHE  <= M_AXI3_ARCACHE_i;
  M_AXI3_ARPROT   <= M_AXI3_ARPROT_i;
  M_AXI3_ARQOS    <= M_AXI3_ARQOS_i;
  M_AXI3_ARVALID  <= M_AXI3_ARVALID_i;
  M_AXI3_ARUSER   <= M_AXI3_ARUSER_i;
  M_AXI3_ARDOMAIN <= M_AXI3_ARDOMAIN_i;
  M_AXI3_ARSNOOP  <= M_AXI3_ARSNOOP_i;
  M_AXI3_ARBAR    <= M_AXI3_ARBAR_i;
  M_AXI3_RREADY   <= M_AXI3_RREADY_i;
  M_AXI3_RACK     <= M_AXI3_RACK_i;
  M_AXI3_ACREADY  <= M_AXI3_ACREADY_i;
  M_AXI3_CRVALID  <= M_AXI3_CRVALID_i;
  M_AXI3_CRRESP   <= M_AXI3_CRRESP_i;
  M_AXI3_CDVALID  <= M_AXI3_CDVALID_i;
  M_AXI3_CDDATA   <= M_AXI3_CDDATA_i;
  M_AXI3_CDLAST   <= M_AXI3_CDLAST_i;
  S_AXI_AWREADY   <= S_AXI_AWREADY_i;
  S_AXI_WREADY    <= S_AXI_WREADY_i;
  S_AXI_BID       <= S_AXI_BID_i;
  S_AXI_BRESP     <= S_AXI_BRESP_i;
  S_AXI_BVALID    <= S_AXI_BVALID_i;
  S_AXI_BUSER     <= S_AXI_BUSER_i;
  S_AXI_ARREADY   <= S_AXI_ARREADY_i;
  S_AXI_RID       <= S_AXI_RID_i;
  S_AXI_RDATA     <= S_AXI_RDATA_i;
  S_AXI_RRESP     <= S_AXI_RRESP_i;
  S_AXI_RLAST     <= S_AXI_RLAST_i;
  S_AXI_RVALID    <= S_AXI_RVALID_i;
  S_AXI_RUSER     <= S_AXI_RUSER_i;
  S_AXI_ACVALID   <= S_AXI_ACVALID_i;
  S_AXI_ACADDR    <= S_AXI_ACADDR_i;
  S_AXI_ACSNOOP   <= S_AXI_ACSNOOP_i;
  S_AXI_ACPROT    <= S_AXI_ACPROT_i;
  S_AXI_CRREADY   <= S_AXI_CRREADY_i;
  S_AXI_CDREADY   <= S_AXI_CDREADY_i;

  -- Master AXI Stream
  m_axis_g: if (C_INTERFACE = C_M_AXIS) generate
  begin

    m_axis_voter_i : entity tmr_voter_v1_0_5.m_axis_voter
    generic map(
      C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
      C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
      C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
      C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable    => tmr_disable_vec,
      S_AXIS1_TLAST  => S_AXIS1_TLAST,
      S_AXIS1_TDATA  => S_AXIS1_TDATA,
      S_AXIS1_TVALID => S_AXIS1_TVALID,
      S_AXIS1_TREADY => S_AXIS1_TREADY_i,
      S_AXIS1_TSTRB  => S_AXIS1_TSTRB,
      S_AXIS1_TKEEP  => S_AXIS1_TKEEP,
      S_AXIS1_TID    => S_AXIS1_TID,
      S_AXIS1_TDEST  => S_AXIS1_TDEST,
      S_AXIS1_TUSER  => S_AXIS1_TUSER,
      S_AXIS2_TLAST  => S_AXIS2_TLAST,
      S_AXIS2_TDATA  => S_AXIS2_TDATA,
      S_AXIS2_TVALID => S_AXIS2_TVALID,
      S_AXIS2_TREADY => S_AXIS2_TREADY_i,
      S_AXIS2_TSTRB  => S_AXIS2_TSTRB,
      S_AXIS2_TKEEP  => S_AXIS2_TKEEP,
      S_AXIS2_TID    => S_AXIS2_TID,
      S_AXIS2_TDEST  => S_AXIS2_TDEST,
      S_AXIS2_TUSER  => S_AXIS2_TUSER,
      S_AXIS3_TLAST  => S_AXIS3_TLAST,
      S_AXIS3_TDATA  => S_AXIS3_TDATA,
      S_AXIS3_TVALID => S_AXIS3_TVALID,
      S_AXIS3_TREADY => S_AXIS3_TREADY_i,
      S_AXIS3_TSTRB  => S_AXIS3_TSTRB,
      S_AXIS3_TKEEP  => S_AXIS3_TKEEP,
      S_AXIS3_TID    => S_AXIS3_TID,
      S_AXIS3_TDEST  => S_AXIS3_TDEST,
      S_AXIS3_TUSER  => S_AXIS3_TUSER,
      M_AXIS_TLAST   => M_AXIS_TLAST_i,
      M_AXIS_TDATA   => M_AXIS_TDATA_i,
      M_AXIS_TVALID  => M_AXIS_TVALID_i,
      M_AXIS_TREADY  => M_AXIS_TREADY,
      M_AXIS_TSTRB   => M_AXIS_TSTRB_i,
      M_AXIS_TKEEP   => M_AXIS_TKEEP_i,
      M_AXIS_TID     => M_AXIS_TID_i,
      M_AXIS_TDEST   => M_AXIS_TDEST_i,
      M_AXIS_TUSER   => M_AXIS_TUSER_i
      );

  end generate m_axis_g;

  not_m_axis_g: if (C_INTERFACE /= C_M_AXIS) generate
  begin
    S_AXIS1_TREADY_i  <= '0';
    S_AXIS2_TREADY_i  <= '0';
    S_AXIS3_TREADY_i  <= '0';
    M_AXIS_TLAST_i    <= '0';
    M_AXIS_TDATA_i    <= (others => '0');
    M_AXIS_TVALID_i   <= '0';
    M_AXIS_TSTRB_i    <= (others => '0');
    M_AXIS_TKEEP_i    <= (others => '0');
    M_AXIS_TID_i      <= (others => '0');
    M_AXIS_TDEST_i    <= (others => '0');
    M_AXIS_TUSER_i    <= (others => '0');
  end generate not_m_axis_g;

  s_axis1_tready_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, S_AXIS1_TREADY_i, S_AXIS1_TREADY);
  s_axis2_tready_DEP_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, S_AXIS2_TREADY_i, S_AXIS2_TREADY);
  S_AXIS3_TREADY  <= S_AXIS3_TREADY_i;
  M_AXIS_TLAST    <= M_AXIS_TLAST_i;
  M_AXIS_TDATA    <= M_AXIS_TDATA_i;
  M_AXIS_TVALID   <= M_AXIS_TVALID_i;
  M_AXIS_TSTRB    <= M_AXIS_TSTRB_i;
  M_AXIS_TKEEP    <= M_AXIS_TKEEP_i;
  M_AXIS_TID      <= M_AXIS_TID_i;
  M_AXIS_TDEST    <= M_AXIS_TDEST_i;
  M_AXIS_TUSER    <= M_AXIS_TUSER_i;

  -- Slave AXI Stream
  s_axis_g: if (C_INTERFACE = C_S_AXIS) generate
  begin

    s_axis_voter_i : entity tmr_voter_v1_0_5.s_axis_voter
    generic map(
      C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
      C_AXIS_ID_WIDTH   => C_AXIS_ID_WIDTH,
      C_AXIS_DEST_WIDTH => C_AXIS_DEST_WIDTH,
      C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable    => tmr_disable_vec,
      M_AXIS1_TLAST  => M_AXIS1_TLAST_i,
      M_AXIS1_TDATA  => M_AXIS1_TDATA_i,
      M_AXIS1_TVALID => M_AXIS1_TVALID_i,
      M_AXIS1_TREADY => M_AXIS1_TREADY,
      M_AXIS1_TSTRB  => M_AXIS1_TSTRB_i,
      M_AXIS1_TKEEP  => M_AXIS1_TKEEP_i,
      M_AXIS1_TID    => M_AXIS1_TID_i,
      M_AXIS1_TDEST  => M_AXIS1_TDEST_i,
      M_AXIS1_TUSER  => M_AXIS1_TUSER_i,
      M_AXIS2_TLAST  => M_AXIS2_TLAST_i,
      M_AXIS2_TDATA  => M_AXIS2_TDATA_i,
      M_AXIS2_TVALID => M_AXIS2_TVALID_i,
      M_AXIS2_TREADY => M_AXIS2_TREADY,
      M_AXIS2_TSTRB  => M_AXIS2_TSTRB_i,
      M_AXIS2_TKEEP  => M_AXIS2_TKEEP_i,
      M_AXIS2_TID    => M_AXIS2_TID_i,
      M_AXIS2_TDEST  => M_AXIS2_TDEST_i,
      M_AXIS2_TUSER  => M_AXIS2_TUSER_i,
      M_AXIS3_TLAST  => M_AXIS3_TLAST_i,
      M_AXIS3_TDATA  => M_AXIS3_TDATA_i,
      M_AXIS3_TVALID => M_AXIS3_TVALID_i,
      M_AXIS3_TREADY => M_AXIS3_TREADY,
      M_AXIS3_TSTRB  => M_AXIS3_TSTRB_i,
      M_AXIS3_TKEEP  => M_AXIS3_TKEEP_i,
      M_AXIS3_TID    => M_AXIS3_TID_i,
      M_AXIS3_TDEST  => M_AXIS3_TDEST_i,
      M_AXIS3_TUSER  => M_AXIS3_TUSER_i,
      S_AXIS_TLAST   => S_AXIS_TLAST,
      S_AXIS_TDATA   => S_AXIS_TDATA,
      S_AXIS_TVALID  => S_AXIS_TVALID,
      S_AXIS_TREADY  => S_AXIS_TREADY_i,
      S_AXIS_TSTRB   => S_AXIS_TSTRB,
      S_AXIS_TKEEP   => S_AXIS_TKEEP,
      S_AXIS_TID     => S_AXIS_TID,
      S_AXIS_TDEST   => S_AXIS_TDEST,
      S_AXIS_TUSER   => S_AXIS_TUSER);

  end generate s_axis_g;

  not_s_axis_g: if (C_INTERFACE /= C_S_AXIS) generate
  begin
    M_AXIS1_TLAST_i  <= '0';
    M_AXIS1_TDATA_i  <= (others => '0');
    M_AXIS1_TVALID_i <= '0';
    M_AXIS1_TSTRB_i  <= (others => '0');
    M_AXIS1_TKEEP_i  <= (others => '0');
    M_AXIS1_TID_i    <= (others => '0');
    M_AXIS1_TDEST_i  <= (others => '0');
    M_AXIS1_TUSER_i  <= (others => '0');
    M_AXIS2_TLAST_i  <= '0';
    M_AXIS2_TDATA_i  <= (others => '0');
    M_AXIS2_TVALID_i <= '0';
    M_AXIS2_TSTRB_i  <= (others => '0');
    M_AXIS2_TKEEP_i  <= (others => '0');
    M_AXIS2_TID_i    <= (others => '0');
    M_AXIS2_TDEST_i  <= (others => '0');
    M_AXIS2_TUSER_i  <= (others => '0');
    M_AXIS3_TLAST_i  <= '0';
    M_AXIS3_TDATA_i  <= (others => '0');
    M_AXIS3_TVALID_i <= '0';
    M_AXIS3_TSTRB_i  <= (others => '0');
    M_AXIS3_TKEEP_i  <= (others => '0');
    M_AXIS3_TID_i    <= (others => '0');
    M_AXIS3_TDEST_i  <= (others => '0');
    M_AXIS3_TUSER_i  <= (others => '0');
    S_AXIS_TREADY_i  <= '0';
  end generate not_s_axis_g;

  m_axis1_tlast_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1)                      port map(Clk, Rst, M_AXIS1_TLAST_i,  M_AXIS1_TLAST);
  m_axis1_tdata_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_DATA_WIDTH)   port map(Clk, Rst, M_AXIS1_TDATA_i,  M_AXIS1_TDATA);
  m_axis1_tvalid_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1)                      port map(Clk, Rst, M_AXIS1_TVALID_i, M_AXIS1_TVALID);
  m_axis1_tstrb_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_DATA_WIDTH/8) port map(Clk, Rst, M_AXIS1_TSTRB_i,  M_AXIS1_TSTRB);
  m_axis1_tkeep_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_DATA_WIDTH/8) port map(Clk, Rst, M_AXIS1_TKEEP_i,  M_AXIS1_TKEEP);
  m_axis1_tid_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_ID_WIDTH)     port map(Clk, Rst, M_AXIS1_TID_i,    M_AXIS1_TID);
  m_axis1_tdest_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_DEST_WIDTH)   port map(Clk, Rst, M_AXIS1_TDEST_i,  M_AXIS1_TDEST);
  m_axis1_tuser_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH1, C_AXIS_USER_WIDTH)   port map(Clk, Rst, M_AXIS1_TUSER_i,  M_AXIS1_TUSER);
  m_axis2_tlast_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2)                      port map(Clk, Rst, M_AXIS2_TLAST_i,  M_AXIS2_TLAST);
  m_axis2_tdata_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_DATA_WIDTH)   port map(Clk, Rst, M_AXIS2_TDATA_i,  M_AXIS2_TDATA);
  m_axis2_tvalid_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2)                      port map(Clk, Rst, M_AXIS2_TVALID_i, M_AXIS2_TVALID);
  m_axis2_tstrb_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_DATA_WIDTH/8) port map(Clk, Rst, M_AXIS2_TSTRB_i,  M_AXIS2_TSTRB);
  m_axis2_tkeep_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_DATA_WIDTH/8) port map(Clk, Rst, M_AXIS2_TKEEP_i,  M_AXIS2_TKEEP);
  m_axis2_tid_vec_i:    temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_ID_WIDTH)     port map(Clk, Rst, M_AXIS2_TID_i,    M_AXIS2_TID);
  m_axis2_tdest_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_DEST_WIDTH)   port map(Clk, Rst, M_AXIS2_TDEST_i,  M_AXIS2_TDEST);
  m_axis2_tuser_vec_i:  temporal_vec generic map(C_TEMPORAL_DEPTH2, C_AXIS_USER_WIDTH)   port map(Clk, Rst, M_AXIS2_TUSER_i,  M_AXIS2_TUSER);
  M_AXIS3_TLAST   <= M_AXIS3_TLAST_i;
  M_AXIS3_TDATA   <= M_AXIS3_TDATA_i;
  M_AXIS3_TVALID  <= M_AXIS3_TVALID_i;
  M_AXIS3_TSTRB   <= M_AXIS3_TSTRB_i;
  M_AXIS3_TKEEP   <= M_AXIS3_TKEEP_i;
  M_AXIS3_TID     <= M_AXIS3_TID_i;
  M_AXIS3_TDEST   <= M_AXIS3_TDEST_i;
  M_AXIS3_TUSER   <= M_AXIS3_TUSER_i;
  S_AXIS_TREADY   <= S_AXIS_TREADY_i;

  -- Trace
  trace_g: if (C_INTERFACE = C_TRACE) generate
  begin

    trace_voter_i : entity tmr_voter_v1_0_5.trace_voter
    generic map (
      C_ADDR_SIZE       => C_ADDR_SIZE,
      C_DATA_SIZE       => C_DATA_SIZE,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable             => tmr_disable_vec,
      Trace1_Instruction      => Trace1_Instruction,
      Trace1_Valid_Instr      => Trace1_Valid_Instr,
      Trace1_PC               => Trace1_PC,
      Trace1_Reg_Write        => Trace1_Reg_Write,
      Trace1_Reg_Addr         => Trace1_Reg_Addr,
      Trace1_MSR_Reg          => Trace1_MSR_Reg,
      Trace1_PID_Reg          => Trace1_PID_Reg,
      Trace1_New_Reg_Value    => Trace1_New_Reg_Value,
      Trace1_Exception_Taken  => Trace1_Exception_Taken,
      Trace1_Exception_Kind   => Trace1_Exception_Kind,
      Trace1_Jump_Taken       => Trace1_Jump_Taken,
      Trace1_Delay_Slot       => Trace1_Delay_Slot,
      Trace1_Data_Address     => Trace1_Data_Address,
      Trace1_Data_Write_Value => Trace1_Data_Write_Value,
      Trace1_Data_Byte_Enable => Trace1_Data_Byte_Enable,
      Trace1_Data_Access      => Trace1_Data_Access,
      Trace1_Data_Read        => Trace1_Data_Read,
      Trace1_Data_Write       => Trace1_Data_Write,
      Trace1_DCache_Req       => Trace1_DCache_Req,
      Trace1_DCache_Hit       => Trace1_DCache_Hit,
      Trace1_DCache_Rdy       => Trace1_DCache_Rdy,
      Trace1_DCache_Read      => Trace1_DCache_Read,
      Trace1_ICache_Req       => Trace1_ICache_Req,
      Trace1_ICache_Hit       => Trace1_ICache_Hit,
      Trace1_ICache_Rdy       => Trace1_ICache_Rdy,
      Trace1_OF_PipeRun       => Trace1_OF_PipeRun,
      Trace1_EX_PipeRun       => Trace1_EX_PipeRun,
      Trace1_MEM_PipeRun      => Trace1_MEM_PipeRun,
      Trace1_MB_Halted        => Trace1_MB_Halted,
      Trace1_Jump_Hit         => Trace1_Jump_Hit,
      Trace2_Instruction      => Trace2_Instruction,
      Trace2_Valid_Instr      => Trace2_Valid_Instr,
      Trace2_PC               => Trace2_PC,
      Trace2_Reg_Write        => Trace2_Reg_Write,
      Trace2_Reg_Addr         => Trace2_Reg_Addr,
      Trace2_MSR_Reg          => Trace2_MSR_Reg,
      Trace2_PID_Reg          => Trace2_PID_Reg,
      Trace2_New_Reg_Value    => Trace2_New_Reg_Value,
      Trace2_Exception_Taken  => Trace2_Exception_Taken,
      Trace2_Exception_Kind   => Trace2_Exception_Kind,
      Trace2_Jump_Taken       => Trace2_Jump_Taken,
      Trace2_Delay_Slot       => Trace2_Delay_Slot,
      Trace2_Data_Address     => Trace2_Data_Address,
      Trace2_Data_Write_Value => Trace2_Data_Write_Value,
      Trace2_Data_Byte_Enable => Trace2_Data_Byte_Enable,
      Trace2_Data_Access      => Trace2_Data_Access,
      Trace2_Data_Read        => Trace2_Data_Read,
      Trace2_Data_Write       => Trace2_Data_Write,
      Trace2_DCache_Req       => Trace2_DCache_Req,
      Trace2_DCache_Hit       => Trace2_DCache_Hit,
      Trace2_DCache_Rdy       => Trace2_DCache_Rdy,
      Trace2_DCache_Read      => Trace2_DCache_Read,
      Trace2_ICache_Req       => Trace2_ICache_Req,
      Trace2_ICache_Hit       => Trace2_ICache_Hit,
      Trace2_ICache_Rdy       => Trace2_ICache_Rdy,
      Trace2_OF_PipeRun       => Trace2_OF_PipeRun,
      Trace2_EX_PipeRun       => Trace2_EX_PipeRun,
      Trace2_MEM_PipeRun      => Trace2_MEM_PipeRun,
      Trace2_MB_Halted        => Trace2_MB_Halted,
      Trace2_Jump_Hit         => Trace2_Jump_Hit,
      Trace3_Instruction      => Trace3_Instruction,
      Trace3_Valid_Instr      => Trace3_Valid_Instr,
      Trace3_PC               => Trace3_PC,
      Trace3_Reg_Write        => Trace3_Reg_Write,
      Trace3_Reg_Addr         => Trace3_Reg_Addr,
      Trace3_MSR_Reg          => Trace3_MSR_Reg,
      Trace3_PID_Reg          => Trace3_PID_Reg,
      Trace3_New_Reg_Value    => Trace3_New_Reg_Value,
      Trace3_Exception_Taken  => Trace3_Exception_Taken,
      Trace3_Exception_Kind   => Trace3_Exception_Kind,
      Trace3_Jump_Taken       => Trace3_Jump_Taken,
      Trace3_Delay_Slot       => Trace3_Delay_Slot,
      Trace3_Data_Address     => Trace3_Data_Address,
      Trace3_Data_Write_Value => Trace3_Data_Write_Value,
      Trace3_Data_Byte_Enable => Trace3_Data_Byte_Enable,
      Trace3_Data_Access      => Trace3_Data_Access,
      Trace3_Data_Read        => Trace3_Data_Read,
      Trace3_Data_Write       => Trace3_Data_Write,
      Trace3_DCache_Req       => Trace3_DCache_Req,
      Trace3_DCache_Hit       => Trace3_DCache_Hit,
      Trace3_DCache_Rdy       => Trace3_DCache_Rdy,
      Trace3_DCache_Read      => Trace3_DCache_Read,
      Trace3_ICache_Req       => Trace3_ICache_Req,
      Trace3_ICache_Hit       => Trace3_ICache_Hit,
      Trace3_ICache_Rdy       => Trace3_ICache_Rdy,
      Trace3_OF_PipeRun       => Trace3_OF_PipeRun,
      Trace3_EX_PipeRun       => Trace3_EX_PipeRun,
      Trace3_MEM_PipeRun      => Trace3_MEM_PipeRun,
      Trace3_MB_Halted        => Trace3_MB_Halted,
      Trace3_Jump_Hit         => Trace3_Jump_Hit,
      Trace_Instruction       => Trace_Instruction_i,
      Trace_Valid_Instr       => Trace_Valid_Instr_i,
      Trace_PC                => Trace_PC_i,
      Trace_Reg_Write         => Trace_Reg_Write_i,
      Trace_Reg_Addr          => Trace_Reg_Addr_i,
      Trace_MSR_Reg           => Trace_MSR_Reg_i,
      Trace_PID_Reg           => Trace_PID_Reg_i,
      Trace_New_Reg_Value     => Trace_New_Reg_Value_i,
      Trace_Exception_Taken   => Trace_Exception_Taken_i,
      Trace_Exception_Kind    => Trace_Exception_Kind_i,
      Trace_Jump_Taken        => Trace_Jump_Taken_i,
      Trace_Delay_Slot        => Trace_Delay_Slot_i,
      Trace_Data_Address      => Trace_Data_Address_i,
      Trace_Data_Write_Value  => Trace_Data_Write_Value_i,
      Trace_Data_Byte_Enable  => Trace_Data_Byte_Enable_i,
      Trace_Data_Access       => Trace_Data_Access_i,
      Trace_Data_Read         => Trace_Data_Read_i,
      Trace_Data_Write        => Trace_Data_Write_i,
      Trace_DCache_Req        => Trace_DCache_Req_i,
      Trace_DCache_Hit        => Trace_DCache_Hit_i,
      Trace_DCache_Rdy        => Trace_DCache_Rdy_i,
      Trace_DCache_Read       => Trace_DCache_Read_i,
      Trace_ICache_Req        => Trace_ICache_Req_i,
      Trace_ICache_Hit        => Trace_ICache_Hit_i,
      Trace_ICache_Rdy        => Trace_ICache_Rdy_i,
      Trace_OF_PipeRun        => Trace_OF_PipeRun_i,
      Trace_EX_PipeRun        => Trace_EX_PipeRun_i,
      Trace_MEM_PipeRun       => Trace_MEM_PipeRun_i,
      Trace_MB_Halted         => Trace_MB_Halted_i,
      Trace_Jump_Hit          => Trace_Jump_Hit_i);
  end generate trace_g;

  not_trace_g: if (C_INTERFACE /= C_TRACE) generate
  begin
    Trace_Instruction_i      <= (others => '0');
    Trace_Valid_Instr_i      <= '0';
    Trace_PC_i               <= (others => '0');
    Trace_Reg_Write_i        <= '0';
    Trace_Reg_Addr_i         <= (others => '0');
    Trace_MSR_Reg_i          <= (others => '0');
    Trace_PID_Reg_i          <= (others => '0');
    Trace_New_Reg_Value_i    <= (others => '0');
    Trace_Exception_Taken_i  <= '0';
    Trace_Exception_Kind_i   <= (others => '0');
    Trace_Jump_Taken_i       <= '0';
    Trace_Delay_Slot_i       <= '0';
    Trace_Data_Address_i     <= (others => '0');
    Trace_Data_Write_Value_i <= (others => '0');
    Trace_Data_Byte_Enable_i <= (others => '0');
    Trace_Data_Access_i      <= '0';
    Trace_Data_Read_i        <= '0';
    Trace_Data_Write_i       <= '0';
    Trace_DCache_Req_i       <= '0';
    Trace_DCache_Hit_i       <= '0';
    Trace_DCache_Rdy_i       <= '0';
    Trace_DCache_Read_i      <= '0';
    Trace_ICache_Req_i       <= '0';
    Trace_ICache_Hit_i       <= '0';
    Trace_ICache_Rdy_i       <= '0';
    Trace_OF_PipeRun_i       <= '0';
    Trace_EX_PipeRun_i       <= '0';
    Trace_MEM_PipeRun_i      <= '0';
    Trace_MB_Halted_i        <= '0';
    Trace_Jump_Hit_i         <= '0';
  end generate not_trace_g;

  Trace_Instruction       <= Trace_Instruction_i;
  Trace_Valid_Instr       <= Trace_Valid_Instr_i;
  Trace_PC                <= Trace_PC_i;
  Trace_Reg_Write         <= Trace_Reg_Write_i;
  Trace_Reg_Addr          <= Trace_Reg_Addr_i;
  Trace_MSR_Reg           <= Trace_MSR_Reg_i;
  Trace_PID_Reg           <= Trace_PID_Reg_i;
  Trace_New_Reg_Value     <= Trace_New_Reg_Value_i;
  Trace_Exception_Taken   <= Trace_Exception_Taken_i;
  Trace_Exception_Kind    <= Trace_Exception_Kind_i;
  Trace_Jump_Taken        <= Trace_Jump_Taken_i;
  Trace_Delay_Slot        <= Trace_Delay_Slot_i;
  Trace_Data_Address      <= Trace_Data_Address_i;
  Trace_Data_Write_Value  <= Trace_Data_Write_Value_i;
  Trace_Data_Byte_Enable  <= Trace_Data_Byte_Enable_i;
  Trace_Data_Access       <= Trace_Data_Access_i;
  Trace_Data_Read         <= Trace_Data_Read_i;
  Trace_Data_Write        <= Trace_Data_Write_i;
  Trace_DCache_Req        <= Trace_DCache_Req_i;
  Trace_DCache_Hit        <= Trace_DCache_Hit_i;
  Trace_DCache_Rdy        <= Trace_DCache_Rdy_i;
  Trace_DCache_Read       <= Trace_DCache_Read_i;
  Trace_ICache_Req        <= Trace_ICache_Req_i;
  Trace_ICache_Hit        <= Trace_ICache_Hit_i;
  Trace_ICache_Rdy        <= Trace_ICache_Rdy_i;
  Trace_OF_PipeRun        <= Trace_OF_PipeRun_i;
  Trace_EX_PipeRun        <= Trace_EX_PipeRun_i;
  Trace_MEM_PipeRun       <= Trace_MEM_PipeRun_i;
  Trace_MB_Halted         <= Trace_MB_Halted_i;
  Trace_Jump_Hit          <= Trace_Jump_Hit_i;

  -- Interrupt
  interrupt_fast_g: if (C_INTERFACE = C_INTERRUPT and C_LOW_LATENCY = 1) generate
  begin

    interrupt_voter_i : entity tmr_voter_v1_0_5.interrupt_voter
    generic map(
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable  => tmr_disable_vec,
      IRQ1         => IRQ1_i,
      IRQ1_Address => IRQ1_Address_i,
      IRQ1_Ack     => IRQ1_Ack,
      IRQ2         => IRQ2_i,
      IRQ2_Address => IRQ2_Address_i,
      IRQ2_Ack     => IRQ2_Ack,
      IRQ3         => IRQ3_i,
      IRQ3_Address => IRQ3_Address_i,
      IRQ3_Ack     => IRQ3_Ack,
      IRQ          => IRQ,
      IRQ_Address  => IRQ_Address,
      IRQ_Ack      => IRQ_Ack_i);

  end generate interrupt_fast_g;

  interrupt_g: if (C_INTERFACE = C_INTERRUPT and C_LOW_LATENCY = 0) generate
  begin
    IRQ1_i         <= IRQ;
    IRQ2_i         <= IRQ;
    IRQ3_i         <= IRQ;
    IRQ1_Address_i <= (others => '0');
    IRQ2_Address_i <= (others => '0');
    IRQ3_Address_i <= (others => '0');
    IRQ_Ack_i      <= (others => '0');
  end generate interrupt_g;

  no_interrupt_g: if (C_INTERFACE /= C_INTERRUPT) generate
  begin
    IRQ1_i         <= '0';
    IRQ2_i         <= '0';
    IRQ3_i         <= '0';
    IRQ1_Address_i <= (others => '0');
    IRQ2_Address_i <= (others => '0');
    IRQ3_Address_i <= (others => '0');
    IRQ_Ack_i      <= (others => '0');
  end generate no_interrupt_g;

  irq1_address_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, 32) port map(Clk, Rst, IRQ1_Address_i, IRQ1_Address);
  irq1_bit_i:         temporal_bit generic map(C_TEMPORAL_DEPTH1)     port map(Clk, Rst, IRQ1_i,         IRQ1);
  irq2_address_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, 32) port map(Clk, Rst, IRQ2_Address_i, IRQ2_Address);
  irq2_bit_i:         temporal_bit generic map(C_TEMPORAL_DEPTH2)     port map(Clk, Rst, IRQ2_i,         IRQ2);
  IRQ3_Address <= IRQ3_Address_i;
  IRQ3         <= IRQ3_i;
  IRQ_Ack      <= IRQ_Ack_i;

  -- Interrupt Slave
  interrupt_slave_fast_g: if (C_INTERFACE = C_S_INTERRUPT and C_LOW_LATENCY = 1) generate
  begin

    interrupt_slave_voter_i : entity tmr_voter_v1_0_5.voter
    generic map(
      C_WIDTH           => 33,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable        => tmr_disable_vec,
      Vote1(0)           => S_IRQ1,
      Vote1(32 downto 1) => S_IRQ1_Address,
      Vote2(0)           => S_IRQ2,
      Vote2(32 downto 1) => S_IRQ2_Address,
      Vote3(0)           => S_IRQ3,
      Vote3(32 downto 1) => S_IRQ3_Address,
      Voted(0)           => M_IRQ_i,
      Voted(32 downto 1) => M_IRQ_Address_i);

    S_IRQ1_Ack_i <= M_IRQ_Ack;
    S_IRQ2_Ack_i <= M_IRQ_Ack;
    S_IRQ3_Ack_i <= M_IRQ_Ack;
  end generate interrupt_slave_fast_g;

  interrupt_slave_g: if (C_INTERFACE = C_S_INTERRUPT and C_LOW_LATENCY = 0) generate
  begin
    interrupt_slave_voter_i : entity tmr_voter_v1_0_5.voter
    generic map(
      C_WIDTH           => 1,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable => tmr_disable_vec,
      Vote1(0)    => S_IRQ1,
      Vote2(0)    => S_IRQ2,
      Vote3(0)    => S_IRQ3,
      Voted(0)    => M_IRQ_i);

    S_IRQ1_Ack_i    <= (others => '0');
    S_IRQ2_Ack_i    <= (others => '0');
    S_IRQ3_Ack_i    <= (others => '0');
    M_IRQ_Address_i <= (others => '0');
  end generate interrupt_slave_g;

  no_interrupt_slave_g: if (C_INTERFACE /= C_S_INTERRUPT) generate
  begin
    S_IRQ1_Ack_i    <= (others => '0');
    S_IRQ2_Ack_i    <= (others => '0');
    S_IRQ3_Ack_i    <= (others => '0');
    M_IRQ_i         <= '0';
    M_IRQ_Address_i <= (others => '0');
  end generate no_interrupt_slave_g;

  s_irq1_ack_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, 2) port map(Clk, Rst, S_IRQ1_Ack_i, S_IRQ1_Ack);
  s_irq2_ack_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, 2) port map(Clk, Rst, S_IRQ2_Ack_i, S_IRQ2_Ack);
  S_IRQ3_Ack    <= S_IRQ3_Ack_i;
  M_IRQ         <= M_IRQ_i;
  M_IRQ_Address <= M_IRQ_Address_i;

  -- IO Bus
  iobus_g: if (C_INTERFACE = C_IOBUS) generate
  begin

    lmb_voter_i : entity tmr_voter_v1_0_5.lmb_voter
    generic map(
      C_LMB_AWIDTH      => C_LMB_AWIDTH,
      C_LMB_DWIDTH      => C_LMB_DWIDTH,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable      => tmr_disable_vec,
      LMB1_ABus        => IO1_Address,
      LMB1_WriteDBus   => IO1_Write_Data,
      LMB1_AddrStrobe  => IO1_Addr_Strobe,
      LMB1_ReadStrobe  => IO1_Read_Strobe,
      LMB1_WriteStrobe => IO1_Write_Strobe,
      LMB1_BE          => IO1_Byte_Enable,
      Sl1_DBus         => IO1_Read_Data_i,
      Sl1_Ready        => IO1_Ready_i,
      Sl1_Wait         => open,
      Sl1_UE           => open,
      Sl1_CE           => open,
      LMB2_ABus        => IO2_Address,
      LMB2_WriteDBus   => IO2_Write_Data,
      LMB2_AddrStrobe  => IO2_Addr_Strobe,
      LMB2_ReadStrobe  => IO2_Read_Strobe,
      LMB2_WriteStrobe => IO2_Write_Strobe,
      LMB2_BE          => IO2_Byte_Enable,
      Sl2_DBus         => IO2_Read_Data_i,
      Sl2_Ready        => IO2_Ready_i,
      Sl2_Wait         => open,
      Sl2_UE           => open,
      Sl2_CE           => open,
      LMB3_ABus        => IO3_Address,
      LMB3_WriteDBus   => IO3_Write_Data,
      LMB3_AddrStrobe  => IO3_Addr_Strobe,
      LMB3_ReadStrobe  => IO3_Read_Strobe,
      LMB3_WriteStrobe => IO3_Write_Strobe,
      LMB3_BE          => IO3_Byte_Enable,
      Sl3_DBus         => IO3_Read_Data_i,
      Sl3_Ready        => IO3_Ready_i,
      Sl3_Wait         => open,
      Sl3_UE           => open,
      Sl3_CE           => open,
      LMB_ABus         => IO_Address_i,
      LMB_WriteDBus    => IO_Write_Data_i,
      LMB_AddrStrobe   => IO_Addr_Strobe_i,
      LMB_ReadStrobe   => IO_Read_Strobe_i,
      LMB_WriteStrobe  => IO_Write_Strobe_i,
      LMB_BE           => IO_Byte_Enable_i,
      Sl_DBus          => IO_Read_Data,
      Sl_Ready         => IO_Ready,
      Sl_Wait          => '0',
      Sl_UE            => '0',
      Sl_CE            => '0');

  end generate iobus_g;

  not_iobus_g: if (C_INTERFACE /= C_IOBUS) generate
  begin
    IO1_Read_Data_i   <= (others => '0');
    IO1_Ready_i       <= '0';
    IO2_Read_Data_i   <= (others => '0');
    IO2_Ready_i       <= '0';
    IO3_Read_Data_i   <= (others => '0');
    IO3_Ready_i       <= '0';
    IO_Address_i      <= (others => '0');
    IO_Write_Data_i   <= (others => '0');
    IO_Addr_Strobe_i  <= '0';
    IO_Read_Strobe_i  <= '0';
    IO_Write_Strobe_i <= '0';
    IO_Byte_Enable_i  <= (others => '0');
  end generate not_iobus_g;

  io1_read_data_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, C_LMB_DWIDTH) port map(Clk, Rst, IO1_Read_Data_i, IO1_Read_Data);
  io1_ready_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH1)               port map(Clk, Rst, IO1_Ready_i,     IO1_Ready);
  io2_read_data_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, C_LMB_DWIDTH) port map(Clk, Rst, IO2_Read_Data_i, IO2_Read_Data);
  io2_ready_bit_i:     temporal_bit generic map(C_TEMPORAL_DEPTH2)               port map(Clk, Rst, IO2_Ready_i,     IO2_Ready);
  IO3_Read_Data   <= IO3_Read_Data_i;
  IO3_Ready       <= IO3_Ready_i;
  IO_Addr_Strobe  <= IO_Addr_Strobe_i;
  IO_Read_Strobe  <= IO_Read_Strobe_i;
  IO_Write_Strobe <= IO_Write_Strobe_i;
  IO_Address      <= IO_Address_i;
  IO_Byte_Enable  <= IO_Byte_Enable_i;
  IO_Write_Data   <= IO_Write_Data_i;

  -- GPIO
  gpio_g: if (C_INTERFACE = C_GPIO) generate
    signal gpt1_gpo1 : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt2_gpo2 : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt3_gpo3 : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
    signal gpt_gpo   : std_logic_vector(C_GPO_SIZE*2-1 downto 0);
  begin

    gpt1_gpo1 <= GPT1 & GPO1;
    gpt2_gpo2 <= GPT2 & GPO2;
    gpt3_gpo3 <= GPT3 & GPO3;

    gpo_voter_i : entity tmr_voter_v1_0_5.voter
    generic map(
      C_WIDTH           => C_GPO_SIZE*2,
      C_USE_TMR_DISABLE => C_USE_DISABLE)
    port map (
      TMR_Disable => tmr_disable_vec,
      Vote1       => gpt1_gpo1,
      Vote2       => gpt2_gpo2,
      Vote3       => gpt3_gpo3,
      Voted       => gpt_gpo);

    GPI1_i <= GPI;
    GPI2_i <= GPI;
    GPI3_i <= GPI;

    GPO_i <= gpt_gpo(C_GPO_SIZE-1 downto 0);
    GPT_i <= gpt_gpo(C_GPO_SIZE*2-1 downto C_GPO_SIZE);
  end generate gpio_g;

  not_gpio_g: if (C_INTERFACE /= C_GPIO) generate
  begin
    GPO_i  <= (others => '0');
    GPT_i  <= (others => '0');
    GPI1_i <= (others => '0');
    GPI2_i <= (others => '0');
    GPI3_i <= (others => '0');
  end generate not_gpio_g;

  gpi1_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH1, C_GPI_SIZE) port map(Clk, Rst, GPI1_i, GPI1);
  gpi2_vec_i: temporal_vec generic map(C_TEMPORAL_DEPTH2, C_GPI_SIZE) port map(Clk, Rst, GPI2_i, GPI2);
  GPI3 <= GPI3_i;
  GPO  <= GPO_i;
  GPT  <= GPT_i;

  -- UART
  uart_g: if (C_INTERFACE = C_UART) generate
  begin

    vote_i : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => 10,
        C_USE_TMR_DISABLE => C_USE_DISABLE)
      port map (
        TMR_Disable  => tmr_disable_vec,
        Vote1(0)    => UART1_TxD,
        Vote1(1)    => UART1_RTSn,
        Vote1(2)    => UART1_DTRn,
        Vote1(3)    => UART1_BAUDOUTn,
        Vote1(4)    => UART1_XOUT,
        Vote1(5)    => UART1_DDIS,
        Vote1(6)    => UART1_OUT1n,
        Vote1(7)    => UART1_OUT2n,
        Vote1(8)    => UART1_TXRDYn,
        Vote1(9)    => UART1_RXRDYn,
        Vote2(0)    => UART2_TxD,
        Vote2(1)    => UART2_RTSn,
        Vote2(2)    => UART2_DTRn,
        Vote2(3)    => UART2_BAUDOUTn,
        Vote2(4)    => UART2_XOUT,
        Vote2(5)    => UART2_DDIS,
        Vote2(6)    => UART2_OUT1n,
        Vote2(7)    => UART2_OUT2n,
        Vote2(8)    => UART2_TXRDYn,
        Vote2(9)    => UART2_RXRDYn,
        Vote3(0)    => UART3_TxD,
        Vote3(1)    => UART3_RTSn,
        Vote3(2)    => UART3_DTRn,
        Vote3(3)    => UART3_BAUDOUTn,
        Vote3(4)    => UART3_XOUT,
        Vote3(5)    => UART3_DDIS,
        Vote3(6)    => UART3_OUT1n,
        Vote3(7)    => UART3_OUT2n,
        Vote3(8)    => UART3_TXRDYn,
        Vote3(9)    => UART3_RXRDYn,
        Voted(0)    => UART_TxD_i,
        Voted(1)    => UART_RTSn_i,
        Voted(2)    => UART_DTRn_i,
        Voted(3)    => UART_BAUDOUTn_i,
        Voted(4)    => UART_XOUT_i,
        Voted(5)    => UART_DDIS_i,
        Voted(6)    => UART_OUT1n_i,
        Voted(7)    => UART_OUT2n_i,
        Voted(8)    => UART_TXRDYn_i,
        Voted(9)    => UART_RXRDYn_i);

    UART1_RxD_i  <= UART_RxD;
    UART1_CTSn_i <= UART_CTSn;
    UART1_DSRn_i <= UART_DSRn;
    UART1_RCLK_i <= UART_RCLK;
    UART1_XIN_i  <= UART_XIN;
    UART1_DCDn_i <= UART_DCDn;
    UART1_RI_i   <= UART_RI;
    UART2_RxD_i  <= UART_RxD;
    UART2_CTSn_i <= UART_CTSn;
    UART2_DSRn_i <= UART_DSRn;
    UART2_RCLK_i <= UART_RCLK;
    UART2_XIN_i  <= UART_XIN;
    UART2_DCDn_i <= UART_DCDn;
    UART2_RI_i   <= UART_RI;
    UART3_RxD_i  <= UART_RxD;
    UART3_CTSn_i <= UART_CTSn;
    UART3_DSRn_i <= UART_DSRn;
    UART3_RCLK_i <= UART_RCLK;
    UART3_XIN_i  <= UART_XIN;
    UART3_DCDn_i <= UART_DCDn;
    UART3_RI_i   <= UART_RI;

  end generate uart_g;

  not_uart_g: if (C_INTERFACE /= C_UART) generate
  begin
    UART_TxD_i      <= '1';
    UART_RTSn_i     <= '1';
    UART_DTRn_i     <= '1';
    UART_BAUDOUTn_i <= '1';
    UART_XOUT_i     <= '0';
    UART_DDIS_i     <= '0';
    UART_OUT1n_i    <= '1';
    UART_OUT2n_i    <= '1';
    UART_TXRDYn_i   <= '1';
    UART_RXRDYn_i   <= '1';
    UART1_RxD_i     <= '1';
    UART1_CTSn_i    <= '1';
    UART1_DSRn_i    <= '1';
    UART1_RCLK_i    <= '0';
    UART1_XIN_i     <= '0';
    UART1_DCDn_i    <= '1';
    UART1_RI_i      <= '1';
    UART2_RxD_i     <= '1';
    UART2_CTSn_i    <= '1';
    UART2_DSRn_i    <= '1';
    UART2_RCLK_i    <= '0';
    UART2_XIN_i     <= '0';
    UART2_DCDn_i    <= '1';
    UART2_RI_i      <= '1';
    UART3_RxD_i     <= '1';
    UART3_CTSn_i    <= '1';
    UART3_DSRn_i    <= '1';
    UART3_RCLK_i    <= '0';
    UART3_XIN_i     <= '0';
    UART3_DCDn_i    <= '1';
    UART3_RI_i      <= '1';
  end generate not_uart_g;

  uart1_rxd_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_RxD_i,  UART1_RxD);
  uart1_ctsn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_CTSn_i, UART1_CTSn);
  uart1_dsrn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_DSRn_i, UART1_DSRn);
  uart1_rclk_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_RCLK_i, UART1_RCLK);
  uart1_xin_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_XIN_i,  UART1_XIN);
  uart1_dcdn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_DCDn_i, UART1_DCDn);
  uart1_ri_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, UART1_RI_i,   UART1_RI);
  uart2_rxd_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_RxD_i,  UART2_RxD);
  uart2_ctsn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_CTSn_i, UART2_CTSn);
  uart2_dsrn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_DSRn_i, UART2_DSRn);
  uart2_rclk_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_RCLK_i, UART2_RCLK);
  uart2_xin_bit_i:  temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_XIN_i,  UART2_XIN);
  uart2_dcdn_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_DCDn_i, UART2_DCDn);
  uart2_ri_bit_i:   temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, UART2_RI_i,   UART2_RI);
  UART3_RxD     <= UART3_RxD_i;
  UART3_CTSn    <= UART3_CTSn_i;
  UART3_DSRn    <= UART3_DSRn_i;
  UART3_RCLK    <= UART3_RCLK_i;
  UART3_XIN     <= UART3_XIN_i;
  UART3_DCDn    <= UART3_DCDn_i;
  UART3_RI      <= UART3_RI_i;
  UART_TxD      <= UART_TxD_i;
  UART_RTSn     <= UART_RTSn_i;
  UART_DTRn     <= UART_DTRn_i;
  UART_BAUDOUTn <= UART_BAUDOUTn_i;
  UART_XOUT     <= UART_XOUT_i;
  UART_DDIS     <= UART_DDIS_i;
  UART_OUT1n    <= UART_OUT1n_i;
  UART_OUT2n    <= UART_OUT2n_i;
  UART_TXRDYn   <= UART_TXRDYn_i;
  UART_RXRDYn   <= UART_RXRDYn_i;

  -- IIC
  iic_g: if (C_INTERFACE = C_IIC) generate
  begin

    vote_i : entity tmr_voter_v1_0_5.voter
      generic map (
        C_WIDTH           => 4,
        C_USE_TMR_DISABLE => C_USE_DISABLE)
      port map (
        TMR_Disable => tmr_disable_vec,
        Vote1(0)    => IIC1_scl_o,
        Vote1(1)    => IIC1_scl_t,
        Vote1(2)    => IIC1_sda_o,
        Vote1(3)    => IIC1_sda_t,
        Vote2(0)    => IIC2_scl_o,
        Vote2(1)    => IIC2_scl_t,
        Vote2(2)    => IIC2_sda_o,
        Vote2(3)    => IIC2_sda_t,
        Vote3(0)    => IIC3_scl_o,
        Vote3(1)    => IIC3_scl_t,
        Vote3(2)    => IIC3_sda_o,
        Vote3(3)    => IIC3_sda_t,
        Voted(0)    => IIC_scl_o_i,
        Voted(1)    => IIC_scl_t_i,
        Voted(2)    => IIC_sda_o_i,
        Voted(3)    => IIC_sda_t_i);

    IIC1_scl_i_i    <= IIC_scl_i;
    IIC1_sda_i_i    <= IIC_sda_i;
    IIC2_scl_i_i    <= IIC_scl_i;
    IIC2_sda_i_i    <= IIC_sda_i;
    IIC3_scl_i_i    <= IIC_scl_i;
    IIC3_sda_i_i    <= IIC_sda_i;

  end generate iic_g;

  not_iic_g: if (C_INTERFACE /= C_IIC) generate
  begin
    IIC_scl_o_i     <= '0';
    IIC_scl_t_i     <= '0';
    IIC_sda_o_i     <= '0';
    IIC_sda_t_i     <= '0';
    IIC1_scl_i_i    <= '0';
    IIC1_sda_i_i    <= '0';
    IIC2_scl_i_i    <= '0';
    IIC2_sda_i_i    <= '0';
    IIC3_scl_i_i    <= '0';
    IIC3_sda_i_i    <= '0';
  end generate not_iic_g;

  iic1_scl_i_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, IIC1_scl_i_i, IIC1_scl_i);
  iic1_sda_i_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH1) port map(Clk, Rst, IIC1_sda_i_i, IIC1_sda_i);
  iic2_scl_i_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, IIC2_scl_i_i, IIC2_scl_i);
  iic2_sda_i_bit_i: temporal_bit generic map(C_TEMPORAL_DEPTH2) port map(Clk, Rst, IIC2_sda_i_i, IIC2_sda_i);
  IIC3_scl_i   <= IIC3_scl_i_i;
  IIC3_sda_i   <= IIC3_sda_i_i;
  IIC_scl_o    <= IIC_scl_o_i;
  IIC_scl_t    <= IIC_scl_t_i;
  IIC_sda_o    <= IIC_sda_o_i;
  IIC_sda_t    <= IIC_sda_t_i;

  -- Comparator
  comparator_g: if (C_COMPARATOR = 1) generate
  begin

    comparator_I : entity tmr_voter_v1_0_5.tmr_comparator
    generic map (
      C_VOTER_CHECK           => C_VOTER_CHECK,
      C_INCLUDE_MASK          => C_INCLUDE_MASK,
      C_TMR                   => C_TMR,
      C_INTERFACE             => C_INTERFACE,
      C_USE_TMR_DISABLE       => C_USE_TMR_DISABLE,
      C_INPUT_REGISTER        => C_INPUT_REGISTER,
      C_TEMPORAL_DEPTH1       => 0,
      C_TEMPORAL_DEPTH2       => 0,
      C_TEST_COMPARATOR       => C_TEST_COMPARATOR,
      C_TEST_LAST_INTERFACE   => C_TEST_LAST_INTERFACE,
      C_TEST_AXIS_DATA_WIDTH  => C_TEST_AXIS_DATA_WIDTH,
      C_DISCRETE_WIDTH        => C_DISCRETE_WIDTH,
      C_LMB_AWIDTH            => C_LMB_AWIDTH,
      C_LMB_DWIDTH            => C_LMB_DWIDTH,
      C_LMB_PROTOCOL          => C_LMB_PROTOCOL,
      C_ECC                   => C_ECC,
      C_AXI_ID_WIDTH          => C_AXI_ID_WIDTH,
      C_AXI_DATA_WIDTH        => C_AXI_DATA_WIDTH,
      C_AXI_ADDR_WIDTH        => C_AXI_ADDR_WIDTH,
      C_AXI_AWUSER_WIDTH      => C_AXI_AWUSER_WIDTH,
      C_AXI_ARUSER_WIDTH      => C_AXI_ARUSER_WIDTH,
      C_AXI_WUSER_WIDTH       => C_AXI_WUSER_WIDTH,
      C_AXI_RUSER_WIDTH       => C_AXI_RUSER_WIDTH,
      C_AXI_BUSER_WIDTH       => C_AXI_BUSER_WIDTH,
      C_AXIS_DATA_WIDTH       => C_AXIS_DATA_WIDTH,
      C_ADDR_SIZE             => C_ADDR_SIZE,
      C_DATA_SIZE             => C_DATA_SIZE,
      C_TRACE_SIZE            => 0,     -- Always full compare here
      C_LOW_LATENCY           => C_LOW_LATENCY,
      C_GPO_SIZE              => C_GPO_SIZE,
      C_GPI_SIZE              => C_GPI_SIZE)
    port map (
      TMR_Disable             => TMR_Disable,
      Clk                     => Clk,
      Rst                     => Rst,
      Rst_Comparator          => Rst,
      Test_Comparator         => Test_Comparator,
      S_AXIS_TLAST_Test       => S_AXIS_TLAST_Test,
      S_AXIS_TDATA_Test       => S_AXIS_TDATA_Test,
      S_AXIS_TVALID_Test      => S_AXIS_TVALID_Test,
      S_AXIS_TREADY_Test      => S_AXIS_TREADY_Test,
      M_AXIS_TLAST_Test       => M_AXIS_TLAST_Test,
      M_AXIS_TDATA_Test       => M_AXIS_TDATA_Test,
      M_AXIS_TVALID_Test      => M_AXIS_TVALID_Test,
      M_AXIS_TREADY_Test      => M_AXIS_TREADY_Test,
      Discrete1               => Discrete1,
      Discrete2               => Discrete2,
      Discrete3               => Discrete3,
      Discrete                => Discrete_i,
      LMB1_ABus               => LMB1_ABus,
      LMB1_WriteDBus          => LMB1_WriteDBus,
      LMB1_AddrStrobe         => LMB1_AddrStrobe,
      LMB1_ReadStrobe         => LMB1_ReadStrobe,
      LMB1_WriteStrobe        => LMB1_WriteStrobe,
      LMB1_BE                 => LMB1_BE,
      LMB1_DBus               => Sl1_DBus_i,
      LMB1_Ready              => Sl1_Ready_i,
      LMB2_ABus               => LMB2_ABus,
      LMB2_WriteDBus          => LMB2_WriteDBus,
      LMB2_AddrStrobe         => LMB2_AddrStrobe,
      LMB2_ReadStrobe         => LMB2_ReadStrobe,
      LMB2_WriteStrobe        => LMB2_WriteStrobe,
      LMB2_BE                 => LMB2_BE,
      LMB2_DBus               => Sl2_DBus_i,
      LMB2_Ready              => Sl2_Ready_i,
      LMB3_ABus               => LMB3_ABus,
      LMB3_WriteDBus          => LMB3_WriteDBus,
      LMB3_AddrStrobe         => LMB3_AddrStrobe,
      LMB3_ReadStrobe         => LMB3_ReadStrobe,
      LMB3_WriteStrobe        => LMB3_WriteStrobe,
      LMB3_BE                 => LMB3_BE,
      LMB3_DBus               => Sl3_DBus_i,
      LMB3_Ready              => Sl3_Ready_i,
      LMB_ABus                => LMB_ABus_i,
      LMB_WriteDBus           => LMB_WriteDBus_i,
      LMB_AddrStrobe          => LMB_AddrStrobe_i,
      LMB_ReadStrobe          => LMB_ReadStrobe_i,
      LMB_WriteStrobe         => LMB_WriteStrobe_i,
      LMB_BE                  => LMB_BE_i,
      LMB_DBus                => Sl_DBus,
      LMB_Ready               => Sl_Ready,
      S_LMB1_ABus             => S_LMB1_ABus_i,
      S_LMB1_WriteDBus        => S_LMB1_WriteDBus_i,
      S_LMB1_AddrStrobe       => S_LMB1_AddrStrobe_i,
      S_LMB1_ReadStrobe       => S_LMB1_ReadStrobe_i,
      S_LMB1_WriteStrobe      => S_LMB1_WriteStrobe_i,
      S_LMB1_BE               => S_LMB1_BE_i,
      S_LMB1_DBus             => S_Sl1_DBus,
      S_LMB1_Ready            => S_Sl1_Ready,
      S_LMB1_Wait             => S_Sl1_Wait,
      S_LMB1_UE               => S_Sl1_UE,
      S_LMB1_CE               => S_Sl1_CE,
      S_LMB2_ABus             => S_LMB2_ABus_i,
      S_LMB2_WriteDBus        => S_LMB2_WriteDBus_i,
      S_LMB2_AddrStrobe       => S_LMB2_AddrStrobe_i,
      S_LMB2_ReadStrobe       => S_LMB2_ReadStrobe_i,
      S_LMB2_WriteStrobe      => S_LMB2_WriteStrobe_i,
      S_LMB2_BE               => S_LMB2_BE_i,
      S_LMB2_DBus             => S_Sl2_DBus,
      S_LMB2_Ready            => S_Sl2_Ready,
      S_LMB2_Wait             => S_Sl2_Wait,
      S_LMB2_UE               => S_Sl2_UE,
      S_LMB2_CE               => S_Sl2_CE,
      S_LMB3_ABus             => S_LMB3_ABus_i,
      S_LMB3_WriteDBus        => S_LMB3_WriteDBus_i,
      S_LMB3_AddrStrobe       => S_LMB3_AddrStrobe_i,
      S_LMB3_ReadStrobe       => S_LMB3_ReadStrobe_i,
      S_LMB3_WriteStrobe      => S_LMB3_WriteStrobe_i,
      S_LMB3_BE               => S_LMB3_BE_i,
      S_LMB3_DBus             => S_Sl3_DBus,
      S_LMB3_Ready            => S_Sl3_Ready,
      S_LMB3_Wait             => S_Sl3_Wait,
      S_LMB3_UE               => S_Sl3_UE,
      S_LMB3_CE               => S_Sl3_CE,
      S_LMB_ABus              => S_LMB_ABus,
      S_LMB_WriteDBus         => S_LMB_WriteDBus,
      S_LMB_AddrStrobe        => S_LMB_AddrStrobe,
      S_LMB_ReadStrobe        => S_LMB_ReadStrobe,
      S_LMB_WriteStrobe       => S_LMB_WriteStrobe,
      S_LMB_BE                => S_LMB_BE,
      S_LMB_DBus              => S_Sl_DBus_i,
      S_LMB_Ready             => S_Sl_Ready_i,
      S_LMB_Wait              => S_Sl_Wait_i,
      S_LMB_UE                => S_Sl_UE_i,
      S_LMB_CE                => S_Sl_CE_i,
      BRAM1_Rst               => BRAM1_Rst,
      BRAM1_Clk               => BRAM1_Clk,
      BRAM1_Addr              => BRAM1_Addr,
      BRAM1_EN                => BRAM1_EN,
      BRAM1_WE                => BRAM1_WE,
      BRAM1_Dout              => BRAM1_Dout,
      BRAM2_Rst               => BRAM2_Rst,
      BRAM2_Clk               => BRAM2_Clk,
      BRAM2_Addr              => BRAM2_Addr,
      BRAM2_EN                => BRAM2_EN,
      BRAM2_WE                => BRAM2_WE,
      BRAM2_Dout              => BRAM2_Dout,
      BRAM3_Rst               => BRAM3_Rst,
      BRAM3_Clk               => BRAM3_Clk,
      BRAM3_Addr              => BRAM3_Addr,
      BRAM3_EN                => BRAM3_EN,
      BRAM3_WE                => BRAM3_WE,
      BRAM3_Dout              => BRAM3_Dout,
      BRAM_Rst                => BRAM_Rst_i,
      BRAM_Clk                => BRAM_Clk_i,
      BRAM_Addr               => BRAM_Addr_i,
      BRAM_EN                 => BRAM_EN_i,
      BRAM_WE                 => BRAM_WE_i,
      BRAM_Dout               => BRAM_Dout_i,
      M_BRAM1_Rst             => M_BRAM1_Rst_i,
      M_BRAM1_Clk             => M_BRAM1_Clk_i,
      M_BRAM1_Addr            => M_BRAM1_Addr_i,
      M_BRAM1_WE              => M_BRAM1_WE_i,
      M_BRAM1_Din             => M_BRAM1_Din,
      M_BRAM2_Rst             => M_BRAM2_Rst,
      M_BRAM2_Clk             => M_BRAM2_Clk,
      M_BRAM2_Addr            => M_BRAM2_Addr,
      M_BRAM2_WE              => M_BRAM2_WE,
      M_BRAM2_Din             => M_BRAM2_Din,
      M_BRAM3_Rst             => M_BRAM3_Rst,
      M_BRAM3_Clk             => M_BRAM3_Clk,
      M_BRAM3_Addr            => M_BRAM3_Addr,
      M_BRAM3_WE              => M_BRAM3_WE,
      M_BRAM3_Din             => M_BRAM3_Din,
      S_BRAM_Rst              => S_BRAM_Rst,
      S_BRAM_Clk              => S_BRAM_Clk,
      S_BRAM_Addr             => S_BRAM_Addr,
      S_BRAM_WE               => S_BRAM_WE,
      S_BRAM_Din              => S_BRAM_Din_i,
      S_AXI1_AWID             => S_AXI1_AWID,
      S_AXI1_AWADDR           => S_AXI1_AWADDR,
      S_AXI1_AWLEN            => S_AXI1_AWLEN,
      S_AXI1_AWSIZE           => S_AXI1_AWSIZE,
      S_AXI1_AWBURST          => S_AXI1_AWBURST,
      S_AXI1_AWLOCK           => S_AXI1_AWLOCK,
      S_AXI1_AWCACHE          => S_AXI1_AWCACHE,
      S_AXI1_AWPROT           => S_AXI1_AWPROT,
      S_AXI1_AWQOS            => S_AXI1_AWQOS,
      S_AXI1_AWVALID          => S_AXI1_AWVALID,
      S_AXI1_AWREADY          => S_AXI1_AWREADY_i,
      S_AXI1_AWUSER           => S_AXI1_AWUSER,
      S_AXI1_AWDOMAIN         => S_AXI1_AWDOMAIN,
      S_AXI1_AWSNOOP          => S_AXI1_AWSNOOP,
      S_AXI1_AWBAR            => S_AXI1_AWBAR,
      S_AXI1_WDATA            => S_AXI1_WDATA,
      S_AXI1_WSTRB            => S_AXI1_WSTRB,
      S_AXI1_WLAST            => S_AXI1_WLAST,
      S_AXI1_WVALID           => S_AXI1_WVALID,
      S_AXI1_WREADY           => S_AXI1_WREADY_i,
      S_AXI1_WUSER            => S_AXI1_WUSER,
      S_AXI1_BID              => S_AXI1_BID_i,
      S_AXI1_BRESP            => S_AXI1_BRESP_i,
      S_AXI1_BVALID           => S_AXI1_BVALID_i,
      S_AXI1_BREADY           => S_AXI1_BREADY,
      S_AXI1_BUSER            => S_AXI1_BUSER_i,
      S_AXI1_WACK             => S_AXI1_WACK,
      S_AXI1_ARID             => S_AXI1_ARID,
      S_AXI1_ARADDR           => S_AXI1_ARADDR,
      S_AXI1_ARLEN            => S_AXI1_ARLEN,
      S_AXI1_ARSIZE           => S_AXI1_ARSIZE,
      S_AXI1_ARBURST          => S_AXI1_ARBURST,
      S_AXI1_ARLOCK           => S_AXI1_ARLOCK,
      S_AXI1_ARCACHE          => S_AXI1_ARCACHE,
      S_AXI1_ARPROT           => S_AXI1_ARPROT,
      S_AXI1_ARQOS            => S_AXI1_ARQOS,
      S_AXI1_ARVALID          => S_AXI1_ARVALID,
      S_AXI1_ARREADY          => S_AXI1_ARREADY_i,
      S_AXI1_ARUSER           => S_AXI1_ARUSER,
      S_AXI1_ARDOMAIN         => S_AXI1_ARDOMAIN,
      S_AXI1_ARSNOOP          => S_AXI1_ARSNOOP,
      S_AXI1_ARBAR            => S_AXI1_ARBAR,
      S_AXI1_RID              => S_AXI1_RID_i,
      S_AXI1_RDATA            => S_AXI1_RDATA_i,
      S_AXI1_RRESP            => S_AXI1_RRESP_i,
      S_AXI1_RLAST            => S_AXI1_RLAST_i,
      S_AXI1_RVALID           => S_AXI1_RVALID_i,
      S_AXI1_RREADY           => S_AXI1_RREADY,
      S_AXI1_RUSER            => S_AXI1_RUSER_i,
      S_AXI1_RACK             => S_AXI1_RACK,
      S_AXI1_ACVALID          => S_AXI1_ACVALID_i,
      S_AXI1_ACADDR           => S_AXI1_ACADDR_i,
      S_AXI1_ACSNOOP          => S_AXI1_ACSNOOP_i,
      S_AXI1_ACPROT           => S_AXI1_ACPROT_i,
      S_AXI1_ACREADY          => S_AXI1_ACREADY,
      S_AXI1_CRVALID          => S_AXI1_CRVALID,
      S_AXI1_CRRESP           => S_AXI1_CRRESP,
      S_AXI1_CRREADY          => S_AXI1_CRREADY_i,
      S_AXI1_CDVALID          => S_AXI1_CDVALID,
      S_AXI1_CDDATA           => S_AXI1_CDDATA,
      S_AXI1_CDLAST           => S_AXI1_CDLAST,
      S_AXI1_CDREADY          => S_AXI1_CDREADY_i,
      S_AXI2_AWID             => S_AXI2_AWID,
      S_AXI2_AWADDR           => S_AXI2_AWADDR,
      S_AXI2_AWLEN            => S_AXI2_AWLEN,
      S_AXI2_AWSIZE           => S_AXI2_AWSIZE,
      S_AXI2_AWBURST          => S_AXI2_AWBURST,
      S_AXI2_AWLOCK           => S_AXI2_AWLOCK,
      S_AXI2_AWCACHE          => S_AXI2_AWCACHE,
      S_AXI2_AWPROT           => S_AXI2_AWPROT,
      S_AXI2_AWQOS            => S_AXI2_AWQOS,
      S_AXI2_AWVALID          => S_AXI2_AWVALID,
      S_AXI2_AWREADY          => S_AXI2_AWREADY_i,
      S_AXI2_AWUSER           => S_AXI2_AWUSER,
      S_AXI2_AWDOMAIN         => S_AXI2_AWDOMAIN,
      S_AXI2_AWSNOOP          => S_AXI2_AWSNOOP,
      S_AXI2_AWBAR            => S_AXI2_AWBAR,
      S_AXI2_WDATA            => S_AXI2_WDATA,
      S_AXI2_WSTRB            => S_AXI2_WSTRB,
      S_AXI2_WLAST            => S_AXI2_WLAST,
      S_AXI2_WVALID           => S_AXI2_WVALID,
      S_AXI2_WREADY           => S_AXI2_WREADY_i,
      S_AXI2_WUSER            => S_AXI2_WUSER,
      S_AXI2_BID              => S_AXI2_BID_i,
      S_AXI2_BRESP            => S_AXI2_BRESP_i,
      S_AXI2_BVALID           => S_AXI2_BVALID_i,
      S_AXI2_BREADY           => S_AXI2_BREADY,
      S_AXI2_BUSER            => S_AXI2_BUSER_i,
      S_AXI2_WACK             => S_AXI2_WACK,
      S_AXI2_ARID             => S_AXI2_ARID,
      S_AXI2_ARADDR           => S_AXI2_ARADDR,
      S_AXI2_ARLEN            => S_AXI2_ARLEN,
      S_AXI2_ARSIZE           => S_AXI2_ARSIZE,
      S_AXI2_ARBURST          => S_AXI2_ARBURST,
      S_AXI2_ARLOCK           => S_AXI2_ARLOCK,
      S_AXI2_ARCACHE          => S_AXI2_ARCACHE,
      S_AXI2_ARPROT           => S_AXI2_ARPROT,
      S_AXI2_ARQOS            => S_AXI2_ARQOS,
      S_AXI2_ARVALID          => S_AXI2_ARVALID,
      S_AXI2_ARREADY          => S_AXI2_ARREADY_i,
      S_AXI2_ARUSER           => S_AXI2_ARUSER,
      S_AXI2_ARDOMAIN         => S_AXI2_ARDOMAIN,
      S_AXI2_ARSNOOP          => S_AXI2_ARSNOOP,
      S_AXI2_ARBAR            => S_AXI2_ARBAR,
      S_AXI2_RID              => S_AXI2_RID_i,
      S_AXI2_RDATA            => S_AXI2_RDATA_i,
      S_AXI2_RRESP            => S_AXI2_RRESP_i,
      S_AXI2_RLAST            => S_AXI2_RLAST_i,
      S_AXI2_RVALID           => S_AXI2_RVALID_i,
      S_AXI2_RREADY           => S_AXI2_RREADY,
      S_AXI2_RUSER            => S_AXI2_RUSER_i,
      S_AXI2_RACK             => S_AXI2_RACK,
      S_AXI2_ACVALID          => S_AXI2_ACVALID_i,
      S_AXI2_ACADDR           => S_AXI2_ACADDR_i,
      S_AXI2_ACSNOOP          => S_AXI2_ACSNOOP_i,
      S_AXI2_ACPROT           => S_AXI2_ACPROT_i,
      S_AXI2_ACREADY          => S_AXI2_ACREADY,
      S_AXI2_CRVALID          => S_AXI2_CRVALID,
      S_AXI2_CRRESP           => S_AXI2_CRRESP,
      S_AXI2_CRREADY          => S_AXI2_CRREADY_i,
      S_AXI2_CDVALID          => S_AXI2_CDVALID,
      S_AXI2_CDDATA           => S_AXI2_CDDATA,
      S_AXI2_CDLAST           => S_AXI2_CDLAST,
      S_AXI2_CDREADY          => S_AXI2_CDREADY_i,
      S_AXI3_AWID             => S_AXI3_AWID,
      S_AXI3_AWADDR           => S_AXI3_AWADDR,
      S_AXI3_AWLEN            => S_AXI3_AWLEN,
      S_AXI3_AWSIZE           => S_AXI3_AWSIZE,
      S_AXI3_AWBURST          => S_AXI3_AWBURST,
      S_AXI3_AWLOCK           => S_AXI3_AWLOCK,
      S_AXI3_AWCACHE          => S_AXI3_AWCACHE,
      S_AXI3_AWPROT           => S_AXI3_AWPROT,
      S_AXI3_AWQOS            => S_AXI3_AWQOS,
      S_AXI3_AWVALID          => S_AXI3_AWVALID,
      S_AXI3_AWREADY          => S_AXI3_AWREADY_i,
      S_AXI3_AWUSER           => S_AXI3_AWUSER,
      S_AXI3_AWDOMAIN         => S_AXI3_AWDOMAIN,
      S_AXI3_AWSNOOP          => S_AXI3_AWSNOOP,
      S_AXI3_AWBAR            => S_AXI3_AWBAR,
      S_AXI3_WDATA            => S_AXI3_WDATA,
      S_AXI3_WSTRB            => S_AXI3_WSTRB,
      S_AXI3_WLAST            => S_AXI3_WLAST,
      S_AXI3_WVALID           => S_AXI3_WVALID,
      S_AXI3_WREADY           => S_AXI3_WREADY_i,
      S_AXI3_WUSER            => S_AXI3_WUSER,
      S_AXI3_BID              => S_AXI3_BID_i,
      S_AXI3_BRESP            => S_AXI3_BRESP_i,
      S_AXI3_BVALID           => S_AXI3_BVALID_i,
      S_AXI3_BREADY           => S_AXI3_BREADY,
      S_AXI3_BUSER            => S_AXI3_BUSER_i,
      S_AXI3_WACK             => S_AXI3_WACK,
      S_AXI3_ARID             => S_AXI3_ARID,
      S_AXI3_ARADDR           => S_AXI3_ARADDR,
      S_AXI3_ARLEN            => S_AXI3_ARLEN,
      S_AXI3_ARSIZE           => S_AXI3_ARSIZE,
      S_AXI3_ARBURST          => S_AXI3_ARBURST,
      S_AXI3_ARLOCK           => S_AXI3_ARLOCK,
      S_AXI3_ARCACHE          => S_AXI3_ARCACHE,
      S_AXI3_ARPROT           => S_AXI3_ARPROT,
      S_AXI3_ARQOS            => S_AXI3_ARQOS,
      S_AXI3_ARVALID          => S_AXI3_ARVALID,
      S_AXI3_ARREADY          => S_AXI3_ARREADY_i,
      S_AXI3_ARUSER           => S_AXI3_ARUSER,
      S_AXI3_ARDOMAIN         => S_AXI3_ARDOMAIN,
      S_AXI3_ARSNOOP          => S_AXI3_ARSNOOP,
      S_AXI3_ARBAR            => S_AXI3_ARBAR,
      S_AXI3_RID              => S_AXI3_RID_i,
      S_AXI3_RDATA            => S_AXI3_RDATA_i,
      S_AXI3_RRESP            => S_AXI3_RRESP_i,
      S_AXI3_RLAST            => S_AXI3_RLAST_i,
      S_AXI3_RVALID           => S_AXI3_RVALID_i,
      S_AXI3_RREADY           => S_AXI3_RREADY,
      S_AXI3_RUSER            => S_AXI3_RUSER_i,
      S_AXI3_RACK             => S_AXI3_RACK,
      S_AXI3_ACVALID          => S_AXI3_ACVALID_i,
      S_AXI3_ACADDR           => S_AXI3_ACADDR_i,
      S_AXI3_ACSNOOP          => S_AXI3_ACSNOOP_i,
      S_AXI3_ACPROT           => S_AXI3_ACPROT_i,
      S_AXI3_ACREADY          => S_AXI3_ACREADY,
      S_AXI3_CRVALID          => S_AXI3_CRVALID,
      S_AXI3_CRRESP           => S_AXI3_CRRESP,
      S_AXI3_CRREADY          => S_AXI3_CRREADY_i,
      S_AXI3_CDVALID          => S_AXI3_CDVALID,
      S_AXI3_CDDATA           => S_AXI3_CDDATA,
      S_AXI3_CDLAST           => S_AXI3_CDLAST,
      S_AXI3_CDREADY          => S_AXI3_CDREADY_i,
      M_AXI_AWID              => M_AXI_AWID_i,
      M_AXI_AWADDR            => M_AXI_AWADDR_i,
      M_AXI_AWLEN             => M_AXI_AWLEN_i,
      M_AXI_AWSIZE            => M_AXI_AWSIZE_i,
      M_AXI_AWBURST           => M_AXI_AWBURST_i,
      M_AXI_AWLOCK            => M_AXI_AWLOCK_i,
      M_AXI_AWCACHE           => M_AXI_AWCACHE_i,
      M_AXI_AWPROT            => M_AXI_AWPROT_i,
      M_AXI_AWQOS             => M_AXI_AWQOS_i,
      M_AXI_AWVALID           => M_AXI_AWVALID_i,
      M_AXI_AWREADY           => M_AXI_AWREADY,
      M_AXI_AWUSER            => M_AXI_AWUSER_i,
      M_AXI_AWDOMAIN          => M_AXI_AWDOMAIN_i,
      M_AXI_AWSNOOP           => M_AXI_AWSNOOP_i,
      M_AXI_AWBAR             => M_AXI_AWBAR_i,
      M_AXI_WDATA             => M_AXI_WDATA_i,
      M_AXI_WSTRB             => M_AXI_WSTRB_i,
      M_AXI_WLAST             => M_AXI_WLAST_i,
      M_AXI_WVALID            => M_AXI_WVALID_i,
      M_AXI_WREADY            => M_AXI_WREADY,
      M_AXI_WUSER             => M_AXI_WUSER_i,
      M_AXI_BID               => M_AXI_BID,
      M_AXI_BRESP             => M_AXI_BRESP,
      M_AXI_BVALID            => M_AXI_BVALID,
      M_AXI_BREADY            => M_AXI_BREADY_i,
      M_AXI_BUSER             => M_AXI_BUSER,
      M_AXI_WACK              => M_AXI_WACK_i,
      M_AXI_ARID              => M_AXI_ARID_i,
      M_AXI_ARADDR            => M_AXI_ARADDR_i,
      M_AXI_ARLEN             => M_AXI_ARLEN_i,
      M_AXI_ARSIZE            => M_AXI_ARSIZE_i,
      M_AXI_ARBURST           => M_AXI_ARBURST_i,
      M_AXI_ARLOCK            => M_AXI_ARLOCK_i,
      M_AXI_ARCACHE           => M_AXI_ARCACHE_i,
      M_AXI_ARPROT            => M_AXI_ARPROT_i,
      M_AXI_ARQOS             => M_AXI_ARQOS_i,
      M_AXI_ARVALID           => M_AXI_ARVALID_i,
      M_AXI_ARREADY           => M_AXI_ARREADY,
      M_AXI_ARUSER            => M_AXI_ARUSER_i,
      M_AXI_ARDOMAIN          => M_AXI_ARDOMAIN_i,
      M_AXI_ARSNOOP           => M_AXI_ARSNOOP_i,
      M_AXI_ARBAR             => M_AXI_ARBAR_i,
      M_AXI_RID               => M_AXI_RID,
      M_AXI_RDATA             => M_AXI_RDATA,
      M_AXI_RRESP             => M_AXI_RRESP,
      M_AXI_RLAST             => M_AXI_RLAST,
      M_AXI_RVALID            => M_AXI_RVALID,
      M_AXI_RREADY            => M_AXI_RREADY_i,
      M_AXI_RUSER             => M_AXI_RUSER,
      M_AXI_RACK              => M_AXI_RACK_i,
      M_AXI_ACVALID           => M_AXI_ACVALID,
      M_AXI_ACADDR            => M_AXI_ACADDR,
      M_AXI_ACSNOOP           => M_AXI_ACSNOOP,
      M_AXI_ACPROT            => M_AXI_ACPROT,
      M_AXI_ACREADY           => M_AXI_ACREADY_i,
      M_AXI_CRVALID           => M_AXI_CRVALID_i,
      M_AXI_CRRESP            => M_AXI_CRRESP_i,
      M_AXI_CRREADY           => M_AXI_CRREADY,
      M_AXI_CDVALID           => M_AXI_CDVALID_i,
      M_AXI_CDDATA            => M_AXI_CDDATA_i,
      M_AXI_CDLAST            => M_AXI_CDLAST_i,
      M_AXI_CDREADY           => M_AXI_CDREADY,
      S_AXIS1_TLAST           => S_AXIS1_TLAST,
      S_AXIS1_TDATA           => S_AXIS1_TDATA,
      S_AXIS1_TVALID          => S_AXIS1_TVALID,
      S_AXIS1_TREADY          => S_AXIS1_TREADY_i,
      S_AXIS1_TSTRB           => S_AXIS1_TSTRB,
      S_AXIS1_TKEEP           => S_AXIS1_TKEEP,
      S_AXIS1_TID             => S_AXIS1_TID,
      S_AXIS1_TDEST           => S_AXIS1_TDEST,
      S_AXIS1_TUSER           => S_AXIS1_TUSER,
      S_AXIS2_TLAST           => S_AXIS2_TLAST,
      S_AXIS2_TDATA           => S_AXIS2_TDATA,
      S_AXIS2_TVALID          => S_AXIS2_TVALID,
      S_AXIS2_TREADY          => S_AXIS2_TREADY_i,
      S_AXIS2_TSTRB           => S_AXIS2_TSTRB,
      S_AXIS2_TKEEP           => S_AXIS2_TKEEP,
      S_AXIS2_TID             => S_AXIS2_TID,
      S_AXIS2_TDEST           => S_AXIS2_TDEST,
      S_AXIS2_TUSER           => S_AXIS2_TUSER,
      S_AXIS3_TLAST           => S_AXIS3_TLAST,
      S_AXIS3_TDATA           => S_AXIS3_TDATA,
      S_AXIS3_TVALID          => S_AXIS3_TVALID,
      S_AXIS3_TREADY          => S_AXIS3_TREADY_i,
      S_AXIS3_TSTRB           => S_AXIS3_TSTRB,
      S_AXIS3_TKEEP           => S_AXIS3_TKEEP,
      S_AXIS3_TID             => S_AXIS3_TID,
      S_AXIS3_TDEST           => S_AXIS3_TDEST,
      S_AXIS3_TUSER           => S_AXIS3_TUSER,
      M_AXIS_TLAST            => M_AXIS_TLAST_i,
      M_AXIS_TDATA            => M_AXIS_TDATA_i,
      M_AXIS_TVALID           => M_AXIS_TVALID_i,
      M_AXIS_TREADY           => M_AXIS_TREADY,
      M_AXIS_TSTRB            => M_AXIS_TSTRB_i,
      M_AXIS_TKEEP            => M_AXIS_TKEEP_i,
      M_AXIS_TID              => M_AXIS_TID_i,
      M_AXIS_TDEST            => M_AXIS_TDEST_i,
      M_AXIS_TUSER            => M_AXIS_TUSER_i,
      M_AXIS1_TLAST           => M_AXIS1_TLAST_i,
      M_AXIS1_TDATA           => M_AXIS1_TDATA_i,
      M_AXIS1_TVALID          => M_AXIS1_TVALID_i,
      M_AXIS1_TREADY          => M_AXIS1_TREADY,
      M_AXIS1_TSTRB           => M_AXIS1_TSTRB_i,
      M_AXIS1_TKEEP           => M_AXIS1_TKEEP_i,
      M_AXIS1_TID             => M_AXIS1_TID_i,
      M_AXIS1_TDEST           => M_AXIS1_TDEST_i,
      M_AXIS1_TUSER           => M_AXIS1_TUSER_i,
      M_AXIS2_TLAST           => M_AXIS2_TLAST_i,
      M_AXIS2_TDATA           => M_AXIS2_TDATA_i,
      M_AXIS2_TVALID          => M_AXIS2_TVALID_i,
      M_AXIS2_TREADY          => M_AXIS2_TREADY,
      M_AXIS2_TSTRB           => M_AXIS2_TSTRB_i,
      M_AXIS2_TKEEP           => M_AXIS2_TKEEP_i,
      M_AXIS2_TID             => M_AXIS2_TID_i,
      M_AXIS2_TDEST           => M_AXIS2_TDEST_i,
      M_AXIS2_TUSER           => M_AXIS2_TUSER_i,
      M_AXIS3_TLAST           => M_AXIS3_TLAST_i,
      M_AXIS3_TDATA           => M_AXIS3_TDATA_i,
      M_AXIS3_TVALID          => M_AXIS3_TVALID_i,
      M_AXIS3_TREADY          => M_AXIS3_TREADY,
      M_AXIS3_TSTRB           => M_AXIS3_TSTRB_i,
      M_AXIS3_TKEEP           => M_AXIS3_TKEEP_i,
      M_AXIS3_TID             => M_AXIS3_TID_i,
      M_AXIS3_TDEST           => M_AXIS3_TDEST_i,
      M_AXIS3_TUSER           => M_AXIS3_TUSER_i,
      S_AXIS_TLAST            => S_AXIS_TLAST,
      S_AXIS_TDATA            => S_AXIS_TDATA,
      S_AXIS_TVALID           => S_AXIS_TVALID,
      S_AXIS_TREADY           => S_AXIS_TREADY_i,
      S_AXIS_TSTRB            => S_AXIS_TSTRB,
      S_AXIS_TKEEP            => S_AXIS_TKEEP,
      S_AXIS_TID              => S_AXIS_TID,
      S_AXIS_TDEST            => S_AXIS_TDEST,
      S_AXIS_TUSER            => S_AXIS_TUSER,
      Trace1_Instruction      => Trace1_Instruction,
      Trace1_Valid_Instr      => Trace1_Valid_Instr,
      Trace1_PC               => Trace1_PC,
      Trace1_Reg_Write        => Trace1_Reg_Write,
      Trace1_Reg_Addr         => Trace1_Reg_Addr,
      Trace1_MSR_Reg          => Trace1_MSR_Reg,
      Trace1_PID_Reg          => Trace1_PID_Reg,
      Trace1_New_Reg_Value    => Trace1_New_Reg_Value,
      Trace1_Exception_Taken  => Trace1_Exception_Taken,
      Trace1_Exception_Kind   => Trace1_Exception_Kind,
      Trace1_Jump_Taken       => Trace1_Jump_Taken,
      Trace1_Delay_Slot       => Trace1_Delay_Slot,
      Trace1_Data_Address     => Trace1_Data_Address,
      Trace1_Data_Write_Value => Trace1_Data_Write_Value,
      Trace1_Data_Byte_Enable => Trace1_Data_Byte_Enable,
      Trace1_Data_Access      => Trace1_Data_Access,
      Trace1_Data_Read        => Trace1_Data_Read,
      Trace1_Data_Write       => Trace1_Data_Write,
      Trace1_DCache_Req       => Trace1_DCache_Req,
      Trace1_DCache_Hit       => Trace1_DCache_Hit,
      Trace1_DCache_Rdy       => Trace1_DCache_Rdy,
      Trace1_DCache_Read      => Trace1_DCache_Read,
      Trace1_ICache_Req       => Trace1_ICache_Req,
      Trace1_ICache_Hit       => Trace1_ICache_Hit,
      Trace1_ICache_Rdy       => Trace1_ICache_Rdy,
      Trace1_OF_PipeRun       => Trace1_OF_PipeRun,
      Trace1_EX_PipeRun       => Trace1_EX_PipeRun,
      Trace1_MEM_PipeRun      => Trace1_MEM_PipeRun,
      Trace1_MB_Halted        => Trace1_MB_Halted,
      Trace1_Jump_Hit         => Trace1_Jump_Hit,
      Trace2_Instruction      => Trace2_Instruction,
      Trace2_Valid_Instr      => Trace2_Valid_Instr,
      Trace2_PC               => Trace2_PC,
      Trace2_Reg_Write        => Trace2_Reg_Write,
      Trace2_Reg_Addr         => Trace2_Reg_Addr,
      Trace2_MSR_Reg          => Trace2_MSR_Reg,
      Trace2_PID_Reg          => Trace2_PID_Reg,
      Trace2_New_Reg_Value    => Trace2_New_Reg_Value,
      Trace2_Exception_Taken  => Trace2_Exception_Taken,
      Trace2_Exception_Kind   => Trace2_Exception_Kind,
      Trace2_Jump_Taken       => Trace2_Jump_Taken,
      Trace2_Delay_Slot       => Trace2_Delay_Slot,
      Trace2_Data_Address     => Trace2_Data_Address,
      Trace2_Data_Write_Value => Trace2_Data_Write_Value,
      Trace2_Data_Byte_Enable => Trace2_Data_Byte_Enable,
      Trace2_Data_Access      => Trace2_Data_Access,
      Trace2_Data_Read        => Trace2_Data_Read,
      Trace2_Data_Write       => Trace2_Data_Write,
      Trace2_DCache_Req       => Trace2_DCache_Req,
      Trace2_DCache_Hit       => Trace2_DCache_Hit,
      Trace2_DCache_Rdy       => Trace2_DCache_Rdy,
      Trace2_DCache_Read      => Trace2_DCache_Read,
      Trace2_ICache_Req       => Trace2_ICache_Req,
      Trace2_ICache_Hit       => Trace2_ICache_Hit,
      Trace2_ICache_Rdy       => Trace2_ICache_Rdy,
      Trace2_OF_PipeRun       => Trace2_OF_PipeRun,
      Trace2_EX_PipeRun       => Trace2_EX_PipeRun,
      Trace2_MEM_PipeRun      => Trace2_MEM_PipeRun,
      Trace2_MB_Halted        => Trace2_MB_Halted,
      Trace2_Jump_Hit         => Trace2_Jump_Hit,
      Trace3_Instruction      => Trace3_Instruction,
      Trace3_Valid_Instr      => Trace3_Valid_Instr,
      Trace3_PC               => Trace3_PC,
      Trace3_Reg_Write        => Trace3_Reg_Write,
      Trace3_Reg_Addr         => Trace3_Reg_Addr,
      Trace3_MSR_Reg          => Trace3_MSR_Reg,
      Trace3_PID_Reg          => Trace3_PID_Reg,
      Trace3_New_Reg_Value    => Trace3_New_Reg_Value,
      Trace3_Exception_Taken  => Trace3_Exception_Taken,
      Trace3_Exception_Kind   => Trace3_Exception_Kind,
      Trace3_Jump_Taken       => Trace3_Jump_Taken,
      Trace3_Delay_Slot       => Trace3_Delay_Slot,
      Trace3_Data_Address     => Trace3_Data_Address,
      Trace3_Data_Write_Value => Trace3_Data_Write_Value,
      Trace3_Data_Byte_Enable => Trace3_Data_Byte_Enable,
      Trace3_Data_Access      => Trace3_Data_Access,
      Trace3_Data_Read        => Trace3_Data_Read,
      Trace3_Data_Write       => Trace3_Data_Write,
      Trace3_DCache_Req       => Trace3_DCache_Req,
      Trace3_DCache_Hit       => Trace3_DCache_Hit,
      Trace3_DCache_Rdy       => Trace3_DCache_Rdy,
      Trace3_DCache_Read      => Trace3_DCache_Read,
      Trace3_ICache_Req       => Trace3_ICache_Req,
      Trace3_ICache_Hit       => Trace3_ICache_Hit,
      Trace3_ICache_Rdy       => Trace3_ICache_Rdy,
      Trace3_OF_PipeRun       => Trace3_OF_PipeRun,
      Trace3_EX_PipeRun       => Trace3_EX_PipeRun,
      Trace3_MEM_PipeRun      => Trace3_MEM_PipeRun,
      Trace3_MB_Halted        => Trace3_MB_Halted,
      Trace3_Jump_Hit         => Trace3_Jump_Hit,
      Trace_Instruction       => Trace_Instruction_i,
      Trace_Valid_Instr       => Trace_Valid_Instr_i,
      Trace_PC                => Trace_PC_i,
      Trace_Reg_Write         => Trace_Reg_Write_i,
      Trace_Reg_Addr          => Trace_Reg_Addr_i,
      Trace_MSR_Reg           => Trace_MSR_Reg_i,
      Trace_PID_Reg           => Trace_PID_Reg_i,
      Trace_New_Reg_Value     => Trace_New_Reg_Value_i,
      Trace_Exception_Taken   => Trace_Exception_Taken_i,
      Trace_Exception_Kind    => Trace_Exception_Kind_i,
      Trace_Jump_Taken        => Trace_Jump_Taken_i,
      Trace_Delay_Slot        => Trace_Delay_Slot_i,
      Trace_Data_Address      => Trace_Data_Address_i,
      Trace_Data_Write_Value  => Trace_Data_Write_Value_i,
      Trace_Data_Byte_Enable  => Trace_Data_Byte_Enable_i,
      Trace_Data_Access       => Trace_Data_Access_i,
      Trace_Data_Read         => Trace_Data_Read_i,
      Trace_Data_Write        => Trace_Data_Write_i,
      Trace_DCache_Req        => Trace_DCache_Req_i,
      Trace_DCache_Hit        => Trace_DCache_Hit_i,
      Trace_DCache_Rdy        => Trace_DCache_Rdy_i,
      Trace_DCache_Read       => Trace_DCache_Read_i,
      Trace_ICache_Req        => Trace_ICache_Req_i,
      Trace_ICache_Hit        => Trace_ICache_Hit_i,
      Trace_ICache_Rdy        => Trace_ICache_Rdy_i,
      Trace_OF_PipeRun        => Trace_OF_PipeRun_i,
      Trace_EX_PipeRun        => Trace_EX_PipeRun_i,
      Trace_MEM_PipeRun       => Trace_MEM_PipeRun_i,
      Trace_MB_Halted         => Trace_MB_Halted_i,
      Trace_Jump_Hit          => Trace_Jump_Hit_i,
      IRQ1                    => IRQ1_i,
      IRQ1_Address            => IRQ1_Address_i,
      IRQ1_Ack                => IRQ1_Ack,
      IRQ2                    => IRQ2_i,
      IRQ2_Address            => IRQ2_Address_i,
      IRQ2_Ack                => IRQ2_Ack,
      IRQ3                    => IRQ3_i,
      IRQ3_Address            => IRQ3_Address_i,
      IRQ3_Ack                => IRQ3_Ack,
      IRQ                     => IRQ,
      IRQ_Address             => IRQ_Address,
      IRQ_Ack                 => IRQ_Ack_i,
      IO1_Addr_Strobe         => IO1_Addr_Strobe,
      IO1_Read_Strobe         => IO1_Read_Strobe,
      IO1_Write_Strobe        => IO1_Write_Strobe,
      IO1_Address             => IO1_Address,
      IO1_Byte_Enable         => IO1_Byte_Enable,
      IO1_Write_Data          => IO1_Write_Data,
      IO1_Read_Data           => IO1_Read_Data_i,
      IO1_Ready               => IO1_Ready_i,
      IO2_Addr_Strobe         => IO2_Addr_Strobe,
      IO2_Read_Strobe         => IO2_Read_Strobe,
      IO2_Write_Strobe        => IO2_Write_Strobe,
      IO2_Address             => IO2_Address,
      IO2_Byte_Enable         => IO2_Byte_Enable,
      IO2_Write_Data          => IO2_Write_Data,
      IO2_Read_Data           => IO2_Read_Data_i,
      IO2_Ready               => IO2_Ready_i,
      IO3_Addr_Strobe         => IO3_Addr_Strobe,
      IO3_Read_Strobe         => IO3_Read_Strobe,
      IO3_Write_Strobe        => IO3_Write_Strobe,
      IO3_Address             => IO3_Address,
      IO3_Byte_Enable         => IO3_Byte_Enable,
      IO3_Write_Data          => IO3_Write_Data,
      IO3_Read_Data           => IO3_Read_Data_i,
      IO3_Ready               => IO3_Ready_i,
      IO_Addr_Strobe          => IO_Addr_Strobe_i,
      IO_Read_Strobe          => IO_Read_Strobe_i,
      IO_Write_Strobe         => IO_Write_Strobe_i,
      IO_Address              => IO_Address_i,
      IO_Byte_Enable          => IO_Byte_Enable_i,
      IO_Write_Data           => IO_Write_Data_i,
      IO_Read_Data            => IO_Read_Data,
      IO_Ready                => IO_Ready,
      GPO1                    => GPO1,
      GPT1                    => GPT1,
      GPI1                    => GPI1_i,
      GPO2                    => GPO2,
      GPT2                    => GPT2,
      GPI2                    => GPI2_i,
      GPO3                    => GPO3,
      GPT3                    => GPT3,
      GPI3                    => GPI3_i,
      GPO                     => GPO_i,
      GPT                     => GPT_i,
      GPI                     => GPI,
      UART1_TxD               => UART1_TxD,
      UART1_RxD               => UART1_RxD_i,
      UART1_RTSn              => UART1_RTSn,
      UART1_CTSn              => UART1_CTSn_i,
      UART1_DTRn              => UART1_DTRn,
      UART1_DSRn              => UART1_DSRn_i,
      UART1_BAUDOUTn          => UART1_BAUDOUTn,
      UART1_RCLK              => UART1_RCLK_i,
      UART1_XIN               => UART1_XIN_i,
      UART1_XOUT              => UART1_XOUT,
      UART1_DCDn              => UART1_DCDn_i,
      UART1_DDIS              => UART1_DDIS,
      UART1_OUT1n             => UART1_OUT1n,
      UART1_OUT2n             => UART1_OUT2n,
      UART1_TXRDYn            => UART1_TXRDYn,
      UART1_RXRDYn            => UART1_RXRDYn,
      UART1_RI                => UART1_RI_i,
      UART2_TxD               => UART2_TxD,
      UART2_RxD               => UART2_RxD_i,
      UART2_RTSn              => UART2_RTSn,
      UART2_CTSn              => UART2_CTSn_i,
      UART2_DTRn              => UART2_DTRn,
      UART2_DSRn              => UART2_DSRn_i,
      UART2_BAUDOUTn          => UART2_BAUDOUTn,
      UART2_RCLK              => UART2_RCLK_i,
      UART2_XIN               => UART2_XIN_i,
      UART2_XOUT              => UART2_XOUT,
      UART2_DCDn              => UART2_DCDn_i,
      UART2_DDIS              => UART2_DDIS,
      UART2_OUT1n             => UART2_OUT1n,
      UART2_OUT2n             => UART2_OUT2n,
      UART2_TXRDYn            => UART2_TXRDYn,
      UART2_RXRDYn            => UART2_RXRDYn,
      UART2_RI                => UART2_RI_i,
      UART3_TxD               => UART3_TxD,
      UART3_RxD               => UART3_RxD_i,
      UART3_RTSn              => UART3_RTSn,
      UART3_CTSn              => UART3_CTSn_i,
      UART3_DTRn              => UART3_DTRn,
      UART3_DSRn              => UART3_DSRn_i,
      UART3_BAUDOUTn          => UART3_BAUDOUTn,
      UART3_RCLK              => UART3_RCLK_i,
      UART3_XIN               => UART3_XIN_i,
      UART3_XOUT              => UART3_XOUT,
      UART3_DCDn              => UART3_DCDn_i,
      UART3_DDIS              => UART3_DDIS,
      UART3_OUT1n             => UART3_OUT1n,
      UART3_OUT2n             => UART3_OUT2n,
      UART3_TXRDYn            => UART3_TXRDYn,
      UART3_RXRDYn            => UART3_RXRDYn,
      UART3_RI                => UART3_RI_i,
      UART_TxD                => UART_TxD_i,
      UART_RxD                => UART_RxD,
      UART_RTSn               => UART_RTSn_i,
      UART_CTSn               => UART_CTSn,
      UART_DTRn               => UART_DTRn_i,
      UART_DSRn               => UART_DSRn,
      UART_BAUDOUTn           => UART_BAUDOUTn_i,
      UART_RCLK               => UART_RCLK,
      UART_XIN                => UART_XIN,
      UART_XOUT               => UART_XOUT_i,
      UART_DCDn               => UART_DCDn,
      UART_DDIS               => UART_DDIS_i,
      UART_OUT1n              => UART_OUT1n_i,
      UART_OUT2n              => UART_OUT2n_i,
      UART_TXRDYn             => UART_TXRDYn_i,
      UART_RXRDYn             => UART_RXRDYn_i,
      UART_RI                 => UART_RI,
      IIC1_scl_i              => IIC1_scl_i_i,
      IIC1_scl_o              => IIC1_scl_o,
      IIC1_scl_t              => IIC1_scl_t,
      IIC1_sda_i              => IIC1_sda_i_i,
      IIC1_sda_o              => IIC1_sda_o,
      IIC1_sda_t              => IIC1_sda_t,
      IIC2_scl_i              => IIC2_scl_i_i,
      IIC2_scl_o              => IIC2_scl_o,
      IIC2_scl_t              => IIC2_scl_t,
      IIC2_sda_i              => IIC2_sda_i_i,
      IIC2_sda_o              => IIC2_sda_o,
      IIC2_sda_t              => IIC2_sda_t,
      IIC3_scl_i              => IIC3_scl_i_i,
      IIC3_scl_o              => IIC3_scl_o,
      IIC3_scl_t              => IIC3_scl_t,
      IIC3_sda_i              => IIC3_sda_i_i,
      IIC3_sda_o              => IIC3_sda_o,
      IIC3_sda_t              => IIC3_sda_t,
      IIC_scl_i               => IIC_scl_i,
      IIC_scl_o               => IIC_scl_o_i,
      IIC_scl_t               => IIC_scl_t_i,
      IIC_sda_i               => IIC_sda_i,
      IIC_sda_o               => IIC_sda_o_i,
      IIC_sda_t               => IIC_sda_t_i,
      Compare                 => Compare_i);

  end generate comparator_g;

  no_comparator_g: if (C_COMPARATOR = 0) generate
  begin
    S_AXIS_TREADY_Test <= '0';
    M_AXIS_TLAST_Test  <= '0';
    M_AXIS_TDATA_Test  <= (others => '0');
    M_AXIS_TVALID_Test <= '0';
    Compare_i          <= (others => '0');
  end generate no_comparator_g;

  Compare <= Compare_i;

end architecture imp ;


