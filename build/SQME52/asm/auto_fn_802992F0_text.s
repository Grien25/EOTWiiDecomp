.include "macros.inc"
.file "auto_fn_802992F0_text"

# 0x80006D38..0x80006D40 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D38 | size: 0x8
.obj "@etb_80006D38", local
.hidden "@etb_80006D38"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80006D38"

# 0x80007604..0x80007610 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007604 | size: 0xC
.obj "@eti_80007604", local
.hidden "@eti_80007604"
	.4byte fn_802992F0
	.4byte 0x00000074
	.4byte "@etb_80006D38"
.endobj "@eti_80007604"

# 0x802992F0..0x80299364 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802992F0 | size: 0x74
.fn fn_802992F0, global
/* 802992F0 002944F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802992F4 002944F4  7C 08 02 A6 */	mflr r0
/* 802992F8 002944F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802992FC 002944FC  38 00 00 00 */	li r0, 0x0
/* 80299300 00294500  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80299304 00294504  7C 9C 23 78 */	mr r28, r4
/* 80299308 00294508  7C BD 2B 78 */	mr r29, r5
/* 8029930C 0029450C  7C 7B 1B 78 */	mr r27, r3
/* 80299310 00294510  7C DE 33 78 */	mr r30, r6
/* 80299314 00294514  7C FF 3B 78 */	mr r31, r7
/* 80299318 00294518  7D 05 43 78 */	mr r5, r8
/* 8029931C 0029451C  38 80 00 00 */	li r4, 0x0
/* 80299320 00294520  90 08 00 00 */	stw r0, 0x0(r8)
/* 80299324 00294524  4B FF 00 21 */	bl fn_80289344
/* 80299328 00294528  2C 03 00 01 */	cmpwi r3, 0x1
/* 8029932C 0029452C  41 82 00 0C */	beq .L_80299338
/* 80299330 00294530  38 60 00 00 */	li r3, 0x0
/* 80299334 00294534  48 00 00 1C */	b .L_80299350
.L_80299338:
/* 80299338 00294538  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8029933C 0029453C  7F 84 E3 78 */	mr r4, r28
/* 80299340 00294540  7F C6 F3 78 */	mr r6, r30
/* 80299344 00294544  7F E7 FB 78 */	mr r7, r31
/* 80299348 00294548  57 A5 F0 BE */	srwi r5, r29, 2
/* 8029934C 0029454C  4B FF FC 09 */	bl fn_80298F54
.L_80299350:
/* 80299350 00294550  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80299354 00294554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80299358 00294558  7C 08 03 A6 */	mtlr r0
/* 8029935C 0029455C  38 21 00 20 */	addi r1, r1, 0x20
/* 80299360 00294560  4E 80 00 20 */	blr
.endfn fn_802992F0
