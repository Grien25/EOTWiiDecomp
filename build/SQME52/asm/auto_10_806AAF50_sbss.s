.include "macros.inc"
.file "auto_10_806AAF50_sbss"

# 0x806AAF50..0x806AB414 | size: 0x4C4
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x806AAF50 | size: 0x4
.obj BootInfo_806AAF50, global
	.skip 0x4
.endobj BootInfo_806AAF50

# .sbss:0x4 | 0x806AAF54 | size: 0x4
.obj gap_10_806AAF54_sbss, global
.hidden gap_10_806AAF54_sbss
	.skip 0x4
.endobj gap_10_806AAF54_sbss

# .sbss:0x8 | 0x806AAF58 | size: 0x8
.obj __OSStartTime, global
	.skip 0x8
.endobj __OSStartTime

# .sbss:0x10 | 0x806AAF60 | size: 0x8
.obj AlarmQueue_806AAF60, global
	.skip 0x8
.endobj AlarmQueue_806AAF60

# .sbss:0x18 | 0x806AAF68 | size: 0x4
.obj lbl_806AAF68, global
	.skip 0x4
.endobj lbl_806AAF68

# .sbss:0x1C | 0x806AAF6C | size: 0x4
.obj lbl_806AAF6C, global
	.skip 0x4
.endobj lbl_806AAF6C

# .sbss:0x20 | 0x806AAF70 | size: 0x4
.obj lbl_806AAF70, global
	.skip 0x4
.endobj lbl_806AAF70

# .sbss:0x24 | 0x806AAF74 | size: 0x4
.obj lbl_806AAF74, global
	.skip 0x4
.endobj lbl_806AAF74

# .sbss:0x28 | 0x806AAF78 | size: 0x4
.obj __OSArenaHi_806AAF78, global
	.skip 0x4
.endobj __OSArenaHi_806AAF78

# .sbss:0x2C | 0x806AAF7C | size: 0x4
.obj s_mem2ArenaHi_806AAF7C, global
	.skip 0x4
.endobj s_mem2ArenaHi_806AAF7C

# .sbss:0x30 | 0x806AAF80 | size: 0x4
.obj lbl_806AAF80, global
	.skip 0x4
.endobj lbl_806AAF80

# .sbss:0x34 | 0x806AAF84 | size: 0x4
.obj lbl_806AAF84, global
	.skip 0x4
.endobj lbl_806AAF84

# .sbss:0x38 | 0x806AAF88 | size: 0x4
.obj lbl_806AAF88, global
	.skip 0x4
.endobj lbl_806AAF88

# .sbss:0x3C | 0x806AAF8C | size: 0x4
.obj __OSInReboot, global
	.skip 0x4
.endobj __OSInReboot

# .sbss:0x40 | 0x806AAF90 | size: 0x8
.obj lbl_806AAF90, global
	.skip 0x8
.endobj lbl_806AAF90

# .sbss:0x48 | 0x806AAF98 | size: 0x4
.obj lbl_806AAF98, global
	.skip 0x4
.endobj lbl_806AAF98

# .sbss:0x4C | 0x806AAF9C | size: 0x4
.obj lbl_806AAF9C, global
	.skip 0x4
.endobj lbl_806AAF9C

# .sbss:0x50 | 0x806AAFA0 | size: 0x4
.obj lbl_806AAFA0, global
	.skip 0x4
.endobj lbl_806AAFA0

# .sbss:0x54 | 0x806AAFA4 | size: 0x4
.obj lbl_806AAFA4, global
	.skip 0x4
.endobj lbl_806AAFA4

# .sbss:0x58 | 0x806AAFA8 | size: 0x4
.obj __OSLastInterruptSrr0, global
	.skip 0x4
.endobj __OSLastInterruptSrr0

# .sbss:0x5C | 0x806AAFAC | size: 0x2
.obj __OSLastInterrupt, global
	.skip 0x2
.endobj __OSLastInterrupt

# .sbss:0x5E | 0x806AAFAE | size: 0x2
.obj gap_10_806AAFAE_sbss, global
.hidden gap_10_806AAFAE_sbss
	.skip 0x2
.endobj gap_10_806AAFAE_sbss

# .sbss:0x60 | 0x806AAFB0 | size: 0x8
.obj __OSLastInterruptTime, global
	.skip 0x8
.endobj __OSLastInterruptTime

# .sbss:0x68 | 0x806AAFB8 | size: 0x4
.obj InterruptHandlerTable_806AAFB8, global
	.skip 0x4
.endobj InterruptHandlerTable_806AAFB8

# .sbss:0x6C | 0x806AAFBC | size: 0x4
.obj gap_10_806AAFBC_sbss, global
.hidden gap_10_806AAFBC_sbss
	.skip 0x4
.endobj gap_10_806AAFBC_sbss

# .sbss:0x70 | 0x806AAFC0 | size: 0x4
# __OSInitMemoryProtection()::initialized
.obj "@LOCAL@__OSInitMemoryProtection__Fv@initialized", weak
	.skip 0x4
.endobj "@LOCAL@__OSInitMemoryProtection__Fv@initialized"

# .sbss:0x74 | 0x806AAFC4 | size: 0x4
.obj gap_10_806AAFC4_sbss, global
.hidden gap_10_806AAFC4_sbss
	.skip 0x4
.endobj gap_10_806AAFC4_sbss

# .sbss:0x78 | 0x806AAFC8 | size: 0x4
.obj lbl_806AAFC8, global
	.skip 0x4
.endobj lbl_806AAFC8

# .sbss:0x7C | 0x806AAFCC | size: 0x4
.obj lbl_806AAFCC, global
	.skip 0x4
.endobj lbl_806AAFCC

# .sbss:0x80 | 0x806AAFD0 | size: 0x4
.obj lbl_806AAFD0, global
	.skip 0x4
.endobj lbl_806AAFD0

# .sbss:0x84 | 0x806AAFD4 | size: 0x4
.obj lbl_806AAFD4, global
	.skip 0x4
.endobj lbl_806AAFD4

# .sbss:0x88 | 0x806AAFD8 | size: 0x8
.obj ShutdownFunctionQueue_806AAFD8, global
	.skip 0x8
.endobj ShutdownFunctionQueue_806AAFD8

# .sbss:0x90 | 0x806AAFE0 | size: 0x4
.obj Reschedule_806AAFE0, global
	.skip 0x4
.endobj Reschedule_806AAFE0

# .sbss:0x94 | 0x806AAFE4 | size: 0x4
.obj RunQueueHint_806AAFE4, global
	.skip 0x4
.endobj RunQueueHint_806AAFE4

