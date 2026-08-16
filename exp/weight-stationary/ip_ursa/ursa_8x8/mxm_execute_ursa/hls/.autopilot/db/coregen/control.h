// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of addr_a0
//        bit 31~0 - addr_a0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of addr_b0
//        bit 31~0 - addr_b0[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of addr_c0
//        bit 31~0 - addr_c0[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_ADDR_A0_DATA 0x10
#define CONTROL_BITS_ADDR_A0_DATA 32
#define CONTROL_ADDR_ADDR_B0_DATA 0x18
#define CONTROL_BITS_ADDR_B0_DATA 32
#define CONTROL_ADDR_ADDR_C0_DATA 0x20
#define CONTROL_BITS_ADDR_C0_DATA 32
