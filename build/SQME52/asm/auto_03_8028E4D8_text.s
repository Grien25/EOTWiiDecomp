.include "macros.inc"
.file "auto_03_8028E4D8_text"

# 0x8028E4D8..0x8028E4E8 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x8028E4D8 | size: 0x10
.fn fn_8028E4D8, global
/* 8028E4D8 002896D8  38 00 00 00 */	li r0, 0x0
/* 8028E4DC 002896DC  90 05 00 00 */	stw r0, 0x0(r5)
/* 8028E4E0 002896E0  90 83 05 AC */	stw r4, 0x5ac(r3)
/* 8028E4E4 002896E4  4E 80 00 20 */	blr
.endfn fn_8028E4D8
