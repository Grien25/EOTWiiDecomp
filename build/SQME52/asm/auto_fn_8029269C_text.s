.include "macros.inc"
.file "auto_fn_8029269C_text"

# 0x80006AE0..0x80006AE8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006AE0 | size: 0x8
.obj "@etb_80006AE0", local
.hidden "@etb_80006AE0"
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
.endobj "@etb_80006AE0"

# 0x80007280..0x8000728C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007280 | size: 0xC
.obj "@eti_80007280", local
.hidden "@eti_80007280"
	.4byte fn_8029269C
	.4byte 0x000000A0
	.4byte "@etb_80006AE0"
.endobj "@eti_80007280"

# 0x8029269C..0x8029273C | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x8029269C | size: 0xA0
.fn fn_8029269C, global
/* 8029269C 0028D89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802926A0 0028D8A0  7C 08 02 A6 */	mflr r0
/* 802926A4 0028D8A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802926A8 0028D8A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802926AC 0028D8AC  7C 7F 1B 78 */	mr r31, r3
/* 802926B0 0028D8B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802926B4 0028D8B4  A0 03 05 C0 */	lhz r0, 0x5c0(r3)
/* 802926B8 0028D8B8  1C 00 02 D0 */	mulli r0, r0, 0x2d0
/* 802926BC 0028D8BC  7C 63 02 14 */	add r3, r3, r0
/* 802926C0 0028D8C0  80 03 02 D0 */	lwz r0, 0x2d0(r3)
/* 802926C4 0028D8C4  3B C3 00 20 */	addi r30, r3, 0x20
/* 802926C8 0028D8C8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802926CC 0028D8CC  40 82 00 0C */	bne .L_802926D8
/* 802926D0 0028D8D0  38 60 00 00 */	li r3, 0x0
/* 802926D4 0028D8D4  48 00 00 50 */	b .L_80292724
.L_802926D8:
/* 802926D8 0028D8D8  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802926DC 0028D8DC  28 00 00 20 */	cmplwi r0, 0x20
/* 802926E0 0028D8E0  41 80 00 40 */	blt .L_80292720
/* 802926E4 0028D8E4  80 64 00 00 */	lwz r3, 0x0(r4)
/* 802926E8 0028D8E8  7C 04 03 78 */	mr r4, r0
/* 802926EC 0028D8EC  38 A1 00 0C */	addi r5, r1, 0xc
/* 802926F0 0028D8F0  48 02 3C CD */	bl fn_802B63BC
/* 802926F4 0028D8F4  90 61 00 08 */	stw r3, 0x8(r1)
/* 802926F8 0028D8F8  7F E3 FB 78 */	mr r3, r31
/* 802926FC 0028D8FC  38 9E 02 6C */	addi r4, r30, 0x26c
/* 80292700 0028D900  38 A1 00 08 */	addi r5, r1, 0x8
/* 80292704 0028D904  48 00 03 D1 */	bl fn_80292AD4
/* 80292708 0028D908  80 BE 02 C0 */	lwz r5, 0x2c0(r30)
/* 8029270C 0028D90C  7F E3 FB 78 */	mr r3, r31
/* 80292710 0028D910  7F C4 F3 78 */	mr r4, r30
/* 80292714 0028D914  38 05 FF FF */	subi r0, r5, 0x1
/* 80292718 0028D918  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 8029271C 0028D91C  4B FF FB E1 */	bl fn_802922FC
.L_80292720:
/* 80292720 0028D920  38 60 00 01 */	li r3, 0x1
.L_80292724:
/* 80292724 0028D924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292728 0028D928  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029272C 0028D92C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80292730 0028D930  7C 08 03 A6 */	mtlr r0
/* 80292734 0028D934  38 21 00 20 */	addi r1, r1, 0x20
/* 80292738 0028D938  4E 80 00 20 */	blr
.endfn fn_8029269C
