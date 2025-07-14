.include "macros.inc"
.file "auto_fn_8028EFBC_text"

# 0x80006980..0x80006988 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006980 | size: 0x8
.obj "@etb_80006980", local
.hidden "@etb_80006980"
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
.endobj "@etb_80006980"

# 0x80007070..0x8000707C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007070 | size: 0xC
.obj "@eti_80007070", local
.hidden "@eti_80007070"
	.4byte fn_8028EFBC
	.4byte 0x00000098
	.4byte "@etb_80006980"
.endobj "@eti_80007070"

# 0x8028EFBC..0x8028F054 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x8028EFBC | size: 0x98
.fn fn_8028EFBC, global
/* 8028EFBC 0028A1BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028EFC0 0028A1C0  7C 08 02 A6 */	mflr r0
/* 8028EFC4 0028A1C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028EFC8 0028A1C8  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8028EFCC 0028A1CC  7C 7B 1B 78 */	mr r27, r3
/* 8028EFD0 0028A1D0  80 64 00 04 */	lwz r3, 0x4(r4)
/* 8028EFD4 0028A1D4  7C 9A 23 78 */	mr r26, r4
/* 8028EFD8 0028A1D8  48 00 97 99 */	bl fn_80298770
/* 8028EFDC 0028A1DC  80 BB 0B 80 */	lwz r5, 0xb80(r27)
/* 8028EFE0 0028A1E0  3B C3 00 68 */	addi r30, r3, 0x68
/* 8028EFE4 0028A1E4  80 1A 00 04 */	lwz r0, 0x4(r26)
/* 8028EFE8 0028A1E8  3B 60 00 00 */	li r27, 0x0
/* 8028EFEC 0028A1EC  1C 65 0C 80 */	mulli r3, r5, 0xc80
/* 8028EFF0 0028A1F0  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8028EFF4 0028A1F4  3B E0 00 01 */	li r31, 0x1
/* 8028EFF8 0028A1F8  7C 03 03 96 */	divwu r0, r3, r0
/* 8028EFFC 0028A1FC  7C 04 02 14 */	add r0, r4, r0
/* 8028F000 0028A200  7F A5 01 D6 */	mullw r29, r5, r0
/* 8028F004 0028A204  1F 85 08 40 */	mulli r28, r5, 0x840
/* 8028F008 0028A208  48 00 00 28 */	b .L_8028F030
.L_8028F00C:
/* 8028F00C 0028A20C  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8028F010 0028A210  7F A3 EB 78 */	mr r3, r29
/* 8028F014 0028A214  7F 84 E3 78 */	mr r4, r28
/* 8028F018 0028A218  38 C1 00 08 */	addi r6, r1, 0x8
/* 8028F01C 0028A21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028F020 0028A220  38 A0 00 04 */	li r5, 0x4
/* 8028F024 0028A224  48 02 80 DD */	bl fn_802B7100
/* 8028F028 0028A228  7F DE 1A 14 */	add r30, r30, r3
/* 8028F02C 0028A22C  3B 7B 00 01 */	addi r27, r27, 0x1
.L_8028F030:
/* 8028F030 0028A230  80 1A 00 04 */	lwz r0, 0x4(r26)
/* 8028F034 0028A234  7C 1B 00 40 */	cmplw r27, r0
/* 8028F038 0028A238  41 80 FF D4 */	blt .L_8028F00C
/* 8028F03C 0028A23C  7F C3 F3 78 */	mr r3, r30
/* 8028F040 0028A240  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8028F044 0028A244  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028F048 0028A248  7C 08 03 A6 */	mtlr r0
/* 8028F04C 0028A24C  38 21 00 30 */	addi r1, r1, 0x30
/* 8028F050 0028A250  4E 80 00 20 */	blr
.endfn fn_8028EFBC
