.include "macros.inc"
.file "auto_03_8028ED18_text"

# 0x8028ED18..0x8028ED98 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x8028ED18 | size: 0x24
.fn fn_8028ED18, global
/* 8028ED18 00289F18  80 AD 8E 58 */	lwz r5, lbl_806AB258@sda21(r0)
/* 8028ED1C 00289F1C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8028ED20 00289F20  4D 82 00 20 */	beqlr
/* 8028ED24 00289F24  81 85 00 4C */	lwz r12, 0x4c(r5)
/* 8028ED28 00289F28  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028ED2C 00289F2C  4D 82 00 20 */	beqlr
/* 8028ED30 00289F30  7D 89 03 A6 */	mtctr r12
/* 8028ED34 00289F34  4E 80 04 20 */	bctr
/* 8028ED38 00289F38  4E 80 00 20 */	blr
.endfn fn_8028ED18

# .text:0x24 | 0x8028ED3C | size: 0x24
.fn fn_8028ED3C, global
/* 8028ED3C 00289F3C  80 CD 8E 58 */	lwz r6, lbl_806AB258@sda21(r0)
/* 8028ED40 00289F40  2C 06 00 00 */	cmpwi r6, 0x0
/* 8028ED44 00289F44  4D 82 00 20 */	beqlr
/* 8028ED48 00289F48  81 86 00 54 */	lwz r12, 0x54(r6)
/* 8028ED4C 00289F4C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028ED50 00289F50  4D 82 00 20 */	beqlr
/* 8028ED54 00289F54  7D 89 03 A6 */	mtctr r12
/* 8028ED58 00289F58  4E 80 04 20 */	bctr
/* 8028ED5C 00289F5C  4E 80 00 20 */	blr
.endfn fn_8028ED3C

# .text:0x48 | 0x8028ED60 | size: 0x24
.fn fn_8028ED60, global
/* 8028ED60 00289F60  80 CD 8E 58 */	lwz r6, lbl_806AB258@sda21(r0)
/* 8028ED64 00289F64  2C 06 00 00 */	cmpwi r6, 0x0
/* 8028ED68 00289F68  4D 82 00 20 */	beqlr
/* 8028ED6C 00289F6C  81 86 00 58 */	lwz r12, 0x58(r6)
/* 8028ED70 00289F70  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8028ED74 00289F74  4D 82 00 20 */	beqlr
/* 8028ED78 00289F78  7D 89 03 A6 */	mtctr r12
/* 8028ED7C 00289F7C  4E 80 04 20 */	bctr
/* 8028ED80 00289F80  4E 80 00 20 */	blr
.endfn fn_8028ED60

# .text:0x6C | 0x8028ED84 | size: 0xC
.fn fn_8028ED84, global
/* 8028ED84 00289F84  90 83 00 18 */	stw r4, 0x18(r3)
/* 8028ED88 00289F88  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8028ED8C 00289F8C  4E 80 00 20 */	blr
.endfn fn_8028ED84

# .text:0x78 | 0x8028ED90 | size: 0x4
.fn fn_8028ED90, global
/* 8028ED90 00289F90  48 00 99 D0 */	b fn_80298760
.endfn fn_8028ED90

# .text:0x7C | 0x8028ED94 | size: 0x4
.fn fn_8028ED94, global
/* 8028ED94 00289F94  4B F7 F3 2C */	b TRKUARTInterruptHandler
.endfn fn_8028ED94
