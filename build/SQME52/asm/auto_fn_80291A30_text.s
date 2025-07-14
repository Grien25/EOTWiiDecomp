.include "macros.inc"
.file "auto_fn_80291A30_text"

# 0x80006AA0..0x80006AA8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006AA0 | size: 0x8
.obj "@etb_80006AA0", local
.hidden "@etb_80006AA0"
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
.endobj "@etb_80006AA0"

# 0x80007220..0x8000722C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007220 | size: 0xC
.obj "@eti_80007220", local
.hidden "@eti_80007220"
	.4byte fn_80291A30
	.4byte 0x000000E4
	.4byte "@etb_80006AA0"
.endobj "@eti_80007220"

# 0x80291A30..0x80291B14 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x80291A30 | size: 0xE4
.fn fn_80291A30, global
/* 80291A30 0028CC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291A34 0028CC34  7C 08 02 A6 */	mflr r0
/* 80291A38 0028CC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291A3C 0028CC3C  38 00 00 00 */	li r0, 0x0
/* 80291A40 0028CC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291A44 0028CC44  7C 7F 1B 78 */	mr r31, r3
/* 80291A48 0028CC48  80 83 0B 78 */	lwz r4, 0xb78(r3)
/* 80291A4C 0028CC4C  90 03 0B 1C */	stw r0, 0xb1c(r3)
/* 80291A50 0028CC50  2C 04 00 00 */	cmpwi r4, 0x0
/* 80291A54 0028CC54  41 82 00 0C */	beq .L_80291A60
/* 80291A58 0028CC58  7C 83 23 78 */	mr r3, r4
/* 80291A5C 0028CC5C  4B FF DA 09 */	bl fn_8028F464
.L_80291A60:
/* 80291A60 0028CC60  80 7F 0B 24 */	lwz r3, 0xb24(r31)
/* 80291A64 0028CC64  2C 03 00 00 */	cmpwi r3, 0x0
/* 80291A68 0028CC68  41 82 00 08 */	beq .L_80291A70
/* 80291A6C 0028CC6C  48 02 4D 61 */	bl fn_802B67CC
.L_80291A70:
/* 80291A70 0028CC70  80 7F 0B 30 */	lwz r3, 0xb30(r31)
/* 80291A74 0028CC74  48 02 39 49 */	bl fn_802B53BC
/* 80291A78 0028CC78  80 7F 0B 38 */	lwz r3, 0xb38(r31)
/* 80291A7C 0028CC7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80291A80 0028CC80  41 82 00 08 */	beq .L_80291A88
/* 80291A84 0028CC84  48 02 39 39 */	bl fn_802B53BC
.L_80291A88:
/* 80291A88 0028CC88  80 7F 0B 34 */	lwz r3, 0xb34(r31)
/* 80291A8C 0028CC8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80291A90 0028CC90  41 82 00 08 */	beq .L_80291A98
/* 80291A94 0028CC94  48 02 39 29 */	bl fn_802B53BC
.L_80291A98:
/* 80291A98 0028CC98  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 80291A9C 0028CC9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80291AA0 0028CCA0  41 82 00 08 */	beq .L_80291AA8
/* 80291AA4 0028CCA4  4B FF DA 35 */	bl fn_8028F4D8
.L_80291AA8:
/* 80291AA8 0028CCA8  38 00 00 00 */	li r0, 0x0
/* 80291AAC 0028CCAC  90 1F 0B 3C */	stw r0, 0xb3c(r31)
/* 80291AB0 0028CCB0  90 1F 0B 40 */	stw r0, 0xb40(r31)
/* 80291AB4 0028CCB4  90 1F 0B 20 */	stw r0, 0xb20(r31)
/* 80291AB8 0028CCB8  90 1F 0B 2C */	stw r0, 0xb2c(r31)
/* 80291ABC 0028CCBC  90 1F 0C 2C */	stw r0, 0xc2c(r31)
/* 80291AC0 0028CCC0  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80291AC4 0028CCC4  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80291AC8 0028CCC8  90 1F 0B B4 */	stw r0, 0xbb4(r31)
/* 80291ACC 0028CCCC  90 1F 0B B8 */	stw r0, 0xbb8(r31)
/* 80291AD0 0028CCD0  90 1F 0B BC */	stw r0, 0xbbc(r31)
/* 80291AD4 0028CCD4  90 1F 0B C0 */	stw r0, 0xbc0(r31)
/* 80291AD8 0028CCD8  90 1F 0B C4 */	stw r0, 0xbc4(r31)
/* 80291ADC 0028CCDC  90 1F 0B D0 */	stw r0, 0xbd0(r31)
/* 80291AE0 0028CCE0  90 1F 0B D4 */	stw r0, 0xbd4(r31)
/* 80291AE4 0028CCE4  90 1F 0B D8 */	stw r0, 0xbd8(r31)
/* 80291AE8 0028CCE8  90 1F 0B DC */	stw r0, 0xbdc(r31)
/* 80291AEC 0028CCEC  90 1F 0B E0 */	stw r0, 0xbe0(r31)
/* 80291AF0 0028CCF0  90 1F 0B E4 */	stw r0, 0xbe4(r31)
/* 80291AF4 0028CCF4  90 1F 0B E8 */	stw r0, 0xbe8(r31)
/* 80291AF8 0028CCF8  90 1F 0B EC */	stw r0, 0xbec(r31)
/* 80291AFC 0028CCFC  90 1F 0B F0 */	stw r0, 0xbf0(r31)
/* 80291B00 0028CD00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291B04 0028CD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291B08 0028CD08  7C 08 03 A6 */	mtlr r0
/* 80291B0C 0028CD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80291B10 0028CD10  4E 80 00 20 */	blr
.endfn fn_80291A30
