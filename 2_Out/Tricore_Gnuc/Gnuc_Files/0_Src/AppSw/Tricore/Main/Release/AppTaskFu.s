	.file	"AppTaskFu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.appTaskfu_init,"ax",@progbits
	.align 1
	.global	appTaskfu_init
	.type	appTaskfu_init, @function
appTaskfu_init:
.LFB860:
	.file 1 "0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.loc 1 13 0
	.loc 1 14 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 15 0
	call	BasicPort_init
.LVL1:
	.loc 1 16 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 17 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 18 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 19 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 21 0
	mov	%d4, 1
	call	tft_app_init
.LVL6:
	.loc 1 22 0
	call	perf_meas_init
.LVL7:
	.loc 1 25 0
	j	IR_Controller_initialize
.LVL8:
.LFE860:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB861:
	.loc 1 32 0
	.loc 1 33 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 34 0
	mov	%d2, 1000
	.loc 1 33 0
	add	%d15, 1
	.loc 1 34 0
	jne	%d15, %d2, .L5
	.loc 1 35 0
	mov	%d15, 0
.L5:
	st.w	[%a15] lo:task_cnt_1m, %d15
	ret
.LFE861:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB862:
	.loc 1 42 0
	.loc 1 43 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 44 0
	mov	%d2, 1000
	.loc 1 43 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 44 0
	jeq	%d15, %d2, .L12
	.loc 1 48 0
	jz.t	%d15, 0, .L9
	ret
.L12:
	.loc 1 45 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L9:
	.loc 1 55 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 49 0
	call	BasicLineScan_run
.LVL9:
	.loc 1 50 0
	call	InfineonRacer_detectLane
.LVL10:
	.loc 1 51 0
	call	BasicPort_run
.LVL11:
	.loc 1 52 0
	call	BasicGtmTom_run
.LVL12:
	.loc 1 53 0
	call	BasicVadcBgScan_run
.LVL13:
	.loc 1 55 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L13
	.loc 1 62 0
	j	AsclinShellInterface_runLineScan
.LVL14:
.L13:
	.loc 1 57 0
	call	IR_Controller_step
.LVL15:
	.loc 1 62 0
	j	AsclinShellInterface_runLineScan
.LVL16:
.LFE862:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB863:
	.loc 1 68 0
	.loc 1 69 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 70 0
	mov	%d2, 1000
	.loc 1 69 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_100m, %d15
	.loc 1 70 0
	jeq	%d15, %d2, .L18
	.loc 1 73 0
	jz.t	%d15, 0, .L16
	ret
.L18:
	.loc 1 71 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_100m, %d15
.L16:
	.loc 1 74 0
	j	tft_app_run
.LVL17:
.LFE863:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB864:
	.loc 1 79 0
	.loc 1 80 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 81 0
	mov	%d2, 1000
	.loc 1 80 0
	add	%d15, 1
	.loc 1 81 0
	jne	%d15, %d2, .L22
	.loc 1 82 0
	mov	%d15, 0
.L22:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE864:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB865:
	.loc 1 87 0
	.loc 1 88 0
	call	AsclinShellInterface_run
.LVL18:
	.loc 1 89 0
	j	perf_meas_idle
.LVL19:
.LFE865:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB866:
	.loc 1 93 0
	.loc 1 94 0
	j	BasicGpt12Enc_run
.LVL20:
.LFE866:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	task_flag_1000m
.section .bss.task_flag_1000m,"aw",@nobits
	.type	task_flag_1000m, @object
	.size	task_flag_1000m, 1
task_flag_1000m:
	.zero	1
	.global	task_flag_100m
.section .bss.task_flag_100m,"aw",@nobits
	.type	task_flag_100m, @object
	.size	task_flag_100m, 1
task_flag_100m:
	.zero	1
	.global	task_flag_10m
.section .bss.task_flag_10m,"aw",@nobits
	.type	task_flag_10m, @object
	.size	task_flag_10m, 1
task_flag_10m:
	.zero	1
	.global	task_flag_1m
.section .bss.task_flag_1m,"aw",@nobits
	.type	task_flag_1m, @object
	.size	task_flag_1m, 1
task_flag_1m:
	.zero	1
.section .bss.task_cnt_1000m,"aw",@nobits
	.align 2
	.type	task_cnt_1000m, @object
	.size	task_cnt_1000m, 4
task_cnt_1000m:
	.zero	4
