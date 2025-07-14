.include "macros.inc"
.file "auto_fn_8028F574_text"

# 0x800069B0..0x800069B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069B0 | size: 0x8
.obj "@etb_800069B0", local
.hidden "@etb_800069B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800069B0"

# 0x800070B8..0x800070C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800070B8 | size: 0xC
.obj "@eti_800070B8", local
.hidden "@eti_800070B8"
	.4byte fn_8028F574
	.4byte 0x00000090
	.4byte "@etb_800069B0"
.endobj "@eti_800070B8"

# 0x8028F574..0x8028F604 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x8028F574 | size: 0x90
.fn fn_8028F574, global
/* 8028F574 0028A774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028F578 0028A778  7C 08 02 A6 */	mflr r0
/* 8028F57C 0028A77C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F580 0028A780  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F584 0028A784  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028F588 0028A788  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028F58C 0028A78C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028F590 0028A790  93 81 00 10 */	stw r28, 0x10(r1)
/* 8028F594 0028A794  7C 7C 1B 78 */	mr r28, r3
/* 8028F598 0028A798  41 82 00 4C */	beq .L_8028F5E4
/* 8028F59C 0028A79C  7F 9E E3 78 */	mr r30, r28
/* 8028F5A0 0028A7A0  3B A0 00 00 */	li r29, 0x0
/* 8028F5A4 0028A7A4  3B E0 00 01 */	li r31, 0x1
/* 8028F5A8 0028A7A8  48 00 00 30 */	b .L_8028F5D8
.L_8028F5AC:
/* 8028F5AC 0028A7AC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8028F5B0 0028A7B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F5B4 0028A7B4  41 82 00 1C */	beq .L_8028F5D0
/* 8028F5B8 0028A7B8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8028F5BC 0028A7BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028F5C0 0028A7C0  41 82 00 10 */	beq .L_8028F5D0
/* 8028F5C4 0028A7C4  93 E3 00 60 */	stw r31, 0x60(r3)
/* 8028F5C8 0028A7C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028F5CC 0028A7CC  48 00 97 85 */	bl fn_80298D50
.L_8028F5D0:
/* 8028F5D0 0028A7D0  3B DE 00 04 */	addi r30, r30, 0x4
/* 8028F5D4 0028A7D4  3B BD 00 01 */	addi r29, r29, 0x1
.L_8028F5D8:
/* 8028F5D8 0028A7D8  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8028F5DC 0028A7DC  7C 1D 00 00 */	cmpw r29, r0
/* 8028F5E0 0028A7E0  41 80 FF CC */	blt .L_8028F5AC
.L_8028F5E4:
/* 8028F5E4 0028A7E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028F5E8 0028A7E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028F5EC 0028A7EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028F5F0 0028A7F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028F5F4 0028A7F4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8028F5F8 0028A7F8  7C 08 03 A6 */	mtlr r0
/* 8028F5FC 0028A7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8028F600 0028A800  4E 80 00 20 */	blr
.endfn fn_8028F574
