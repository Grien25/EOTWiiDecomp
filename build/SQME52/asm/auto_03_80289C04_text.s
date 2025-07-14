.include "macros.inc"
.file "auto_03_80289C04_text"

# 0x80289C04..0x80289C24 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x80289C04 | size: 0x20
.fn fn_80289C04, global
/* 80289C04 00284E04  2C 03 00 00 */	cmpwi r3, 0x0
/* 80289C08 00284E08  4D 82 00 20 */	beqlr
/* 80289C0C 00284E0C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80289C10 00284E10  38 80 00 01 */	li r4, 0x1
/* 80289C14 00284E14  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80289C18 00284E18  7D 89 03 A6 */	mtctr r12
/* 80289C1C 00284E1C  4E 80 04 20 */	bctr
/* 80289C20 00284E20  4E 80 00 20 */	blr
.endfn fn_80289C04
