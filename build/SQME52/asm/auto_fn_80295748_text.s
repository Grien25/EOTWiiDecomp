.include "macros.inc"
.file "auto_fn_80295748_text"

# 0x80006C28..0x80006C30 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C28 | size: 0x8
.obj "@etb_80006C28", local
.hidden "@etb_80006C28"
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
.endobj "@etb_80006C28"

# 0x8000746C..0x80007478 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000746C | size: 0xC
.obj "@eti_8000746C", local
.hidden "@eti_8000746C"
	.4byte fn_80295748
	.4byte 0x000000BC
	.4byte "@etb_80006C28"
.endobj "@eti_8000746C"

# 0x80295748..0x80295804 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x80295748 | size: 0xBC
.fn fn_80295748, global
/* 80295748 00290948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029574C 0029094C  7C 08 02 A6 */	mflr r0
/* 80295750 00290950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295754 00290954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80295758 00290958  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8029575C 0029095C  80 0D 8E 7C */	lwz r0, lbl_806AB27C@sda21(r0)
/* 80295760 00290960  2C 00 00 00 */	cmpwi r0, 0x0
/* 80295764 00290964  40 82 00 7C */	bne .L_802957E0
/* 80295768 00290968  3F C0 80 66 */	lis r30, lbl_80666AD8@ha
/* 8029576C 0029096C  38 80 00 00 */	li r4, 0x0
/* 80295770 00290970  38 7E 6A D8 */	addi r3, r30, lbl_80666AD8@l
/* 80295774 00290974  38 A0 00 0C */	li r5, 0xc
/* 80295778 00290978  4B D6 EB D9 */	bl memset
/* 8029577C 0029097C  80 6D 8E 80 */	lwz r3, lbl_806AB280@sda21(r0)
/* 80295780 00290980  2C 03 00 00 */	cmpwi r3, 0x0
/* 80295784 00290984  40 82 00 28 */	bne .L_802957AC
/* 80295788 00290988  3C 80 80 2F */	lis r4, lbl_802F55F4@ha
/* 8029578C 0029098C  38 60 00 00 */	li r3, 0x0
/* 80295790 00290990  38 84 55 F4 */	addi r4, r4, lbl_802F55F4@l
/* 80295794 00290994  38 A0 00 00 */	li r5, 0x0
/* 80295798 00290998  38 84 00 7E */	addi r4, r4, 0x7e
/* 8029579C 0029099C  38 C0 00 00 */	li r6, 0x0
/* 802957A0 002909A0  38 E0 00 00 */	li r7, 0x0
/* 802957A4 002909A4  48 01 CE A9 */	bl fn_802B264C
/* 802957A8 002909A8  48 00 00 44 */	b .L_802957EC
.L_802957AC:
/* 802957AC 002909AC  38 63 00 03 */	addi r3, r3, 0x3
/* 802957B0 002909B0  80 8D 8E 84 */	lwz r4, lbl_806AB284@sda21(r0)
/* 802957B4 002909B4  3B FE 6A D8 */	addi r31, r30, lbl_80666AD8@l
/* 802957B8 002909B8  38 00 00 03 */	li r0, 0x3
/* 802957BC 002909BC  54 63 00 3A */	clrrwi r3, r3, 2
/* 802957C0 002909C0  90 9E 6A D8 */	stw r4, lbl_80666AD8@l(r30)
/* 802957C4 002909C4  90 7F 00 04 */	stw r3, 0x4(r31)
/* 802957C8 002909C8  90 1F 00 08 */	stw r0, 0x8(r31)
/* 802957CC 002909CC  48 00 49 ED */	bl fn_8029A1B8
/* 802957D0 002909D0  48 00 3C 4D */	bl fn_8029941C
/* 802957D4 002909D4  80 7E 6A D8 */	lwz r3, lbl_80666AD8@l(r30)
/* 802957D8 002909D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 802957DC 002909DC  48 01 A6 2D */	bl fn_802AFE08
.L_802957E0:
/* 802957E0 002909E0  80 6D 8E 7C */	lwz r3, lbl_806AB27C@sda21(r0)
/* 802957E4 002909E4  38 03 00 01 */	addi r0, r3, 0x1
/* 802957E8 002909E8  90 0D 8E 7C */	stw r0, lbl_806AB27C@sda21(r0)
.L_802957EC:
/* 802957EC 002909EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802957F0 002909F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802957F4 002909F4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802957F8 002909F8  7C 08 03 A6 */	mtlr r0
/* 802957FC 002909FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80295800 00290A00  4E 80 00 20 */	blr
.endfn fn_80295748
