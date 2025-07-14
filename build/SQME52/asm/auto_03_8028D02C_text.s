.include "macros.inc"
.file "auto_03_8028D02C_text"

# 0x8028D02C..0x8028D04C | size: 0x20
.text
.balign 4

# .text:0x0 | 0x8028D02C | size: 0x20
.fn fn_8028D02C, global
/* 8028D02C 0028822C  38 00 00 00 */	li r0, 0x0
/* 8028D030 00288230  90 05 00 00 */	stw r0, 0x0(r5)
/* 8028D034 00288234  38 C0 00 00 */	li r6, 0x0
/* 8028D038 00288238  38 A0 00 00 */	li r5, 0x0
/* 8028D03C 0028823C  39 00 FF FF */	li r8, -0x1
/* 8028D040 00288240  38 E0 FF FF */	li r7, -0x1
/* 8028D044 00288244  39 2D 8E 40 */	li r9, lbl_806AB240@sda21
/* 8028D048 00288248  48 00 00 70 */	b fn_8028D0B8
.endfn fn_8028D02C
