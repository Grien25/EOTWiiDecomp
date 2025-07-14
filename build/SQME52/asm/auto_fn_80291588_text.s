.include "macros.inc"
.file "auto_fn_80291588_text"

# 0x80006A60..0x80006A68 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A60 | size: 0x8
.obj "@etb_80006A60", local
.hidden "@etb_80006A60"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006A60"

# 0x800071C0..0x800071CC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800071C0 | size: 0xC
.obj "@eti_800071C0", local
.hidden "@eti_800071C0"
	.4byte fn_80291588
	.4byte 0x00000054
	.4byte "@etb_80006A60"
.endobj "@eti_800071C0"

# 0x80291588..0x802915DC | size: 0x54
.text
.balign 4

# .text:0x0 | 0x80291588 | size: 0x54
.fn fn_80291588, global
/* 80291588 0028C788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029158C 0028C78C  7C 08 02 A6 */	mflr r0
/* 80291590 0028C790  7C A7 2B 78 */	mr r7, r5
/* 80291594 0028C794  7C 68 1B 78 */	mr r8, r3
/* 80291598 0028C798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029159C 0028C79C  54 E0 20 36 */	slwi r0, r7, 4
/* 802915A0 0028C7A0  7C C8 02 14 */	add r6, r8, r0
/* 802915A4 0028C7A4  7C 85 23 78 */	mr r5, r4
/* 802915A8 0028C7A8  90 83 0B 84 */	stw r4, 0xb84(r3)
/* 802915AC 0028C7AC  7D 04 43 78 */	mr r4, r8
/* 802915B0 0028C7B0  80 63 0B 78 */	lwz r3, 0xb78(r3)
/* 802915B4 0028C7B4  38 C6 08 EC */	addi r6, r6, 0x8ec
/* 802915B8 0028C7B8  39 00 00 01 */	li r8, 0x1
/* 802915BC 0028C7BC  4B FF DA 99 */	bl fn_8028F054
/* 802915C0 0028C7C0  7C 03 00 D0 */	neg r0, r3
/* 802915C4 0028C7C4  7C 00 1B 78 */	or r0, r0, r3
/* 802915C8 0028C7C8  54 03 0F FE */	srwi r3, r0, 31
/* 802915CC 0028C7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802915D0 0028C7D0  7C 08 03 A6 */	mtlr r0
/* 802915D4 0028C7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802915D8 0028C7D8  4E 80 00 20 */	blr
.endfn fn_80291588
