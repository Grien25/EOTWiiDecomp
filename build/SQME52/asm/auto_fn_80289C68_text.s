.include "macros.inc"
.file "auto_fn_80289C68_text"

# 0x800067C0..0x800067C8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067C0 | size: 0x8
.obj "@etb_800067C0", local
.hidden "@etb_800067C0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800067C0"

# 0x80006DD0..0x80006DDC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006DD0 | size: 0xC
.obj "@eti_80006DD0", local
.hidden "@eti_80006DD0"
	.4byte fn_80289C68
	.4byte 0x00000074
	.4byte "@etb_800067C0"
.endobj "@eti_80006DD0"

# 0x80289C68..0x80289CDC | size: 0x74
.text
.balign 4

# .text:0x0 | 0x80289C68 | size: 0x74
.fn fn_80289C68, global
/* 80289C68 00284E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289C6C 00284E6C  7C 08 02 A6 */	mflr r0
/* 80289C70 00284E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289C74 00284E74  38 00 00 01 */	li r0, 0x1
/* 80289C78 00284E78  38 A1 00 08 */	addi r5, r1, 0x8
/* 80289C7C 00284E7C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80289C80 00284E80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80289C84 00284E84  7C 7F 1B 78 */	mr r31, r3
/* 80289C88 00284E88  90 03 00 28 */	stw r0, 0x28(r3)
/* 80289C8C 00284E8C  48 00 01 D9 */	bl fn_80289E64
/* 80289C90 00284E90  2C 03 00 01 */	cmpwi r3, 0x1
/* 80289C94 00284E94  40 82 00 20 */	bne .L_80289CB4
/* 80289C98 00284E98  80 01 00 08 */	lwz r0, 0x8(r1)
/* 80289C9C 00284E9C  90 1F 00 04 */	stw r0, 0x4(r31)
/* 80289CA0 00284EA0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80289CA4 00284EA4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80289CA8 00284EA8  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80289CAC 00284EAC  90 1F 00 08 */	stw r0, 0x8(r31)
/* 80289CB0 00284EB0  48 00 00 10 */	b .L_80289CC0
.L_80289CB4:
/* 80289CB4 00284EB4  38 00 00 03 */	li r0, 0x3
/* 80289CB8 00284EB8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80289CBC 00284EBC  48 00 00 0C */	b .L_80289CC8
.L_80289CC0:
/* 80289CC0 00284EC0  38 00 00 02 */	li r0, 0x2
/* 80289CC4 00284EC4  90 1F 00 28 */	stw r0, 0x28(r31)
.L_80289CC8:
/* 80289CC8 00284EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289CCC 00284ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80289CD0 00284ED0  7C 08 03 A6 */	mtlr r0
/* 80289CD4 00284ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80289CD8 00284ED8  4E 80 00 20 */	blr
.endfn fn_80289C68