# .sbss:0x98 | 0x806AAFE8 | size: 0x4
.obj RunQueueBits_806AAFE8, global
	.skip 0x4
.endobj RunQueueBits_806AAFE8

# .sbss:0x9C | 0x806AAFEC | size: 0x4
.obj gap_10_806AAFEC_sbss, global
.hidden gap_10_806AAFEC_sbss
	.skip 0x4
.endobj gap_10_806AAFEC_sbss

# .sbss:0xA0 | 0x806AAFF0 | size: 0x4
.obj IpcBufferHi_806AAFF0, global
	.skip 0x4
.endobj IpcBufferHi_806AAFF0

# .sbss:0xA4 | 0x806AAFF4 | size: 0x4
.obj gap_10_806AAFF4_sbss, global
.hidden gap_10_806AAFF4_sbss
	.skip 0x4
.endobj gap_10_806AAFF4_sbss

# .sbss:0xA8 | 0x806AAFF8 | size: 0x4
.obj ResetDown_806AAFF8, global
	.skip 0x4
.endobj ResetDown_806AAFF8

# .sbss:0xAC | 0x806AAFFC | size: 0x4
.obj StmReady_806AAFFC, global
	.skip 0x4
.endobj StmReady_806AAFFC

# .sbss:0xB0 | 0x806AB000 | size: 0x4
.obj StmImDesc_806AB000, global
	.skip 0x4
.endobj StmImDesc_806AB000

# .sbss:0xB4 | 0x806AB004 | size: 0x4
.obj StmEhDesc_806AB004, global
	.skip 0x4
.endobj StmEhDesc_806AB004

# .sbss:0xB8 | 0x806AB008 | size: 0x4
.obj StmEhRegistered_806AB008, global
	.skip 0x4
.endobj StmEhRegistered_806AB008

# .sbss:0xBC | 0x806AB00C | size: 0x4
.obj StmVdInUse_806AB00C, global
	.skip 0x4
.endobj StmVdInUse_806AB00C

# .sbss:0xC0 | 0x806AB010 | size: 0x4
.obj PowerCallback_806AB010, global
	.skip 0x4
.endobj PowerCallback_806AB010

# .sbss:0xC4 | 0x806AB014 | size: 0x4
.obj ResetCallback_806AB014, global
	.skip 0x4
.endobj ResetCallback_806AB014

# .sbss:0xC8 | 0x806AB018 | size: 0x1
.obj Debug_BBA_806AB018, global
	.skip 0x1
.endobj Debug_BBA_806AB018

# .sbss:0xC9 | 0x806AB019 | size: 0x7
.obj gap_10_806AB019_sbss, global
.hidden gap_10_806AB019_sbss
	.skip 0x7
.endobj gap_10_806AB019_sbss

# .sbss:0xD0 | 0x806AB020 | size: 0x4
.obj PlayRecordGet_806AB020, global
	.skip 0x4
.endobj PlayRecordGet_806AB020

# .sbss:0xD4 | 0x806AB024 | size: 0x4
.obj PlayRecordError_806AB024, global
	.skip 0x4
.endobj PlayRecordError_806AB024

# .sbss:0xD8 | 0x806AB028 | size: 0x4
.obj PlayRecordTerminate_806AB028, global
	.skip 0x4
.endobj PlayRecordTerminate_806AB028

# .sbss:0xDC | 0x806AB02C | size: 0x4
.obj PlayRecordTerminated_806AB02C, global
	.skip 0x4
.endobj PlayRecordTerminated_806AB02C

# .sbss:0xE0 | 0x806AB030 | size: 0x4
.obj PlayRecordRetry_806AB030, global
	.skip 0x4
.endobj PlayRecordRetry_806AB030

# .sbss:0xE4 | 0x806AB034 | size: 0x4
.obj PlayRecordLastError_806AB034, global
	.skip 0x4
.endobj PlayRecordLastError_806AB034

# .sbss:0xE8 | 0x806AB038 | size: 0x4
.obj lbl_806AB038, global
	.skip 0x4
.endobj lbl_806AB038

# .sbss:0xEC | 0x806AB03C | size: 0x4
.obj lbl_806AB03C, global
	.skip 0x4
.endobj lbl_806AB03C

# .sbss:0xF0 | 0x806AB040 | size: 0x4
.obj lbl_806AB040, global
	.skip 0x4
.endobj lbl_806AB040

# .sbss:0xF4 | 0x806AB044 | size: 0x4
.obj lbl_806AB044, global
	.skip 0x4
.endobj lbl_806AB044

# .sbss:0xF8 | 0x806AB048 | size: 0x4
.obj lbl_806AB048, global
	.skip 0x4
.endobj lbl_806AB048

# .sbss:0xFC | 0x806AB04C | size: 0x4
.obj lbl_806AB04C, global
	.skip 0x4
.endobj lbl_806AB04C

# .sbss:0x100 | 0x806AB050 | size: 0x4
.obj lbl_806AB050, global
	.skip 0x4
.endobj lbl_806AB050

# .sbss:0x104 | 0x806AB054 | size: 0x4
.obj __OSExpireSetExpiredFlag, global
	.skip 0x4
.endobj __OSExpireSetExpiredFlag

# .sbss:0x108 | 0x806AB058 | size: 0x4
.obj __OSExpireCallback, global
	.skip 0x4
.endobj __OSExpireCallback

# .sbss:0x10C | 0x806AB05C | size: 0x4
.obj gap_10_806AB05C_sbss, global
.hidden gap_10_806AB05C_sbss
	.skip 0x4
.endobj gap_10_806AB05C_sbss

# .sbss:0x110 | 0x806AB060 | size: 0x8
.obj __OSExpireTime, global
	.skip 0x8
.endobj __OSExpireTime

# .sbss:0x118 | 0x806AB068 | size: 0x4
.obj __PADSpec, global
	.skip 0x4
.endobj __PADSpec

# .sbss:0x11C | 0x806AB06C | size: 0x4
.obj lbl_806AB06C, global
	.skip 0x4
.endobj lbl_806AB06C

# .sbss:0x120 | 0x806AB070 | size: 0x1
.obj BgJobStatus_806AB070, global
	.skip 0x1
.endobj BgJobStatus_806AB070

# .sbss:0x121 | 0x806AB071 | size: 0x3
.obj gap_10_806AB071_sbss, global
.hidden gap_10_806AB071_sbss
	.skip 0x3
.endobj gap_10_806AB071_sbss

# .sbss:0x124 | 0x806AB074 | size: 0x4
.obj ItemRestSize_806AB074, global
	.skip 0x4
.endobj ItemRestSize_806AB074

