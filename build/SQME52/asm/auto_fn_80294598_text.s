.include "macros.inc"
.file "auto_fn_80294598_text"

# 0x80006B90..0x80006B98 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B90 | size: 0x8
.obj "@etb_80006B90", local
.hidden "@etb_80006B90"
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
.endobj "@etb_80006B90"

# 0x80007388..0x80007394 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007388 | size: 0xC
.obj "@eti_80007388", local
.hidden "@eti_80007388"
	.4byte fn_80294598
	.4byte 0x000000C8
	.4byte "@etb_80006B90"
.endobj "@eti_80007388"

# 0x80294598..0x80294660 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x80294598 | size: 0xC8
.fn fn_80294598, global
/* 80294598 0028F798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029459C 0028F79C  7C 08 02 A6 */	mflr r0
/* 802945A0 0028F7A0  38 A0 00 30 */	li r5, 0x30
/* 802945A4 0028F7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802945A8 0028F7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802945AC 0028F7AC  7C 9F 23 78 */	mr r31, r4
/* 802945B0 0028F7B0  38 80 00 00 */	li r4, 0x0
/* 802945B4 0028F7B4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802945B8 0028F7B8  7C 7E 1B 78 */	mr r30, r3
/* 802945BC 0028F7BC  4B D6 FD 95 */	bl memset
/* 802945C0 0028F7C0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802945C4 0028F7C4  28 00 00 01 */	cmplwi r0, 0x1
/* 802945C8 0028F7C8  41 80 00 24 */	blt .L_802945EC
/* 802945CC 0028F7CC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802945D0 0028F7D0  90 1E 00 00 */	stw r0, 0x0(r30)
/* 802945D4 0028F7D4  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802945D8 0028F7D8  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 802945DC 0028F7DC  7C 03 01 D6 */	mullw r0, r3, r0
/* 802945E0 0028F7E0  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802945E4 0028F7E4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802945E8 0028F7E8  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802945EC:
/* 802945EC 0028F7EC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802945F0 0028F7F0  28 00 00 02 */	cmplwi r0, 0x2
/* 802945F4 0028F7F4  41 80 00 24 */	blt .L_80294618
/* 802945F8 0028F7F8  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 802945FC 0028F7FC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80294600 0028F800  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80294604 0028F804  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80294608 0028F808  7C 03 01 D6 */	mullw r0, r3, r0
/* 8029460C 0028F80C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80294610 0028F810  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80294614 0028F814  90 1E 00 14 */	stw r0, 0x14(r30)
.L_80294618:
/* 80294618 0028F818  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8029461C 0028F81C  28 00 00 03 */	cmplwi r0, 0x3
/* 80294620 0028F820  41 80 00 24 */	blt .L_80294644
/* 80294624 0028F824  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80294628 0028F828  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8029462C 0028F82C  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80294630 0028F830  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80294634 0028F834  7C 03 01 D6 */	mullw r0, r3, r0
/* 80294638 0028F838  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8029463C 0028F83C  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80294640 0028F840  90 1E 00 20 */	stw r0, 0x20(r30)
.L_80294644:
/* 80294644 0028F844  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80294648 0028F848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029464C 0028F84C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80294650 0028F850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294654 0028F854  7C 08 03 A6 */	mtlr r0
/* 80294658 0028F858  38 21 00 10 */	addi r1, r1, 0x10
/* 8029465C 0028F85C  4E 80 00 20 */	blr
.endfn fn_80294598
