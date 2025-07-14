.include "macros.inc"
.file "auto_fn_80291980_text"

# 0x80006A90..0x80006A98 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A90 | size: 0x8
.obj "@etb_80006A90", local
.hidden "@etb_80006A90"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006A90"

# 0x80007208..0x80007214 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007208 | size: 0xC
.obj "@eti_80007208", local
.hidden "@eti_80007208"
	.4byte fn_80291980
	.4byte 0x0000007C
	.4byte "@etb_80006A90"
.endobj "@eti_80007208"

# 0x80291980..0x802919FC | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x80291980 | size: 0x7C
.fn fn_80291980, global
/* 80291980 0028CB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291984 0028CB84  7C 08 02 A6 */	mflr r0
/* 80291988 0028CB88  3C 80 80 66 */	lis r4, lbl_80666A88@ha
/* 8029198C 0028CB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291990 0028CB90  38 84 6A 88 */	addi r4, r4, lbl_80666A88@l
/* 80291994 0028CB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291998 0028CB98  7C 7F 1B 78 */	mr r31, r3
/* 8029199C 0028CB9C  80 64 00 4C */	lwz r3, 0x4c(r4)
/* 802919A0 0028CBA0  48 02 0B BD */	bl fn_802B255C
/* 802919A4 0028CBA4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802919A8 0028CBA8  40 82 00 0C */	bne .L_802919B4
/* 802919AC 0028CBAC  3B E0 00 00 */	li r31, 0x0
/* 802919B0 0028CBB0  48 00 00 24 */	b .L_802919D4
.L_802919B4:
/* 802919B4 0028CBB4  80 7F 0B 74 */	lwz r3, 0xb74(r31)
/* 802919B8 0028CBB8  48 00 39 F1 */	bl fn_802953A8
/* 802919BC 0028CBBC  80 1F 0B 9C */	lwz r0, 0xb9c(r31)
/* 802919C0 0028CBC0  7C 7F 1B 78 */	mr r31, r3
/* 802919C4 0028CBC4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802919C8 0028CBC8  41 82 00 0C */	beq .L_802919D4
/* 802919CC 0028CBCC  7C 03 03 78 */	mr r3, r0
/* 802919D0 0028CBD0  4B FF D1 6D */	bl fn_8028EB3C
.L_802919D4:
/* 802919D4 0028CBD4  3C 60 80 66 */	lis r3, lbl_80666A88@ha
/* 802919D8 0028CBD8  38 63 6A 88 */	addi r3, r3, lbl_80666A88@l
/* 802919DC 0028CBDC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802919E0 0028CBE0  48 02 0B 81 */	bl fn_802B2560
/* 802919E4 0028CBE4  7F E3 FB 78 */	mr r3, r31
/* 802919E8 0028CBE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802919EC 0028CBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802919F0 0028CBF0  7C 08 03 A6 */	mtlr r0
/* 802919F4 0028CBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802919F8 0028CBF8  4E 80 00 20 */	blr
.endfn fn_80291980
