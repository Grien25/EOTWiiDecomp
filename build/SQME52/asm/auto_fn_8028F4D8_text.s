.include "macros.inc"
.file "auto_fn_8028F4D8_text"

# 0x800069A8..0x800069B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069A8 | size: 0x8
.obj "@etb_800069A8", local
.hidden "@etb_800069A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_800069A8"

# 0x800070AC..0x800070B8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800070AC | size: 0xC
.obj "@eti_800070AC", local
.hidden "@eti_800070AC"
	.4byte fn_8028F4D8
	.4byte 0x0000009C
	.4byte "@etb_800069A8"
.endobj "@eti_800070AC"

# 0x8028F4D8..0x8028F574 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x8028F4D8 | size: 0x9C
.fn fn_8028F4D8, global
/* 8028F4D8 0028A6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028F4DC 0028A6DC  7C 08 02 A6 */	mflr r0
/* 8028F4E0 0028A6E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F4E4 0028A6E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F4E8 0028A6E8  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 8028F4EC 0028A6EC  7C 7A 1B 78 */	mr r26, r3
/* 8028F4F0 0028A6F0  41 82 00 70 */	beq .L_8028F560
/* 8028F4F4 0028A6F4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8028F4F8 0028A6F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F4FC 0028A6FC  41 82 00 08 */	beq .L_8028F504
/* 8028F500 0028A700  48 02 5E BD */	bl fn_802B53BC
.L_8028F504:
/* 8028F504 0028A704  7F 5D D3 78 */	mr r29, r26
/* 8028F508 0028A708  3B 60 00 00 */	li r27, 0x0
/* 8028F50C 0028A70C  48 00 00 48 */	b .L_8028F554
.L_8028F510:
/* 8028F510 0028A710  83 FD 00 00 */	lwz r31, 0x0(r29)
/* 8028F514 0028A714  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8028F518 0028A718  41 82 00 34 */	beq .L_8028F54C
/* 8028F51C 0028A71C  7F FC FB 78 */	mr r28, r31
/* 8028F520 0028A720  3B C0 00 00 */	li r30, 0x0
/* 8028F524 0028A724  48 00 00 1C */	b .L_8028F540
.L_8028F528:
/* 8028F528 0028A728  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8028F52C 0028A72C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F530 0028A730  41 82 00 08 */	beq .L_8028F538
/* 8028F534 0028A734  48 02 5E 89 */	bl fn_802B53BC
.L_8028F538:
/* 8028F538 0028A738  3B 9C 00 04 */	addi r28, r28, 0x4
/* 8028F53C 0028A73C  3B DE 00 01 */	addi r30, r30, 0x1
.L_8028F540:
/* 8028F540 0028A740  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8028F544 0028A744  7C 1E 00 40 */	cmplw r30, r0
/* 8028F548 0028A748  41 80 FF E0 */	blt .L_8028F528
.L_8028F54C:
/* 8028F54C 0028A74C  3B BD 00 04 */	addi r29, r29, 0x4
/* 8028F550 0028A750  3B 7B 00 01 */	addi r27, r27, 0x1
.L_8028F554:
/* 8028F554 0028A754  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 8028F558 0028A758  7C 1B 00 00 */	cmpw r27, r0
/* 8028F55C 0028A75C  41 80 FF B4 */	blt .L_8028F510
.L_8028F560:
/* 8028F560 0028A760  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 8028F564 0028A764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028F568 0028A768  7C 08 03 A6 */	mtlr r0
/* 8028F56C 0028A76C  38 21 00 20 */	addi r1, r1, 0x20
/* 8028F570 0028A770  4E 80 00 20 */	blr
.endfn fn_8028F4D8
