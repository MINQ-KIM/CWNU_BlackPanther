	.file	"IfxStm_Timer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStm_Timer_getFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getFrequency
	.type	IfxStm_Timer_getFrequency, @function
IfxStm_Timer_getFrequency:
.LFB278:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Timer/IfxStm_Timer.c"
	.loc 1 63 0
.LVL0:
.LBB57:
.LBB58:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
	.loc 2 420 0
	ld.w	%d15, [%a4]0
	utof	%d2, %d15
	ld.w	%d15, [%a4] 8
	div.f	%d15, %d2, %d15
.LBE58:
.LBE57:
	.loc 1 65 0
	movh	%d2, 16256
	div.f	%d2, %d2, %d15
	ret
.LFE278:
	.size	IfxStm_Timer_getFrequency, .-IfxStm_Timer_getFrequency
.section .text.IfxStm_Timer_getInputFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getInputFrequency
	.type	IfxStm_Timer_getInputFrequency, @function
IfxStm_Timer_getInputFrequency:
.LFB279:
	.loc 1 69 0
.LVL1:
	.loc 1 71 0
	ld.w	%d2, [%a4] 8
	ret
.LFE279:
	.size	IfxStm_Timer_getInputFrequency, .-IfxStm_Timer_getInputFrequency
.section .text.IfxStm_Timer_getPeriod,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getPeriod
	.type	IfxStm_Timer_getPeriod, @function
IfxStm_Timer_getPeriod:
.LFB280:
	.loc 1 75 0
.LVL2:
	.loc 1 77 0
	ld.w	%d2, [%a4]0
	ret
.LFE280:
	.size	IfxStm_Timer_getPeriod, .-IfxStm_Timer_getPeriod
.section .text.IfxStm_Timer_getResolution,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getResolution
	.type	IfxStm_Timer_getResolution, @function
IfxStm_Timer_getResolution:
.LFB281:
	.loc 1 81 0
.LVL3:
	.loc 1 82 0
	ld.w	%d15, [%a4] 8
	.loc 1 83 0
	movh	%d2, 16256
	div.f	%d2, %d2, %d15
	ret
.LFE281:
	.size	IfxStm_Timer_getResolution, .-IfxStm_Timer_getResolution
.section .text.IfxStm_Timer_setFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setFrequency
	.type	IfxStm_Timer_setFrequency, @function
IfxStm_Timer_setFrequency:
.LFB283:
	.loc 1 103 0
.LVL4:
	.loc 1 104 0
	movh	%d15, 16256
	div.f	%d4, %d15, %d4
.LVL5:
.LBB59:
.LBB60:
	.loc 2 431 0
	ld.w	%d15, [%a4] 8
.LBE60:
.LBE59:
	.loc 1 107 0
	mov	%d2, 1
.LBB62:
.LBB61:
	.loc 2 431 0
	mul.f	%d4, %d4, %d15
.LVL6:
	ftouz	%d4, %d4
.LVL7:
	st.w	[%a4]0, %d4
.LBE61:
.LBE62:
	.loc 1 107 0
	ret
.LFE283:
	.size	IfxStm_Timer_setFrequency, .-IfxStm_Timer_setFrequency
.section .text.IfxStm_Timer_setPeriod,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setPeriod
	.type	IfxStm_Timer_setPeriod, @function
IfxStm_Timer_setPeriod:
.LFB284:
	.loc 1 111 0
.LVL8:
	.loc 1 112 0
	st.w	[%a4]0, %d4
	.loc 1 115 0
	mov	%d2, 1
	ret
.LFE284:
	.size	IfxStm_Timer_setPeriod, .-IfxStm_Timer_setPeriod
.section .text.IfxStm_Timer_setSingleMode,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setSingleMode
	.type	IfxStm_Timer_setSingleMode, @function
IfxStm_Timer_setSingleMode:
.LFB285:
	.loc 1 119 0
.LVL9:
	.loc 1 120 0
	st.b	[%a4] 13, %d4
	ret
.LFE285:
	.size	IfxStm_Timer_setSingleMode, .-IfxStm_Timer_setSingleMode
.section .text.IfxStm_Timer_stop,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_stop
	.type	IfxStm_Timer_stop, @function
IfxStm_Timer_stop:
.LFB287:
	.loc 1 150 0
.LVL10:
	.loc 1 150 0
	mov.aa	%a15, %a4
	.loc 1 151 0
	ld.a	%a4, [%a4] 16
.LVL11:
	ld.bu	%d4, [%a15] 20
	j	IfxStm_disableComparatorInterrupt
.LVL12:
.LFE287:
	.size	IfxStm_Timer_stop, .-IfxStm_Timer_stop
.section .text.IfxStm_Timer_run,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_run
	.type	IfxStm_Timer_run, @function
IfxStm_Timer_run:
.LFB282:
	.loc 1 87 0
.LVL13:
	.loc 1 87 0
	mov.aa	%a15, %a4
.LBB63:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 629 0
#APP
	# 629 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d6, LO:0xFE2C
	# 0 "" 2
.LVL14:
#NO_APP
.LBE67:
	.loc 3 630 0
	extr.u	%d6, %d6, 15, 1
.LVL15:
.LBE66:
.LBE65:
	.loc 3 638 0
#APP
	# 638 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB68:
.LBB69:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 1405 0
#APP
	# 1405 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
.LBE69:
.LBE68:
.LBE64:
.LBE63:
	.loc 1 92 0
	ld.a	%a2, [%a4] 16
.LVL16:
.LBB70:
.LBB71:
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
	.loc 5 530 0
	ld.w	%d4, [%a2] 16
.LVL17:
	.loc 5 531 0
	ld.w	%d7, [%a2] 44
	.loc 5 530 0
	mul.u	%e2, %d4, 1
.LVL18:
	.loc 5 531 0
	or	%d5, %d4, 0
	or	%d15, %d7, %d3
.LVL19:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 3 908 0
	jz	%d6, .L10
	.loc 3 910 0
#APP
	# 910 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
	ld.a	%a2, [%a4] 16
.LVL20:
.L10:
.LBE73:
.LBE72:
	.loc 1 95 0
	ld.bu	%d4, [%a15] 28
	ge	%d2, %d4, 32
	seln	%d3, %d2, %d5, %d15
	seln	%d15, %d2, %d15, 0
.LVL21:
	and	%d2, %d4, 31
	rsub	%d4, %d2, 32
	dextr	%d15, %d15, %d3, %d4
	sel	%d15, %d2, %d15, %d3
	ld.w	%d2, [%a15]0
	add	%d15, %d2
.LBB74:
.LBB75:
	.loc 5 659 0
	ld.bu	%d2, [%a15] 20
	addi	%d2, %d2, 12
	addsc.a	%a2, %a2, %d2, 2
.LBE75:
.LBE74:
	.loc 1 95 0
	st.w	[%a15] 24, %d15
.LVL22:
.LBB77:
.LBB76:
	.loc 5 659 0
	st.w	[%a2]0, %d15
.LVL23:
.LBE76:
.LBE77:
	.loc 1 98 0
	ld.a	%a4, [%a15] 16
.LVL24:
	ld.bu	%d4, [%a15] 20
	j	IfxStm_enableComparatorInterrupt
.LVL25:
.LFE282:
	.size	IfxStm_Timer_run, .-IfxStm_Timer_run
.section .text.IfxStm_Timer_updateInputFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_updateInputFrequency
	.type	IfxStm_Timer_updateInputFrequency, @function
IfxStm_Timer_updateInputFrequency:
.LFB288:
	.loc 1 156 0
.LVL26:
	.loc 1 156 0
	mov.aa	%a15, %a4
.LVL27:
.LBB78:
.LBB79:
.LBB80:
.LBB81:
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 6 1074 0
	call	IfxScuCcu_getSourceFrequency
.LVL28:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	ld.w	%d15, [%a2]0
.LBE81:
.LBE80:
.LBE79:
.LBE78:
	.loc 1 159 0
	ld.bu	%d3, [%a15] 28
.LBB85:
.LBB84:
.LBB83:
.LBB82:
	.loc 6 1074 0
	extr.u	%d15, %d15, 8, 4
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LBE82:
.LBE83:
.LBE84:
.LBE85:
	.loc 1 159 0
	mov	%d15, 1
	sh	%d15, %d15, %d3
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
	st.w	[%a15] 8, %d2
	ret
.LFE288:
	.size	IfxStm_Timer_updateInputFrequency, .-IfxStm_Timer_updateInputFrequency
.section .text.IfxStm_Timer_acknowledgeTimerIrq,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_acknowledgeTimerIrq
	.type	IfxStm_Timer_acknowledgeTimerIrq, @function
IfxStm_Timer_acknowledgeTimerIrq:
.LFB277:
	.loc 1 37 0
.LVL29:
	.loc 1 37 0
	mov.aa	%a15, %a4
	.loc 1 39 0
	ld.a	%a4, [%a4] 16
.LVL30:
	ld.bu	%d4, [%a15] 20
	call	IfxStm_isCompareFlagSet
.LVL31:
	mov	%d15, %d2
.LVL32:
	.loc 1 41 0
	jnz	%d2, .L22
	.loc 1 59 0
	mov	%d2, %d15
	ret
.L22:
	.loc 1 43 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_clearCompareFlag
.LVL33:
	.loc 1 45 0
	ld.bu	%d2, [%a15] 13
	jnz	%d2, .L18
	.loc 1 47 0
	ld.w	%d3, [%a15] 24
	ld.w	%d2, [%a15]0
	.loc 1 48 0
	ld.a	%a2, [%a15] 16
.LVL34:
	.loc 1 47 0
	add	%d2, %d3
.LVL35:
.LBB92:
.LBB93:
	.loc 5 659 0
	ld.bu	%d3, [%a15] 20
	addi	%d3, %d3, 12
.LBE93:
.LBE92:
	.loc 1 47 0
	st.w	[%a15] 24, %d2
