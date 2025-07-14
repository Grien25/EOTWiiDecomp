.include "macros.inc"
.file "auto_03_802951DC_text"

# 0x802951DC..0x80295240 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802951DC | size: 0x8
.fn fn_802951DC, global
/* 802951DC 002903DC  90 6D 8E 74 */	stw r3, lbl_806AB274@sda21(r0)
/* 802951E0 002903E0  4E 80 00 20 */	blr
.endfn fn_802951DC

# .text:0x8 | 0x802951E4 | size: 0x8
.fn fn_802951E4, global
/* 802951E4 002903E4  80 6D 8E 74 */	lwz r3, lbl_806AB274@sda21(r0)
/* 802951E8 002903E8  4E 80 00 20 */	blr
.endfn fn_802951E4

# .text:0x10 | 0x802951EC | size: 0x30
.fn fn_802951EC, global
/* 802951EC 002903EC  80 8D 8E 74 */	lwz r4, lbl_806AB274@sda21(r0)
/* 802951F0 002903F0  3C 60 80 2F */	lis r3, lbl_802F5538@ha
/* 802951F4 002903F4  38 63 55 38 */	addi r3, r3, lbl_802F5538@l
/* 802951F8 002903F8  90 6D 8E 70 */	stw r3, lbl_806AB270@sda21(r0)
/* 802951FC 002903FC  2C 04 00 00 */	cmpwi r4, 0x0
/* 80295200 00290400  4D 82 00 20 */	beqlr
/* 80295204 00290404  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80295208 00290408  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8029520C 0029040C  4D 82 00 20 */	beqlr
/* 80295210 00290410  7D 89 03 A6 */	mtctr r12
/* 80295214 00290414  4E 80 04 20 */	bctr
/* 80295218 00290418  4E 80 00 20 */	blr
.endfn fn_802951EC

# .text:0x40 | 0x8029521C | size: 0x24
.fn fn_8029521C, global
/* 8029521C 0029041C  80 6D 8E 74 */	lwz r3, lbl_806AB274@sda21(r0)
/* 80295220 00290420  2C 03 00 00 */	cmpwi r3, 0x0
/* 80295224 00290424  4D 82 00 20 */	beqlr
/* 80295228 00290428  81 83 00 04 */	lwz r12, 0x4(r3)
/* 8029522C 0029042C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80295230 00290430  4D 82 00 20 */	beqlr
/* 80295234 00290434  7D 89 03 A6 */	mtctr r12
/* 80295238 00290438  4E 80 04 20 */	bctr
/* 8029523C 0029043C  4E 80 00 20 */	blr
.endfn fn_8029521C
