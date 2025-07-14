.include "macros.inc"
.file "auto_fn_80277E00_text"

# 0x80277E00..0x80277E14 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80277E00 | size: 0x14
.fn fn_80277E00, global
/* 80277E00 00273000  3C 80 80 66 */	lis r4, lbl_80665D88@ha
/* 80277E04 00273004  3C 60 80 66 */	lis r3, lbl_80665D90@ha
/* 80277E08 00273008  38 84 5D 88 */	addi r4, r4, lbl_80665D88@l
/* 80277E0C 0027300C  90 83 5D 90 */	stw r4, lbl_80665D90@l(r3)
/* 80277E10 00273010  4E 80 00 20 */	blr
.endfn fn_80277E00

# 0x802F0B94..0x802F0B98 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80277E00
