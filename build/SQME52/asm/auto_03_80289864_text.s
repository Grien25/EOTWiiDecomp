.include "macros.inc"
.file "auto_03_80289864_text"

# 0x80289864..0x80289878 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80289864 | size: 0x14
.fn fn_80289864, global
/* 80289864 00284A64  38 00 00 00 */	li r0, 0x0
/* 80289868 00284A68  90 06 00 00 */	stw r0, 0x0(r6)
/* 8028986C 00284A6C  90 83 05 BC */	stw r4, 0x5bc(r3)
/* 80289870 00284A70  90 A3 05 C0 */	stw r5, 0x5c0(r3)
/* 80289874 00284A74  4E 80 00 20 */	blr
.endfn fn_80289864
