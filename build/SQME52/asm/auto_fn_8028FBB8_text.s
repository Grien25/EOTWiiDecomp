.include "macros.inc"
.file "auto_fn_8028FBB8_text"

# 0x800069D8..0x800069E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069D8 | size: 0x8
.obj "@etb_800069D8", local
.hidden "@etb_800069D8"
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
.endobj "@etb_800069D8"

# 0x800070F4..0x80007100 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800070F4 | size: 0xC
.obj "@eti_800070F4", local
.hidden "@eti_800070F4"
	.4byte fn_8028FBB8
	.4byte 0x0000009C
	.4byte "@etb_800069D8"
.endobj "@eti_800070F4"

# 0x8028FBB8..0x8028FC54 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x8028FBB8 | size: 0x9C
.fn fn_8028FBB8, global
/* 8028FBB8 0028ADB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028FBBC 0028ADBC  7C 08 02 A6 */	mflr r0
/* 8028FBC0 0028ADC0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028FBC4 0028ADC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028FBC8 0028ADC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028FBCC 0028ADCC  40 82 00 0C */	bne .L_8028FBD8
/* 8028FBD0 0028ADD0  38 60 00 01 */	li r3, 0x1
/* 8028FBD4 0028ADD4  48 00 00 6C */	b .L_8028FC40
.L_8028FBD8:
/* 8028FBD8 0028ADD8  54 A0 10 3A */	slwi r0, r5, 2
/* 8028FBDC 0028ADDC  7F E3 00 2E */	lwzx r31, r3, r0
/* 8028FBE0 0028ADE0  2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 8028FBE4 0028ADE4  41 86 00 0C */	beq cr1, .L_8028FBF0
/* 8028FBE8 0028ADE8  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028FBEC 0028ADEC  40 82 00 0C */	bne .L_8028FBF8
.L_8028FBF0:
/* 8028FBF0 0028ADF0  38 60 00 01 */	li r3, 0x1
/* 8028FBF4 0028ADF4  48 00 00 4C */	b .L_8028FC40
.L_8028FBF8:
/* 8028FBF8 0028ADF8  41 86 00 44 */	beq cr1, .L_8028FC3C
/* 8028FBFC 0028ADFC  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8028FC00 0028AE00  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028FC04 0028AE04  41 82 00 38 */	beq .L_8028FC3C
/* 8028FC08 0028AE08  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8028FC0C 0028AE0C  48 00 8C F5 */	bl fn_80298900
/* 8028FC10 0028AE10  2C 03 00 03 */	cmpwi r3, 0x3
/* 8028FC14 0028AE14  41 82 00 0C */	beq .L_8028FC20
/* 8028FC18 0028AE18  38 60 00 00 */	li r3, 0x0
/* 8028FC1C 0028AE1C  48 00 00 24 */	b .L_8028FC40
.L_8028FC20:
/* 8028FC20 0028AE20  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8028FC24 0028AE24  38 80 00 01 */	li r4, 0x1
/* 8028FC28 0028AE28  48 02 57 D5 */	bl fn_802B53FC
/* 8028FC2C 0028AE2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028FC30 0028AE30  41 82 00 0C */	beq .L_8028FC3C
/* 8028FC34 0028AE34  38 60 00 00 */	li r3, 0x0
/* 8028FC38 0028AE38  48 00 00 08 */	b .L_8028FC40
.L_8028FC3C:
/* 8028FC3C 0028AE3C  38 60 00 01 */	li r3, 0x1
.L_8028FC40:
/* 8028FC40 0028AE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028FC44 0028AE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028FC48 0028AE48  7C 08 03 A6 */	mtlr r0
/* 8028FC4C 0028AE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028FC50 0028AE50  4E 80 00 20 */	blr
.endfn fn_8028FBB8
