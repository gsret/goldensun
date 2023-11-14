	.include "macros.inc"

.thumb_func_start Func_ca1e4
	push	{lr}
	mov	r1, #1
	bl	Func_ca1fc
	pop	{r0}
	bx	r0
.func_end Func_ca1e4

.thumb_func_start Func_ca1f0
	push	{lr}
	mov	r1, #0
	bl	Func_ca1fc
	pop	{r0}
	bx	r0
.func_end Func_ca1f0

.thumb_func_start Func_ca1fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	ldr	r2, =iwram_1eec
	str	r1, [sp, #0x28]
	mov	r3, r2
	ldmia	r3!, {r1}
	str	r1, [sp, #0x24]
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	mov	r3, r2
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x14]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x10]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	ldr	r3, [sp, #0x28]
	cmp	r3, #0
	bne	.Lca23a
	mov	r0, #0
	bl	Func_cd594
	b	.Lca240
.Lca23a:
	mov	r0, #1
	bl	Func_cd594
.Lca240:
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
	str	r3, [sp, #0x18]
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r5, [r5]
	ldr	r0, =0x73
	ldr	r1, [sp, #0x10]
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #0x1c]
	bl	Func_e0524
	ldr	r4, [sp, #0x28]
	cmp	r4, #0
	bne	.Lca284
	ldr	r0, =0x7c
	b	.Lca286
.Lca284:
	ldr	r0, =0x7b
.Lca286:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #0xef
	ldr	r1, [sp, #0x24]
	ldr	r4, =0x7784
	lsl	r3, #7
	add	r2, r1, r3
	mov	r3, #2
	str	r3, [r2]
	add	r2, r1, r4
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x24]
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	mov	r3, #0
	str	r0, [sp, #0xc]
	ldr	r7, =ewram_10000
	mov	r8, r3
.Lca2ce:
	bl	Func_4458
	ldr	r5, =0x3ff
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	ldr	r4, [sp, #0xc]
	mov	r6, r0
	and	r6, r3
	ldr	r3, [r4, #8]
	str	r3, [r7]
	mov	r1, #0xa0
	ldr	r3, [r4, #0xc]
	lsl	r1, #11
	add	r3, r1
	str	r3, [r7, #4]
	ldr	r3, [r4, #0x10]
	mov	r0, r6
	str	r3, [r7, #8]
	bl	Func_2322
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	sub	r3, #0x20
	lsl	r3, #9
	str	r3, [r7, #0x10]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #8
	str	r3, [r7, #0x14]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x30
	str	r3, [r7, #0x18]
	ldr	r2, [sp, #0x28]
	cmp	r2, #0
	bne	.Lca34a
	ldr	r3, [r7, #0xc]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0x14]
.Lca34a:
	mov	r3, #1
	mov	r4, #0x80
	add	r8, r3
	lsl	r4, #1
	add	r7, #0x1c
	cmp	r8, r4
	bne	.Lca2ce
	ldr	r2, [sp, #0x14]
	mov	r3, #0x38
	add	r2, #0xc
	mov	r1, #0
	add	r3, sp
	str	r2, [sp, #8]
	mov	r11, r1
	mov	r9, r3
.Lca368:
	bl	Func_49ac
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #8]
	bl	Func_51d8
	ldr	r6, =ewram_10000
	mov	r4, #0
	mov	r8, r4
.Lca37a:
	mov	r3, r8
	cmp	r3, #0
	bge	.Lca382
	add	r3, #0x1f
.Lca382:
	asr	r3, #5
	lsl	r3, #3
	cmp	r11, r3
	blt	.Lca440
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	blt	.Lca440
	mov	r1, r8
	lsl	r0, r1, #2
	add	r0, r3
	lsl	r0, #10
	bl	Func_2322
	ldr	r3, [r6]
	lsl	r0, #4
	mov	r2, r9
	add	r3, r0
	str	r3, [r2]
	ldr	r3, [r6, #4]
	str	r3, [r2, #4]
	ldr	r3, [r6, #8]
	add	r5, sp, #0x2c
	str	r3, [r2, #8]
	mov	r0, r9
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r4, =0x139
	ldr	r3, [r5, #8]
	cmp	r3, r4
	bgt	.Lca3cc
	mov	r3, #0x9d
	lsl	r3, #1
	str	r3, [r5, #8]
.Lca3cc:
	ldr	r2, =0x27a
	cmp	r3, r2
	ble	.Lca3d6
	str	r2, [r5, #8]
	mov	r3, r2
.Lca3d6:
	ldr	r1, =0xfffffec6
	add	r2, r3, r1
	cmp	r2, #0
	bge	.Lca3e2
	mov	r2, r3
	sub	r2, #0xfb
.Lca3e2:
	asr	r3, r2, #6
	mov	r0, #6
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x10]
	lsr	r3, r0, #31
	add	r1, r2, r1
	add	r3, r0, r3
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x20]
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r1, #0x3e
	mov	r0, r6
	lsl	r2, #3
	bl	Func_e38b8
	ldr	r1, [sp, #0x28]
	cmp	r1, #1
	bne	.Lca43a
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.Lca432
	ldr	r3, [r6, #0xc]
	mov	r4, #0x80
	lsl	r4, #6
	add	r3, r4
	b	.Lca438
.Lca432:
	ldr	r3, [r6, #0xc]
	ldr	r1, =0xffffe000
	add	r3, r1
.Lca438:
	str	r3, [r6, #0xc]
.Lca43a:
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Lca440:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r6, #0x1c
	cmp	r3, #0x80
	bne	.Lca37a
	ldr	r4, [sp, #0x28]
	cmp	r4, #1
	bne	.Lca49a
	ldr	r3, [sp, #0x24]
	ldr	r4, =0x7828
	add	r2, r3, r4
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	beq	.Lca4ea
	mov	r5, r2
	mov	r7, #0x24
	mov	r6, #0x30
.Lca46a:
	cmp	r11, r6
	bne	.Lca488
	mov	r0, #1
	neg	r0, r0
	bl	_Func_bd7dc
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
.Lca488:
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r7, #2
	add	r6, #8
	cmp	r8, r3
	bne	.Lca46a
	b	.Lca4ea
.Lca49a:
	ldr	r4, [sp, #0x24]
	ldr	r1, =0x7828
	mov	r3, #0
	add	r2, r4, r1
	mov	r8, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lca4ea
	mov	r3, #1
	neg	r3, r3
	mov	r10, r3
	mov	r5, r2
	mov	r7, #0x24
	mov	r6, #0x30
.Lca4b8:
	cmp	r11, r6
	bne	.Lca4da
	mov	r0, #0x7e
	bl	_Func_f9080
	mov	r0, r10
	bl	_Func_bd7dc
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, r10
	mov	r3, r8
	bl	Func_d6888
.Lca4da:
	ldr	r3, [r5]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	add	r8, r1
	add	r7, #2
	add	r6, #8
	cmp	r8, r3
	bne	.Lca4b8
.Lca4ea:
	bl	Func_cd52c
	ldr	r4, =0x7824
	ldr	r3, [sp, #0x24]
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0x80
	beq	.Lca50a
	b	.Lca368
.Lca50a:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ca1fc
