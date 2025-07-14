.include "macros.inc"
.file "auto_fn_8028F464_text"

# 0x800069A0..0x800069A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069A0 | size: 0x8
.obj "@etb_800069A0", local
.hidden "@etb_800069A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800069A0"

# 0x800070A0..0x800070AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800070A0 | size: 0xC
.obj "@eti_800070A0", local
.hidden "@eti_800070A0"
	.4byte fn_8028F464
	.4byte 0x00000074
	.4byte "@etb_800069A0"
.endobj "@eti_800070A0"

# 0x8028F464..0x8028F4D8 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x8028F464 | size: 0x74
.fn fn_8028F464, global
/* 8028F464 0028A664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028F468 0028A668  7C 08 02 A6 */	mflr r0
/* 8028F46C 0028A66C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F470 0028A670  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028F474 0028A674  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028F478 0028A678  3B C0 00 00 */	li r30, 0x0
/* 8028F47C 0028A67C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028F480 0028A680  7C 7D 1B 78 */	mr r29, r3
/* 8028F484 0028A684  7F BF EB 78 */	mr r31, r29
/* 8028F488 0028A688  48 00 00 28 */	b .L_8028F4B0
.L_8028F48C:
/* 8028F48C 0028A68C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8028F490 0028A690  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F494 0028A694  41 82 00 14 */	beq .L_8028F4A8
/* 8028F498 0028A698  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028F49C 0028A69C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028F4A0 0028A6A0  41 82 00 08 */	beq .L_8028F4A8
/* 8028F4A4 0028A6A4  48 00 94 51 */	bl fn_802988F4
.L_8028F4A8:
/* 8028F4A8 0028A6A8  3B FF 00 04 */	addi r31, r31, 0x4
/* 8028F4AC 0028A6AC  3B DE 00 01 */	addi r30, r30, 0x1
.L_8028F4B0:
/* 8028F4B0 0028A6B0  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8028F4B4 0028A6B4  7C 1E 00 00 */	cmpw r30, r0
/* 8028F4B8 0028A6B8  41 80 FF D4 */	blt .L_8028F48C
/* 8028F4BC 0028A6BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028F4C0 0028A6C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028F4C4 0028A6C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028F4C8 0028A6C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028F4CC 0028A6CC  7C 08 03 A6 */	mtlr r0
/* 8028F4D0 0028A6D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028F4D4 0028A6D4  4E 80 00 20 */	blr
.endfn fn_8028F464
