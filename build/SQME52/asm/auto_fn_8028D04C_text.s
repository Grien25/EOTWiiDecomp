.include "macros.inc"
.file "auto_fn_8028D04C_text"

# 0x800068A0..0x800068A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068A0 | size: 0x8
.obj "@etb_800068A0", local
.hidden "@etb_800068A0"
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
.endobj "@etb_800068A0"

# 0x80006F20..0x80006F2C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006F20 | size: 0xC
.obj "@eti_80006F20", local
.hidden "@eti_80006F20"
	.4byte fn_8028D04C
	.4byte 0x0000006C
	.4byte "@etb_800068A0"
.endobj "@eti_80006F20"

# 0x8028D04C..0x8028D0B8 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x8028D04C | size: 0x6C
.fn fn_8028D04C, global
/* 8028D04C 0028824C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D050 00288250  7C 08 02 A6 */	mflr r0
/* 8028D054 00288254  3C E0 80 2F */	lis r7, lbl_802F3FD8@ha
/* 8028D058 00288258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D05C 0028825C  38 00 00 00 */	li r0, 0x0
/* 8028D060 00288260  38 E7 3F D8 */	addi r7, r7, lbl_802F3FD8@l
/* 8028D064 00288264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D068 00288268  3B E0 00 01 */	li r31, 0x1
/* 8028D06C 0028826C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8028D070 00288270  7C 7E 1B 78 */	mr r30, r3
/* 8028D074 00288274  90 06 00 00 */	stw r0, 0x0(r6)
/* 8028D078 00288278  38 00 00 02 */	li r0, 0x2
/* 8028D07C 0028827C  7C A6 2B 78 */	mr r6, r5
/* 8028D080 00288280  7C 85 23 78 */	mr r5, r4
/* 8028D084 00288284  90 03 04 5C */	stw r0, 0x45c(r3)
/* 8028D088 00288288  38 87 03 4F */	addi r4, r7, 0x34f
/* 8028D08C 0028828C  93 E3 04 68 */	stw r31, 0x468(r3)
/* 8028D090 00288290  4C C6 31 82 */	crclr cr1eq
/* 8028D094 00288294  38 63 04 74 */	addi r3, r3, 0x474
/* 8028D098 00288298  4B F7 03 1D */	bl sprintf
/* 8028D09C 0028829C  93 FE 05 98 */	stw r31, 0x598(r30)
/* 8028D0A0 002882A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D0A4 002882A4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8028D0A8 002882A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D0AC 002882AC  7C 08 03 A6 */	mtlr r0
/* 8028D0B0 002882B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D0B4 002882B4  4E 80 00 20 */	blr
.endfn fn_8028D04C
