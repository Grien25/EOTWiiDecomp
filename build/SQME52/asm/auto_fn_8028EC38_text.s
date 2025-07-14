.include "macros.inc"
.file "auto_fn_8028EC38_text"

# 0x80006950..0x80006958 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006950 | size: 0x8
.obj "@etb_80006950", local
.hidden "@etb_80006950"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006950"

# 0x80007028..0x80007034 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007028 | size: 0xC
.obj "@eti_80007028", local
.hidden "@eti_80007028"
	.4byte fn_8028EC38
	.4byte 0x00000050
	.4byte "@etb_80006950"
.endobj "@eti_80007028"

# 0x8028EC38..0x8028EC88 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x8028EC38 | size: 0x50
.fn fn_8028EC38, global
/* 8028EC38 00289E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EC3C 00289E3C  7C 08 02 A6 */	mflr r0
/* 8028EC40 00289E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EC44 00289E44  38 00 00 00 */	li r0, 0x0
/* 8028EC48 00289E48  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EC4C 00289E4C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EC50 00289E50  41 82 00 24 */	beq .L_8028EC74
/* 8028EC54 00289E54  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8028EC58 00289E58  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EC5C 00289E5C  41 82 00 10 */	beq .L_8028EC6C
/* 8028EC60 00289E60  7D 89 03 A6 */	mtctr r12
/* 8028EC64 00289E64  4E 80 04 21 */	bctrl
/* 8028EC68 00289E68  48 00 00 08 */	b .L_8028EC70
.L_8028EC6C:
/* 8028EC6C 00289E6C  38 60 00 00 */	li r3, 0x0
.L_8028EC70:
/* 8028EC70 00289E70  7C 60 1B 78 */	mr r0, r3
.L_8028EC74:
/* 8028EC74 00289E74  7C 03 03 78 */	mr r3, r0
/* 8028EC78 00289E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EC7C 00289E7C  7C 08 03 A6 */	mtlr r0
/* 8028EC80 00289E80  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EC84 00289E84  4E 80 00 20 */	blr
.endfn fn_8028EC38