# .sbss:0x128 | 0x806AB078 | size: 0x4
.obj ItemNumTotal_806AB078, global
	.skip 0x4
.endobj ItemNumTotal_806AB078

# .sbss:0x12C | 0x806AB07C | size: 0x4
.obj lbl_806AB07C, global
	.skip 0x4
.endobj lbl_806AB07C

# .sbss:0x130 | 0x806AB080 | size: 0x4
.obj ItemIDOffsetTblOffset_806AB080, global
	.skip 0x4
.endobj ItemIDOffsetTblOffset_806AB080

# .sbss:0x134 | 0x806AB084 | size: 0x1
.obj IsDevKit_806AB084, global
	.skip 0x1
.endobj IsDevKit_806AB084

# .sbss:0x135 | 0x806AB085 | size: 0x1
.obj lbl_806AB085, global
	.skip 0x1
.endobj lbl_806AB085

# .sbss:0x136 | 0x806AB086 | size: 0x1
.obj Initialized_806AB086, global
	.skip 0x1
.endobj Initialized_806AB086

# .sbss:0x137 | 0x806AB087 | size: 0x1
.obj gap_10_806AB087_sbss, global
.hidden gap_10_806AB087_sbss
	.skip 0x1
.endobj gap_10_806AB087_sbss

# .sbss:0x138 | 0x806AB088 | size: 0x4
.obj lbl_806AB088, global
	.skip 0x4
.endobj lbl_806AB088

# .sbss:0x13C | 0x806AB08C | size: 0x4
# SIInit()::Initialized
.obj "@LOCAL@SIInit__Fv@Initialized", weak
	.skip 0x4
.endobj "@LOCAL@SIInit__Fv@Initialized"

# .sbss:0x140 | 0x806AB090 | size: 0x4
# SIGetType(long)::cmdTypeAndStatus
.obj "@LOCAL@SIGetType__Fl@cmdTypeAndStatus", weak
	.skip 0x4
.endobj "@LOCAL@SIGetType__Fl@cmdTypeAndStatus"

# .sbss:0x144 | 0x806AB094 | size: 0x4
.obj lbl_806AB094, global
	.skip 0x4
.endobj lbl_806AB094

# .sbss:0x148 | 0x806AB098 | size: 0x4
.obj SamplingRate_806AB098, global
	.skip 0x4
.endobj SamplingRate_806AB098

# .sbss:0x14C | 0x806AB09C | size: 0x4
.obj gap_10_806AB09C_sbss, global
.hidden gap_10_806AB09C_sbss
	.skip 0x4
.endobj gap_10_806AB09C_sbss

# .sbss:0x150 | 0x806AB0A0 | size: 0x4
.obj lbl_806AB0A0, global
	.skip 0x4
.endobj lbl_806AB0A0

# .sbss:0x154 | 0x806AB0A4 | size: 0x4
.obj lbl_806AB0A4, global
	.skip 0x4
.endobj lbl_806AB0A4

# .sbss:0x158 | 0x806AB0A8 | size: 0x4
.obj lbl_806AB0A8, global
	.skip 0x4
.endobj lbl_806AB0A8

# .sbss:0x15C | 0x806AB0AC | size: 0x4
.obj lbl_806AB0AC, global
	.skip 0x4
.endobj lbl_806AB0AC

# .sbss:0x160 | 0x806AB0B0 | size: 0x4
.obj lbl_806AB0B0, global
	.skip 0x4
.endobj lbl_806AB0B0

# .sbss:0x164 | 0x806AB0B4 | size: 0x4
.obj lbl_806AB0B4, global
	.skip 0x4
.endobj lbl_806AB0B4

# .sbss:0x168 | 0x806AB0B8 | size: 0x4
.obj lbl_806AB0B8, global
	.skip 0x4
.endobj lbl_806AB0B8

# .sbss:0x16C | 0x806AB0BC | size: 0x4
.obj lbl_806AB0BC, global
	.skip 0x4
.endobj lbl_806AB0BC

# .sbss:0x170 | 0x806AB0C0 | size: 0x4
.obj lbl_806AB0C0, global
	.skip 0x4
.endobj lbl_806AB0C0

# .sbss:0x174 | 0x806AB0C4 | size: 0x4
.obj lbl_806AB0C4, global
	.skip 0x4
.endobj lbl_806AB0C4

# .sbss:0x178 | 0x806AB0C8 | size: 0x4
.obj lbl_806AB0C8, global
	.skip 0x4
.endobj lbl_806AB0C8

# .sbss:0x17C | 0x806AB0CC | size: 0x2
.obj lbl_806AB0CC, global
	.skip 0x2
.endobj lbl_806AB0CC

# .sbss:0x17E | 0x806AB0CE | size: 0x2
.obj lbl_806AB0CE, global
	.skip 0x2
.endobj lbl_806AB0CE

# .sbss:0x180 | 0x806AB0D0 | size: 0x8
.obj lbl_806AB0D0, global
	.skip 0x8
.endobj lbl_806AB0D0

# .sbss:0x188 | 0x806AB0D8 | size: 0x4
.obj lbl_806AB0D8, global
	.skip 0x4
.endobj lbl_806AB0D8

# .sbss:0x18C | 0x806AB0DC | size: 0x4
.obj lbl_806AB0DC, global
	.skip 0x4
.endobj lbl_806AB0DC

# .sbss:0x190 | 0x806AB0E0 | size: 0x8
.obj lbl_806AB0E0, global
	.skip 0x8
.endobj lbl_806AB0E0

# .sbss:0x198 | 0x806AB0E8 | size: 0x4
.obj lbl_806AB0E8, global
	.skip 0x4
.endobj lbl_806AB0E8

# .sbss:0x19C | 0x806AB0EC | size: 0x4
.obj lbl_806AB0EC, global
	.skip 0x4
.endobj lbl_806AB0EC

# .sbss:0x1A0 | 0x806AB0F0 | size: 0x4
.obj lbl_806AB0F0, global
	.skip 0x4
.endobj lbl_806AB0F0

# .sbss:0x1A4 | 0x806AB0F4 | size: 0x4
.obj lbl_806AB0F4, global
	.skip 0x4
.endobj lbl_806AB0F4

# .sbss:0x1A8 | 0x806AB0F8 | size: 0x4
.obj lbl_806AB0F8, global
	.skip 0x4
.endobj lbl_806AB0F8

# .sbss:0x1AC | 0x806AB0FC | size: 0x4
.obj lbl_806AB0FC, global
	.skip 0x4
.endobj lbl_806AB0FC

# .sbss:0x1B0 | 0x806AB100 | size: 0x4
.obj lbl_806AB100, global
	.skip 0x4
