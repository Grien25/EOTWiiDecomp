.include "macros.inc"
.file "auto_fn_802902C8_text"

# 0x80006A00..0x80006A08 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A00 | size: 0x8
.obj "@etb_80006A00", local
.hidden "@etb_80006A00"
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
.endobj "@etb_80006A00"

# 0x80007130..0x8000713C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007130 | size: 0xC
.obj "@eti_80007130", local
.hidden "@eti_80007130"
	.4byte fn_802902C8
	.4byte 0x000000BC
	.4byte "@etb_80006A00"
.endobj "@eti_80007130"

# 0x802902C8..0x80290384 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x802902C8 | size: 0xBC
.fn fn_802902C8, global
/* 802902C8 0028B4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802902CC 0028B4CC  7C 08 02 A6 */	mflr r0
/* 802902D0 0028B4D0  3C 80 80 2F */	lis r4, lbl_802F47F0@ha
/* 802902D4 0028B4D4  3C 60 80 66 */	lis r3, lbl_80666A88@ha
/* 802902D8 0028B4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802902DC 0028B4DC  38 84 47 F0 */	addi r4, r4, lbl_802F47F0@l
/* 802902E0 0028B4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802902E4 0028B4E4  80 03 6A 88 */	lwz r0, lbl_80666A88@l(r3)
/* 802902E8 0028B4E8  90 8D 8E 68 */	stw r4, lbl_806AB268@sda21(r0)
/* 802902EC 0028B4EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802902F0 0028B4F0  40 82 00 70 */	bne .L_80290360
/* 802902F4 0028B4F4  38 63 6A 88 */	addi r3, r3, lbl_80666A88@l
/* 802902F8 0028B4F8  38 80 00 00 */	li r4, 0x0
/* 802902FC 0028B4FC  38 A0 00 50 */	li r5, 0x50
/* 80290300 0028B500  4B D7 40 51 */	bl memset
/* 80290304 0028B504  48 02 61 7D */	bl fn_802B6480
/* 80290308 0028B508  4B F7 DD B9 */	bl TRKUARTInterruptHandler
/* 8029030C 0028B50C  48 00 4E D9 */	bl fn_802951E4
/* 80290310 0028B510  2C 03 00 00 */	cmpwi r3, 0x0
/* 80290314 0028B514  40 82 00 08 */	bne .L_8029031C
/* 80290318 0028B518  48 00 4E A1 */	bl fn_802951B8
.L_8029031C:
/* 8029031C 0028B51C  48 00 4E D1 */	bl fn_802951EC
/* 80290320 0028B520  4B FF EA 71 */	bl fn_8028ED90
/* 80290324 0028B524  3F E0 80 66 */	lis r31, lbl_80666A88@ha
/* 80290328 0028B528  38 80 00 48 */	li r4, 0x48
/* 8029032C 0028B52C  3B FF 6A 88 */	addi r31, r31, lbl_80666A88@l
/* 80290330 0028B530  38 7F 00 04 */	addi r3, r31, 0x4
/* 80290334 0028B534  48 02 21 BD */	bl fn_802B24F0
/* 80290338 0028B538  2C 03 00 00 */	cmpwi r3, 0x0
/* 8029033C 0028B53C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80290340 0028B540  40 82 00 20 */	bne .L_80290360
/* 80290344 0028B544  3C 80 80 2F */	lis r4, lbl_802F4848@ha
/* 80290348 0028B548  38 60 00 00 */	li r3, 0x0
/* 8029034C 0028B54C  38 84 48 48 */	addi r4, r4, lbl_802F4848@l
/* 80290350 0028B550  38 A0 00 00 */	li r5, 0x0
/* 80290354 0028B554  38 C0 00 00 */	li r6, 0x0
/* 80290358 0028B558  38 E0 00 00 */	li r7, 0x0
/* 8029035C 0028B55C  48 02 22 F1 */	bl fn_802B264C
.L_80290360:
/* 80290360 0028B560  3C 80 80 66 */	lis r4, lbl_80666A88@ha
/* 80290364 0028B564  80 64 6A 88 */	lwz r3, lbl_80666A88@l(r4)
/* 80290368 0028B568  38 03 00 01 */	addi r0, r3, 0x1
/* 8029036C 0028B56C  90 04 6A 88 */	stw r0, lbl_80666A88@l(r4)
/* 80290370 0028B570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80290374 0028B574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290378 0028B578  7C 08 03 A6 */	mtlr r0
/* 8029037C 0028B57C  38 21 00 10 */	addi r1, r1, 0x10
/* 80290380 0028B580  4E 80 00 20 */	blr
.endfn fn_802902C8
