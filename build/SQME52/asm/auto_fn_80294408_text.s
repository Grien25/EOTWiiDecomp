.include "macros.inc"
.file "auto_fn_80294408_text"

# 0x80006B80..0x80006B88 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B80 | size: 0x8
.obj "@etb_80006B80", local
.hidden "@etb_80006B80"
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
.endobj "@etb_80006B80"

# 0x80007370..0x8000737C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007370 | size: 0xC
.obj "@eti_80007370", local
.hidden "@eti_80007370"
	.4byte fn_80294408
	.4byte 0x00000084
	.4byte "@etb_80006B80"
.endobj "@eti_80007370"

# 0x80294408..0x8029448C | size: 0x84
.text
.balign 4

# .text:0x0 | 0x80294408 | size: 0x84
.fn fn_80294408, global
/* 80294408 0028F608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029440C 0028F60C  81 85 00 08 */	lwz r12, 0x8(r5)
/* 80294410 0028F610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294414 0028F614  83 E5 00 04 */	lwz r31, 0x4(r5)
/* 80294418 0028F618  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8029441C 0028F61C  83 C5 00 00 */	lwz r30, 0x0(r5)
/* 80294420 0028F620  81 65 00 0C */	lwz r11, 0xc(r5)
/* 80294424 0028F624  81 45 00 10 */	lwz r10, 0x10(r5)
/* 80294428 0028F628  81 05 00 18 */	lwz r8, 0x18(r5)
/* 8029442C 0028F62C  81 25 00 1C */	lwz r9, 0x1c(r5)
/* 80294430 0028F630  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 80294434 0028F634  80 E5 00 24 */	lwz r7, 0x24(r5)
/* 80294438 0028F638  80 05 00 28 */	lwz r0, 0x28(r5)
/* 8029443C 0028F63C  93 C4 00 00 */	stw r30, 0x0(r4)
/* 80294440 0028F640  93 E4 00 04 */	stw r31, 0x4(r4)
/* 80294444 0028F644  91 84 00 08 */	stw r12, 0x8(r4)
/* 80294448 0028F648  91 64 00 0C */	stw r11, 0xc(r4)
/* 8029444C 0028F64C  91 44 00 18 */	stw r10, 0x18(r4)
/* 80294450 0028F650  91 24 00 24 */	stw r9, 0x24(r4)
/* 80294454 0028F654  91 04 00 20 */	stw r8, 0x20(r4)
/* 80294458 0028F658  90 E4 00 2C */	stw r7, 0x2c(r4)
/* 8029445C 0028F65C  90 C4 00 28 */	stw r6, 0x28(r4)
/* 80294460 0028F660  90 04 00 30 */	stw r0, 0x30(r4)
/* 80294464 0028F664  80 03 0B 14 */	lwz r0, 0xb14(r3)
/* 80294468 0028F668  90 04 00 34 */	stw r0, 0x34(r4)
/* 8029446C 0028F66C  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80294470 0028F670  90 04 00 10 */	stw r0, 0x10(r4)
/* 80294474 0028F674  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 80294478 0028F678  90 04 00 14 */	stw r0, 0x14(r4)
/* 8029447C 0028F67C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294480 0028F680  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80294484 0028F684  38 21 00 10 */	addi r1, r1, 0x10
/* 80294488 0028F688  4E 80 00 20 */	blr
.endfn fn_80294408