.section .bss.task_cnt_100m,"aw",@nobits
	.align 2
	.type	task_cnt_100m, @object
	.size	task_cnt_100m, 4
task_cnt_100m:
	.zero	4
.section .bss.task_cnt_10m,"aw",@nobits
	.align 2
	.type	task_cnt_10m, @object
	.size	task_cnt_10m, 4
task_cnt_10m:
	.zero	4
.section .bss.task_cnt_1m,"aw",@nobits
	.align 2
	.type	task_cnt_1m, @object
	.size	task_cnt_1m, 4
task_cnt_1m:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB860
	.uaword	.LFE860-.LFB860
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB861
	.uaword	.LFE861-.LFB861
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB862
	.uaword	.LFE862-.LFB862
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB863
	.uaword	.LFE863-.LFB863
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB864
	.uaword	.LFE864-.LFB864
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB865
	.uaword	.LFE865-.LFB865
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB866
	.uaword	.LFE866-.LFB866
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 7 "0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 10 "0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 11 "0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 12 "0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 13 "0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 15 "0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
	.file 16 "0_Src/AppSw/Tricore/TftApp/Perf_Meas.h"
	.file 17 "0_Src/AppSw/Tricore/Algorithm/ert/IR_Controller.h"
	.file 18 "0_Src/AppSw/Tricore/TftApp/tft_app.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe09
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\hyunii\\\\Documents\\\\InfineonRacer\\\\src\\\\InfineonRacer_TC23A"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x188
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x194
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1cc
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x25a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x295
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x37
	.uaword	0x24c
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x44
	.uaword	0x1dd
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x77
	.uaword	0x2e1
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x79
	.uaword	0x28f
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x7a
	.uaword	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x7b
	.uaword	0x2bb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x74
	.uaword	0x345
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x61
	.uaword	0x28d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x37b
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x4fa
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x345
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x23d
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x546
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x58d
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5a8
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x5e1
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x68e
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6b2
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x6ec
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x72f
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x753
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7bc
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x78c
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x7da
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x7fa
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x81b
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x61a
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x653
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x839
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x51b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x521
	.uleb128 0xc
	.uaword	0x23d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x51b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x562
	.uleb128 0x5
	.byte	0x4
	.uaword	0x568
	.uleb128 0xd
	.byte	0x1
	.uaword	0x23d
	.uaword	0x587
	.uleb128 0xe
	.uaword	0x345
	.uleb128 0xe
	.uaword	0x28d
	.uleb128 0xe
	.uaword	0x587
	.uleb128 0xe
	.uaword	0x296
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x562
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x5cb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5d1
	.uleb128 0xd
	.byte	0x1
	.uaword	0x20e
	.uaword	0x5e1
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x604
	.uleb128 0x5
	.byte	0x4
	.uaword	0x60a
	.uleb128 0xd
	.byte	0x1
	.uaword	0x526
	.uaword	0x61a
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x63d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x643
	.uleb128 0xd
	.byte	0x1
	.uaword	0x21c
	.uaword	0x653
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x678
	.uleb128 0x5
	.byte	0x4
	.uaword	0x67e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x296
	.uaword	0x68e
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x5cb
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x6d6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6dc
	.uleb128 0xd
	.byte	0x1
	.uaword	0x4fa
	.uaword	0x6ec
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x70f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x715
	.uleb128 0xd
	.byte	0x1
	.uaword	0x23d
	.uaword	0x72f
	.uleb128 0xe
	.uaword	0x345
	.uleb128 0xe
	.uaword	0x2aa
	.uleb128 0xe
	.uaword	0x296
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x70f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x771
	.uleb128 0x5
	.byte	0x4
	.uaword	0x777
	.uleb128 0xd
	.byte	0x1
	.uaword	0x23d
	.uaword	0x78c
	.uleb128 0xe
	.uaword	0x345
	.uleb128 0xe
	.uaword	0x296
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7aa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7b0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7bc
	.uleb128 0xe
	.uaword	0x345
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7aa
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x26
	.uaword	0x888
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x6
	.byte	0x28
	.uaword	0x888
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x6
	.byte	0x29
	.uaword	0x1dd
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x365
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x6
	.byte	0x2a
	.uaword	0x85e
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0x1b
	.uaword	0x8e0
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x7
	.byte	0x1c
	.uaword	0x20e
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x7
	.byte	0x1d
	.uaword	0x20e
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x7
	.byte	0x1e
	.uaword	0x23d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x7
	.byte	0x1f
	.uaword	0x8a1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	.LFB860
	.uaword	.LFE860
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x977
	.uleb128 0x11
	.uaword	.LVL0
	.uaword	0xc09
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xc22
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0xc37
	.uleb128 0x11
	.uaword	.LVL3
	.uaword	0xc4e
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0xc69
	.uleb128 0x11
	.uaword	.LVL5
	.uaword	0xc82
	.uleb128 0x12
	.uaword	.LVL6
	.uaword	0xca2
	.uaword	0x963
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.uaword	.LVL7
	.uaword	0xcbf
	.uleb128 0x14
	.uaword	.LVL8
	.byte	0x1
	.uaword	0xcd4
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB861
	.uaword	.LFE861
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	.LFB862
	.uaword	.LFE862
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa03
	.uleb128 0x11
	.uaword	.LVL9
	.uaword	0xcf3
	.uleb128 0x11
	.uaword	.LVL10
	.uaword	0xd0b
	.uleb128 0x11
	.uaword	.LVL11
	.uaword	0xd2a
	.uleb128 0x11
	.uaword	.LVL12
	.uaword	0xd3e
	.uleb128 0x11
	.uaword	.LVL13
	.uaword	0xd54
	.uleb128 0x14
	.uaword	.LVL14
	.byte	0x1
	.uaword	0xd6e
	.uleb128 0x11
	.uaword	.LVL15
	.uaword	0xd95
	.uleb128 0x14
	.uaword	.LVL16
	.byte	0x1
	.uaword	0xd6e
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB863
	.uaword	.LFE863
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa32
	.uleb128 0x14
	.uaword	.LVL17
	.byte	0x1
	.uaword	0xdae
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB864
	.uaword	.LFE864
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB865
	.uaword	.LFE865
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa8a
	.uleb128 0x11
	.uaword	.LVL18
	.uaword	0xdc0
	.uleb128 0x14
	.uaword	.LVL19
	.byte	0x1
	.uaword	0xddf
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB866
	.uaword	.LFE866
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xab6
	.uleb128 0x14
	.uaword	.LVL20
	.byte	0x1
	.uaword	0xdf4
	.byte	0
	.uleb128 0x16
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x16
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x16
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x16
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x17
	.uaword	0x2e1
	.uaword	0xb30
	.uleb128 0x18
	.uaword	0x30b
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x90
	.uaword	0xb4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0xb20
	.uleb128 0x19
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x79
	.uaword	0x21c
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Ifx_g_console"
	.byte	0x6
	.byte	0x2c
	.uaword	0x88e
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"IR_Ctrl"
	.byte	0x7
	.byte	0x24
	.uaword	0x8e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x1b
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x1b
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x1b
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xa
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xb
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xc
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"tft_app_init"
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.uaword	0xcbf
	.uleb128 0xe
	.uaword	0x1bf
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"perf_meas_init"
	.byte	0x10
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_Controller_initialize"
	.byte	0x11
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xa
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x7
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xb
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xc
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0xf
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_Controller_step"
	.byte	0x11
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"tft_app_run"
	.byte	0x12
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0xf
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"perf_meas_idle"
	.byte	0x10
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0xe
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB860
	.uaword	.LFE860-.LFB860
	.uaword	.LFB861
	.uaword	.LFE861-.LFB861
	.uaword	.LFB862
	.uaword	.LFE862-.LFB862
	.uaword	.LFB863
	.uaword	.LFE863-.LFB863
	.uaword	.LFB864
	.uaword	.LFE864-.LFB864
	.uaword	.LFB865
	.uaword	.LFE865-.LFB865
	.uaword	.LFB866
	.uaword	.LFE866-.LFB866
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB860
	.uaword	.LFE860
	.uaword	.LFB861
	.uaword	.LFE861
	.uaword	.LFB862
	.uaword	.LFE862
	.uaword	.LFB863
	.uaword	.LFE863
	.uaword	.LFB864
	.uaword	.LFE864
	.uaword	.LFB865
	.uaword	.LFE865
	.uaword	.LFB866
	.uaword	.LFE866
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	perf_meas_idle,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	tft_app_run,STT_FUNC,0
	.extern	IR_Controller_step,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	InfineonRacer_detectLane,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_Controller_initialize,STT_FUNC,0
	.extern	perf_meas_init,STT_FUNC,0
	.extern	tft_app_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
