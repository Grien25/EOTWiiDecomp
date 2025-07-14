.include "macros.inc"
.file "auto_fn_80296DD4_text"

# 0x80006C88..0x80006C90 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C88 | size: 0x8
.obj "@etb_80006C88", local
.hidden "@etb_80006C88"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C88"

# 0x800074FC..0x80007508 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800074FC | size: 0xC
.obj "@eti_800074FC", local
.hidden "@eti_800074FC"
	.4byte fn_80296DD4
	.4byte 0x0000005C
	.4byte "@etb_80006C88"
.endobj "@eti_800074FC"

# 0x80296DD4..0x80296E30 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x80296DD4 | size: 0x5C
.fn fn_80296DD4, global
/* 80296DD4 00291FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296DD8 00291FD8  7C 08 02 A6 */	mflr r0
/* 80296DDC 00291FDC  7C 86 23 78 */	mr r6, r4
/* 80296DE0 00291FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296DE4 00291FE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80296DE8 00291FE8  2C 00 00 01 */	cmpwi r0, 0x1
/* 80296DEC 00291FEC  40 82 00 0C */	bne .L_80296DF8
/* 80296DF0 00291FF0  38 60 00 00 */	li r3, 0x0
/* 80296DF4 00291FF4  48 00 00 2C */	b .L_80296E20
.L_80296DF8:
/* 80296DF8 00291FF8  2C 05 00 00 */	cmpwi r5, 0x0
/* 80296DFC 00291FFC  41 82 00 10 */	beq .L_80296E0C
/* 80296E00 00292000  80 85 00 00 */	lwz r4, 0x0(r5)
/* 80296E04 00292004  2C 04 00 00 */	cmpwi r4, 0x0
/* 80296E08 00292008  40 82 00 0C */	bne .L_80296E14
.L_80296E0C:
/* 80296E0C 0029200C  38 60 00 00 */	li r3, 0x0
/* 80296E10 00292010  48 00 00 10 */	b .L_80296E20
.L_80296E14:
/* 80296E14 00292014  7C C5 33 78 */	mr r5, r6
/* 80296E18 00292018  48 00 07 55 */	bl fn_8029756C
/* 80296E1C 0029201C  38 60 00 01 */	li r3, 0x1
.L_80296E20:
/* 80296E20 00292020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296E24 00292024  7C 08 03 A6 */	mtlr r0
/* 80296E28 00292028  38 21 00 10 */	addi r1, r1, 0x10
/* 80296E2C 0029202C  4E 80 00 20 */	blr
.endfn fn_80296DD4