.endobj lbl_806AB100

# .sbss:0x1B4 | 0x806AB104 | size: 0x4
.obj lbl_806AB104, global
	.skip 0x4
.endobj lbl_806AB104

# .sbss:0x1B8 | 0x806AB108 | size: 0x4
.obj lbl_806AB108, global
	.skip 0x4
.endobj lbl_806AB108

# .sbss:0x1BC | 0x806AB10C | size: 0x4
.obj lbl_806AB10C, global
	.skip 0x4
.endobj lbl_806AB10C

# .sbss:0x1C0 | 0x806AB110 | size: 0x4
.obj CurrTvMode_806AB110, global
	.skip 0x4
.endobj CurrTvMode_806AB110

# .sbss:0x1C4 | 0x806AB114 | size: 0x4
.obj lbl_806AB114, global
	.skip 0x4
.endobj lbl_806AB114

# .sbss:0x1C8 | 0x806AB118 | size: 0x4
.obj lbl_806AB118, global
	.skip 0x4
.endobj lbl_806AB118

# .sbss:0x1CC | 0x806AB11C | size: 0x4
.obj lbl_806AB11C, global
	.skip 0x4
.endobj lbl_806AB11C

# .sbss:0x1D0 | 0x806AB120 | size: 0x8
.obj lbl_806AB120, global
	.skip 0x8
.endobj lbl_806AB120

# .sbss:0x1D8 | 0x806AB128 | size: 0x8
.obj lbl_806AB128, global
	.skip 0x8
.endobj lbl_806AB128

# .sbss:0x1E0 | 0x806AB130 | size: 0x4
.obj lbl_806AB130, global
	.skip 0x4
.endobj lbl_806AB130

# .sbss:0x1E4 | 0x806AB134 | size: 0x4
.obj lbl_806AB134, global
	.skip 0x4
.endobj lbl_806AB134

# .sbss:0x1E8 | 0x806AB138 | size: 0x4
.obj lbl_806AB138, global
	.skip 0x4
.endobj lbl_806AB138

# .sbss:0x1EC | 0x806AB13C | size: 0x4
.obj lbl_806AB13C, global
	.skip 0x4
.endobj lbl_806AB13C

# .sbss:0x1F0 | 0x806AB140 | size: 0x4
.obj lbl_806AB140, global
	.skip 0x4
.endobj lbl_806AB140

# .sbss:0x1F4 | 0x806AB144 | size: 0x4
.obj lbl_806AB144, global
	.skip 0x4
.endobj lbl_806AB144

# .sbss:0x1F8 | 0x806AB148 | size: 0x4
.obj lbl_806AB148, global
	.skip 0x4
.endobj lbl_806AB148

# .sbss:0x1FC | 0x806AB14C | size: 0x4
.obj lbl_806AB14C, global
	.skip 0x4
.endobj lbl_806AB14C

# .sbss:0x200 | 0x806AB150 | size: 0x8
.obj lbl_806AB150, global
	.skip 0x8
.endobj lbl_806AB150

# .sbss:0x208 | 0x806AB158 | size: 0x4
.obj lbl_806AB158, global
	.skip 0x4
.endobj lbl_806AB158

# .sbss:0x20C | 0x806AB15C | size: 0x4
.obj lbl_806AB15C, global
	.skip 0x4
.endobj lbl_806AB15C

# .sbss:0x210 | 0x806AB160 | size: 0x4
.obj lbl_806AB160, global
	.skip 0x4
.endobj lbl_806AB160

# .sbss:0x214 | 0x806AB164 | size: 0x4
.obj lbl_806AB164, global
	.skip 0x4
.endobj lbl_806AB164

# .sbss:0x218 | 0x806AB168 | size: 0x4
.obj lbl_806AB168, global
	.skip 0x4
.endobj lbl_806AB168

# .sbss:0x21C | 0x806AB16C | size: 0x4
.obj lbl_806AB16C, global
	.skip 0x4
.endobj lbl_806AB16C

# .sbss:0x220 | 0x806AB170 | size: 0x1
.obj lbl_806AB170, global
	.skip 0x1
.endobj lbl_806AB170

# .sbss:0x221 | 0x806AB171 | size: 0x1
.obj gap_10_806AB171_sbss, global
.hidden gap_10_806AB171_sbss
	.skip 0x1
.endobj gap_10_806AB171_sbss

# .sbss:0x222 | 0x806AB172 | size: 0x2
.obj lbl_806AB172, global
	.skip 0x2
.endobj lbl_806AB172

# .sbss:0x224 | 0x806AB174 | size: 0x1
.obj lbl_806AB174, global
	.skip 0x1
.endobj lbl_806AB174

# .sbss:0x225 | 0x806AB175 | size: 0x1
.obj gap_10_806AB175_sbss, global
.hidden gap_10_806AB175_sbss
	.skip 0x1
.endobj gap_10_806AB175_sbss

# .sbss:0x226 | 0x806AB176 | size: 0x2
.obj lbl_806AB176, global
	.skip 0x2
.endobj lbl_806AB176

# .sbss:0x228 | 0x806AB178 | size: 0x1
.obj lbl_806AB178, global
	.skip 0x1
.endobj lbl_806AB178

# .sbss:0x229 | 0x806AB179 | size: 0x3
.obj gap_10_806AB179_sbss, global
.hidden gap_10_806AB179_sbss
	.skip 0x3
.endobj gap_10_806AB179_sbss

# .sbss:0x22C | 0x806AB17C | size: 0x1
.obj lbl_806AB17C, global
	.skip 0x1
.endobj lbl_806AB17C

# .sbss:0x22D | 0x806AB17D | size: 0x3
.obj gap_10_806AB17D_sbss, global
.hidden gap_10_806AB17D_sbss
	.skip 0x3
.endobj gap_10_806AB17D_sbss

# .sbss:0x230 | 0x806AB180 | size: 0x4
.obj lbl_806AB180, global
	.skip 0x4
.endobj lbl_806AB180

# .sbss:0x234 | 0x806AB184 | size: 0x4
.obj lbl_806AB184, global
	.skip 0x4
.endobj lbl_806AB184

# .sbss:0x238 | 0x806AB188 | size: 0x4
.obj lbl_806AB188, global
	.skip 0x4
.endobj lbl_806AB188

# .sbss:0x23C | 0x806AB18C | size: 0x4
.obj lbl_806AB18C, global
	.skip 0x4
.endobj lbl_806AB18C

# .sbss:0x240 | 0x806AB190 | size: 0x4
.obj lbl_806AB190, global
	.skip 0x4
.endobj lbl_806AB190

