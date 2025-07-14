.include "macros.inc"
.file "auto_fn_802778B0_text"

# 0x802778B0..0x802778C0 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802778B0 | size: 0x10
.fn fn_802778B0, global
/* 802778B0 00272AB0  3C 60 80 66 */	lis r3, lbl_80665D88@ha
/* 802778B4 00272AB4  38 00 00 00 */	li r0, 0x0
/* 802778B8 00272AB8  90 03 5D 88 */	stw r0, lbl_80665D88@l(r3)
/* 802778BC 00272ABC  4E 80 00 20 */	blr
.endfn fn_802778B0

# 0x802F0B90..0x802F0B94 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802778B0
