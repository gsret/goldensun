	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cefd4
	push	{lr}
	mov	r1, #1
	bl	Func_ceff8
	pop	{r0}
	bx	r0
.func_end Func_cefd4

.thumb_func_start Func_cefe0
	push	{lr}
	mov	r1, #0
	bl	Func_ceff8
	pop	{r0}
	bx	r0
.func_end Func_cefe0

.thumb_func_start Func_cefec
	push	{lr}
	mov	r1, #2
	bl	Func_ceff8
	pop	{r0}
	bx	r0
.func_end Func_cefec

.thumb_func_start Func_ceff8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r2}
	ldr	r7, =0x7828
	ldr	r3, [r3]
	mov	r8, r2
	sub	sp, #0x20
	add	r7, r8
	str	r3, [sp, #0x10]
	str	r0, [r7]
	mov	r0, #0
	mov	r10, r1
	bl	Func_cd594
	ldr	r0, =0x7b
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	mov	r1, r5
	ldr	r6, =Func_1af8
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r6
	mov	r1, r8
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x8d
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	lsl	r0, #19
	mov	r1, r5
	mov	r2, #0x80
	bl	_call_via_r6
	mov	r3, r10
	cmp	r3, #2
	bne	.Lcf06e
	ldr	r0, =0x68
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	lsl	r0, #19
	mov	r1, r5
	mov	r2, #0x80
	bl	_call_via_r6
.Lcf06e:
	mov	r2, #0x14
	ldr	r3, [r7]
	add	r2, sp
	mov	r9, r2
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r1, r9
	bl	Func_e3980
	mov	r3, r10
	cmp	r3, #0
	bne	.Lcf0bc
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcf098	@ 0x100
	mov	r4, r9
	strh	r3, [r2]
	ldr	r2, [r4]
	mov	r3, #0x40
	sub	r0, r3, r2
	ldr	r2, =REG_BG2X
	b	.Lcf0d4

	.align	2, 0
.Lcf098:
	.word	0x100
	.pool

.Lcf0bc:
	ldr	r3, =0xcc
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	mov	r2, r9
	ldr	r0, [r2]
	neg	r0, r0
	lsl	r0, #2
	mov	r1, #5
	bl	Func_af0_from_thumb
	ldr	r2, =REG_BG2X
	add	r0, #0x40
.Lcf0d4:
	lsl	r3, r0, #8
	str	r3, [r2]
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #8]
	mov	r2, #7
	mov	r3, #7
	b	.Lcf10c

	.pool_aligned

.Lcf10c:
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r8
	add	r5, #0xbc
	str	r6, [r3]
	ldr	r5, [r5]
	mov	r3, #0x32
	add	r2, r8
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	str	r5, [sp, #0xc]
	bl	Func_41d8
	mov	r3, r10
	cmp	r3, #2
	bne	.Lcf140
	ldr	r2, =0x77a8
	mov	r3, #0
	b	.Lcf14a
.Lcf140:
	mov	r4, r10
	cmp	r4, #1
	bne	.Lcf156
	ldr	r2, =0x77a8
	mov	r3, #8
.Lcf14a:
	add	r2, r8
	str	r3, [r2]
	mov	r0, #0xd4
	bl	_Func_f9080
	b	.Lcf15e
.Lcf156:
	ldr	r2, =0x77a8
	mov	r3, #0x20
	add	r2, r8
	str	r3, [r2]
.Lcf15e:
	ldr	r2, =.Lee09f
	mov	r7, #0
	mov	r11, r2
.Lcf164:
	cmp	r7, #0
	bne	.Lcf1a4
	mov	r3, r10
	cmp	r3, #2
	bne	.Lcf18a
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	mov	r2, #1
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, #0
	bl	Func_d6888
	b	.Lcf1a4
.Lcf18a:
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #0x20
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #0xa
	neg	r2, r2
	mov	r3, #0
	bl	Func_d6888
.Lcf1a4:
	cmp	r7, #0x18
	bne	.Lcf1ae
	mov	r0, #0
	bl	_Func_bd7dc
.Lcf1ae:
	cmp	r7, #8
	bne	.Lcf1be
	mov	r3, r10
	cmp	r3, #0
	bne	.Lcf1be
	mov	r0, #0x7e
	bl	_Func_f9080
.Lcf1be:
	cmp	r7, #0x1f
	bgt	.Lcf226
	mov	r3, r7
	cmp	r7, #0
	bge	.Lcf1ca
	add	r3, r7, #3
.Lcf1ca:
	asr	r6, r3, #2
	cmp	r6, #2
	ble	.Lcf1d6
	mov	r3, #1
	and	r3, r6
	add	r6, r3, #1
.Lcf1d6:
	cmp	r7, #0x1b
	bgt	.Lcf226
	mov	r3, r11
	ldrb	r0, [r3, r6]
	ldr	r4, =.Lee096
	ldr	r2, =.Lee09c
	mov	r3, r9
	ldr	r3, [r3, #4]
	lsl	r5, r6, #1
	ldrh	r1, [r4, r5]
	ldrb	r4, [r2, r6]
	sub	r3, r0
	mov	r2, #0x40
	sub	r2, r4
	add	r1, r8
	add	r3, #8
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #8]
	ldr	r0, [sp, #0x10]
	bl	_call_via_r4
	mov	r3, r11
	mov	r4, r9
	ldrb	r0, [r3, r6]
	ldr	r2, =.Lee096
	ldr	r3, [r4, #4]
	ldr	r4, =.Lee09c
	ldrh	r1, [r2, r5]
	ldrb	r2, [r4, r6]
	sub	r3, r0
	str	r2, [sp]
	str	r0, [sp, #4]
	add	r1, r8
	add	r3, #8
	ldr	r0, [sp, #0x10]
	mov	r2, #0x40
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
.Lcf226:
	mov	r2, r10
	cmp	r2, #0
	bne	.Lcf236
	mov	r0, #2
	mov	r1, #2
	bl	Func_e155c
	b	.Lcf23e
.Lcf236:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	Func_e155c
.Lcf23e:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r8
	str	r3, [r2]
	mov	r0, #1
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #0x30
	bne	.Lcf164
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ceff8

	.section .rodata

.Lee096:
	.incrom 0xee096, 0xee09c
.Lee09c:
	.incrom 0xee09c, 0xee09f
.Lee09f:
	.incrom 0xee09f, 0xee0a2
