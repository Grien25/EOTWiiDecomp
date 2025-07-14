.include "macros.inc"
.file "auto_fn_8029553C_text"

# 0x80006C18..0x80006C20 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C18 | size: 0x8
.obj "@etb_80006C18", local
.hidden "@etb_80006C18"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006C18"

# 0x80007454..0x80007460 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007454 | size: 0xC
.obj "@eti_80007454", local
.hidden "@eti_80007454"
	.4byte fn_8029553C
	.4byte 0x00000048
	.4byte "@etb_80006C18"
.endobj "@eti_80007454"

# 0x8029553C..0x80295584 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8029553C | size: 0x48
.fn fn_8029553C, global
/* 8029553C 0029073C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295540 00290740  7C 08 02 A6 */	mflr r0
/* 80295544 00290744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295548 00290748  38 00 00 00 */	li r0, 0x0
/* 8029554C 0029074C  80 AD 8E 74 */	lwz r5, lbl_806AB274@sda21(r0)
/* 80295550 00290750  2C 05 00 00 */	cmpwi r5, 0x0
/* 80295554 00290754  41 82 00 1C */	beq .L_80295570
/* 80295558 00290758  81 85 00 48 */	lwz r12, 0x48(r5)
/* 8029555C 0029075C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295560 00290760  41 82 00 10 */	beq .L_80295570
/* 80295564 00290764  7D 89 03 A6 */	mtctr r12
/* 80295568 00290768  4E 80 04 21 */	bctrl
/* 8029556C 0029076C  7C 60 1B 78 */	mr r0, r3
.L_80295570:
/* 80295570 00290770  7C 03 03 78 */	mr r3, r0
/* 80295574 00290774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295578 00290778  7C 08 03 A6 */	mtlr r0
/* 8029557C 0029077C  38 21 00 10 */	addi r1, r1, 0x10
/* 80295580 00290780  4E 80 00 20 */	blr
.endfn fn_8029553C
