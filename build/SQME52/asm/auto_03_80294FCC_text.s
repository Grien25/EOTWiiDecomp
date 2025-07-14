.include "macros.inc"
.file "auto_03_80294FCC_text"

# 0x80294FCC..0x80294FF0 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x80294FCC | size: 0x24
.fn fn_80294FCC, global
/* 80294FCC 002901CC  2C 04 00 00 */	cmpwi r4, 0x0
/* 80294FD0 002901D0  90 83 0B 7C */	stw r4, 0xb7c(r3)
/* 80294FD4 002901D4  40 82 00 10 */	bne .L_80294FE4
/* 80294FD8 002901D8  38 00 00 02 */	li r0, 0x2
/* 80294FDC 002901DC  90 03 0B 80 */	stw r0, 0xb80(r3)
/* 80294FE0 002901E0  4E 80 00 20 */	blr
.L_80294FE4:
/* 80294FE4 002901E4  38 00 00 04 */	li r0, 0x4
/* 80294FE8 002901E8  90 03 0B 80 */	stw r0, 0xb80(r3)
/* 80294FEC 002901EC  4E 80 00 20 */	blr
.endfn fn_80294FCC
