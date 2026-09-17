# Rodar: python3 11_yaml2mmi_128k.py > bram.mmi

import yaml

from yaml import load, dump
try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper

header="""
<?xml version="1.0" encoding="UTF-8"?>
<MemInfo Version="1" Minor="0">
    <Processor Endianness="Little" InstPath="design/steel_128k">
        <AddressSpace
            Name="design_1_i_microblaze_0.design_1_i_microblaze_0_local_memory_dlmb_bram_if_cntlr" Begin="0" End="131071">

            <BusBlock>
"""


footer="""
   </BusBlock>
        </AddressSpace>
    </Processor>
    <Config>
        <Option Name="Part" Val="xc7z020clg484-1"/>
    </Config>
</MemInfo>

"""

bitlane="""
<BitLane MemType="{type}" Placement="{placement}">
  <DataWidth MSB="{msb}" LSB="{lsb}"/>
  <AddressRange Begin="0" End="{end_address}"/>
  <Parity ON="false" NumBits="0"/>
</BitLane>
"""

remap = [
    7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,
    15	,	14	,	13	,	12	,	11	,	10	,	9	,	8	,
    23	,	22	,	21	,	20	,	19	,	18	,	17	,	16	,
    31	,	30	,	29	,	28	,	27	,	26	,	25	,	24	,
]

bram = open("bram.yaml", "r")
doc = yaml.load(bram, Loader=Loader)

bit_pos   = 0
bit_width = 1
output = header
# for bram  in doc['bram']:
for i in range(len(doc['bram'])):

    bram = doc['bram'][remap[i]]
    data = dict()
    # print bram

    data['lsb'] = bit_pos
    data['msb'] = bit_pos + bit_width - 1
    data['end_address'] = 32767
    data['type'] = 'RAMB32'
    data['placement'] = bram['SITE'].split('_')[1] # remove RAMB36_ in front of the position string
    bit_pos += bit_width
    output += bitlane.format(**data)

output += footer
print (output)
