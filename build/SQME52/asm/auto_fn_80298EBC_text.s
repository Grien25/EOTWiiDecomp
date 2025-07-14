.include "macros.inc"
.file "auto_fn_80298EBC_text"

# 0x80006D18..0x80006D20 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D18 | size: 0x8
.obj "@etb_80006D18", local
.hidden "@etb_80006D18"
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
.endobj "@etb_80006D18"

# 0x800075D4..0x800075E0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800075D4 | size: 0xC
.obj "@eti_800075D4", local
.hidden "@eti_800075D4"
	.4byte fn_80298EBC
	.4byte 0x00000070
	.4byte "@etb_80006D18"
.endobj "@eti_800075D4"

# 0x80298EBC..0x80298F2C | size: 0x70
.text
.balign 4

# .text:0x0 | 0x80298EBC | size: 0x70
.fn fn_80298EBC, global
/* 80298EBC 002940BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298EC0 002940C0  7C 08 02 A6 */	mflr r0
/* 80298EC4 002940C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298EC8 002940C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80298ECC 002940CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80298ED0 002940D0  7C 7E 1B 78 */	mr r30, r3
/* 80298ED4 002940D4  38 61 00 08 */	addi r3, r1, 0x8
/* 80298ED8 002940D8  4B FF C8 61 */	bl fn_80295738
/* 80298EDC 002940DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80298EE0 002940E0  40 82 00 2C */	bne .L_80298F0C
/* 80298EE4 002940E4  38 61 00 08 */	addi r3, r1, 0x8
/* 80298EE8 002940E8  4B FF FF C1 */	bl fn_80298EA8
/* 80298EEC 002940EC  7C 7F 1B 78 */	mr r31, r3
/* 80298EF0 002940F0  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80298EF4 002940F4  4B FF C7 69 */	bl fn_8029565C
/* 80298EF8 002940F8  7C 65 1B 78 */	mr r5, r3
/* 80298EFC 002940FC  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80298F00 00294100  7F E4 FB 78 */	mr r4, r31
/* 80298F04 00294104  7F C6 F3 78 */	mr r6, r30
/* 80298F08 00294108  4B FF 03 75 */	bl fn_8028927C
.L_80298F0C:
/* 80298F0C 0029410C  7F C3 F3 78 */	mr r3, r30
/* 80298F10 00294110  4B FF 02 FD */	bl fn_8028920C
/* 80298F14 00294114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298F18 00294118  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80298F1C 0029411C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80298F20 00294120  7C 08 03 A6 */	mtlr r0
/* 80298F24 00294124  38 21 00 20 */	addi r1, r1, 0x20
/* 80298F28 00294128  4E 80 00 20 */	blr
.endfn fn_80298EBC