# .sbss:0x244 | 0x806AB194 | size: 0x4
.obj lbl_806AB194, global
	.skip 0x4
.endobj lbl_806AB194

# .sbss:0x248 | 0x806AB198 | size: 0x4
.obj lbl_806AB198, global
	.skip 0x4
.endobj lbl_806AB198

# .sbss:0x24C | 0x806AB19C | size: 0x4
.obj lbl_806AB19C, global
	.skip 0x4
.endobj lbl_806AB19C

# .sbss:0x250 | 0x806AB1A0 | size: 0x4
.obj lbl_806AB1A0, global
	.skip 0x4
.endobj lbl_806AB1A0

# .sbss:0x254 | 0x806AB1A4 | size: 0x4
.obj lbl_806AB1A4, global
	.skip 0x4
.endobj lbl_806AB1A4

# .sbss:0x258 | 0x806AB1A8 | size: 0x4
.obj lbl_806AB1A8, global
	.skip 0x4
.endobj lbl_806AB1A8

# .sbss:0x25C | 0x806AB1AC | size: 0x4
.obj lbl_806AB1AC, global
	.skip 0x4
.endobj lbl_806AB1AC

# .sbss:0x260 | 0x806AB1B0 | size: 0x4
.obj lbl_806AB1B0, global
	.skip 0x4
.endobj lbl_806AB1B0

# .sbss:0x264 | 0x806AB1B4 | size: 0x4
.obj lbl_806AB1B4, global
	.skip 0x4
.endobj lbl_806AB1B4

# .sbss:0x268 | 0x806AB1B8 | size: 0x4
.obj lbl_806AB1B8, global
	.skip 0x4
.endobj lbl_806AB1B8

# .sbss:0x26C | 0x806AB1BC | size: 0x4
.obj lbl_806AB1BC, global
	.skip 0x4
.endobj lbl_806AB1BC

# .sbss:0x270 | 0x806AB1C0 | size: 0x4
.obj lbl_806AB1C0, global
	.skip 0x4
.endobj lbl_806AB1C0

# .sbss:0x274 | 0x806AB1C4 | size: 0x4
.obj lbl_806AB1C4, global
	.skip 0x4
.endobj lbl_806AB1C4

# .sbss:0x278 | 0x806AB1C8 | size: 0x1
.obj lbl_806AB1C8, global
	.skip 0x1
.endobj lbl_806AB1C8

# .sbss:0x279 | 0x806AB1C9 | size: 0x3
.obj gap_10_806AB1C9_sbss, global
.hidden gap_10_806AB1C9_sbss
	.skip 0x3
.endobj gap_10_806AB1C9_sbss

# .sbss:0x27C | 0x806AB1CC | size: 0x1
.obj lbl_806AB1CC, global
	.skip 0x1
.endobj lbl_806AB1CC

# .sbss:0x27D | 0x806AB1CD | size: 0x1
.obj lbl_806AB1CD, global
	.skip 0x1
.endobj lbl_806AB1CD

# .sbss:0x27E | 0x806AB1CE | size: 0x1
.obj lbl_806AB1CE, global
	.skip 0x1
.endobj lbl_806AB1CE

# .sbss:0x27F | 0x806AB1CF | size: 0x1
.obj lbl_806AB1CF, global
	.skip 0x1
.endobj lbl_806AB1CF

# .sbss:0x280 | 0x806AB1D0 | size: 0x4
.obj lbl_806AB1D0, global
	.skip 0x4
.endobj lbl_806AB1D0

# .sbss:0x284 | 0x806AB1D4 | size: 0x1
.obj lbl_806AB1D4, global
	.skip 0x1
.endobj lbl_806AB1D4

# .sbss:0x285 | 0x806AB1D5 | size: 0x1
.obj lbl_806AB1D5, global
	.skip 0x1
.endobj lbl_806AB1D5

# .sbss:0x286 | 0x806AB1D6 | size: 0x1
.obj lbl_806AB1D6, global
	.skip 0x1
.endobj lbl_806AB1D6

# .sbss:0x287 | 0x806AB1D7 | size: 0x1
.obj gap_10_806AB1D7_sbss, global
.hidden gap_10_806AB1D7_sbss
	.skip 0x1
.endobj gap_10_806AB1D7_sbss

# .sbss:0x288 | 0x806AB1D8 | size: 0x4
.obj lbl_806AB1D8, global
	.skip 0x4
.endobj lbl_806AB1D8

# .sbss:0x28C | 0x806AB1DC | size: 0x1
.obj lbl_806AB1DC, global
	.skip 0x1
.endobj lbl_806AB1DC

# .sbss:0x28D | 0x806AB1DD | size: 0x3
.obj gap_10_806AB1DD_sbss, global
.hidden gap_10_806AB1DD_sbss
	.skip 0x3
.endobj gap_10_806AB1DD_sbss

# .sbss:0x290 | 0x806AB1E0 | size: 0x4
.obj lbl_806AB1E0, global
	.skip 0x4
.endobj lbl_806AB1E0

# .sbss:0x294 | 0x806AB1E4 | size: 0x4
.obj lbl_806AB1E4, global
	.skip 0x4
.endobj lbl_806AB1E4

# .sbss:0x298 | 0x806AB1E8 | size: 0x4
.obj lbl_806AB1E8, global
	.skip 0x4
.endobj lbl_806AB1E8

# .sbss:0x29C | 0x806AB1EC | size: 0x4
.obj lbl_806AB1EC, global
	.skip 0x4
.endobj lbl_806AB1EC

# .sbss:0x2A0 | 0x806AB1F0 | size: 0x4
.obj lbl_806AB1F0, global
	.skip 0x4
.endobj lbl_806AB1F0

# .sbss:0x2A4 | 0x806AB1F4 | size: 0x4
.obj lbl_806AB1F4, global
	.skip 0x4
.endobj lbl_806AB1F4

# .sbss:0x2A8 | 0x806AB1F8 | size: 0x1
.obj lbl_806AB1F8, global
	.skip 0x1
.endobj lbl_806AB1F8

# .sbss:0x2A9 | 0x806AB1F9 | size: 0x1
.obj lbl_806AB1F9, global
	.skip 0x1
.endobj lbl_806AB1F9

# .sbss:0x2AA | 0x806AB1FA | size: 0x1
.obj lbl_806AB1FA, global
	.skip 0x1
.endobj lbl_806AB1FA

# .sbss:0x2AB | 0x806AB1FB | size: 0x5
.obj lbl_806AB1FB, global
	.skip 0x5
.endobj lbl_806AB1FB

