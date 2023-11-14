	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_ceb30
	push	{lr}
	mov	r1, #0
	bl	Func_ceb54
	pop	{r0}
	bx	r0
.func_end Func_ceb30

.thumb_func_start Func_ceb3c
	push	{lr}
	mov	r1, #1
	bl	Func_ceb54
	pop	{r0}
	bx	r0
.func_end Func_ceb3c

.thumb_func_start Func_ceb48
	push	{lr}
	mov	r1, #2
	bl	Func_ceb54
	pop	{r0}
	bx	r0
.func_end Func_ceb48

.thumb_func_start Func_ceb54
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x54
	ldr	r2, =iwram_1eec
	str	r1, [sp, #0x3c]
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	str	r3, [sp, #0x38]
	sub	r2, #0x6c
	ldr	r3, =0x7828
	ldr	r2, [r2]
	mov	r10, r1
	add	r3, r10
	str	r2, [sp, #0x2c]
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	ldr	r0, =0x69
	bl	Func_2f40
	mov	r1, r10
	bl	Func_5340
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	bne	.Lceb9a
	ldr	r0, =0xbb
	b	.Lceba6
.Lceb9a:
	ldr	r3, [sp, #0x3c]
	cmp	r3, #1
	bne	.Lceba4
	ldr	r0, =0x8d
	b	.Lceba6
.Lceba4:
	ldr	r0, =0x91
.Lceba6:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_1af8
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	add	r1, sp, #0x40
	ldr	r0, [r3, #4]
	bl	Func_cef64
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r7, #0
	neg	r1, r1
	lsl	r2, #3
.Lcebd2:
	add	r7, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r7, r2
	bne	.Lcebd2
	mov	r0, #0
	str	r0, [sp, #0x30]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lcec6c
	mov	r3, #0xff
	mov	r9, r3
	mov	r11, r0
.Lcebf2:
	mov	r0, r10
	add	r5, r0, r2
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r6, [r0]
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	ldr	r5, =ewram_10000
	mov	r8, r0
	mov	r7, #0
	add	r5, r11
.Lcec10:
	ldr	r3, [r6, #8]
	mov	r1, r8
	str	r1, [r5, #4]
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r2, r9
	and	r0, r2
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, r9
	and	r0, r3
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x80
	lsl	r0, #10
	mov	r3, #0
	add	r7, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Lcec10
	ldr	r3, [sp, #0x30]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r3, #1
	str	r3, [sp, #0x30]
	add	r11, r2
	ldr	r2, =0x7828
	mov	r0, r10
	ldr	r3, [r0, r2]
	ldr	r1, [sp, #0x30]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Lcebf2
.Lcec6c:
	mov	r5, #0x90
	lsl	r5, #3
	mov	r1, r5
	ldr	r0, =Func_dbb9c
	bl	Func_41d8
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0x92
	bl	_Func_f9080
	ldr	r3, [sp, #0x3c]
	mov	r2, #0
	lsl	r3, #1
	str	r2, [sp, #0x34]
	str	r3, [sp, #0x1c]
	ldr	r2, =.Lee090
	add	r3, #1
	ldrb	r1, [r2, r3]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	cmn	r1, r3
	bne	.Lcecbc
	b	.Lcef14
.Lcecbc:
	ldr	r0, [sp, #0x2c]
	add	r0, #0xc
	str	r0, [sp, #0x18]
.Lcecc2:
	ldr	r1, [sp, #0x34]
	cmp	r1, #0x50
	bne	.Lcecdc
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	bne	.Lcecd6
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Lcecdc
.Lcecd6:
	mov	r0, #0x85
	bl	_Func_bd7dc
.Lcecdc:
	bl	Func_49ac
	ldr	r0, [sp, #0x2c]
	ldr	r1, [sp, #0x18]
	bl	Func_51d8
	mov	r6, #0xd3
	ldr	r0, [sp, #0x34]
	lsl	r6, #7
	mov	r3, #0x80
	add	r6, r10
	mov	r7, #0
	lsl	r3, #13
	lsl	r5, r0, #10
.Lcecf8:
	mov	r0, r5
	str	r3, [sp, #8]
	bl	Func_2322
	ldr	r3, [sp, #8]
	lsl	r0, #4
	sub	r0, r3, r0
	mov	r1, #0x80
	asr	r0, #10
	lsl	r1, #3
	add	r7, #1
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r7, #0xa0
	bne	.Lcecf8
	mov	r2, #0
	str	r2, [sp, #0x30]
	ldr	r2, =0x7828
	mov	r0, r10
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lced28
	b	.Lceedc
.Lced28:
	mov	r1, #0
	mov	r3, #0x24
	str	r1, [sp, #0x14]
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r11, r1
.Lced34:
	mov	r0, r10
	add	r5, r0, r2
	ldr	r1, [sp, #0x10]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	ldr	r1, [sp, #0x10]
	mov	r9, r0
	ldrsh	r0, [r3, r1]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	str	r0, [sp, #0x28]
	mov	r3, r11
	ldr	r0, [sp, #0x34]
	add	r3, #0x47
	cmp	r0, r3
	bne	.Lcedaa
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0
	bne	.Lceda4
	mov	r0, #0x86
	bl	_Func_f9080
	b	.Lcedaa

	.pool_aligned

.Lceda4:
	mov	r0, #0x85
	bl	_Func_f9080
.Lcedaa:
	mov	r3, r11
	ldr	r2, [sp, #0x34]
	add	r3, #0x46
	cmp	r2, r3
	bne	.Lcedcc
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	mov	r3, #0x1a
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x30]
	bl	Func_d6888
.Lcedcc:
	ldr	r3, [sp, #0x34]
	cmp	r3, r11
	ble	.Lceeac
	ldr	r2, =.Lee090
	ldr	r0, [sp, #0x1c]
	ldrb	r3, [r2, r0]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lceeac
	ldr	r1, [sp, #0x14]
	add	r3, sp, #0x48
	str	r1, [sp, #0x24]
	mov	r8, r3
	mov	r0, r11
	ldr	r1, [sp, #0xc]
	ldr	r3, =ewram_10000
	str	r0, [sp, #0x20]
	add	r6, r1, r3
.Lcedf0:
	ldr	r0, [sp, #0x24]
	lsl	r3, r0, #1
	add	r3, r7
	ldr	r1, [sp, #0x34]
	lsl	r3, #1
	cmp	r1, r3
	ble	.Lceea0
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	blt	.Lceea0
	mov	r1, r8
	mov	r0, r6
	bl	Func_e3944
	mov	r2, r8
	ldr	r5, [r2]
	asr	r5, #1
	str	r5, [r2]
	mov	r1, #3
	mov	r0, r7
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #2
	add	r1, r0
	mov	r0, r8
	ldr	r3, [r0, #4]
	mov	r2, #0x14
	str	r2, [sp]
	lsl	r1, #7
	mov	r2, #0x20
	sub	r5, #0xa
	sub	r3, #0x10
	str	r2, [sp, #4]
	add	r1, r10
	ldr	r4, [sp, #0x40]
	ldr	r0, [sp, #0x38]
	mov	r2, r5
	bl	_call_via_r4
	mov	r1, #0x3e
	mov	r2, #0
	mov	r0, r6
	bl	Func_e38b8
	ldr	r1, [sp, #0x20]
	ldr	r2, [sp, #0x34]
	add	r3, r1, r7
	add	r3, #0x1e
	cmp	r2, r3
	ble	.Lcee9e
	mov	r3, r9
	ldr	r0, [r3, #8]
	ldr	r3, [r6]
	mov	r2, r9
	ldr	r1, [r2, #0xc]
	sub	r0, r3
	ldr	r3, [sp, #0x28]
	add	r1, r3
	ldr	r3, [r6, #4]
	ldr	r2, [r2, #0x10]
	sub	r1, r3
	ldr	r3, [r6, #8]
	sub	r2, r3
	ldr	r3, [r6, #0xc]
	asr	r0, #9
	add	r3, r0
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	asr	r1, #9
	add	r3, r1
	ldr	r1, =0xfff
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x14]
	asr	r2, #9
	add	r0, r1
	ldr	r1, =0x1ffe
	add	r3, r2
	str	r3, [r6, #0x14]
	cmp	r0, r1
	bhi	.Lcee9e
	ldr	r0, =0xfff
	add	r3, r2, r0
	cmp	r3, r1
	bhi	.Lcee9e
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
.Lcee9e:
	ldr	r2, =.Lee090
.Lceea0:
	ldr	r1, [sp, #0x1c]
	ldrb	r3, [r2, r1]
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, r3
	bne	.Lcedf0
.Lceeac:
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	add	r2, #5
	add	r3, #2
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	ldr	r3, [sp, #0x30]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r1, r2
	add	r3, #1
	str	r1, [sp, #0xc]
	str	r3, [sp, #0x30]
	mov	r0, #0x14
	ldr	r2, =0x7828
	add	r11, r0
	mov	r0, r10
	ldr	r3, [r0, r2]
	ldr	r1, [sp, #0x30]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Lceedc
	b	.Lced34
.Lceedc:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x1c]
	add	r2, #1
	str	r2, [sp, #0x34]
	ldr	r2, =.Lee090
	add	r3, #1
	ldrb	r1, [r2, r3]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	ldr	r3, [sp, #0x34]
	cmp	r3, r1
	beq	.Lcef14
	b	.Lcecc2
.Lcef14:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_dbb9c
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ceb54

.thumb_func_start Func_cef64
	push	{r5, r6, lr}
	sub	sp, #4
	mov	r6, r1
	cmp	r0, #0
	bne	.Lcef96
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0x2f
	str	r3, [r6]
	mov	r1, #7
	mov	r3, #3
	mov	r2, #7
	add	r5, #0xbc
	str	r3, [sp]
	b	.Lcefbe
.Lcef96:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [r6]
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r3, #7
	mov	r1, #7
	mov	r2, #7
	add	r5, #0xbc
.Lcefbe:
	bl	Func_ed408
	ldr	r3, [r5]
	str	r3, [r6, #4]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_cef64

	.section .rodata

.Lee090:
	.incrom 0xee090, 0xee096
