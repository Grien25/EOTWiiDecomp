.include "macros.inc"
.file "auto_fn_80291504_text"

# 0x80006A58..0x80006A60 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A58 | size: 0x8
.obj "@etb_80006A58", local
.hidden "@etb_80006A58"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80006A58"

# 0x800071B4..0x800071C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800071B4 | size: 0xC
.obj "@eti_800071B4", local
.hidden "@eti_800071B4"
	.4byte fn_80291504
	.4byte 0x00000084
	.4byte "@etb_80006A58"
.endobj "@eti_800071B4"

# 0x80291504..0x80291588 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x80291504 | size: 0x84
.fn fn_80291504, global
/* 80291504 0028C704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291508 0028C708  7C 08 02 A6 */	mflr r0
/* 8029150C 0028C70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80291510 0028C710  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80291514 0028C714  7C DF 33 78 */	mr r31, r6
/* 80291518 0028C718  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029151C 0028C71C  7C BE 2B 78 */	mr r30, r5
/* 80291520 0028C720  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80291524 0028C724  7C 9D 23 78 */	mr r29, r4
/* 80291528 0028C728  93 81 00 10 */	stw r28, 0x10(r1)
/* 8029152C 0028C72C  7C 7C 1B 78 */	mr r28, r3
/* 80291530 0028C730  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80291534 0028C734  48 02 10 29 */	bl fn_802B255C
/* 80291538 0028C738  7F A3 EB 78 */	mr r3, r29
/* 8029153C 0028C73C  7F C4 F3 78 */	mr r4, r30
/* 80291540 0028C740  48 02 25 D1 */	bl fn_802B3B10
/* 80291544 0028C744  90 7C 0C 10 */	stw r3, 0xc10(r28)
/* 80291548 0028C748  7C 64 1B 78 */	mr r4, r3
/* 8029154C 0028C74C  7F 83 E3 78 */	mr r3, r28
/* 80291550 0028C750  7F E5 FB 78 */	mr r5, r31
/* 80291554 0028C754  4B FF F8 C9 */	bl fn_80290E1C
/* 80291558 0028C758  7C 7F 1B 78 */	mr r31, r3
/* 8029155C 0028C75C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80291560 0028C760  48 02 10 01 */	bl fn_802B2560
/* 80291564 0028C764  7F E3 FB 78 */	mr r3, r31
/* 80291568 0028C768  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029156C 0028C76C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80291570 0028C770  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80291574 0028C774  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80291578 0028C778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029157C 0028C77C  7C 08 03 A6 */	mtlr r0
/* 80291580 0028C780  38 21 00 20 */	addi r1, r1, 0x20
/* 80291584 0028C784  4E 80 00 20 */	blr
.endfn fn_80291504
