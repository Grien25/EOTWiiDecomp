.include "macros.inc"
.file "auto_fn_802908D8_text"

# 0x80006A20..0x80006A28 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A20 | size: 0x8
.obj "@etb_80006A20", local
.hidden "@etb_80006A20"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80006A20"

# 0x80007160..0x8000716C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80007160 | size: 0xC
.obj "@eti_80007160", local
.hidden "@eti_80007160"
	.4byte fn_802908D8
	.4byte 0x000000FC
	.4byte "@etb_80006A20"
.endobj "@eti_80007160"

# 0x802908D8..0x802909D4 | size: 0xFC
.text
.balign 4

# .text:0x0 | 0x802908D8 | size: 0xFC
.fn fn_802908D8, global
/* 802908D8 0028BAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802908DC 0028BADC  7C 08 02 A6 */	mflr r0
/* 802908E0 0028BAE0  C0 02 A7 00 */	lfs f0, lbl_806ADB20@sda21(r0)
/* 802908E4 0028BAE4  38 C0 40 00 */	li r6, 0x4000
/* 802908E8 0028BAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802908EC 0028BAEC  38 00 00 64 */	li r0, 0x64
/* 802908F0 0028BAF0  38 80 00 00 */	li r4, 0x0
/* 802908F4 0028BAF4  38 A0 05 A0 */	li r5, 0x5a0
/* 802908F8 0028BAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802908FC 0028BAFC  3B E0 FF FF */	li r31, -0x1
/* 80290900 0028BB00  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80290904 0028BB04  7C 7E 1B 78 */	mr r30, r3
/* 80290908 0028BB08  D0 03 08 84 */	stfs f0, 0x884(r3)
/* 8029090C 0028BB0C  90 C3 08 8C */	stw r6, 0x88c(r3)
/* 80290910 0028BB10  90 03 08 90 */	stw r0, 0x890(r3)
/* 80290914 0028BB14  93 E3 0B 8C */	stw r31, 0xb8c(r3)
/* 80290918 0028BB18  38 63 00 20 */	addi r3, r3, 0x20
/* 8029091C 0028BB1C  4B D7 3A 35 */	bl memset
/* 80290920 0028BB20  C0 02 A7 04 */	lfs f0, lbl_806ADB24@sda21(r0)
/* 80290924 0028BB24  38 60 00 00 */	li r3, 0x0
/* 80290928 0028BB28  38 00 00 01 */	li r0, 0x1
/* 8029092C 0028BB2C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80290930 0028BB30  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 80290934 0028BB34  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80290938 0028BB38  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 8029093C 0028BB3C  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80290940 0028BB40  90 7E 0B 20 */	stw r3, 0xb20(r30)
/* 80290944 0028BB44  90 7E 0C 2C */	stw r3, 0xc2c(r30)
/* 80290948 0028BB48  90 7E 0B AC */	stw r3, 0xbac(r30)
/* 8029094C 0028BB4C  90 7E 0B B0 */	stw r3, 0xbb0(r30)
/* 80290950 0028BB50  90 7E 0B B4 */	stw r3, 0xbb4(r30)
/* 80290954 0028BB54  90 7E 0B B8 */	stw r3, 0xbb8(r30)
/* 80290958 0028BB58  90 7E 0B BC */	stw r3, 0xbbc(r30)
/* 8029095C 0028BB5C  90 7E 0B C0 */	stw r3, 0xbc0(r30)
/* 80290960 0028BB60  90 7E 0B C4 */	stw r3, 0xbc4(r30)
/* 80290964 0028BB64  90 7E 0B D0 */	stw r3, 0xbd0(r30)
/* 80290968 0028BB68  90 7E 0B CC */	stw r3, 0xbcc(r30)
/* 8029096C 0028BB6C  90 7E 0B D4 */	stw r3, 0xbd4(r30)
/* 80290970 0028BB70  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80290974 0028BB74  90 7E 0B DC */	stw r3, 0xbdc(r30)
/* 80290978 0028BB78  90 7E 0B E0 */	stw r3, 0xbe0(r30)
/* 8029097C 0028BB7C  90 7E 0B E4 */	stw r3, 0xbe4(r30)
/* 80290980 0028BB80  90 7E 0B E8 */	stw r3, 0xbe8(r30)
/* 80290984 0028BB84  90 7E 0B EC */	stw r3, 0xbec(r30)
/* 80290988 0028BB88  90 7E 0B F0 */	stw r3, 0xbf0(r30)
/* 8029098C 0028BB8C  90 7E 0B FC */	stw r3, 0xbfc(r30)
/* 80290990 0028BB90  90 7E 0C 00 */	stw r3, 0xc00(r30)
/* 80290994 0028BB94  90 7E 0C 04 */	stw r3, 0xc04(r30)
/* 80290998 0028BB98  D0 1E 0C 08 */	stfs f0, 0xc08(r30)
/* 8029099C 0028BB9C  90 7E 0C 10 */	stw r3, 0xc10(r30)
/* 802909A0 0028BBA0  90 7E 0C 14 */	stw r3, 0xc14(r30)
/* 802909A4 0028BBA4  90 7E 0C 18 */	stw r3, 0xc18(r30)
/* 802909A8 0028BBA8  90 7E 0C 1C */	stw r3, 0xc1c(r30)
/* 802909AC 0028BBAC  90 7E 0C 20 */	stw r3, 0xc20(r30)
/* 802909B0 0028BBB0  90 7E 0C 24 */	stw r3, 0xc24(r30)
/* 802909B4 0028BBB4  93 FE 0C 0C */	stw r31, 0xc0c(r30)
/* 802909B8 0028BBB8  98 7E 0C 28 */	stb r3, 0xc28(r30)
/* 802909BC 0028BBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802909C0 0028BBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802909C4 0028BBC4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802909C8 0028BBC8  7C 08 03 A6 */	mtlr r0
/* 802909CC 0028BBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 802909D0 0028BBD0  4E 80 00 20 */	blr
.endfn fn_802908D8
