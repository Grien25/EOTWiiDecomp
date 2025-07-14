.include "macros.inc"
.file "auto_03_802892C0_text"

# 0x802892C0..0x802892D8 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x802892C0 | size: 0xC
.fn fn_802892C0, global
/* 802892C0 002844C0  38 00 00 00 */	li r0, 0x0
/* 802892C4 002844C4  90 03 00 00 */	stw r0, 0x0(r3)
/* 802892C8 002844C8  48 00 C4 58 */	b fn_80295720
.endfn fn_802892C0

# .text:0xC | 0x802892CC | size: 0xC
.fn fn_802892CC, global
/* 802892CC 002844CC  7C 85 23 78 */	mr r5, r4
/* 802892D0 002844D0  38 80 00 01 */	li r4, 0x1
/* 802892D4 002844D4  48 00 00 70 */	b fn_80289344
.endfn fn_802892CC
