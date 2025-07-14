.include "macros.inc"
.file "auto_03_80289CDC_text"

# 0x80289CDC..0x80289D0C | size: 0x30
.text
.balign 4

# .text:0x0 | 0x80289CDC | size: 0x30
.fn fn_80289CDC, global
/* 80289CDC 00284EDC  38 80 00 00 */	li r4, 0x0
/* 80289CE0 00284EE0  38 A0 FF FF */	li r5, -0x1
/* 80289CE4 00284EE4  38 00 00 02 */	li r0, 0x2
/* 80289CE8 00284EE8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80289CEC 00284EEC  90 A3 00 08 */	stw r5, 0x8(r3)
/* 80289CF0 00284EF0  90 83 00 04 */	stw r4, 0x4(r3)
/* 80289CF4 00284EF4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80289CF8 00284EF8  90 83 00 18 */	stw r4, 0x18(r3)
/* 80289CFC 00284EFC  90 83 00 24 */	stw r4, 0x24(r3)
/* 80289D00 00284F00  90 83 00 20 */	stw r4, 0x20(r3)
/* 80289D04 00284F04  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80289D08 00284F08  4E 80 00 20 */	blr
.endfn fn_80289CDC