# .sbss:0x2B0 | 0x806AB200 | size: 0x4
.obj lbl_806AB200, global
	.skip 0x4
.endobj lbl_806AB200

# .sbss:0x2B4 | 0x806AB204 | size: 0x4
.obj lbl_806AB204, global
	.skip 0x4
.endobj lbl_806AB204

# .sbss:0x2B8 | 0x806AB208 | size: 0x4
.obj lbl_806AB208, global
	.skip 0x4
.endobj lbl_806AB208

# .sbss:0x2BC | 0x806AB20C | size: 0x1
.obj lbl_806AB20C, global
	.skip 0x1
.endobj lbl_806AB20C

# .sbss:0x2BD | 0x806AB20D | size: 0x1
.obj lbl_806AB20D, global
	.skip 0x1
.endobj lbl_806AB20D

# .sbss:0x2BE | 0x806AB20E | size: 0x2
.obj gap_10_806AB20E_sbss, global
.hidden gap_10_806AB20E_sbss
	.skip 0x2
.endobj gap_10_806AB20E_sbss

# .sbss:0x2C0 | 0x806AB210 | size: 0x4
.obj lbl_806AB210, global
	.skip 0x4
.endobj lbl_806AB210

# .sbss:0x2C4 | 0x806AB214 | size: 0x4
.obj lbl_806AB214, global
	.skip 0x4
.endobj lbl_806AB214

# .sbss:0x2C8 | 0x806AB218 | size: 0x4
.obj lbl_806AB218, global
	.skip 0x4
.endobj lbl_806AB218

# .sbss:0x2CC | 0x806AB21C | size: 0x4
.obj lbl_806AB21C, global
	.skip 0x4
.endobj lbl_806AB21C

# .sbss:0x2D0 | 0x806AB220 | size: 0x4
.obj lbl_806AB220, global
	.skip 0x4
.endobj lbl_806AB220

# .sbss:0x2D4 | 0x806AB224 | size: 0x1
.obj lbl_806AB224, global
	.skip 0x1
.endobj lbl_806AB224

# .sbss:0x2D5 | 0x806AB225 | size: 0x1
.obj lbl_806AB225, global
	.skip 0x1
.endobj lbl_806AB225

# .sbss:0x2D6 | 0x806AB226 | size: 0x1
.obj lbl_806AB226, global
	.skip 0x1
.endobj lbl_806AB226

# .sbss:0x2D7 | 0x806AB227 | size: 0x1
.obj gap_10_806AB227_sbss, global
.hidden gap_10_806AB227_sbss
	.skip 0x1
.endobj gap_10_806AB227_sbss

# .sbss:0x2D8 | 0x806AB228 | size: 0x4
.obj lbl_806AB228, global
	.skip 0x4
.endobj lbl_806AB228

# .sbss:0x2DC | 0x806AB22C | size: 0x4
.obj lbl_806AB22C, global
	.skip 0x4
.endobj lbl_806AB22C

# .sbss:0x2E0 | 0x806AB230 | size: 0x4
.obj lbl_806AB230, global
	.skip 0x4
.endobj lbl_806AB230

# .sbss:0x2E4 | 0x806AB234 | size: 0x1
.obj lbl_806AB234, global
	.skip 0x1
.endobj lbl_806AB234

# .sbss:0x2E5 | 0x806AB235 | size: 0x1
.obj lbl_806AB235, global
	.skip 0x1
.endobj lbl_806AB235

# .sbss:0x2E6 | 0x806AB236 | size: 0x1
.obj lbl_806AB236, global
	.skip 0x1
.endobj lbl_806AB236

# .sbss:0x2E7 | 0x806AB237 | size: 0x1
.obj lbl_806AB237, global
	.skip 0x1
.endobj lbl_806AB237

# .sbss:0x2E8 | 0x806AB238 | size: 0x8
.obj lbl_806AB238, global
	.skip 0x8
.endobj lbl_806AB238

# .sbss:0x2F0 | 0x806AB240 | size: 0x4
.obj lbl_806AB240, global
	.skip 0x4
.endobj lbl_806AB240

# .sbss:0x2F4 | 0x806AB244 | size: 0x4
.obj lbl_806AB244, global
	.skip 0x4
.endobj lbl_806AB244

# .sbss:0x2F8 | 0x806AB248 | size: 0x8
.obj lbl_806AB248, global
	.skip 0x8
.endobj lbl_806AB248

# .sbss:0x300 | 0x806AB250 | size: 0x8
.obj lbl_806AB250, global
	.skip 0x8
.endobj lbl_806AB250

# .sbss:0x308 | 0x806AB258 | size: 0x8
.obj lbl_806AB258, global
	.skip 0x8
.endobj lbl_806AB258

# .sbss:0x310 | 0x806AB260 | size: 0x8
.obj lbl_806AB260, global
	.skip 0x8
.endobj lbl_806AB260

# .sbss:0x318 | 0x806AB268 | size: 0x4
.obj lbl_806AB268, global
	.skip 0x4
.endobj lbl_806AB268

# .sbss:0x31C | 0x806AB26C | size: 0x4
.obj lbl_806AB26C, global
	.skip 0x4
.endobj lbl_806AB26C

# .sbss:0x320 | 0x806AB270 | size: 0x4
.obj lbl_806AB270, global
	.skip 0x4
.endobj lbl_806AB270

# .sbss:0x324 | 0x806AB274 | size: 0x4
.obj lbl_806AB274, global
	.skip 0x4
.endobj lbl_806AB274

# .sbss:0x328 | 0x806AB278 | size: 0x4
.obj lbl_806AB278, global
	.skip 0x4
.endobj lbl_806AB278

# .sbss:0x32C | 0x806AB27C | size: 0x4
.obj lbl_806AB27C, global
	.skip 0x4
.endobj lbl_806AB27C

# .sbss:0x330 | 0x806AB280 | size: 0x4
.obj lbl_806AB280, global
	.skip 0x4
.endobj lbl_806AB280

# .sbss:0x334 | 0x806AB284 | size: 0x4
.obj lbl_806AB284, global
	.skip 0x4
.endobj lbl_806AB284

# .sbss:0x338 | 0x806AB288 | size: 0x8
.obj lbl_806AB288, global
	.skip 0x8
.endobj lbl_806AB288

# .sbss:0x340 | 0x806AB290 | size: 0x8
.obj lbl_806AB290, global
	.skip 0x8
.endobj lbl_806AB290

# .sbss:0x348 | 0x806AB298 | size: 0x4
.obj lbl_806AB298, global
	.skip 0x4
.endobj lbl_806AB298

# .sbss:0x34C | 0x806AB29C | size: 0x4
.obj lbl_806AB29C, global
	.skip 0x4
