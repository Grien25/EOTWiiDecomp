.include "macros.inc"
.file "auto_03_8028EB18_text"

# 0x8028EB18..0x8028EB3C | size: 0x24
.text
.balign 4

# .text:0x0 | 0x8028EB18 | size: 0x24
.fn fn_8028EB18, global
/* 8028EB18 00289D18  80 8D 8E 58 */	lwz r4, lbl_806AB258@sda21(r0)
/* 8028EB1C 00289D1C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8028EB20 00289D20  4D 82 00 20 */	beqlr
/* 8028EB24 00289D24  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8028EB28 00289D28  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028EB2C 00289D2C  4D 82 00 20 */	beqlr
/* 8028EB30 00289D30  7D 89 03 A6 */	mtctr r12
/* 8028EB34 00289D34  4E 80 04 20 */	bctr
/* 8028EB38 00289D38  4E 80 00 20 */	blr
.endfn fn_8028EB18
