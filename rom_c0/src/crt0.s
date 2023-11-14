	.include "macros.inc"
	.include "gba.inc"

.arm_func_start _start
	mov	r0, #0b10010	@ IRQ mode
	msr	CPSR_fc, r0
	ldr	sp, .Lsp_irq

	mov	r0, #0b11111	@ System mode
	msr	CPSR_fc, r0
	ldr	sp, .Lsp_sys

	ldr	r1, =iwram_7ffc	@ IRQ vector
	adr	r0, .Lintr_main
	str	r0, [r1]

	ldr	r1, =Func_2e00
	mov	lr, pc
	bx	r1

	b	_start

.Lsp_sys:
	.word	iwram_7f00
.Lsp_irq:
	.word	iwram_7fa0
.func_end _start

.arm_func_start Func_404
	asrs	r1, r11, #20
	bicpl	r1, #0x1f
	adds	r1, r12, asr #20
	addmi	r1, #0x20
	add	r1, r1, asr #1
	add	r4, r1, r1, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r1, r11, #20
	bicpl	r1, #0x1f
	adds	r1, r12, asr #20
	addmi	r1, #0x20
	add	r1, r1, asr #1
	add	r2, r1, r1, lsl #16
	ror	r11, #8
	ror	r12, #8
	asrs	r1, r11, #20
	bicpl	r1, #0x1f
	adds	r1, r12, asr #20
	addmi	r1, #0x20
	add	r1, r1, asr #1
	add	r3, r1, r1, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r1, r11, #20
	bicpl	r1, #0x1f
	adds	r1, r12, asr #20
	addmi	r1, #0x20
	add	r1, r1, asr #1
	add	r1, r1, lsl #16
	b	.L49c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.L49c:
	asrs	r7, r11, #19
	adds	r7, r12, asr #20
	addmi	r7, #0x30
	asrs	r6, r12, #19
	adds	r6, r11, asr #20
	addmi	r6, #0x30
	adds	r4, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r7, r11, #19
	adds	r7, r12, asr #20
	addmi	r7, #0x30
	asrs	r6, r12, #19
	adds	r6, r11, asr #20
	addmi	r6, #0x30
	adds	r2, r7, r6, lsl #16
	ror	r11, #8
	ror	r12, #8
	asrs	r7, r11, #19
	adds	r7, r12, asr #20
	addmi	r7, #0x30
	asrs	r6, r12, #19
	adds	r6, r11, asr #20
	addmi	r6, #0x30
	adds	r3, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r7, r11, #19
	adds	r7, r12, asr #20
	addmi	r7, #0x30
	asrs	r6, r12, #19
	adds	r6, r11, asr #20
	addmi	r6, #0x30
	adds	r1, r7, r6, lsl #16
	b	.L534
	nop
	nop
	nop
