.include "macros.inc"
.file "auto_fn_8027B880_text"

# 0x8027B880..0x8027B894 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x8027B880 | size: 0x14
.fn fn_8027B880, global
/* 8027B880 00276A80  3C 80 80 66 */	lis r4, lbl_80665D88@ha
/* 8027B884 00276A84  3C 60 80 66 */	lis r3, lbl_80665DA0@ha
/* 8027B888 00276A88  38 84 5D 88 */	addi r4, r4, lbl_80665D88@l
/* 8027B88C 00276A8C  90 83 5D A0 */	stw r4, lbl_80665DA0@l(r3)
/* 8027B890 00276A90  4E 80 00 20 */	blr
.endfn fn_8027B880

# 0x802F0B9C..0x802F0BA0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8027B880
