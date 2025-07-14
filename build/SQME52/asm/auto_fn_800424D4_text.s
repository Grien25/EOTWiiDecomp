.include "macros.inc"
.file "auto_fn_800424D4_text"

# 0x800424D4..0x800424E0 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x800424D4 | size: 0xC
.fn fn_800424D4, global
/* 800424D4 0003D6D4  3C 60 80 5C */	lis r3, lbl_805C5C10@ha
/* 800424D8 0003D6D8  38 63 5C 10 */	addi r3, r3, lbl_805C5C10@l
/* 800424DC 0003D6DC  48 1F CE 34 */	b fn_8023F310
.endfn fn_800424D4

# 0x802F0A4C..0x802F0A50 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800424D4
