.include "macros.inc"
.file "__init_cpp_exceptions.cpp"

# 0x801F7658..0x801F76C8 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x801F7658 | size: 0x3C
.fn __init_cpp_exceptions, global
/* 801F7658 001F2858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F765C 001F285C  7C 08 02 A6 */	mflr r0
/* 801F7660 001F2860  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7664 001F2864  80 0D 80 40 */	lwz r0, fragmentID@sda21(r0)
/* 801F7668 001F2868  2C 00 FF FE */	cmpwi r0, -0x2
/* 801F766C 001F286C  40 82 00 18 */	bne .L_801F7684
/* 801F7670 001F2870  3C 60 80 00 */	lis r3, _eti_init_info@ha
/* 801F7674 001F2874  7C 44 13 78 */	mr r4, r2
/* 801F7678 001F2878  38 63 76 10 */	addi r3, r3, _eti_init_info@l
/* 801F767C 001F287C  48 00 00 4D */	bl __register_fragment
/* 801F7680 001F2880  90 6D 80 40 */	stw r3, fragmentID@sda21(r0)
.L_801F7684:
/* 801F7684 001F2884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F7688 001F2888  7C 08 03 A6 */	mtlr r0
/* 801F768C 001F288C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F7690 001F2890  4E 80 00 20 */	blr
.endfn __init_cpp_exceptions

# .text:0x3C | 0x801F7694 | size: 0x34
.fn __fini_cpp_exceptions, global
/* 801F7694 001F2894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F7698 001F2898  7C 08 02 A6 */	mflr r0
/* 801F769C 001F289C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F76A0 001F28A0  80 6D 80 40 */	lwz r3, fragmentID@sda21(r0)
/* 801F76A4 001F28A4  2C 03 FF FE */	cmpwi r3, -0x2
/* 801F76A8 001F28A8  41 82 00 10 */	beq .L_801F76B8
/* 801F76AC 001F28AC  48 00 00 69 */	bl __unregister_fragment
/* 801F76B0 001F28B0  38 00 FF FE */	li r0, -0x2
/* 801F76B4 001F28B4  90 0D 80 40 */	stw r0, fragmentID@sda21(r0)
.L_801F76B8:
/* 801F76B8 001F28B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F76BC 001F28BC  7C 08 03 A6 */	mtlr r0
/* 801F76C0 001F28C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F76C4 001F28C4  4E 80 00 20 */	blr
.endfn __fini_cpp_exceptions

# 0x802F0A40..0x802F0A44 | size: 0x4
.section .ctors$10, "a"
.balign 4

# .ctors$10:0x0 | 0x802F0A40 | size: 0x4
.obj __init_cpp_exceptions_reference, global
	.4byte __init_cpp_exceptions
.endobj __init_cpp_exceptions_reference

# 0x802F0BC0..0x802F0BC4 | size: 0x4
.section .dtors$10, "a"
.balign 4

# .dtors$10:0x0 | 0x802F0BC0 | size: 0x4
.obj __destroy_global_chain_reference, global
	.4byte __destroy_global_chain
.endobj __destroy_global_chain_reference

# 0x802F0BC4..0x802F0BC8 | size: 0x4
.section .dtors$15, "a"
.balign 4

# .dtors$15:0x0 | 0x802F0BC4 | size: 0x4
.obj __fini_cpp_exceptions_reference, global
	.4byte __fini_cpp_exceptions
.endobj __fini_cpp_exceptions_reference

# 0x806AA440..0x806AA448 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x806AA440 | size: 0x4
.obj fragmentID, local
	.4byte 0xFFFFFFFE
.endobj fragmentID

# .sdata:0x4 | 0x806AA444 | size: 0x4
.obj gap_09_806AA444_sdata, global
.hidden gap_09_806AA444_sdata
	.4byte 0x00000000
.endobj gap_09_806AA444_sdata
