.include "macros.inc"
.file "auto_fn_80298F2C_text"

# 0x80006D20..0x80006D28 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D20 | size: 0x8
.obj "@etb_80006D20", local
.hidden "@etb_80006D20"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006D20"

# 0x800075E0..0x800075EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800075E0 | size: 0xC
.obj "@eti_800075E0", local
.hidden "@eti_800075E0"
	.4byte fn_80298F2C
	.4byte 0x00000028
	.4byte "@etb_80006D20"
.endobj "@eti_800075E0"

# 0x80298F2C..0x80298F54 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x80298F2C | size: 0x28
.fn fn_80298F2C, global
/* 80298F2C 0029412C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298F30 00294130  7C 08 02 A6 */	mflr r0
/* 80298F34 00294134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298F38 00294138  48 01 8A 45 */	bl fn_802B197C
/* 80298F3C 0029413C  38 00 00 01 */	li r0, 0x1
/* 80298F40 00294140  90 0D 8E 90 */	stw r0, lbl_806AB290@sda21(r0)
/* 80298F44 00294144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298F48 00294148  7C 08 03 A6 */	mtlr r0
/* 80298F4C 0029414C  38 21 00 10 */	addi r1, r1, 0x10
/* 80298F50 00294150  4E 80 00 20 */	blr
.endfn fn_80298F2C
