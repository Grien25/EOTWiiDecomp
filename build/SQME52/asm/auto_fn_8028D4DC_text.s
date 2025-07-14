.include "macros.inc"
.file "auto_fn_8028D4DC_text"

# 0x800068C0..0x800068C8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068C0 | size: 0x8
.obj "@etb_800068C0", local
.hidden "@etb_800068C0"
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
.endobj "@etb_800068C0"

# 0x80006F50..0x80006F5C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80006F50 | size: 0xC
.obj "@eti_80006F50", local
.hidden "@eti_80006F50"
	.4byte fn_8028D4DC
	.4byte 0x000000AC
	.4byte "@etb_800068C0"
.endobj "@eti_80006F50"

# 0x8028D4DC..0x8028D588 | size: 0xAC
.text
.balign 4

# .text:0x0 | 0x8028D4DC | size: 0xAC
.fn fn_8028D4DC, global
/* 8028D4DC 002886DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D4E0 002886E0  7C 08 02 A6 */	mflr r0
/* 8028D4E4 002886E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D4E8 002886E8  38 00 00 00 */	li r0, 0x0
/* 8028D4EC 002886EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D4F0 002886F0  7C 9F 23 78 */	mr r31, r4
/* 8028D4F4 002886F4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8028D4F8 002886F8  7C 7E 1B 78 */	mr r30, r3
/* 8028D4FC 002886FC  90 05 00 00 */	stw r0, 0x0(r5)
/* 8028D500 00288700  80 03 03 68 */	lwz r0, 0x368(r3)
/* 8028D504 00288704  90 83 03 7C */	stw r4, 0x37c(r3)
/* 8028D508 00288708  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028D50C 0028870C  41 82 00 18 */	beq .L_8028D524
/* 8028D510 00288710  7C 03 03 78 */	mr r3, r0
/* 8028D514 00288714  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8028D518 00288718  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8028D51C 0028871C  7D 89 03 A6 */	mtctr r12
/* 8028D520 00288720  4E 80 04 21 */	bctrl
.L_8028D524:
/* 8028D524 00288724  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 8028D528 00288728  2C 00 FF FF */	cmpwi r0, -0x1
/* 8028D52C 0028872C  41 82 00 24 */	beq .L_8028D550
/* 8028D530 00288730  80 7E 03 64 */	lwz r3, 0x364(r30)
/* 8028D534 00288734  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028D538 00288738  41 82 00 18 */	beq .L_8028D550
/* 8028D53C 0028873C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8028D540 00288740  7F E4 FB 78 */	mr r4, r31
/* 8028D544 00288744  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8028D548 00288748  7D 89 03 A6 */	mtctr r12
/* 8028D54C 0028874C  4E 80 04 21 */	bctrl
.L_8028D550:
/* 8028D550 00288750  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8028D554 00288754  2C 03 00 00 */	cmpwi r3, 0x0
/* 8028D558 00288758  41 82 00 18 */	beq .L_8028D570
/* 8028D55C 0028875C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8028D560 00288760  7F E4 FB 78 */	mr r4, r31
/* 8028D564 00288764  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8028D568 00288768  7D 89 03 A6 */	mtctr r12
/* 8028D56C 0028876C  4E 80 04 21 */	bctrl
.L_8028D570:
/* 8028D570 00288770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D574 00288774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D578 00288778  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8028D57C 0028877C  7C 08 03 A6 */	mtlr r0
/* 8028D580 00288780  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D584 00288784  4E 80 00 20 */	blr
.endfn fn_8028D4DC
