.include "macros.inc"
.file "auto_fn_8028EAD0_text"

# 0x80006938..0x80006940 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006938 | size: 0x8
.obj "@etb_80006938", local
.hidden "@etb_80006938"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006938"

# 0x80007004..0x80007010 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007004 | size: 0xC
.obj "@eti_80007004", local
.hidden "@eti_80007004"
	.4byte fn_8028EAD0
	.4byte 0x00000048
	.4byte "@etb_80006938"
.endobj "@eti_80007004"

# 0x8028EAD0..0x8028EB18 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EAD0 | size: 0x48
.fn fn_8028EAD0, global
/* 8028EAD0 00289CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EAD4 00289CD4  7C 08 02 A6 */	mflr r0
/* 8028EAD8 00289CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EADC 00289CDC  38 00 00 00 */	li r0, 0x0
/* 8028EAE0 00289CE0  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EAE4 00289CE4  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EAE8 00289CE8  41 82 00 1C */	beq .L_8028EB04
/* 8028EAEC 00289CEC  81 84 00 18 */	lwz r12, 0x18(r4)
/* 8028EAF0 00289CF0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EAF4 00289CF4  41 82 00 10 */	beq .L_8028EB04
/* 8028EAF8 00289CF8  7D 89 03 A6 */	mtctr r12
/* 8028EAFC 00289CFC  4E 80 04 21 */	bctrl
/* 8028EB00 00289D00  7C 60 1B 78 */	mr r0, r3
.L_8028EB04:
/* 8028EB04 00289D04  7C 03 03 78 */	mr r3, r0
/* 8028EB08 00289D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EB0C 00289D0C  7C 08 03 A6 */	mtlr r0
/* 8028EB10 00289D10  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EB14 00289D14  4E 80 00 20 */	blr
.endfn fn_8028EAD0