.endobj lbl_806AB29C

# .sbss:0x350 | 0x806AB2A0 | size: 0x8
.obj lbl_806AB2A0, global
	.skip 0x8
.endobj lbl_806AB2A0

# .sbss:0x358 | 0x806AB2A8 | size: 0x8
.obj lbl_806AB2A8, global
	.skip 0x8
.endobj lbl_806AB2A8

# .sbss:0x360 | 0x806AB2B0 | size: 0x4
.obj lbl_806AB2B0, global
	.skip 0x4
.endobj lbl_806AB2B0

# .sbss:0x364 | 0x806AB2B4 | size: 0x4
.obj lbl_806AB2B4, global
	.skip 0x4
.endobj lbl_806AB2B4

# .sbss:0x368 | 0x806AB2B8 | size: 0x8
.obj lbl_806AB2B8, global
	.skip 0x8
.endobj lbl_806AB2B8

# .sbss:0x370 | 0x806AB2C0 | size: 0x8
.obj lbl_806AB2C0, global
	.skip 0x8
.endobj lbl_806AB2C0

# .sbss:0x378 | 0x806AB2C8 | size: 0x4
.obj lbl_806AB2C8, global
	.skip 0x4
.endobj lbl_806AB2C8

# .sbss:0x37C | 0x806AB2CC | size: 0x4
.obj lbl_806AB2CC, global
	.skip 0x4
.endobj lbl_806AB2CC

# .sbss:0x380 | 0x806AB2D0 | size: 0x8
.obj lbl_806AB2D0, global
	.skip 0x8
.endobj lbl_806AB2D0

# .sbss:0x388 | 0x806AB2D8 | size: 0x8
.obj lbl_806AB2D8, global
	.skip 0x8
.endobj lbl_806AB2D8

# .sbss:0x390 | 0x806AB2E0 | size: 0x4
.obj lbl_806AB2E0, global
	.skip 0x4
.endobj lbl_806AB2E0

# .sbss:0x394 | 0x806AB2E4 | size: 0x4
.obj lbl_806AB2E4, global
	.skip 0x4
.endobj lbl_806AB2E4

# .sbss:0x398 | 0x806AB2E8 | size: 0x4
.obj lbl_806AB2E8, global
	.skip 0x4
.endobj lbl_806AB2E8

# .sbss:0x39C | 0x806AB2EC | size: 0x4
.obj lbl_806AB2EC, global
	.skip 0x4
.endobj lbl_806AB2EC

# .sbss:0x3A0 | 0x806AB2F0 | size: 0x4
.obj lbl_806AB2F0, global
	.skip 0x4
.endobj lbl_806AB2F0

# .sbss:0x3A4 | 0x806AB2F4 | size: 0x4
.obj lbl_806AB2F4, global
	.skip 0x4
.endobj lbl_806AB2F4

# .sbss:0x3A8 | 0x806AB2F8 | size: 0x4
.obj lbl_806AB2F8, global
	.skip 0x4
.endobj lbl_806AB2F8

# .sbss:0x3AC | 0x806AB2FC | size: 0x4
.obj lbl_806AB2FC, global
	.skip 0x4
.endobj lbl_806AB2FC

# .sbss:0x3B0 | 0x806AB300 | size: 0x4
.obj lbl_806AB300, global
	.skip 0x4
.endobj lbl_806AB300

# .sbss:0x3B4 | 0x806AB304 | size: 0x4
.obj lbl_806AB304, global
	.skip 0x4
.endobj lbl_806AB304

# .sbss:0x3B8 | 0x806AB308 | size: 0x4
.obj lbl_806AB308, global
	.skip 0x4
.endobj lbl_806AB308

# .sbss:0x3BC | 0x806AB30C | size: 0x4
.obj lbl_806AB30C, global
	.skip 0x4
.endobj lbl_806AB30C

# .sbss:0x3C0 | 0x806AB310 | size: 0x4
.obj lbl_806AB310, global
	.skip 0x4
.endobj lbl_806AB310

# .sbss:0x3C4 | 0x806AB314 | size: 0x4
.obj lbl_806AB314, global
	.skip 0x4
.endobj lbl_806AB314

# .sbss:0x3C8 | 0x806AB318 | size: 0x4
.obj lbl_806AB318, global
	.skip 0x4
.endobj lbl_806AB318

# .sbss:0x3CC | 0x806AB31C | size: 0x4
.obj lbl_806AB31C, global
	.skip 0x4
.endobj lbl_806AB31C

# .sbss:0x3D0 | 0x806AB320 | size: 0x4
.obj lbl_806AB320, global
	.skip 0x4
.endobj lbl_806AB320

# .sbss:0x3D4 | 0x806AB324 | size: 0x4
.obj lbl_806AB324, global
	.skip 0x4
.endobj lbl_806AB324

# .sbss:0x3D8 | 0x806AB328 | size: 0x4
.obj lbl_806AB328, global
	.skip 0x4
.endobj lbl_806AB328

# .sbss:0x3DC | 0x806AB32C | size: 0x4
.obj lbl_806AB32C, global
	.skip 0x4
.endobj lbl_806AB32C

# .sbss:0x3E0 | 0x806AB330 | size: 0x4
.obj lbl_806AB330, global
	.skip 0x4
.endobj lbl_806AB330

# .sbss:0x3E4 | 0x806AB334 | size: 0x4
.obj lbl_806AB334, global
	.skip 0x4
.endobj lbl_806AB334

# .sbss:0x3E8 | 0x806AB338 | size: 0x8
.obj lbl_806AB338, global
	.skip 0x8
.endobj lbl_806AB338

# .sbss:0x3F0 | 0x806AB340 | size: 0x8
.obj lbl_806AB340, global
	.skip 0x8
.endobj lbl_806AB340

# .sbss:0x3F8 | 0x806AB348 | size: 0x4
.obj lbl_806AB348, global
	.skip 0x4
.endobj lbl_806AB348

# .sbss:0x3FC | 0x806AB34C | size: 0x4
.obj lbl_806AB34C, global
	.skip 0x4
.endobj lbl_806AB34C

# .sbss:0x400 | 0x806AB350 | size: 0x8
.obj lbl_806AB350, global
	.skip 0x8
.endobj lbl_806AB350

# .sbss:0x408 | 0x806AB358 | size: 0x8
.obj lbl_806AB358, global
	.skip 0x8
.endobj lbl_806AB358

# .sbss:0x410 | 0x806AB360 | size: 0x8
.obj lbl_806AB360, global
	.skip 0x8
.endobj lbl_806AB360