.LBB95:
.LBB94:
	.loc 5 659 0
	addsc.a	%a15, %a2, %d3, 2
.LVL36:
	st.w	[%a15]0, %d2
.LBE94:
.LBE95:
	.loc 1 59 0
	mov	%d2, %d15
.LVL37:
	ret
.LVL38:
.L18:
.LBB96:
.LBB97:
	.loc 1 52 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_disableComparatorInterrupt
.LVL39:
.LBE97:
.LBE96:
	.loc 1 59 0
	mov	%d2, %d15
	ret
.LFE277:
	.size	IfxStm_Timer_acknowledgeTimerIrq, .-IfxStm_Timer_acknowledgeTimerIrq
.section .text.IfxStm_Timer_stdIfTimerInit,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_stdIfTimerInit
	.type	IfxStm_Timer_stdIfTimerInit, @function
IfxStm_Timer_stdIfTimerInit:
.LFB286:
	.loc 1 125 0
.LVL40:
	.loc 1 128 0
	movh	%d15, hi:IfxStm_Timer_getFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_getFrequency
	.loc 1 125 0
	mov.aa	%a15, %a4
	.loc 1 126 0
	call	IfxStdIf_Timer_initStdIf
.LVL41:
	.loc 1 128 0
	st.w	[%a15] 4, %d15
	.loc 1 129 0
	movh	%d15, hi:IfxStm_Timer_getPeriod
	addi	%d15, %d15, lo:IfxStm_Timer_getPeriod
	.loc 1 146 0
	mov	%d2, 1
	.loc 1 129 0
	st.w	[%a15] 8, %d15
	.loc 1 130 0
	movh	%d15, hi:IfxStm_Timer_getResolution
	addi	%d15, %d15, lo:IfxStm_Timer_getResolution
	st.w	[%a15] 12, %d15
	.loc 1 132 0
	movh	%d15, hi:IfxStm_Timer_setFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_setFrequency
	st.w	[%a15] 20, %d15
	.loc 1 133 0
	movh	%d15, hi:IfxStm_Timer_updateInputFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_updateInputFrequency
	st.w	[%a15] 24, %d15
	.loc 1 136 0
	movh	%d15, hi:IfxStm_Timer_getInputFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_getInputFrequency
	st.w	[%a15] 36, %d15
	.loc 1 137 0
	movh	%d15, hi:IfxStm_Timer_run
	addi	%d15, %d15, lo:IfxStm_Timer_run
	st.w	[%a15] 40, %d15
	.loc 1 138 0
	movh	%d15, hi:IfxStm_Timer_setPeriod
	addi	%d15, %d15, lo:IfxStm_Timer_setPeriod
	st.w	[%a15] 44, %d15
	.loc 1 139 0
	movh	%d15, hi:IfxStm_Timer_setSingleMode
	addi	%d15, %d15, lo:IfxStm_Timer_setSingleMode
	st.w	[%a15] 48, %d15
	.loc 1 141 0
	movh	%d15, hi:IfxStm_Timer_stop
	addi	%d15, %d15, lo:IfxStm_Timer_stop
	st.w	[%a15] 56, %d15
	.loc 1 142 0
	movh	%d15, hi:IfxStm_Timer_acknowledgeTimerIrq
	addi	%d15, %d15, lo:IfxStm_Timer_acknowledgeTimerIrq
	st.w	[%a15] 60, %d15
	.loc 1 146 0
	ret
.LFE286:
	.size	IfxStm_Timer_stdIfTimerInit, .-IfxStm_Timer_stdIfTimerInit
.section .rodata,"a",@progbits
.LC0:
	.string	"config->base.countDir == IfxStdIf_Timer_CountDir_up"
.LC1:
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Timer/IfxStm_Timer.c"
.LC2:
	.string	"config->base.trigger.enabled == FALSE"
.LC3:
	.string	"config->base.startOffset == 0"
	.global	__extendsfdf2
	.global	__divdf3
	.global	__gtdf2
.LC4:
	.string	"FALSE"
.section .text.IfxStm_Timer_init,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_init
	.type	IfxStm_Timer_init, @function
IfxStm_Timer_init:
.LFB289:
	.loc 1 164 0
.LVL42:
	.loc 1 168 0
	ld.bu	%d15, [%a5] 28
	.loc 1 164 0
	mov.aa	%a15, %a4
.LVL43:
	mov.aa	%a12, %a5
	.loc 1 168 0
	jz	%d15, .L25
	.loc 1 168 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L25
	.loc 1 168 0 discriminator 2
	movh.a	%a4, hi:.LC0
.LVL44:
	movh.a	%a5, hi:.LC1
.LVL45:
	movh.a	%a6, hi:__func__.8456
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 168
	lea	%a6, [%a6] lo:__func__.8456
	call	Ifx_Assert_doLevel
.LVL46:
.L25:
	.loc 1 170 0 is_stmt 1
	ld.w	%d15, [%a12] 36
	st.w	[%a15] 16, %d15
	.loc 1 171 0
	ld.bu	%d15, [%a12] 40
	st.b	[%a15] 20, %d15
	.loc 1 173 0
	ld.bu	%d15, [%a12] 12
	st.b	[%a15] 4, %d15
	.loc 1 174 0
	mov	%d15, 0
	st.b	[%a15] 13, %d15
	.loc 1 176 0
	ld.bu	%d15, [%a12] 12
	jz	%d15, .L26
	.loc 1 176 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L28
	.loc 1 176 0 discriminator 2
	movh.a	%a4, hi:.LC2
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.8456
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC2
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 176
	lea	%a6, [%a6] lo:__func__.8456
	call	Ifx_Assert_doLevel
.LVL47:
.L26:
	.loc 1 177 0 is_stmt 1
	ld.w	%d2, [%a12] 32
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	jnz.t	%d15, 1, .L28
	.loc 1 177 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L28
	.loc 1 177 0 discriminator 2
	movh.a	%a4, hi:.LC3
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.8456
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC3
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 177
	lea	%a6, [%a6] lo:__func__.8456
	call	Ifx_Assert_doLevel
.LVL48:
.L28:
	.loc 1 183 0 is_stmt 1
	ld.w	%d15, [%a12] 8
.LVL49:
.LBB98:
.LBB99:
.LBB100:
.LBB101:
	.loc 6 1074 0
	call	IfxScuCcu_getSourceFrequency
.LVL50:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	ld.w	%d3, [%a2]0
	extr.u	%d3, %d3, 8, 4
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LBE101:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 183 0
	mul.f	%d2, %d15, %d2
	ftouz	%d2, %d2
	clz	%d2, %d2
	and	%d2, %d2, 255
	.loc 1 185 0
	ne	%d15, %d2, 32
	jnz	%d15, .L30
	.loc 1 183 0
	mov	%d15, 0
	.loc 1 190 0
	mov.aa	%a4, %a15
	.loc 1 183 0
	st.b	[%a15] 28, %d15
	.loc 1 190 0
	call	IfxStm_Timer_updateInputFrequency
.LVL51:
	.loc 1 192 0
	ld.w	%d10, [%a12] 8
	mov	%d15, 0
	cmp.f	%d15, %d10, %d15
	jz.t	%d15, 2, .L49
.L32:
	.loc 1 192 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 8
	mov	%d4, %d15
	call	__extendsfdf2
.LVL52:
	imask	%e4, 0, 20, 10
	mov	%e6, %d3, %d2
	call	__divdf3
.LVL53:
	mov	%e8, %d3, %d2
	mov	%d4, %d10
	call	__extendsfdf2
.LVL54:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	.loc 1 165 0 is_stmt 1 discriminator 1
	mov	%d8, 1
	.loc 1 192 0 discriminator 1
	call	__gtdf2
.LVL55:
	jgtz	%d2, .L50
.LVL56:
.L33:
.LBB102:
.LBB103:
	.loc 1 104 0
	ld.w	%d2, [%a12]0
	movh	%d3, 16256
	div.f	%d3, %d3, %d2
.LVL57:
.LBE103:
.LBE102:
	.loc 1 205 0
	ld.bu	%d4, [%a15] 20
	.loc 1 202 0
	ld.a	%a4, [%a15] 16
.LBB113:
.LBB110:
.LBB104:
.LBB105:
	.loc 2 431 0
	mul.f	%d15, %d3, %d15
.LVL58:
.LBE105:
.LBE104:
.LBE110:
.LBE113:
	.loc 1 202 0
	ld.bu	%d5, [%a15] 28
.LBB114:
.LBB111:
.LBB108:
.LBB106:
	.loc 2 431 0
	ftouz	%d15, %d15
.LVL59:
.LBE106:
.LBE108:
.LBE111:
.LBE114:
	.loc 1 202 0
	mov	%d6, 31
	ne	%d7, %d4, 0
.LBB115:
.LBB112:
.LBB109:
.LBB107:
	.loc 2 431 0
	st.w	[%a15]0, %d15
.LVL60:
.LBE107:
.LBE109:
.LBE112:
.LBE115:
	.loc 1 202 0
	call	IfxStm_setCompareControl
.LVL61:
	.loc 1 208 0
	ld.hu	%d15, [%a12] 4
.LVL62:
	jz	%d15, .L35
.LBB116:
	.loc 1 211 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_clearCompareFlag
.LVL63:
	.loc 1 214 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a12] 40
	call	IfxStm_getSrcPointer
.LVL64:
.LBB117:
.LBB118:
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
	.loc 7 256 0
	ld.w	%d2, [%a2]0
	ld.bu	%d3, [%a12] 4
	andn	%d2, %d2, ~(-256)
	or	%d2, %d3
.LBE118:
.LBE117:
	.loc 1 215 0
	ld.bu	%d15, [%a12] 6
.LVL65:
.LBB122:
.LBB121:
	.loc 7 256 0
	st.w	[%a2]0, %d2
.LVL66:
	.loc 7 257 0
	ld.w	%d2, [%a2]0
	ins.t	%d15, %d2,11, %d15,0
.LVL67:
	st.w	[%a2]0, %d15
.LVL68:
.LBB119:
.LBB120:
	.loc 7 232 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a2]0, %d15
.LVL69:
.LBE120:
.LBE119:
.LBE121:
.LBE122:
.LBB123:
.LBB124:
	.loc 7 250 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a2]0, %d15
.LVL70:
.L35:
.LBE124:
.LBE123:
.LBE116:
	.loc 1 220 0
	mov	%d2, %d8
	ret
.LVL71:
.L30:
	.loc 1 187 0
	rsub	%d2, %d2, 31
	.loc 1 190 0
	mov.aa	%a4, %a15
	.loc 1 192 0
	mov	%d15, 0
	.loc 1 187 0
	st.b	[%a15] 28, %d2
	.loc 1 190 0
	call	IfxStm_Timer_updateInputFrequency
.LVL72:
	.loc 1 192 0
	ld.w	%d10, [%a12] 8
	cmp.f	%d15, %d10, %d15
	jnz.t	%d15, 2, .L32
.L49:
	ld.w	%d15, [%a15] 8
	.loc 1 165 0
	mov	%d8, 1
	j	.L33
.L50:
.LVL73:
	.loc 1 195 0
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d2, [%a2] lo:Assert_verboseLevel
	.loc 1 194 0
	mov	%d8, 0
	.loc 1 195 0
	jlt.u	%d2, 2, .L33
	.loc 1 195 0 is_stmt 0 discriminator 1
	movh.a	%a4, hi:.LC4
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.8456
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC4
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 195
	lea	%a6, [%a6] lo:__func__.8456
	call	Ifx_Assert_doLevel
.LVL74:
	ld.w	%d15, [%a15] 8
	j	.L33
.LFE289:
	.size	IfxStm_Timer_init, .-IfxStm_Timer_init
.section .text.IfxStm_Timer_initConfig,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_initConfig
	.type	IfxStm_Timer_initConfig, @function
IfxStm_Timer_initConfig:
.LFB290:
	.loc 1 224 0 is_stmt 1
.LVL75:
	.loc 1 227 0
	mov	%d15, 0
	.loc 1 224 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 225 0
	call	IfxStdIf_Timer_initConfig
.LVL76:
	.loc 1 226 0
	st.a	[%a15] 36, %a12
	.loc 1 227 0
	st.b	[%a15] 40, %d15
	ret
.LFE290:
	.size	IfxStm_Timer_initConfig, .-IfxStm_Timer_initConfig
.section .rodata.__func__.8456,"a",@progbits
	.type	__func__.8456, @object
	.size	__func__.8456, 18
__func__.8456:
	.string	"IfxStm_Timer_init"
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
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB279
	.uaword	.LFE279-.LFB279
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB280
	.uaword	.LFE280-.LFB280
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB281
	.uaword	.LFE281-.LFB281
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 10 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h"
	.file 11 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
	.file 12 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
	.file 13 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
	.file 14 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 15 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
	.file 16 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
	.file 17 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Timer/IfxStm_Timer.h"
	.file 18 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 19 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3813
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Timer/IfxStm_Timer.c"
	.string	"C:\\\\Users\\\\hyunii\\\\Documents\\\\InfineonRacer\\\\src\\\\InfineonRacer_TC23A"
	.uaword	.Ldebug_ranges0+0xa0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.byte	0x8
	.byte	0x59
	.uaword	0x20b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x8
	.byte	0x5b
	.uaword	0x237
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x8
	.byte	0x5c
	.uaword	0x1c7
	.uleb128 0x3
	.string	"uint32"
	.byte	0x8
	.byte	0x5d
	.uaword	0x1d3
	.uleb128 0x3
	.string	"float32"
	.byte	0x8
	.byte	0x5e
	.uaword	0x194
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x8
	.byte	0x68
	.uaword	0x20b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x9
	.byte	0x25
	.uaword	0x19d
	.uleb128 0x3
	.string	"pchar"
	.byte	0x9
	.byte	0x27
	.uaword	0x2bd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c3
	.uleb128 0x5
	.uaword	0x2c8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d8
	.uleb128 0x7
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x9
	.byte	0x4f
	.uaword	0x229
	.uleb128 0x3
	.string	"Ifx_TimerValue"
	.byte	0x9
	.byte	0x50
	.uaword	0x25b
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x77
	.uaword	0x329
	.uleb128 0x9
	.string	"module"
	.byte	0x9
	.byte	0x79
	.uaword	0x2d2
	.byte	0
	.uleb128 0x9
	.string	"index"
	.byte	0x9
	.byte	0x7a
	.uaword	0x24d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x9
	.byte	0x7b
	.uaword	0x303
	.uleb128 0xa
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x557
	.uleb128 0xb
	.string	"EN0"
	.byte	0xa
	.byte	0x2f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"EN1"
	.byte	0xa
	.byte	0x30
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EN2"
	.byte	0xa
	.byte	0x31
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"EN3"
	.byte	0xa
	.byte	0x32
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EN4"
	.byte	0xa
	.byte	0x33
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"EN5"
	.byte	0xa
	.byte	0x34
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"EN6"
	.byte	0xa
	.byte	0x35
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"EN7"
	.byte	0xa
	.byte	0x36
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EN8"
	.byte	0xa
	.byte	0x37
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"EN9"
	.byte	0xa
	.byte	0x38
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"EN10"
	.byte	0xa
	.byte	0x39
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EN11"
	.byte	0xa
	.byte	0x3a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"EN12"
	.byte	0xa
	.byte	0x3b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"EN13"
	.byte	0xa
	.byte	0x3c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"EN14"
	.byte	0xa
	.byte	0x3d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"EN15"
	.byte	0xa
	.byte	0x3e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EN16"
	.byte	0xa
	.byte	0x3f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"EN17"
	.byte	0xa
	.byte	0x40
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"EN18"
	.byte	0xa
	.byte	0x41
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"EN19"
	.byte	0xa
	.byte	0x42
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"EN20"
	.byte	0xa
	.byte	0x43
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"EN21"
	.byte	0xa
	.byte	0x44
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"EN22"
	.byte	0xa
	.byte	0x45
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"EN23"
	.byte	0xa
	.byte	0x46
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EN24"
	.byte	0xa
	.byte	0x47
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"EN25"
	.byte	0xa
	.byte	0x48
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"EN26"
	.byte	0xa
	.byte	0x49
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"EN27"
	.byte	0xa
	.byte	0x4a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EN28"
	.byte	0xa
	.byte	0x4b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"EN29"
	.byte	0xa
	.byte	0x4c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"EN30"
	.byte	0xa
	.byte	0x4d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"EN31"
	.byte	0xa
	.byte	0x4e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0xa
	.byte	0x4f
	.uaword	0x343
	.uleb128 0xa
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x52
	.uaword	0x59f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xa
	.byte	0x54
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0xa
	.byte	0x55
	.uaword	0x572
	.uleb128 0xa
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x58
	.uaword	0x5e4
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0xa
	.byte	0x5a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0xa
	.byte	0x5b
	.uaword	0x5ba
	.uleb128 0xa
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.uaword	0x628
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0xa
	.byte	0x60
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0xa
	.byte	0x61
	.uaword	0x5fc
	.uleb128 0xa
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x64
	.uaword	0x6ab
	.uleb128 0xb
	.string	"DISR"
	.byte	0xa
	.byte	0x66
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"DISS"
	.byte	0xa
	.byte	0x67
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0xa
	.byte	0x68
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"EDIS"
	.byte	0xa
	.byte	0x69
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0xa
	.byte	0x6a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0xa
	.byte	0x6b
	.uaword	0x642
	.uleb128 0xa
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6e
	.uaword	0x77d
	.uleb128 0xb
	.string	"MSIZE0"
	.byte	0xa
	.byte	0x70
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"reserved_5"
	.byte	0xa
	.byte	0x71
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MSTART0"
	.byte	0xa
	.byte	0x72
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0xa
	.byte	0x73
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MSIZE1"
	.byte	0xa
	.byte	0x74
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0xa
	.byte	0x75
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"MSTART1"
	.byte	0xa
	.byte	0x76
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"reserved_29"
	.byte	0xa
	.byte	0x77
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0xa
	.byte	0x78
	.uaword	0x6c3
	.uleb128 0xa
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x7b
	.uaword	0x7c4
	.uleb128 0xb
	.string	"CMPVAL"
	.byte	0xa
	.byte	0x7d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0xa
	.byte	0x7e
	.uaword	0x797
	.uleb128 0xa
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x81
	.uaword	0x88f
	.uleb128 0xb
	.string	"CMP0EN"
	.byte	0xa
	.byte	0x83
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CMP0IR"
	.byte	0xa
	.byte	0x84
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"CMP0OS"
	.byte	0xa
	.byte	0x85
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0xa
	.byte	0x86
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"CMP1EN"
	.byte	0xa
	.byte	0x87
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"CMP1IR"
	.byte	0xa
	.byte	0x88
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"CMP1OS"
	.byte	0xa
	.byte	0x89
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"reserved_7"
	.byte	0xa
	.byte	0x8a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0xa
	.byte	0x8b
	.uaword	0x7dc
	.uleb128 0xa
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x8e
	.uaword	0x8fb
	.uleb128 0xb
	.string	"MODREV"
	.byte	0xa
	.byte	0x90
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0xa
	.byte	0x91
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0xa
	.byte	0x92
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0xa
	.byte	0x93
	.uaword	0x8a7
	.uleb128 0xa
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x96
	.uaword	0x989
	.uleb128 0xb
	.string	"CMP0IRR"
	.byte	0xa
	.byte	0x98
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CMP0IRS"
	.byte	0xa
	.byte	0x99
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"CMP1IRR"
	.byte	0xa
	.byte	0x9a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"CMP1IRS"
	.byte	0xa
	.byte	0x9b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0xa
	.byte	0x9c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0xa
	.byte	0x9d
	.uaword	0x912
	.uleb128 0xa
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa0
	.uaword	0x9f0
	.uleb128 0xb
	.string	"RST"
	.byte	0xa
	.byte	0xa2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"RSTSTAT"
	.byte	0xa
	.byte	0xa3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0xa
	.byte	0xa4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0xa
	.byte	0xa5
	.uaword	0x9a2
	.uleb128 0xa
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa8
	.uaword	0xa45
	.uleb128 0xb
	.string	"RST"
	.byte	0xa
	.byte	0xaa
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0xa
	.byte	0xab
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0xa
	.byte	0xac
	.uaword	0xa0a
	.uleb128 0xa
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xaf
	.uaword	0xa9c
	.uleb128 0xb
	.string	"CLR"
	.byte	0xa
	.byte	0xb1
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0xa
	.byte	0xb2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0xa
	.byte	0xb3
	.uaword	0xa5f
	.uleb128 0xa
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb6
	.uaword	0xb2b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xa
	.byte	0xb8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SUS"
	.byte	0xa
	.byte	0xb9
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SUS_P"
	.byte	0xa
	.byte	0xba
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SUSSTA"
	.byte	0xa
	.byte	0xbb
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"reserved_30"
	.byte	0xa
	.byte	0xbc
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0xa
	.byte	0xbd
	.uaword	0xab8
	.uleb128 0xa
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc0
	.uaword	0xb72
	.uleb128 0xb
	.string	"STM31_0"
	.byte	0xa
	.byte	0xc2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xa
	.byte	0xc3
	.uaword	0xb43
	.uleb128 0xa
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc6
	.uaword	0xbbc
	.uleb128 0xb
	.string	"STM31_0"
	.byte	0xa
	.byte	0xc8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0xa
	.byte	0xc9
	.uaword	0xb8b
	.uleb128 0xa
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xcc
	.uaword	0xc06
	.uleb128 0xb
	.string	"STM35_4"
	.byte	0xa
	.byte	0xce
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xa
	.byte	0xcf
	.uaword	0xbd7
	.uleb128 0xa
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd2
	.uaword	0xc4e
	.uleb128 0xb
	.string	"STM39_8"
	.byte	0xa
	.byte	0xd4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0xa
	.byte	0xd5
	.uaword	0xc1f
	.uleb128 0xa
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd8
	.uaword	0xc97
	.uleb128 0xb
	.string	"STM43_12"
	.byte	0xa
	.byte	0xda
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0xa
	.byte	0xdb
	.uaword	0xc67
	.uleb128 0xa
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xde
	.uaword	0xce0
	.uleb128 0xb
	.string	"STM47_16"
	.byte	0xa
	.byte	0xe0
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0xa
	.byte	0xe1
	.uaword	0xcb0
	.uleb128 0xa
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0xd29
	.uleb128 0xb
	.string	"STM51_20"
	.byte	0xa
	.byte	0xe6
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xa
	.byte	0xe7
	.uaword	0xcf9
	.uleb128 0xa
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xea
	.uaword	0xd72
	.uleb128 0xb
	.string	"STM63_32"
	.byte	0xa
	.byte	0xec
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0xa
	.byte	0xed
	.uaword	0xd42
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0xf5
	.uaword	0xdaf
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.byte	0xf7
	.uaword	0x1b7
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.byte	0xf8
	.uaword	0x1e8
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.byte	0xf9
	.uaword	0x557
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0"
	.byte	0xa
	.byte	0xfa
	.uaword	0xd8b
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0xfd
	.uaword	0xdeb
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.byte	0xff
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x100
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x59f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_ACCEN1"
	.byte	0xa
	.uahalf	0x102
	.uaword	0xdc5
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x105
	.uaword	0xe2a
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x107
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x108
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x109
	.uaword	0x5e4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_CAP"
	.byte	0xa
	.uahalf	0x10a
	.uaword	0xe02
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x10d
	.uaword	0xe66
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x111
	.uaword	0x628
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_CAPSV"
	.byte	0xa
	.uahalf	0x112
	.uaword	0xe3e
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x115
	.uaword	0xea4
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x118
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x119
	.uaword	0x6ab
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_CLC"
	.byte	0xa
	.uahalf	0x11a
	.uaword	0xe7c
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x11d
	.uaword	0xee0
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x120
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x121
	.uaword	0x77d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_CMCON"
	.byte	0xa
	.uahalf	0x122
	.uaword	0xeb8
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x125
	.uaword	0xf1e
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x127
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x129
	.uaword	0x7c4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_CMP"
	.byte	0xa
	.uahalf	0x12a
	.uaword	0xef6
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x12d
	.uaword	0xf5a
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x12f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x131
	.uaword	0x88f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_ICR"
	.byte	0xa
	.uahalf	0x132
	.uaword	0xf32
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x135
	.uaword	0xf96
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x8fb
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_ID"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0xf6e
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x13d
	.uaword	0xfd1
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x989
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_ISCR"
	.byte	0xa
	.uahalf	0x142
	.uaword	0xfa9
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x145
	.uaword	0x100e
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x9f0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_KRST0"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0xfe6
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x104c
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x150
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x151
	.uaword	0xa45
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_KRST1"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x1024
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x155
	.uaword	0x108a
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x158
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x159
	.uaword	0xa9c
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_KRSTCLR"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1062
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x10ca
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x161
	.uaword	0xb2b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_OCS"
	.byte	0xa
	.uahalf	0x162
	.uaword	0x10a2
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x165
	.uaword	0x1106
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x167
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x168
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x169
	.uaword	0xb72
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM0"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x10de
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x1143
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x170
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x171
	.uaword	0xbbc
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM0SV"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x111b
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x175
	.uaword	0x1182
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x179
	.uaword	0xc06
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM1"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0x115a
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x11bf
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x181
	.uaword	0xc4e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM2"
	.byte	0xa
	.uahalf	0x182
	.uaword	0x1197
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x185
	.uaword	0x11fc
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x187
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x188
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x189
	.uaword	0xc97
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM3"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x11d4
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x1239
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x18f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x190
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x191
	.uaword	0xce0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM4"
	.byte	0xa
	.uahalf	0x192
	.uaword	0x1211
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x195
	.uaword	0x1276
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x199
	.uaword	0xd29
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM5"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0x124e
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x12b3
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0xd72
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM6"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0x128b
	.uleb128 0x12
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x1461
	.uleb128 0x13
	.string	"CLC"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0xea4
	.byte	0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x1b0
	.uaword	0x1461
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0xa
	.uahalf	0x1b1
	.uaword	0xf96
	.byte	0x8
	.uleb128 0x13
	.string	"reserved_C"
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x1461
	.byte	0xc
	.uleb128 0x13
	.string	"TIM0"
	.byte	0xa
	.uahalf	0x1b3
	.uaword	0x1106
	.byte	0x10
	.uleb128 0x13
	.string	"TIM1"
	.byte	0xa
	.uahalf	0x1b4
	.uaword	0x1182
	.byte	0x14
	.uleb128 0x13
	.string	"TIM2"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x11bf
	.byte	0x18
	.uleb128 0x13
	.string	"TIM3"
	.byte	0xa
	.uahalf	0x1b6
	.uaword	0x11fc
	.byte	0x1c
	.uleb128 0x13
	.string	"TIM4"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x1239
	.byte	0x20
	.uleb128 0x13
	.string	"TIM5"
	.byte	0xa
	.uahalf	0x1b8
	.uaword	0x1276
	.byte	0x24
	.uleb128 0x13
	.string	"TIM6"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x12b3
	.byte	0x28
	.uleb128 0x13
	.string	"CAP"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0xe2a
	.byte	0x2c
	.uleb128 0x13
	.string	"CMP"
	.byte	0xa
	.uahalf	0x1bb
	.uaword	0x147d
	.byte	0x30
	.uleb128 0x13
	.string	"CMCON"
	.byte	0xa
	.uahalf	0x1bc
	.uaword	0xee0
	.byte	0x38
	.uleb128 0x13
	.string	"ICR"
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0xf5a
	.byte	0x3c
	.uleb128 0x13
	.string	"ISCR"
	.byte	0xa
	.uahalf	0x1be
	.uaword	0xfd1
	.byte	0x40
	.uleb128 0x13
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x1bf
	.uaword	0x148d
	.byte	0x44
	.uleb128 0x13
	.string	"TIM0SV"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x1143
	.byte	0x50
	.uleb128 0x13
	.string	"CAPSV"
	.byte	0xa
	.uahalf	0x1c1
	.uaword	0xe66
	.byte	0x54
	.uleb128 0x13
	.string	"reserved_58"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x149d
	.byte	0x58
	.uleb128 0x13
	.string	"OCS"
	.byte	0xa
	.uahalf	0x1c3
	.uaword	0x10ca
	.byte	0xe8
	.uleb128 0x13
	.string	"KRSTCLR"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x108a
	.byte	0xec
	.uleb128 0x13
	.string	"KRST1"
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x104c
	.byte	0xf0
	.uleb128 0x13
	.string	"KRST0"
	.byte	0xa
	.uahalf	0x1c6
	.uaword	0x100e
	.byte	0xf4
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x1c7
	.uaword	0xdeb
	.byte	0xf8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0xdaf
	.byte	0xfc
	.byte	0
	.uleb128 0x15
	.uaword	0x20b
	.uaword	0x1471
	.uleb128 0x16
	.uaword	0x1471
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x15
	.uaword	0xf1e
	.uaword	0x148d
	.uleb128 0x16
	.uaword	0x1471
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.uaword	0x20b
	.uaword	0x149d
	.uleb128 0x16
	.uaword	0x1471
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.uaword	0x20b
	.uaword	0x14ad
	.uleb128 0x16
	.uaword	0x1471
	.byte	0x8f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM"
	.byte	0xa
	.uahalf	0x1c9
	.uaword	0x14bd
	.uleb128 0x17
	.uaword	0x12c8
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x72
	.uaword	0x1596
	.uleb128 0xb
	.string	"CANDIV"
	.byte	0xb
	.byte	0x74
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ERAYDIV"
	.byte	0xb
	.byte	0x75
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"STMDIV"
	.byte	0xb
	.byte	0x76
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"GTMDIV"
	.byte	0xb
	.byte	0x77
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ETHDIV"
	.byte	0xb
	.byte	0x78
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"ASCLINFDIV"
	.byte	0xb
	.byte	0x79
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"ASCLINSDIV"
	.byte	0xb
	.byte	0x7a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"INSEL"
	.byte	0xb
	.byte	0x7b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0xb
	.byte	0x7c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0xb
	.byte	0x7d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0xb
	.byte	0x7e
	.uaword	0x14c2
	.uleb128 0x17
	.uaword	0x1b7
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x47b
	.uaword	0x15df
	.uleb128 0xf
	.string	"U"
	.byte	0xb
	.uahalf	0x47d
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xb
	.uahalf	0x47e
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xb
	.uahalf	0x47f
	.uaword	0x1596
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON1"
	.byte	0xb
	.uahalf	0x480
	.uaword	0x15b7
	.uleb128 0x18
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x176
	.uaword	0x1674
	.uleb128 0x19
	.string	"CCPN"
	.byte	0xc
	.uahalf	0x178
	.uaword	0x15b2
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x19
	.string	"reserved_10"
	.byte	0xc
	.uahalf	0x179
	.uaword	0x15b2
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x19
	.string	"IE"
	.byte	0xc
	.uahalf	0x17a
	.uaword	0x15b2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.string	"PIPN"
	.byte	0xc
	.uahalf	0x17b
	.uaword	0x15b2
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.string	"reserved_26"
	.byte	0xc
	.uahalf	0x17c
	.uaword	0x15b2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x15f7
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x3df
	.uaword	0x16b5
	.uleb128 0xf
	.string	"U"
	.byte	0xc
	.uahalf	0x3e1
	.uaword	0x1b7
	.uleb128 0xf
	.string	"I"
	.byte	0xc
	.uahalf	0x3e2
	.uaword	0x1e8
	.uleb128 0xf
	.string	"B"
	.byte	0xc
	.uahalf	0x3e3
	.uaword	0x1674
	.byte	0
	.uleb128 0x10
	.string	"Ifx_CPU_ICR"
	.byte	0xc
	.uahalf	0x3e4
	.uaword	0x168d
	.uleb128 0xa
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x2d
	.uaword	0x17e6
	.uleb128 0xb
	.string	"SRPN"
	.byte	0xd
	.byte	0x2f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"reserved_8"
	.byte	0xd
	.byte	0x30
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"SRE"
	.byte	0xd
	.byte	0x31
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"TOS"
	.byte	0xd
	.byte	0x32
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"reserved_12"
	.byte	0xd
	.byte	0x33
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ECC"
	.byte	0xd
	.byte	0x34
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0xd
	.byte	0x35
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SRR"
	.byte	0xd
	.byte	0x36
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CLRR"
	.byte	0xd
	.byte	0x37
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"SETR"
	.byte	0xd
	.byte	0x38
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"IOV"
	.byte	0xd
	.byte	0x39
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"IOVCLR"
	.byte	0xd
	.byte	0x3a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SWS"
	.byte	0xd
	.byte	0x3b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"SWSCLR"
	.byte	0xd
	.byte	0x3c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"reserved_31"
	.byte	0xd
	.byte	0x3d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xd
	.byte	0x3e
	.uaword	0x16c9
	.uleb128 0xd
	.byte	0x4
	.byte	0xd
	.byte	0x46
	.uaword	0x1823
	.uleb128 0xe
	.string	"U"
	.byte	0xd
	.byte	0x48
	.uaword	0x1b7
	.uleb128 0xe
	.string	"I"
	.byte	0xd
	.byte	0x49
	.uaword	0x1e8
	.uleb128 0xe
	.string	"B"
	.byte	0xd
	.byte	0x4a
	.uaword	0x17e6
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xd
	.byte	0x4b
	.uaword	0x17ff
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0xe
	.byte	0x61
	.uaword	0x2d0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x185d
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x1869
	.uleb128 0x1b
	.uaword	0x1837
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.byte	0xf
	.byte	0x6a
	.uaword	0x18b1
	.uleb128 0x1d
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x1d
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0xf
	.byte	0x6d
	.uaword	0x1869
	.uleb128 0x1c
	.byte	0x1
	.byte	0xf
	.byte	0x74
	.uaword	0x19f0
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x1d
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0xf
	.byte	0x7d
	.uaword	0x18cb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x10
	.byte	0x32
	.uaword	0x1a35
	.uleb128 0x1d
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x10
	.byte	0x35
	.uaword	0x1a09
	.uleb128 0x1c
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.uaword	0x1a7c
	.uleb128 0x1d
	.string	"IfxStm_Comparator_0"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxStm_Comparator_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Comparator"
	.byte	0x5
	.byte	0x87
	.uaword	0x1a47
	.uleb128 0x1c
	.byte	0x1
	.byte	0x5
	.byte	0x8c
	.uaword	0x1ae0
	.uleb128 0x1d
	.string	"IfxStm_ComparatorInterrupt_ir0"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxStm_ComparatorInterrupt_ir1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorInterrupt"
	.byte	0x5
	.byte	0x8f
	.uaword	0x1a95
	.uleb128 0x1c
	.byte	0x1
	.byte	0x5
	.byte	0x94
	.uaword	0x1ea1
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_0"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_1"
	.sleb128 1
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_2"
	.sleb128 2
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_3"
	.sleb128 3
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_4"
	.sleb128 4
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_5"
	.sleb128 5
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_6"
	.sleb128 6
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_7"
	.sleb128 7
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_8"
	.sleb128 8
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_9"
	.sleb128 9
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_10"
	.sleb128 10
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_11"
	.sleb128 11
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_12"
	.sleb128 12
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_13"
	.sleb128 13
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_14"
	.sleb128 14
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_15"
	.sleb128 15
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_16"
	.sleb128 16
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_17"
	.sleb128 17
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_18"
	.sleb128 18
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_19"
	.sleb128 19
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_20"
	.sleb128 20
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_21"
	.sleb128 21
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_22"
	.sleb128 22
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_23"
	.sleb128 23
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_24"
	.sleb128 24
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_25"
	.sleb128 25
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_26"
	.sleb128 26
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_27"
	.sleb128 27
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_28"
	.sleb128 28
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_29"
	.sleb128 29
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_30"
	.sleb128 30
	.uleb128 0x1d
	.string	"IfxStm_ComparatorOffset_31"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorOffset"
	.byte	0x5
	.byte	0xb5
	.uaword	0x1b02
	.uleb128 0x1c
	.byte	0x1
	.byte	0x5
	.byte	0xba
	.uaword	0x229f
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_1Bit"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_2Bits"
	.sleb128 1
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_3Bits"
	.sleb128 2
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_4Bits"
	.sleb128 3
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_5Bits"
	.sleb128 4
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_6Bits"
	.sleb128 5
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_7Bits"
	.sleb128 6
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_8Bits"
	.sleb128 7
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_9Bits"
	.sleb128 8
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_10Bits"
	.sleb128 9
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_11Bits"
	.sleb128 10
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_12Bits"
	.sleb128 11
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_13Bits"
	.sleb128 12
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_14Bits"
	.sleb128 13
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_15Bits"
	.sleb128 14
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_16Bits"
	.sleb128 15
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_17Bits"
	.sleb128 16
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_18Bits"
	.sleb128 17
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_19Bits"
	.sleb128 18
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_20Bits"
	.sleb128 19
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_21Bits"
	.sleb128 20
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_22Bits"
	.sleb128 21
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_23Bits"
	.sleb128 22
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_24Bits"
	.sleb128 23
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_25Bits"
	.sleb128 24
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_26Bits"
	.sleb128 25
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_27Bits"
	.sleb128 26
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_28Bits"
	.sleb128 27
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_29Bits"
	.sleb128 28
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_30Bits"
	.sleb128 29
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_31Bits"
	.sleb128 30
	.uleb128 0x1d
	.string	"IfxStm_ComparatorSize_32Bits"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorSize"
	.byte	0x5
	.byte	0xdb
	.uaword	0x1ec0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x2
	.byte	0x45
	.uaword	0x2325
	.uleb128 0x1d
	.string	"IfxStdIf_Timer_CountDir_up"
	.sleb128 0
	.uleb128 0x1d
	.string	"IfxStdIf_Timer_CountDir_upAndDown"
	.sleb128 1
	.uleb128 0x1d
	.string	"IfxStdIf_Timer_CountDir_down"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_CountDir"
	.byte	0x2
	.byte	0x49
	.uaword	0x22bc
	.uleb128 0x3
	.string	"IfxStdIf_Timer"
	.byte	0x2
	.byte	0x4c
	.uaword	0x235a
	.uleb128 0xa
	.string	"IfxStdIf_Timer_"
	.byte	0x44
	.byte	0x2
	.byte	0xdc
	.uaword	0x24c3
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x2
	.byte	0xde
	.uaword	0x1837
	.byte	0
	.uleb128 0x9
	.string	"getFrequency"
	.byte	0x2
	.byte	0xdf
	.uaword	0x24c3
	.byte	0x4
	.uleb128 0x9
	.string	"getPeriod"
	.byte	0x2
	.byte	0xe0
	.uaword	0x24fc
	.byte	0x8
	.uleb128 0x9
	.string	"getResolution"
	.byte	0x2
	.byte	0xe1
	.uaword	0x2532
	.byte	0xc
	.uleb128 0x9
	.string	"getTrigger"
	.byte	0x2
	.byte	0xe2
	.uaword	0x2556
	.byte	0x10
	.uleb128 0x9
	.string	"setFrequency"
	.byte	0x2
	.byte	0xe3
	.uaword	0x2577
	.byte	0x14
	.uleb128 0x9
	.string	"updateInputFrequency"
	.byte	0x2
	.byte	0xe4
	.uaword	0x25b5
	.byte	0x18
	.uleb128 0x9
	.string	"applyUpdate"
	.byte	0x2
	.byte	0xe5
	.uaword	0x25e0
	.byte	0x1c
	.uleb128 0x9
	.string	"disableUpdate"
	.byte	0x2
	.byte	0xe6
	.uaword	0x2602
	.byte	0x20
	.uleb128 0x9
	.string	"getInputFrequency"
	.byte	0x2
	.byte	0xe7
	.uaword	0x2626
	.byte	0x24
	.uleb128 0x9
	.string	"run"
	.byte	0x2
	.byte	0xe8
	.uaword	0x264e
	.byte	0x28
	.uleb128 0x9
	.string	"setPeriod"
	.byte	0x2
	.byte	0xe9
	.uaword	0x2668
	.byte	0x2c
	.uleb128 0x9
	.string	"setSingleMode"
	.byte	0x2
	.byte	0xea
	.uaword	0x26a3
	.byte	0x30
	.uleb128 0x9
	.string	"setTrigger"
	.byte	0x2
	.byte	0xeb
	.uaword	0x26de
	.byte	0x34
	.uleb128 0x9
	.string	"stop"
	.byte	0x2
	.byte	0xec
	.uaword	0x2716
	.byte	0x38
	.uleb128 0x9
	.string	"ackTimerIrq"
	.byte	0x2
	.byte	0xed
	.uaword	0x2731
	.byte	0x3c
	.uleb128 0x9
	.string	"ackTriggerIrq"
	.byte	0x2
	.byte	0xee
	.uaword	0x2769
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetFrequency"
	.byte	0x2
	.byte	0x52
	.uaword	0x24e6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x24ec
	.uleb128 0x1f
	.byte	0x1
	.uaword	0x269
	.uaword	0x24fc
	.uleb128 0x1b
	.uaword	0x1837
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetPeriod"
	.byte	0x2
	.byte	0x58
	.uaword	0x251c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2522
	.uleb128 0x1f
	.byte	0x1
	.uaword	0x2ed
	.uaword	0x2532
	.uleb128 0x1b
	.uaword	0x1837
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetResolution"
	.byte	0x2
	.byte	0x5e
	.uaword	0x24e6
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetTrigger"
	.byte	0x2
	.byte	0x64
	.uaword	0x251c
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetFrequency"
	.byte	0x2
	.byte	0x6c
	.uaword	0x259a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25a0
	.uleb128 0x1f
	.byte	0x1
	.uaword	0x282
	.uaword	0x25b5
	.uleb128 0x1b
	.uaword	0x1837
	.uleb128 0x1b
	.uaword	0x269
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_UpdateInputFrequency"
	.byte	0x2
	.byte	0x72
	.uaword	0x1857
	.uleb128 0x3
	.string	"IfxStdIf_Timer_ApplyUpdate"
	.byte	0x2
	.byte	0x87
	.uaword	0x1857
	.uleb128 0x3
	.string	"IfxStdIf_Timer_DisableUpdate"
	.byte	0x2
	.byte	0x98
	.uaword	0x1857
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetInputFrequency"
	.byte	0x2
	.byte	0x9e
	.uaword	0x24e6
	.uleb128 0x3
	.string	"IfxStdIf_Timer_Run"
	.byte	0x2
	.byte	0xa7
	.uaword	0x1857
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetPeriod"
	.byte	0x2
	.byte	0xb1
	.uaword	0x2688
	.uleb128 0x4
	.byte	0x4
	.uaword	0x268e
	.uleb128 0x1f
	.byte	0x1
	.uaword	0x282
	.uaword	0x26a3
	.uleb128 0x1b
	.uaword	0x1837
	.uleb128 0x1b
	.uaword	0x2ed
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetSingleMode"
	.byte	0x2
	.byte	0xba
	.uaword	0x26c7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26cd
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x26de
	.uleb128 0x1b
	.uaword	0x1837
	.uleb128 0x1b
	.uaword	0x282
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetTrigger"
	.byte	0x2
	.byte	0xc6
	.uaword	0x26ff
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2705
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x2716
	.uleb128 0x1b
	.uaword	0x1837
	.uleb128 0x1b
	.uaword	0x2ed
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_Stop"
	.byte	0x2
	.byte	0xcc
	.uaword	0x1857
	.uleb128 0x3
	.string	"IfxStdIf_Timer_AckTimerIrq"
	.byte	0x2
	.byte	0xd2
	.uaword	0x2753
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2759
	.uleb128 0x1f
	.byte	0x1
	.uaword	0x282
	.uaword	0x2769
	.uleb128 0x1b
	.uaword	0x1837
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_AckTriggerIrq"
	.byte	0x2
	.byte	0xd8
	.uaword	0x2753
	.uleb128 0x8
	.byte	0x10
	.byte	0x2
	.byte	0xf2
	.uaword	0x2828
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x2
	.byte	0xf4
	.uaword	0x282
	.byte	0
	.uleb128 0x9
	.string	"triggerPoint"
	.byte	0x2
	.byte	0xf5
	.uaword	0x2ed
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x2
	.byte	0xf6
	.uaword	0x2d9
	.byte	0x8
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x2
	.byte	0xf7
	.uaword	0x1a35
	.byte	0xa
	.uleb128 0x9
	.string	"outputMode"
	.byte	0x2
	.byte	0xf8
	.uaword	0x18b1
	.byte	0xb
	.uleb128 0x9
	.string	"outputDriver"
	.byte	0x2
	.byte	0xf9
	.uaword	0x19f0
	.byte	0xc
	.uleb128 0x9
	.string	"risingEdgeAtPeriod"
	.byte	0x2
	.byte	0xfa
	.uaword	0x282
	.byte	0xd
	.uleb128 0x9
	.string	"outputEnabled"
	.byte	0x2
	.byte	0xfb
	.uaword	0x282
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_TrigConfig"
	.byte	0x2
	.byte	0xfc
	.uaword	0x278d
	.uleb128 0x8
	.byte	0x24
	.byte	0x2
	.byte	0xff
	.uaword	0x28c3
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x101
	.uaword	0x269
	.byte	0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x102
	.uaword	0x2d9
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x103
	.uaword	0x1a35
	.byte	0x6
	.uleb128 0x13
	.string	"minResolution"
	.byte	0x2
	.uahalf	0x104
	.uaword	0x269
	.byte	0x8
	.uleb128 0x13
	.string	"trigger"
	.byte	0x2
	.uahalf	0x105
	.uaword	0x2828
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x106
	.uaword	0x2325
	.byte	0x1c
	.uleb128 0x13
	.string	"startOffset"
	.byte	0x2
	.uahalf	0x107
	.uaword	0x269
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.string	"IfxStdIf_Timer_Config"
	.byte	0x2
	.uahalf	0x108
	.uaword	0x2849
	.uleb128 0x8
	.byte	0x10
	.byte	0x11
	.byte	0x6d
	.uaword	0x2938
	.uleb128 0x1e
	.uaword	.LASF12
	.byte	0x11
	.byte	0x6f
	.uaword	0x2ed
	.byte	0
	.uleb128 0x9
	.string	"triggerEnabled"
	.byte	0x11
	.byte	0x70
	.uaword	0x282
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x11
	.byte	0x71
	.uaword	0x269
	.byte	0x8
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x11
	.byte	0x72
	.uaword	0x2325
	.byte	0xc
	.uleb128 0x9
	.string	"singleShot"
	.byte	0x11
	.byte	0x73
	.uaword	0x282
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Timer_Base"
	.byte	0x11
	.byte	0x74
	.uaword	0x28e1
	.uleb128 0x8
	.byte	0x20
	.byte	0x11
	.byte	0x7c
	.uaword	0x29af
	.uleb128 0x9
	.string	"base"
	.byte	0x11
	.byte	0x7e
	.uaword	0x2938
	.byte	0
	.uleb128 0x9
	.string	"stm"
	.byte	0x11
	.byte	0x7f
	.uaword	0x29af
	.byte	0x10
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x11
	.byte	0x80
	.uaword	0x1a7c
	.byte	0x14
	.uleb128 0x9
	.string	"comparatorValue"
	.byte	0x11
	.byte	0x81
	.uaword	0x25b
	.byte	0x18
	.uleb128 0x9
	.string	"comparatorShift"
	.byte	0x11
	.byte	0x82
	.uaword	0x1fe
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x14ad
	.uleb128 0x3
	.string	"IfxStm_Timer"
	.byte	0x11
	.byte	0x83
	.uaword	0x2951
	.uleb128 0x8
	.byte	0x2c
	.byte	0x11
	.byte	0x87
	.uaword	0x29f7
	.uleb128 0x9
	.string	"base"
	.byte	0x11
	.byte	0x89
	.uaword	0x28c3
	.byte	0
	.uleb128 0x9
	.string	"stm"
	.byte	0x11
	.byte	0x8a
	.uaword	0x29af
	.byte	0x24
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x11
	.byte	0x8b
	.uaword	0x1a7c
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Timer_Config"
	.byte	0x11
	.byte	0x8c
	.uaword	0x29c9
	.uleb128 0x20
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x3
	.uahalf	0x272
	.byte	0x1
	.uaword	0x282
	.byte	0x3
	.uaword	0x2a59
	.uleb128 0x21
	.string	"reg"
	.byte	0x3
	.uahalf	0x274
	.uaword	0x16b5
	.uleb128 0x22
	.uleb128 0x21
	.string	"__res"
	.byte	0x3
	.uahalf	0x275
	.uaword	0x1b7
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"__nop"
	.byte	0x4
	.uahalf	0x57b
	.byte	0x1
	.byte	0x3
	.uleb128 0x24
	.string	"IfxSrc_clearRequest"
	.byte	0x7
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x2a8e
	.uleb128 0x25
	.string	"src"
	.byte	0x7
	.byte	0xe6
	.uaword	0x2a8e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a94
	.uleb128 0x17
	.uaword	0x1823
	.uleb128 0x26
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x6
	.uahalf	0x430
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uleb128 0x20
	.string	"IfxStm_getFrequency"
	.byte	0x5
	.uahalf	0x21f
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x2af8
	.uleb128 0x27
	.string	"stm"
	.byte	0x5
	.uahalf	0x21f
	.uaword	0x29af
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x221
	.uaword	0x269
	.byte	0
	.uleb128 0x20
	.string	"IfxStdIf_Timer_tickToS"
	.byte	0x2
	.uahalf	0x1a2
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x2b38
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x269
	.uleb128 0x27
	.string	"ticks"
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x2ed
	.byte	0
	.uleb128 0x20
	.string	"IfxStdIf_Timer_sToTick"
	.byte	0x2
	.uahalf	0x1ad
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uaword	0x2b7a
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x269
	.uleb128 0x27
	.string	"seconds"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x269
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"IfxStm_Timer_setPeriod"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	0x282
	.byte	0x1
	.uaword	0x2bb6
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6e
	.uaword	0x2bb6
	.uleb128 0x2b
	.uaword	.LASF12
	.byte	0x1
	.byte	0x6e
	.uaword	0x2ed
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29b5
	.uleb128 0x2c
	.string	"IfxStm_updateCompare"
	.byte	0x5
	.uahalf	0x291
	.byte	0x1
	.byte	0x3
	.uaword	0x2c02
	.uleb128 0x27
	.string	"stm"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x29af
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x5
	.uahalf	0x291
	.uaword	0x1a7c
	.uleb128 0x27
	.string	"ticks"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x25b
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"IfxStm_Timer_acknowledgeTimerIrq"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0x282
	.byte	0x1
	.uaword	0x2c4a
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0x24
	.uaword	0x2bb6
	.uleb128 0x2d
	.string	"event"
	.byte	0x1
	.byte	0x26
	.uaword	0x282
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_disableInterrupts"
	.byte	0x3
	.uahalf	0x27a
	.byte	0x1
	.uaword	0x282
	.byte	0x3
	.uaword	0x2c7e
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x27c
	.uaword	0x282
	.byte	0
	.uleb128 0x20
	.string	"IfxStm_get"
	.byte	0x5
	.uahalf	0x20e
	.byte	0x1
	.uaword	0x2a2
	.byte	0x3
	.uaword	0x2cb0
	.uleb128 0x27
	.string	"stm"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x29af
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x210
	.uaword	0x2a2
	.byte	0
	.uleb128 0x2c
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x3
	.uahalf	0x38a
	.byte	0x1
	.byte	0x3
	.uaword	0x2ce0
	.uleb128 0x29
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x38a
	.uaword	0x282
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"IfxStm_Timer_setFrequency"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	0x282
	.byte	0x1
	.uaword	0x2d2a
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0x66
	.uaword	0x2bb6
	.uleb128 0x2b
	.uaword	.LASF10
	.byte	0x1
	.byte	0x66
	.uaword	0x269
	.uleb128 0x2e
	.uaword	.LASF12
	.byte	0x1
	.byte	0x68
	.uaword	0x2ed
	.byte	0
	.uleb128 0x24
	.string	"IfxSrc_init"
	.byte	0x7
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x2d6f
	.uleb128 0x25
	.string	"src"
	.byte	0x7
	.byte	0xfe
	.uaword	0x2a8e
	.uleb128 0x25
	.string	"typOfService"
	.byte	0x7
	.byte	0xfe
	.uaword	0x1a35
	.uleb128 0x25
	.string	"priority"
	.byte	0x7
	.byte	0xfe
	.uaword	0x2d9
	.byte	0
	.uleb128 0x24
	.string	"IfxSrc_enable"
	.byte	0x7
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x2d92
	.uleb128 0x25
	.string	"src"
	.byte	0x7
	.byte	0xf8
	.uaword	0x2a8e
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxStm_Timer_getFrequency"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	0x269
	.uaword	.LFB278
	.uaword	.LFE278
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2df2
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.byte	0x3e
	.uaword	0x2bb6
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	0x2af8
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.byte	0x40
	.uleb128 0x32
	.uaword	0x2b29
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x32
	.uaword	0x2b1d
	.byte	0x2
	.byte	0x84
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxStm_Timer_getInputFrequency"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x269
	.uaword	.LFB279
	.uaword	.LFE279
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e37
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.byte	0x44
	.uaword	0x2bb6
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxStm_Timer_getPeriod"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB280
	.uaword	.LFE280
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e74
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4a
	.uaword	0x2bb6
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxStm_Timer_getResolution"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x269
	.uaword	.LFB281
	.uaword	.LFE281
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2eb5
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.byte	0x50
	.uaword	0x2bb6
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x33
	.uaword	0x2ce0
	.uaword	.LFB283
	.uaword	.LFE283
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f00
	.uleb128 0x32
	.uaword	0x2d08
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x2d13
	.uaword	.LLST0
	.uleb128 0x35
	.uaword	0x2d1e
	.uleb128 0x36
	.uaword	0x2b38
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x68
	.uleb128 0x34
	.uaword	0x2b69
	.uaword	.LLST1
	.uleb128 0x32
	.uaword	0x2b5d
	.byte	0x2
	.byte	0x84
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x2b7a
	.uaword	.LFB284
	.uaword	.LFE284
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f23
	.uleb128 0x32
	.uaword	0x2b9f
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	0x2baa
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxStm_Timer_setSingleMode"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB285
	.uaword	.LFE285
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f6d
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.byte	0x76
	.uaword	0x2bb6
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.uaword	.LASF7
	.byte	0x1
	.byte	0x76
	.uaword	0x282
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxStm_Timer_stop"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2fad
	.uleb128 0x38
	.uaword	.LASF6
	.byte	0x1
	.byte	0x95
	.uaword	0x2bb6
	.uaword	.LLST2
	.uleb128 0x39
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x361b
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxStm_Timer_run"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB282
	.uaword	.LFE282
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x30f2
	.uleb128 0x38
	.uaword	.LASF6
	.byte	0x1
	.byte	0x56
	.uaword	0x2bb6
	.uaword	.LLST3
	.uleb128 0x2d
	.string	"interruptState"
	.byte	0x1
	.byte	0x58
	.uaword	0x282
	.uleb128 0x3a
	.string	"timer"
	.byte	0x1
	.byte	0x59
	.uaword	0x2a2
	.byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3b
	.uaword	0x2c4a
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.byte	0x5b
	.uaword	0x3075
	.uleb128 0x3c
	.uaword	.LBB64
	.uaword	.LBE64
	.uleb128 0x35
	.uaword	0x2c71
	.uleb128 0x3d
	.uaword	0x2a12
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x3
	.uahalf	0x27d
	.uaword	0x3063
	.uleb128 0x3c
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x35
	.uaword	0x2a3c
	.uleb128 0x3c
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x3e
	.uaword	0x2a49
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0x2a59
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x3
	.uahalf	0x27f
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x2c7e
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x5c
	.uaword	0x30a5
	.uleb128 0x34
	.uaword	0x2c97
	.uaword	.LLST5
	.uleb128 0x3c
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x3e
	.uaword	0x2ca3
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x2cb0
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x5d
	.uaword	0x30be
	.uleb128 0x40
	.uaword	0x2cd3
	.byte	0
	.uleb128 0x41
	.uaword	0x2bbc
	.uaword	.LBB74
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x61
	.uaword	0x30e7
	.uleb128 0x32
	.uaword	0x2bf3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x34
	.uaword	0x2be7
	.uaword	.LLST7
	.uleb128 0x40
	.uaword	0x2bdb
	.byte	0
	.uleb128 0x39
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x3653
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxStm_Timer_updateInputFrequency"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3186
	.uleb128 0x38
	.uaword	.LASF6
	.byte	0x1
	.byte	0x9b
	.uaword	0x2bb6
	.uaword	.LLST8
	.uleb128 0x2d
	.string	"freqency"
	.byte	0x1
	.byte	0x9d
	.uaword	0x269
	.uleb128 0x36
	.uaword	0x2abd
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x9e
	.uleb128 0x34
	.uaword	0x2adf
	.uaword	.LLST9
	.uleb128 0x42
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x35
	.uaword	0x2aeb
	.uleb128 0x43
	.uaword	0x2a99
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x5
	.uahalf	0x223
	.uleb128 0x44
	.uaword	.LVL28
	.uaword	0x368a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x2c02
	.uaword	.LFB277
	.uaword	.LFE277
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x321b
	.uleb128 0x34
	.uaword	0x2c31
	.uaword	.LLST10
	.uleb128 0x3e
	.uaword	0x2c3c
	.uaword	.LLST11
	.uleb128 0x41
	.uaword	0x2bbc
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x30
	.uaword	0x31db
	.uleb128 0x34
	.uaword	0x2bf3
	.uaword	.LLST12
	.uleb128 0x34
	.uaword	0x2be7
	.uaword	.LLST13
	.uleb128 0x34
	.uaword	0x2bdb
	.uaword	.LLST14
	.byte	0
	.uleb128 0x45
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0x3208
	.uleb128 0x32
	.uaword	0x2c31
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3c
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x35
	.uaword	0x2c3c
	.uleb128 0x44
	.uaword	.LVL39
	.uaword	0x361b
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL31
	.uaword	0x36b2
	.uleb128 0x44
	.uaword	.LVL33
	.uaword	0x36e4
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxStm_Timer_stdIfTimerInit"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	0x282
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3287
	.uleb128 0x46
	.string	"stdif"
	.byte	0x1
	.byte	0x7c
	.uaword	0x3287
	.uaword	.LLST15
	.uleb128 0x38
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7c
	.uaword	0x2bb6
	.uaword	.LLST16
	.uleb128 0x47
	.uaword	.LVL41
	.uaword	0x3712
	.uleb128 0x48
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2344
	.uleb128 0x49
	.byte	0x1
	.string	"IfxStm_Timer_init"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.uaword	0x282
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3542
	.uleb128 0x38
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa3
	.uaword	0x2bb6
	.uaword	.LLST17
	.uleb128 0x46
	.string	"config"
	.byte	0x1
	.byte	0xa3
	.uaword	0x3542
	.uaword	.LLST18
	.uleb128 0x4a
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa5
	.uaword	0x282
	.uaword	.LLST19
	.uleb128 0x4b
	.string	"base"
	.byte	0x1
	.byte	0xa6
	.uaword	0x354d
	.uaword	.LLST20
	.uleb128 0x4c
	.string	"__func__"
	.uaword	0x3563
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.8456
	.uleb128 0x3b
	.uaword	0x2abd
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0xb7
	.uaword	0x3352
	.uleb128 0x34
	.uaword	0x2adf
	.uaword	.LLST21
	.uleb128 0x3c
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x35
	.uaword	0x2aeb
	.uleb128 0x4d
	.uaword	0x2a99
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x5
	.uahalf	0x223
	.uleb128 0x44
	.uaword	.LVL50
	.uaword	0x368a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	0x2ce0
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xc8
	.uaword	0x33a5
	.uleb128 0x34
	.uaword	0x2d13
	.uaword	.LLST22
	.uleb128 0x34
	.uaword	0x2d08
	.uaword	.LLST23
	.uleb128 0x42
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x35
	.uaword	0x2d1e
	.uleb128 0x36
	.uaword	0x2b38
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x68
	.uleb128 0x34
	.uaword	0x2b69
	.uaword	.LLST24
	.uleb128 0x34
	.uaword	0x2b5d
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	0x343a
	.uleb128 0x4b
	.string	"src"
	.byte	0x1
	.byte	0xd5
	.uaword	0x2a8e
	.uaword	.LLST26
	.uleb128 0x41
	.uaword	0x2d2a
	.uaword	.LBB117
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xd7
	.uaword	0x340a
	.uleb128 0x34
	.uaword	0x2d5e
	.uaword	.LLST27
	.uleb128 0x34
	.uaword	0x2d4a
	.uaword	.LLST28
	.uleb128 0x34
	.uaword	0x2d3f
	.uaword	.LLST29
	.uleb128 0x4d
	.uaword	0x2a65
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x7
	.uahalf	0x102
	.uleb128 0x34
	.uaword	0x2a82
	.uaword	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x2d6f
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.byte	0xd8
	.uaword	0x3427
	.uleb128 0x34
	.uaword	0x2d86
	.uaword	.LLST31
	.byte	0
	.uleb128 0x44
	.uaword	.LVL63
	.uaword	0x36e4
	.uleb128 0x44
	.uaword	.LVL64
	.uaword	0x3741
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL46
	.uaword	0x3770
	.uaword	0x346e
	.uleb128 0x48
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.8456
	.uleb128 0x48
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x48
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x48
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL47
	.uaword	0x3770
	.uaword	0x34a2
	.uleb128 0x48
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.8456
	.uleb128 0x48
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x48
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x48
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL48
	.uaword	0x3770
	.uaword	0x34d6
	.uleb128 0x48
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.8456
	.uleb128 0x48
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xb1
	.uleb128 0x48
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x48
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL51
	.uaword	0x30f2
	.uaword	0x34ea
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL61
	.uaword	0x37a7
	.uaword	0x34fd
	.uleb128 0x48
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL72
	.uaword	0x30f2
	.uaword	0x3511
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.uaword	.LVL74
	.uaword	0x3770
	.uleb128 0x48
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.8456
	.uleb128 0x48
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xc3
	.uleb128 0x48
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x48
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3548
	.uleb128 0x5
	.uaword	0x29f7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2938
	.uleb128 0x15
	.uaword	0x2c8
	.uaword	0x3563
	.uleb128 0x16
	.uaword	0x1471
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.uaword	0x3553
	.uleb128 0x37
	.byte	0x1
	.string	"IfxStm_Timer_initConfig"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB290
	.uaword	.LFE290
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35c6
	.uleb128 0x46
	.string	"config"
	.byte	0x1
	.byte	0xdf
	.uaword	0x35c6
	.uaword	.LLST32
	.uleb128 0x46
	.string	"stm"
	.byte	0x1
	.byte	0xdf
	.uaword	0x29af
	.uaword	.LLST33
	.uleb128 0x47
	.uaword	.LVL76
	.uaword	0x37e5
	.uleb128 0x48
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29f7
	.uleb128 0x15
	.uaword	0x329
	.uaword	0x35dc
	.uleb128 0x16
	.uaword	0x1471
	.byte	0
	.byte	0
	.uleb128 0x4f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x12
	.byte	0x90
	.uaword	0x35f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x35cc
	.uleb128 0x4f
	.string	"Assert_verboseLevel"
	.byte	0x13
	.byte	0x79
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStm_disableComparatorInterrupt"
	.byte	0x5
	.uahalf	0x1c5
	.byte	0x1
	.byte	0x1
	.uaword	0x3653
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStm_enableComparatorInterrupt"
	.byte	0x5
	.uahalf	0x1cc
	.byte	0x1
	.byte	0x1
	.uaword	0x368a
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x6
	.uahalf	0x38c
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxStm_isCompareFlagSet"
	.byte	0x5
	.uahalf	0x1e7
	.byte	0x1
	.uaword	0x282
	.byte	0x1
	.uaword	0x36e4
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStm_clearCompareFlag"
	.byte	0x5
	.uahalf	0x1be
	.byte	0x1
	.byte	0x1
	.uaword	0x3712
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStdIf_Timer_initStdIf"
	.byte	0x2
	.uahalf	0x1cb
	.byte	0x1
	.byte	0x1
	.uaword	0x3741
	.uleb128 0x1b
	.uaword	0x3287
	.uleb128 0x1b
	.uaword	0x1837
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"IfxStm_getSrcPointer"
	.byte	0x5
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x2a8e
	.byte	0x1
	.uaword	0x3770
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0x13
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uaword	0x37a7
	.uleb128 0x1b
	.uaword	0x1fe
	.uleb128 0x1b
	.uaword	0x2b0
	.uleb128 0x1b
	.uaword	0x2b0
	.uleb128 0x1b
	.uaword	0x1b7
	.uleb128 0x1b
	.uaword	0x2b0
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStm_setCompareControl"
	.byte	0x5
	.uahalf	0x1f1
	.byte	0x1
	.byte	0x1
	.uaword	0x37e5
	.uleb128 0x1b
	.uaword	0x29af
	.uleb128 0x1b
	.uaword	0x1a7c
	.uleb128 0x1b
	.uaword	0x1ea1
	.uleb128 0x1b
	.uaword	0x229f
	.uleb128 0x1b
	.uaword	0x1ae0
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxStdIf_Timer_initConfig"
	.byte	0x2
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x1
	.uaword	0x3810
	.uleb128 0x1b
	.uaword	0x3810
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28c3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE283
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x194
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xe
	.byte	0xf4
	.uleb128 0x194
	.byte	0x4
	.uaword	0x3f800000
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x194
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE283
	.uahalf	0x10
	.byte	0xf4
	.uleb128 0x194
	.byte	0x4
	.uaword	0x3f800000
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x194
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LFE282
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x19d
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x84
	.sleb128 20
	.uaword	.LVL23
	.uaword	.LVL25-1
	.uahalf	0x3
	.byte	0x72
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-1
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL41-1
	.uaword	.LFE286
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE289
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL56
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x10
	.byte	0xf4
	.uleb128 0x194
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x8c
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x194
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL64
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x8c
	.sleb128 6
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL65
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL76-1
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.uaword	.LFB279
	.uaword	.LFE279-.LFB279
	.uaword	.LFB280
	.uaword	.LFE280-.LFB280
	.uaword	.LFB281
	.uaword	.LFE281-.LFB281
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	0
	.uaword	0
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	0
	.uaword	0
	.uaword	.LFB278
	.uaword	.LFE278
	.uaword	.LFB279
	.uaword	.LFE279
	.uaword	.LFB280
	.uaword	.LFE280
	.uaword	.LFB281
	.uaword	.LFE281
	.uaword	.LFB283
	.uaword	.LFE283
	.uaword	.LFB284
	.uaword	.LFE284
	.uaword	.LFB285
	.uaword	.LFE285
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	.LFB282
	.uaword	.LFE282
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB277
	.uaword	.LFE277
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	.LFB290
	.uaword	.LFE290
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF5:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_4"
.LASF6:
	.string	"driver"
.LASF7:
	.string	"enabled"
.LASF10:
	.string	"frequency"
.LASF8:
	.string	"isrPriority"
.LASF14:
	.string	"comparator"
.LASF4:
	.string	"reserved_21"
.LASF15:
	.string	"result"
.LASF13:
	.string	"clockFreq"
.LASF9:
	.string	"isrProvider"
.LASF12:
	.string	"period"
.LASF1:
	.string	"STMCAP63_32"
.LASF11:
	.string	"countDir"
	.extern	IfxStdIf_Timer_initConfig,STT_FUNC,0
	.extern	IfxStm_getSrcPointer,STT_FUNC,0
	.extern	IfxStm_setCompareControl,STT_FUNC,0
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	IfxStdIf_Timer_initStdIf,STT_FUNC,0
	.extern	IfxStm_clearCompareFlag,STT_FUNC,0
	.extern	IfxStm_isCompareFlagSet,STT_FUNC,0
	.extern	IfxScuCcu_getSourceFrequency,STT_FUNC,0
	.extern	IfxStm_enableComparatorInterrupt,STT_FUNC,0
	.extern	IfxStm_disableComparatorInterrupt,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"