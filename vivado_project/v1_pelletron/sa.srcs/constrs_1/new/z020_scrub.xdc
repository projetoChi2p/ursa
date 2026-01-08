
set_property BITSTREAM.GENERAL.COMPRESS FALSE [current_design]

set_property BITSTREAM.GENERAL.CRC ENABLE [current_design]
set_property BITSTREAM.GENERAL.PERFRAMECRC yes [current_design]
set_property POST_CRC ENABLE [current_design]
set_property POST_CRC_SOURCE PRE_COMPUTED [current_design]
set_property POST_CRC_ACTION CORRECT_AND_CONTINUE [current_design]
set_property POST_CRC_INIT_FLAG DISABLE [current_design]
set_property POST_CRC_FREQ {50} [current_design]
