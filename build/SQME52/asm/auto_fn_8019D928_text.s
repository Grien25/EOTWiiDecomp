.include "macros.inc"
.file "auto_fn_8019D928_text"

# 0x8019D928..0x8019D934 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8019D928 | size: 0xC
.fn fn_8019D928, global
/* 8019D928 00198B28  3C 60 80 62 */	lis r3, lbl_806276B0@ha
/* 8019D92C 00198B2C  38 63 76 B0 */	addi r3, r3, lbl_806276B0@l
/* 8019D930 00198B30  4B FF AA EC */	b fn_8019841C
.endfn fn_8019D928

# 0x802F0B28..0x802F0B2C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8019D928
