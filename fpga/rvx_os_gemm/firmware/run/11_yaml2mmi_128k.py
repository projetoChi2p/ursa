#!/usr/bin/env python3
# -----------------------------------------------------------------------------
# Gera build/bram.mmi a partir de build/bram.yaml (saida do 10_report_bram.tcl).
#
#   python3 11_yaml2mmi_128k.py
#
# Pode ser chamado de qualquer diretorio. Requer: python3 -m pip install pyyaml
# -----------------------------------------------------------------------------

import sys
from pathlib import Path

import yaml

try:
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Loader

# Configuracao
PART       = "xc7z020clg484-1"      # ZedBoard
INST_PATH  = "design/steel_128k"    # precisa bater com PROC_PATH do 12_merge_bit.sh
NUM_BRAMS  = 32                     # 128 KB = 32 x (32K x 1 bit)
END_ADDR   = 32767

ROOT_DIR  = Path(__file__).resolve().parent
YAML_FILE = ROOT_DIR / "build" / "bram.yaml"
MMI_FILE  = ROOT_DIR / "build" / "bram.mmi"

header = f"""<?xml version="1.0" encoding="UTF-8"?>
<MemInfo Version="1" Minor="0">
    <Processor Endianness="Little" InstPath="{INST_PATH}">
        <AddressSpace
            Name="design_1_i_microblaze_0.design_1_i_microblaze_0_local_memory_dlmb_bram_if_cntlr" Begin="0" End="131071">

            <BusBlock>
"""

footer = f"""
   </BusBlock>
        </AddressSpace>
    </Processor>
    <Config>
        <Option Name="Part" Val="{PART}"/>
    </Config>
</MemInfo>
"""

bitlane = """
<BitLane MemType="{type}" Placement="{placement}">
  <DataWidth MSB="{msb}" LSB="{lsb}"/>
  <AddressRange Begin="0" End="{end_address}"/>
  <Parity ON="false" NumBits="0"/>
</BitLane>
"""

remap = [
     7,  6,  5,  4,  3,  2,  1,  0,
    15, 14, 13, 12, 11, 10,  9,  8,
    23, 22, 21, 20, 19, 18, 17, 16,
    31, 30, 29, 28, 27, 26, 25, 24,
]

if not YAML_FILE.is_file():
    sys.exit(f"ERRO: nao encontrei {YAML_FILE}. Rode antes o 10_report_bram.tcl no Vivado.")

with open(YAML_FILE) as f:
    doc = yaml.load(f, Loader=Loader)

brams = doc["bram"]
if len(brams) != NUM_BRAMS:
    sys.exit(f"ERRO: esperava {NUM_BRAMS} BRAMs no YAML, encontrei {len(brams)}.")

output = header
for i in range(NUM_BRAMS):
    b = brams[remap[i]]
    output += bitlane.format(
        type="RAMB32",
        placement=b["SITE"].split("_")[1],  # remove o prefixo RAMB36_
        lsb=i,
        msb=i,
        end_address=END_ADDR,
    )
output += footer

MMI_FILE.write_text(output)
print(f"MMI gerado: {MMI_FILE}  (part {PART}, {NUM_BRAMS} BRAMs)")