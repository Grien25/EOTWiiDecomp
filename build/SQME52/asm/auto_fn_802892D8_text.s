.include "macros.inc"
.file "auto_fn_802892D8_text"

# 0x80006790..0x80006798 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006790 | size: 0x8
.obj "@etb_80006790", local
.hidden "@etb_80006790"
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
.endobj "@etb_80006790"

# 0x80006D88..0x80006D94 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006D88 | size: 0xC
.obj "@eti_80006D88", local
.hidden "@eti_80006D88"
	.4byte fn_802892D8
	.4byte 0x0000006C
	.4byte "@etb_80006790"
.endobj "@eti_80006D88"

# 0x802892D8..0x80289344 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802892D8 | size: 0x6C
.fn fn_802892D8, global
/* 802892D8 002844D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802892DC 002844DC  7C 08 02 A6 */	mflr r0
/* 802892E0 002844E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802892E4 002844E4  38 00 00 00 */	li r0, 0x0
/* 802892E8 002844E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802892EC 002844EC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802892F0 002844F0  7C 7E 1B 78 */	mr r30, r3
/* 802892F4 002844F4  90 05 00 00 */	stw r0, 0x0(r5)
/* 802892F8 002844F8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802892FC 002844FC  48 00 B1 C9 */	bl fn_802944C4
/* 80289300 00284500  7C 7F 1B 78 */	mr r31, r3
/* 80289304 00284504  7F C3 F3 78 */	mr r3, r30
/* 80289308 00284508  38 80 00 00 */	li r4, 0x0
/* 8028930C 0028450C  38 A0 00 00 */	li r5, 0x0
/* 80289310 00284510  38 C0 00 01 */	li r6, 0x1
/* 80289314 00284514  39 00 00 00 */	li r8, 0x0
/* 80289318 00284518  38 E0 00 00 */	li r7, 0x0
/* 8028931C 0028451C  39 40 00 00 */	li r10, 0x0
/* 80289320 00284520  39 20 00 00 */	li r9, 0x0
/* 80289324 00284524  48 00 02 89 */	bl fn_802895AC
/* 80289328 00284528  7F E3 FB 78 */	mr r3, r31
/* 8028932C 0028452C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80289330 00284530  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80289334 00284534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80289338 00284538  7C 08 03 A6 */	mtlr r0
/* 8028933C 0028453C  38 21 00 10 */	addi r1, r1, 0x10
/* 80289340 00284540  4E 80 00 20 */	blr
.endfn fn_802892D8