.L534:
	asrs	r6, r4, #18
	adds	r6, r11, asr #19
	addmi	r6, #0x28
	ror	r4, #16
	asrs	r7, r4, #18
	adds	r7, r12, asr #19
	addmi	r7, #0x28
	adds	r4, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r2, #18
	adds	r6, r11, asr #19
	addmi	r6, #0x28
	ror	r2, #16
	asrs	r7, r2, #18
	adds	r7, r12, asr #19
	addmi	r7, #0x28
	adds	r2, r7, r6, lsl #16
	ror	r11, #8
	ror	r12, #8
	asrs	r6, r3, #18
	adds	r6, r11, asr #19
	addmi	r6, #0x28
	ror	r3, #16
	asrs	r7, r3, #18
	adds	r7, r12, asr #19
	addmi	r7, #0x28
	adds	r3, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r1, #18
	adds	r6, r11, asr #19
	addmi	r6, #0x28
	ror	r1, #16
	asrs	r7, r1, #18
	adds	r7, r12, asr #19
	addmi	r7, #0x28
	adds	r1, r7, r6, lsl #16
	asrs	r6, r4, #19
	adds	r6, r11, asr #18
	addmi	r6, #0x48
	ror	r4, #16
	asrs	r7, r4, #19
	adds	r7, r12, asr #18
	addmi	r7, #0x48
	adds	r4, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r2, #19
	adds	r6, r11, asr #18
	addmi	r6, #0x48
	ror	r2, #16
	asrs	r7, r2, #19
	adds	r7, r12, asr #18
	addmi	r7, #0x48
	adds	r2, r7, r6, lsl #16
	ror	r11, #8
	ror	r12, #8
	asrs	r6, r3, #19
	adds	r6, r11, asr #18
	addmi	r6, #0x48
	ror	r3, #16
	asrs	r7, r3, #19
	adds	r7, r12, asr #18
	addmi	r7, #0x48
	adds	r3, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r1, #19
	adds	r6, r11, asr #18
	addmi	r6, #0x48
	ror	r1, #16
	asrs	r7, r1, #19
	adds	r7, r12, asr #18
	addmi	r7, #0x48
	adds	r1, r7, r6, lsl #16
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	b	.L6fc
	adds	r7, r11, asr #18
	addmi	r7, #0x40
	adds	r4, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r2, #19
	adds	r6, r12, asr #18
	addmi	r6, #0x40
	ror	r2, #16
	asrs	r7, r2, #19
	adds	r7, r11, asr #18
	addmi	r7, #0x40
	adds	r2, r7, r6, lsl #16
	ror	r11, #8
	ror	r12, #8
	asrs	r6, r3, #19
	adds	r6, r12, asr #18
	addmi	r6, #0x40
	ror	r3, #16
	asrs	r7, r3, #19
	adds	r7, r11, asr #18
	addmi	r7, #0x40
	adds	r3, r7, r6, lsl #16
	ror	r11, #16
	ror	r12, #16
	asrs	r6, r1, #19
	adds	r6, r12, asr #18
	addmi	r6, #0x40
	ror	r1, #16
	asrs	r7, r1, #19
	adds	r7, r11, asr #18
	addmi	r7, #0x40
	adds	r1, r7, r6, lsl #16
.L6fc:
.func_end Func_404

.thumb_func_start Func_6fc
	ldr	r0, .L76c
	ldr	r0, [r0]
	ldr	r2, .L768
	ldr	r3, [r0]
	cmp	r2, r3
	beq	.L70c
	bx	lr
.L70a:
	bx	r3
.L70c:
	push	{r5, r6, r7, lr}
	mov	r1, r8
	mov	r2, r9
	mov	r3, r10
	mov	r4, r11
	push	{r0, r1, r2, r3, r4}
	sub	sp, #0x18
	ldr	r3, [r0, #0x20]
	cmp	r3, #0
	beq	.L728
	ldr	r0, [r0, #0x24]
	bl	.L70a
	ldr	r0, [sp, #0x18]
.L728:
	ldr	r3, [r0, #0x28]
	bl	.L70a
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0, #0x10]
	str	r3, [sp]
	ldr	r5, .L760
	add	r5, r0
	ldrb	r4, [r0, #4]
	sub	r7, r4, #1
	bls	.L748
	ldrb	r1, [r0, #0xb]
	sub	r1, r7
	mov	r2, r3
	mul	r2, r1
	add	r5, r2
.L748:
	str	r5, [sp, #8]
	ldr	r4, [sp, #0x18]
	ldr	r0, [r4, #0x14]
	mov	r9, r0
	ldr	r0, [r4, #0x18]
	mov	r12, r0
	ldrb	r0, [r4, #6]
	add	r4, #0x50
	ldr	r3, .L75c
	bx	r3

.L75c:	.word	Func_dc8
.L760:	.word	0x350
	.word	REG_VCOUNT
.L768:	.word	0x68736d53
.L76c:	.word	iwram_7ff0
.func_end Func_6fc

.Lintr_main:
