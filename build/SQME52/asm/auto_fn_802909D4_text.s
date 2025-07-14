.include "macros.inc"
.file "auto_fn_802909D4_text"

# 0x80006A28..0x80006A30 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A28 | size: 0x8
.obj "@etb_80006A28", local
.hidden "@etb_80006A28"
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
.endobj "@etb_80006A28"

# 0x8000716C..0x80007178 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000716C | size: 0xC
.obj "@eti_8000716C", local
.hidden "@eti_8000716C"
	.4byte fn_802909D4
	.4byte 0x000000C4
	.4byte "@etb_80006A28"
.endobj "@eti_8000716C"

# 0x802909D4..0x80290A98 | size: 0xC4
.text
.balign 4

# .text:0x0 | 0x802909D4 | size: 0xC4
.fn fn_802909D4, global
/* 802909D4 0028BBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802909D8 0028BBD8  7C 08 02 A6 */	mflr r0
/* 802909DC 0028BBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802909E0 0028BBE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802909E4 0028BBE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802909E8 0028BBE8  7C 7E 1B 78 */	mr r30, r3
/* 802909EC 0028BBEC  80 83 00 04 */	lwz r4, 0x4(r3)
/* 802909F0 0028BBF0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802909F4 0028BBF4  41 82 00 8C */	beq .L_80290A80
/* 802909F8 0028BBF8  2C 04 00 09 */	cmpwi r4, 0x9
/* 802909FC 0028BBFC  41 82 00 84 */	beq .L_80290A80
/* 80290A00 0028BC00  38 04 FF FA */	subi r0, r4, 0x6
/* 80290A04 0028BC04  28 00 00 01 */	cmplwi r0, 0x1
/* 80290A08 0028BC08  41 81 00 08 */	bgt .L_80290A10
/* 80290A0C 0028BC0C  48 00 00 74 */	b .L_80290A80
.L_80290A10:
/* 80290A10 0028BC10  48 00 3F 11 */	bl fn_80294920
/* 80290A14 0028BC14  7F C3 F3 78 */	mr r3, r30
/* 80290A18 0028BC18  48 00 3F B9 */	bl fn_802949D0
/* 80290A1C 0028BC1C  7F C3 F3 78 */	mr r3, r30
/* 80290A20 0028BC20  48 00 41 55 */	bl fn_80294B74
/* 80290A24 0028BC24  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 80290A28 0028BC28  38 00 00 00 */	li r0, 0x0
/* 80290A2C 0028BC2C  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80290A30 0028BC30  28 03 00 01 */	cmplwi r3, 0x1
/* 80290A34 0028BC34  90 1E 0C 00 */	stw r0, 0xc00(r30)
/* 80290A38 0028BC38  90 1E 0C 04 */	stw r0, 0xc04(r30)
/* 80290A3C 0028BC3C  40 81 00 44 */	ble .L_80290A80
/* 80290A40 0028BC40  7F C3 F3 78 */	mr r3, r30
/* 80290A44 0028BC44  38 81 00 08 */	addi r4, r1, 0x8
/* 80290A48 0028BC48  38 A1 00 0C */	addi r5, r1, 0xc
/* 80290A4C 0028BC4C  48 00 44 8D */	bl fn_80294ED8
/* 80290A50 0028BC50  2C 03 00 00 */	cmpwi r3, 0x0
/* 80290A54 0028BC54  41 82 00 2C */	beq .L_80290A80
/* 80290A58 0028BC58  83 E1 00 08 */	lwz r31, 0x8(r1)
/* 80290A5C 0028BC5C  38 80 00 00 */	li r4, 0x0
/* 80290A60 0028BC60  48 02 49 9D */	bl fn_802B53FC
/* 80290A64 0028BC64  80 1E 0B 40 */	lwz r0, 0xb40(r30)
/* 80290A68 0028BC68  7C 63 F8 50 */	subf r3, r3, r31
/* 80290A6C 0028BC6C  93 FE 0B FC */	stw r31, 0xbfc(r30)
/* 80290A70 0028BC70  7C 00 18 50 */	subf r0, r0, r3
/* 80290A74 0028BC74  90 1E 0C 00 */	stw r0, 0xc00(r30)
/* 80290A78 0028BC78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80290A7C 0028BC7C  90 1E 0C 04 */	stw r0, 0xc04(r30)
.L_80290A80:
/* 80290A80 0028BC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80290A84 0028BC84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80290A88 0028BC88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80290A8C 0028BC8C  7C 08 03 A6 */	mtlr r0
/* 80290A90 0028BC90  38 21 00 20 */	addi r1, r1, 0x20
/* 80290A94 0028BC94  4E 80 00 20 */	blr
.endfn fn_802909D4
