.include "macros.inc"
.file "auto_fn_8028EB3C_text"

# 0x80006940..0x80006948 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006940 | size: 0x8
.obj "@etb_80006940", local
.hidden "@etb_80006940"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006940"

# 0x80007010..0x8000701C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007010 | size: 0xC
.obj "@eti_80007010", local
.hidden "@eti_80007010"
	.4byte fn_8028EB3C
	.4byte 0x00000048
	.4byte "@etb_80006940"
.endobj "@eti_80007010"

# 0x8028EB3C..0x8028EB84 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8028EB3C | size: 0x48
.fn fn_8028EB3C, global
/* 8028EB3C 00289D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EB40 00289D40  7C 08 02 A6 */	mflr r0
/* 8028EB44 00289D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EB48 00289D48  38 00 00 00 */	li r0, 0x0
/* 8028EB4C 00289D4C  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EB50 00289D50  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EB54 00289D54  41 82 00 1C */	beq .L_8028EB70
/* 8028EB58 00289D58  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8028EB5C 00289D5C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EB60 00289D60  41 82 00 10 */	beq .L_8028EB70
/* 8028EB64 00289D64  7D 89 03 A6 */	mtctr r12
/* 8028EB68 00289D68  4E 80 04 21 */	bctrl
/* 8028EB6C 00289D6C  7C 60 1B 78 */	mr r0, r3
.L_8028EB70:
/* 8028EB70 00289D70  7C 03 03 78 */	mr r3, r0
/* 8028EB74 00289D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EB78 00289D78  7C 08 03 A6 */	mtlr r0
/* 8028EB7C 00289D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EB80 00289D80  4E 80 00 20 */	blr
.endfn fn_8028EB3C
