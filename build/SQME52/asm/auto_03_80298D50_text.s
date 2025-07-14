.include "macros.inc"
.file "auto_03_80298D50_text"

# 0x80298D50..0x80298D5C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80298D50 | size: 0xC
.fn fn_80298D50, global
/* 80298D50 00293F50  38 00 00 01 */	li r0, 0x1
/* 80298D54 00293F54  90 03 00 08 */	stw r0, 0x8(r3)
/* 80298D58 00293F58  4E 80 00 20 */	blr
.endfn fn_80298D50
