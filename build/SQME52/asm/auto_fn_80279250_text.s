.include "macros.inc"
.file "auto_fn_80279250_text"

# 0x80279250..0x80279264 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80279250 | size: 0x14
.fn fn_80279250, global
/* 80279250 00274450  3C 80 80 66 */	lis r4, lbl_80665D88@ha
/* 80279254 00274454  3C 60 80 66 */	lis r3, lbl_80665D98@ha
/* 80279258 00274458  38 84 5D 88 */	addi r4, r4, lbl_80665D88@l
/* 8027925C 0027445C  90 83 5D 98 */	stw r4, lbl_80665D98@l(r3)
/* 80279260 00274460  4E 80 00 20 */	blr
.endfn fn_80279250

# 0x802F0B98..0x802F0B9C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80279250
