.include "macros.inc"
.file "auto_fn_8029545C_text"

# 0x80006C00..0x80006C08 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C00 | size: 0x8
.obj "@etb_80006C00", local
.hidden "@etb_80006C00"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C00"

# 0x80007430..0x8000743C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007430 | size: 0xC
.obj "@eti_80007430", local
.hidden "@eti_80007430"
	.4byte fn_8029545C
	.4byte 0x00000048
	.4byte "@etb_80006C00"
.endobj "@eti_80007430"

# 0x8029545C..0x802954A4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8029545C | size: 0x48
.fn fn_8029545C, global
/* 8029545C 0029065C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295460 00290660  7C 08 02 A6 */	mflr r0
/* 80295464 00290664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295468 00290668  38 00 00 00 */	li r0, 0x0
/* 8029546C 0029066C  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 80295470 00290670  2C 04 00 00 */	cmpwi r4, 0x0
/* 80295474 00290674  41 82 00 1C */	beq .L_80295490
/* 80295478 00290678  81 84 00 34 */	lwz r12, 0x34(r4)
/* 8029547C 0029067C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295480 00290680  41 82 00 10 */	beq .L_80295490
/* 80295484 00290684  7D 89 03 A6 */	mtctr r12
/* 80295488 00290688  4E 80 04 21 */	bctrl
/* 8029548C 0029068C  7C 60 1B 78 */	mr r0, r3
.L_80295490:
/* 80295490 00290690  7C 03 03 78 */	mr r3, r0
/* 80295494 00290694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295498 00290698  7C 08 03 A6 */	mtlr r0
/* 8029549C 0029069C  38 21 00 10 */	addi r1, r1, 0x10
/* 802954A0 002906A0  4E 80 00 20 */	blr
.endfn fn_8029545C
