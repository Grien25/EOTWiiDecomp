.include "macros.inc"
.file "auto_fn_802925F8_text"

# 0x80006AD8..0x80006AE0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006AD8 | size: 0x8
.obj "@etb_80006AD8", local
.hidden "@etb_80006AD8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006AD8"

# 0x80007274..0x80007280 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007274 | size: 0xC
.obj "@eti_80007274", local
.hidden "@eti_80007274"
	.4byte fn_802925F8
	.4byte 0x000000A4
	.4byte "@etb_80006AD8"
.endobj "@eti_80007274"

# 0x802925F8..0x8029269C | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802925F8 | size: 0xA4
.fn fn_802925F8, global
/* 802925F8 0028D7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802925FC 0028D7FC  7C 08 02 A6 */	mflr r0
/* 80292600 0028D800  90 01 00 24 */	stw r0, 0x24(r1)
/* 80292604 0028D804  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80292608 0028D808  7C 7F 1B 78 */	mr r31, r3
/* 8029260C 0028D80C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80292610 0028D810  A0 03 05 C0 */	lhz r0, 0x5c0(r3)
/* 80292614 0028D814  1C 00 02 D0 */	mulli r0, r0, 0x2d0
/* 80292618 0028D818  7C 63 02 14 */	add r3, r3, r0
/* 8029261C 0028D81C  80 03 02 D0 */	lwz r0, 0x2d0(r3)
/* 80292620 0028D820  3B C3 00 20 */	addi r30, r3, 0x20
/* 80292624 0028D824  2C 00 00 00 */	cmpwi r0, 0x0
/* 80292628 0028D828  40 82 00 0C */	bne .L_80292634
/* 8029262C 0028D82C  38 60 00 00 */	li r3, 0x0
/* 80292630 0028D830  48 00 00 54 */	b .L_80292684
.L_80292634:
/* 80292634 0028D834  80 04 00 04 */	lwz r0, 0x4(r4)
/* 80292638 0028D838  28 00 00 20 */	cmplwi r0, 0x20
/* 8029263C 0028D83C  41 80 00 44 */	blt .L_80292680
/* 80292640 0028D840  80 64 00 00 */	lwz r3, 0x0(r4)
/* 80292644 0028D844  7C 04 03 78 */	mr r4, r0
/* 80292648 0028D848  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029264C 0028D84C  48 02 3D 71 */	bl fn_802B63BC
/* 80292650 0028D850  90 61 00 08 */	stw r3, 0x8(r1)
/* 80292654 0028D854  7F E3 FB 78 */	mr r3, r31
/* 80292658 0028D858  7F C4 F3 78 */	mr r4, r30
/* 8029265C 0028D85C  38 BE 00 14 */	addi r5, r30, 0x14
/* 80292660 0028D860  38 C1 00 08 */	addi r6, r1, 0x8
/* 80292664 0028D864  48 00 02 61 */	bl fn_802928C4
/* 80292668 0028D868  80 BE 02 B8 */	lwz r5, 0x2b8(r30)
/* 8029266C 0028D86C  7F E3 FB 78 */	mr r3, r31
/* 80292670 0028D870  7F C4 F3 78 */	mr r4, r30
/* 80292674 0028D874  38 05 FF FF */	subi r0, r5, 0x1
/* 80292678 0028D878  90 1E 02 B8 */	stw r0, 0x2b8(r30)
/* 8029267C 0028D87C  4B FF FC 81 */	bl fn_802922FC
.L_80292680:
/* 80292680 0028D880  38 60 00 01 */	li r3, 0x1
.L_80292684:
/* 80292684 0028D884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292688 0028D888  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029268C 0028D88C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80292690 0028D890  7C 08 03 A6 */	mtlr r0
/* 80292694 0028D894  38 21 00 20 */	addi r1, r1, 0x20
/* 80292698 0028D898  4E 80 00 20 */	blr
.endfn fn_802925F8
