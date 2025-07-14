.include "macros.inc"
.file "auto_fn_802715E0_text"

# 0x802715E0..0x802715F4 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802715E0 | size: 0x14
.fn fn_802715E0, global
/* 802715E0 0026C7E0  3C 80 80 66 */	lis r4, lbl_80665D88@ha
/* 802715E4 0026C7E4  3C 60 80 66 */	lis r3, lbl_80665D50@ha
/* 802715E8 0026C7E8  38 84 5D 88 */	addi r4, r4, lbl_80665D88@l
/* 802715EC 0026C7EC  90 83 5D 50 */	stw r4, lbl_80665D50@l(r3)
/* 802715F0 0026C7F0  4E 80 00 20 */	blr
.endfn fn_802715E0

# 0x802F0B8C..0x802F0B90 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802715E0