# .sbss:0x418 | 0x806AB368 | size: 0x8
.obj lbl_806AB368, global
	.skip 0x8
.endobj lbl_806AB368

# .sbss:0x420 | 0x806AB370 | size: 0x4
.obj lbl_806AB370, global
	.skip 0x4
.endobj lbl_806AB370

# .sbss:0x424 | 0x806AB374 | size: 0x4
.obj lbl_806AB374, global
	.skip 0x4
.endobj lbl_806AB374

# .sbss:0x428 | 0x806AB378 | size: 0x4
.obj lbl_806AB378, global
	.skip 0x4
.endobj lbl_806AB378

# .sbss:0x42C | 0x806AB37C | size: 0x4
.obj lbl_806AB37C, global
	.skip 0x4
.endobj lbl_806AB37C

# .sbss:0x430 | 0x806AB380 | size: 0x8
.obj lbl_806AB380, global
	.skip 0x8
.endobj lbl_806AB380

# .sbss:0x438 | 0x806AB388 | size: 0x8
.obj lbl_806AB388, global
	.skip 0x8
.endobj lbl_806AB388

# .sbss:0x440 | 0x806AB390 | size: 0x8
.obj lbl_806AB390, global
	.skip 0x8
.endobj lbl_806AB390

# .sbss:0x448 | 0x806AB398 | size: 0x4
.obj lbl_806AB398, global
	.skip 0x4
.endobj lbl_806AB398

# .sbss:0x44C | 0x806AB39C | size: 0x4
.obj lbl_806AB39C, global
	.skip 0x4
.endobj lbl_806AB39C

# .sbss:0x450 | 0x806AB3A0 | size: 0x8
.obj lbl_806AB3A0, global
	.skip 0x8
.endobj lbl_806AB3A0

# .sbss:0x458 | 0x806AB3A8 | size: 0x8
.obj lbl_806AB3A8, global
	.skip 0x8
.endobj lbl_806AB3A8

# .sbss:0x460 | 0x806AB3B0 | size: 0x8
.obj lbl_806AB3B0, global
	.skip 0x8
.endobj lbl_806AB3B0

# .sbss:0x468 | 0x806AB3B8 | size: 0x4
.obj lbl_806AB3B8, global
	.skip 0x4
.endobj lbl_806AB3B8

# .sbss:0x46C | 0x806AB3BC | size: 0x4
.obj lbl_806AB3BC, global
	.skip 0x4
.endobj lbl_806AB3BC

# .sbss:0x470 | 0x806AB3C0 | size: 0x8
.obj lbl_806AB3C0, global
	.skip 0x8
.endobj lbl_806AB3C0

# .sbss:0x478 | 0x806AB3C8 | size: 0x8
.obj lbl_806AB3C8, global
	.skip 0x8
.endobj lbl_806AB3C8

# .sbss:0x480 | 0x806AB3D0 | size: 0x1
.obj lbl_806AB3D0, global
	.skip 0x1
.endobj lbl_806AB3D0

# .sbss:0x481 | 0x806AB3D1 | size: 0x1
.obj lbl_806AB3D1, global
	.skip 0x1
.endobj lbl_806AB3D1

# .sbss:0x482 | 0x806AB3D2 | size: 0x2
.obj gap_10_806AB3D2_sbss, global
.hidden gap_10_806AB3D2_sbss
	.skip 0x2
.endobj gap_10_806AB3D2_sbss

# .sbss:0x484 | 0x806AB3D4 | size: 0x4
.obj lbl_806AB3D4, global
	.skip 0x4
.endobj lbl_806AB3D4

# .sbss:0x488 | 0x806AB3D8 | size: 0x4
.obj lbl_806AB3D8, global
	.skip 0x4
.endobj lbl_806AB3D8

# .sbss:0x48C | 0x806AB3DC | size: 0x1
.obj lbl_806AB3DC, global
	.skip 0x1
.endobj lbl_806AB3DC

# .sbss:0x48D | 0x806AB3DD | size: 0x3
.obj gap_10_806AB3DD_sbss, global
.hidden gap_10_806AB3DD_sbss
	.skip 0x3
.endobj gap_10_806AB3DD_sbss

# .sbss:0x490 | 0x806AB3E0 | size: 0x4
.obj lbl_806AB3E0, global
	.skip 0x4
.endobj lbl_806AB3E0

# .sbss:0x494 | 0x806AB3E4 | size: 0x4
.obj lbl_806AB3E4, global
	.skip 0x4
.endobj lbl_806AB3E4

# .sbss:0x498 | 0x806AB3E8 | size: 0x4
.obj lbl_806AB3E8, global
	.skip 0x4
.endobj lbl_806AB3E8

# .sbss:0x49C | 0x806AB3EC | size: 0x4
.obj lbl_806AB3EC, global
	.skip 0x4
.endobj lbl_806AB3EC

# .sbss:0x4A0 | 0x806AB3F0 | size: 0x1
.obj lbl_806AB3F0, global
	.skip 0x1
.endobj lbl_806AB3F0

# .sbss:0x4A1 | 0x806AB3F1 | size: 0x3
.obj gap_10_806AB3F1_sbss, global
.hidden gap_10_806AB3F1_sbss
	.skip 0x3
.endobj gap_10_806AB3F1_sbss

# .sbss:0x4A4 | 0x806AB3F4 | size: 0x4
.obj lbl_806AB3F4, global
	.skip 0x4
.endobj lbl_806AB3F4

# .sbss:0x4A8 | 0x806AB3F8 | size: 0x4
.obj lbl_806AB3F8, global
	.skip 0x4
.endobj lbl_806AB3F8

# .sbss:0x4AC | 0x806AB3FC | size: 0x4
.obj lbl_806AB3FC, global
	.skip 0x4
.endobj lbl_806AB3FC

# .sbss:0x4B0 | 0x806AB400 | size: 0x8
.obj lbl_806AB400, global
	.skip 0x8
.endobj lbl_806AB400

# .sbss:0x4B8 | 0x806AB408 | size: 0x4
.obj lbl_806AB408, global
	.skip 0x4
.endobj lbl_806AB408

# .sbss:0x4BC | 0x806AB40C | size: 0x4
.obj lbl_806AB40C, global
	.skip 0x4
.endobj lbl_806AB40C

# .sbss:0x4C0 | 0x806AB410 | size: 0x1
.obj lbl_806AB410, global
	.skip 0x1
.endobj lbl_806AB410

# .sbss:0x4C1 | 0x806AB411 | size: 0x3
.obj gap_10_806AB411_sbss, global
.hidden gap_10_806AB411_sbss
	.skip 0x3
.endobj gap_10_806AB411_sbss
