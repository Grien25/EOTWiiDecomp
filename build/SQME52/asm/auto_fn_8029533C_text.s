.include "macros.inc"
.file "auto_fn_8029533C_text"

# 0x80006BF0..0x80006BF8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006BF0 | size: 0x8
.obj "@etb_80006BF0", local
.hidden "@etb_80006BF0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006BF0"

# 0x80007418..0x80007424 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007418 | size: 0xC
.obj "@eti_80007418", local
.hidden "@eti_80007418"
	.4byte fn_8029533C
	.4byte 0x00000048
	.4byte "@etb_80006BF0"
.endobj "@eti_80007418"

# 0x8029533C..0x80295384 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8029533C | size: 0x48
.fn fn_8029533C, global
/* 8029533C 0029053C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295340 00290540  7C 08 02 A6 */	mflr r0
/* 80295344 00290544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295348 00290548  38 00 00 00 */	li r0, 0x0
/* 8029534C 0029054C  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 80295350 00290550  2C 04 00 00 */	cmpwi r4, 0x0
/* 80295354 00290554  41 82 00 1C */	beq .L_80295370
/* 80295358 00290558  81 84 00 18 */	lwz r12, 0x18(r4)
/* 8029535C 0029055C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295360 00290560  41 82 00 10 */	beq .L_80295370
/* 80295364 00290564  7D 89 03 A6 */	mtctr r12
/* 80295368 00290568  4E 80 04 21 */	bctrl
/* 8029536C 0029056C  7C 60 1B 78 */	mr r0, r3
.L_80295370:
/* 80295370 00290570  7C 03 03 78 */	mr r3, r0
/* 80295374 00290574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295378 00290578  7C 08 03 A6 */	mtlr r0
/* 8029537C 0029057C  38 21 00 10 */	addi r1, r1, 0x10
/* 80295380 00290580  4E 80 00 20 */	blr
.endfn fn_8029533C
