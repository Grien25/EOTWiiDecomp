.include "macros.inc"
.file "auto_fn_8028EA88_text"

# 0x80006930..0x80006938 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006930 | size: 0x8
.obj "@etb_80006930", local
.hidden "@etb_80006930"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006930"

# 0x80006FF8..0x80007004 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006FF8 | size: 0xC
.obj "@eti_80006FF8", local
.hidden "@eti_80006FF8"
	.4byte fn_8028EA88
	.4byte 0x00000048
	.4byte "@etb_80006930"
.endobj "@eti_80006FF8"

# 0x8028EA88..0x8028EAD0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EA88 | size: 0x48
.fn fn_8028EA88, global
/* 8028EA88 00289C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EA8C 00289C8C  7C 08 02 A6 */	mflr r0
/* 8028EA90 00289C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EA94 00289C94  38 00 00 00 */	li r0, 0x0
/* 8028EA98 00289C98  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EA9C 00289C9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EAA0 00289CA0  41 82 00 1C */	beq .L_8028EABC
/* 8028EAA4 00289CA4  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8028EAA8 00289CA8  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EAAC 00289CAC  41 82 00 10 */	beq .L_8028EABC
/* 8028EAB0 00289CB0  7D 89 03 A6 */	mtctr r12
/* 8028EAB4 00289CB4  4E 80 04 21 */	bctrl
/* 8028EAB8 00289CB8  7C 60 1B 78 */	mr r0, r3
.L_8028EABC:
/* 8028EABC 00289CBC  7C 03 03 78 */	mr r3, r0
/* 8028EAC0 00289CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EAC4 00289CC4  7C 08 03 A6 */	mtlr r0
/* 8028EAC8 00289CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EACC 00289CCC  4E 80 00 20 */	blr
.endfn fn_8028EA88
