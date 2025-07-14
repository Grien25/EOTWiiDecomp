.include "macros.inc"
.file "auto_fn_80298874_text"

# 0x80006CF0..0x80006CF8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006CF0 | size: 0x8
.obj "@etb_80006CF0", local
.hidden "@etb_80006CF0"
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
.endobj "@etb_80006CF0"

# 0x80007598..0x800075A4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007598 | size: 0xC
.obj "@eti_80007598", local
.hidden "@eti_80007598"
	.4byte fn_80298874
	.4byte 0x0000005C
	.4byte "@etb_80006CF0"
.endobj "@eti_80007598"

# 0x80298874..0x802988D0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x80298874 | size: 0x5C
.fn fn_80298874, global
/* 80298874 00293A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298878 00293A78  7C 08 02 A6 */	mflr r0
/* 8029887C 00293A7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80298880 00293A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298884 00293A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298888 00293A88  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8029888C 00293A8C  7C 7E 1B 78 */	mr r30, r3
/* 80298890 00293A90  41 82 00 28 */	beq .L_802988B8
/* 80298894 00293A94  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80298898 00293A98  83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8029889C 00293A9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802988A0 00293AA0  41 82 00 0C */	beq .L_802988AC
/* 802988A4 00293AA4  7F E3 FB 78 */	mr r3, r31
/* 802988A8 00293AA8  48 01 B2 0D */	bl fn_802B3AB4
.L_802988AC:
/* 802988AC 00293AAC  7F E3 FB 78 */	mr r3, r31
/* 802988B0 00293AB0  7F C4 F3 78 */	mr r4, r30
/* 802988B4 00293AB4  48 01 B2 01 */	bl fn_802B3AB4
.L_802988B8:
/* 802988B8 00293AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802988BC 00293ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802988C0 00293AC0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802988C4 00293AC4  7C 08 03 A6 */	mtlr r0
/* 802988C8 00293AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802988CC 00293ACC  4E 80 00 20 */	blr
.endfn fn_80298874
