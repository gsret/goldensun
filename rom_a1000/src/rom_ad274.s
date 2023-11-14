	.include "macros.inc"

.thumb_func_start Func_ad274
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r5, #0x89
	ldr	r7, [r3]
	sub	sp, #4
	mov	r6, #0
	lsl	r5, #2
	mov	r2, #3
.Lad28a:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.Lad29a
	str	r2, [sp]
	bl	_Func_bdd4
	str	r6, [r5, r7]
	ldr	r2, [sp]
.Lad29a:
	sub	r2, #1
	add	r5, #4
	cmp	r2, #0
	bge	.Lad28a
	ldr	r1, =.Laf304
	mov	r3, #0x8d
	lsl	r3, #2
	mov	r10, r1
	mov	r1, #0x89
	add	r6, r7, r3
	lsl	r1, #2
	mov	r3, #0
	add	r7, r1
	mov	r8, r3
	mov	r2, #3
.Lad2b8:
	mov	r1, r8
	mov	r3, r10
	ldr	r0, [r1, r3]
	str	r2, [sp]
	bl	_Func_bc70
	mov	r5, r0
	ldr	r2, [sp]
	cmp	r5, #0
	beq	.Lad2d4
	mov	r1, #2
	bl	_Func_ba30
	ldr	r2, [sp]
.Lad2d4:
	ldr	r3, .Lad2f8	@ 0x10
	stmia	r7!, {r5}
	strh	r3, [r6]
	ldr	r3, .Lad2fc	@ 0x20
	mov	r1, #4
	sub	r2, #1
	strh	r3, [r6, #8]
	add	r8, r1
	add	r6, #2
	cmp	r2, #0
	bge	.Lad2b8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_ad35c
	bl	Func_41d8
	add	sp, #4
	b	.Lad30c

	.align	2, 0
.Lad2f8:
	.word	0x10
.Lad2fc:
	.word	0x20
	.pool

.Lad30c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad274

.thumb_func_start Func_ad318
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r5, #0x89
	ldr	r6, [r3]
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #2
	mov	r7, #3
.Lad32c:
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lad33a
	bl	_Func_bdd4
	mov	r3, r8
	str	r3, [r5, r6]
.Lad33a:
	sub	r7, #1
	add	r5, #4
	cmp	r7, #0
	bge	.Lad32c
	ldr	r0, =Func_ad35c
	bl	Func_4278
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad318

.thumb_func_start Func_ad35c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r2, #0x80
	mov	r8, r3
	mov	r6, #0x8d
	mov	r3, #0xa2
	mov	r7, #0x89
	sub	sp, #0x1c
	mov	r1, #0
	lsl	r2, #9
	lsl	r6, #2
	lsl	r3, #1
	lsl	r7, #2
	mov	r9, r1
	mov	r11, r2
	add	r4, sp, #4
	add	r5, sp, #0xc
	add	r6, r8
	mov	r10, r3
	add	r7, r8
.Lad392:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.Lad3e4
	mov	r3, r8
	mov	r1, r10
	ldrsh	r1, [r1, r3]
	lsl	r3, r1, #16
	mov	r1, #0xf1
	ldrb	r2, [r0, #9]
	lsl	r1, #17
	sub	r1, r3
	mov	r3, #0xd
	mov	r12, r2
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	mov	r2, r11
	str	r2, [sp, #4]
	strb	r3, [r0, #9]
	str	r2, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	str	r1, [r5, #4]
	str	r3, [r5]
	mov	r2, #8
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r5
	lsl	r3, #7
	str	r4, [sp]
	bl	_Func_b168
	ldr	r4, [sp]
.Lad3e4:
	mov	r1, #1
	add	r9, r1
	mov	r3, #2
	mov	r2, r9
	add	r6, #2
	add	r10, r3
	cmp	r2, #3
	ble	.Lad392
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad35c

.thumb_func_start Func_ad40c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	ldr	r0, =0x6002500
	sub	sp, #0x24
	mov	r8, r3
	bl	_Func_219c8
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r0, #0x89
	mov	r3, #0xa2
	lsl	r0, #2
	mov	r1, #0xc
	mov	r7, #0x8d
	mov	r2, #0x91
	lsl	r3, #1
	add	r0, r8
	add	r1, sp
	lsl	r7, #2
	lsl	r2, #2
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r11, r1
	add	r7, r8
	mov	r9, r2
.Lad44c:
	ldr	r2, [sp]
	ldmia	r2!, {r6}
	mov	r1, r2
	str	r1, [sp]
	cmp	r6, #0
	beq	.Lad4d8
	ldr	r0, [sp, #4]
	mov	r2, r8
	ldrsh	r3, [r0, r2]
	mov	r2, #0xf1
	lsl	r3, #16
	lsl	r2, #17
	mov	r0, #0xd
	sub	r2, r3
	neg	r0, r0
	ldrb	r3, [r6, #9]
	mov	r10, r2
	mov	r2, r0
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r1, r9
	mov	r2, r8
	ldr	r5, [r1, r2]
	cmp	r5, #0
	bge	.Lad488
	neg	r3, r5
	mov	r4, r11
	str	r3, [sp, #0xc]
	str	r3, [r4, #4]
	b	.Lad4a4
.Lad488:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #3
	sub	r0, r5
	bl	Func_af0_from_thumb
	mov	r4, r11
	add	r0, r5, r0
	str	r0, [sp, #0xc]
	str	r0, [r4, #4]
	ldr	r3, [sp, #0xc]
	mov	r0, r8
	mov	r1, r9
	str	r3, [r0, r1]
.Lad4a4:
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	add	r1, sp, #0x14
	lsl	r3, #16
	str	r3, [r1]
	mov	r3, r10
	str	r3, [r1, #4]
	mov	r0, #8
	ldrsh	r3, [r7, r0]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r1, #8]
	mov	r3, #0
	str	r3, [r1, #0xc]
	mov	r3, #8
	ldrsh	r2, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #8
	cmp	r2, #0
	blt	.Lad4d0
	mov	r3, #0x80
	lsl	r3, #7
.Lad4d0:
	mov	r0, r6
	mov	r2, r4
	bl	_Func_b168
.Lad4d8:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #8]
	mov	r0, #4
	add	r1, #2
	add	r2, #1
	add	r7, #2
	add	r9, r0
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	cmp	r2, #3
	ble	.Lad44c
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad40c

.thumb_func_start Func_ad508
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r5, #0x89
	ldr	r6, [r3]
	sub	sp, #4
	mov	r7, #0
	lsl	r5, #2
	mov	r2, #3
.Lad51e:
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lad52e
	str	r2, [sp]
	bl	_Func_bdd4
	str	r7, [r5, r6]
	ldr	r2, [sp]
.Lad52e:
	sub	r2, #1
	add	r5, #4
	cmp	r2, #0
	bge	.Lad51e
	ldr	r1, =.Laf304
	mov	r3, #0x8d
	lsl	r3, #2
	mov	r10, r1
	mov	r1, #0x89
	add	r7, r6, r3
	lsl	r1, #2
	mov	r3, #0
	add	r6, r1
	mov	r8, r3
	mov	r2, #3
.Lad54c:
	mov	r1, r8
	mov	r3, r10
	ldr	r0, [r1, r3]
	str	r2, [sp]
	bl	_Func_bc70
	mov	r5, r0
	ldr	r2, [sp]
	cmp	r5, #0
	beq	.Lad568
	mov	r1, #2
	bl	_Func_ba30
	ldr	r2, [sp]
.Lad568:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x20]
	ldr	r3, .Lad594	@ 0x10
	str	r5, [r6]
	strh	r3, [r7]
	ldr	r3, .Lad598	@ 0xc8
	mov	r1, #4
	sub	r2, #1
	strh	r3, [r7, #8]
	add	r6, #4
	add	r7, #2
	add	r8, r1
	cmp	r2, #0
	bge	.Lad54c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_ad40c
	bl	Func_41d8
	add	sp, #4
	b	.Lad5a8

	.align	2, 0
.Lad594:
	.word	0x10
.Lad598:
	.word	0xc8
	.pool

.Lad5a8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad508

.thumb_func_start Func_ad5b4
	push	{r5, r6, lr}
	mov	r5, r3
	ldr	r3, =iwram_1f2c
	mov	r6, #0x89
	ldr	r4, [r3]
	lsl	r6, #2
	lsl	r3, r0, #2
	add	r3, r6
	ldr	r3, [r4, r3]
	cmp	r3, #0
	beq	.Lad5e4
	lsl	r0, #1
	add	r6, #0x10
	add	r3, r0, r6
	strh	r1, [r4, r3]
	mov	r3, #0x8f
	lsl	r3, #2
	add	r0, r3
	mov	r3, r2
	cmp	r5, #0
	beq	.Lad5e2
	ldr	r3, .Lad5ec	@ 0xffff8000
	orr	r3, r2
.Lad5e2:
	strh	r3, [r4, r0]
.Lad5e4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lad5ec:
	.word	0xffff8000
.func_end Func_ad5b4

.thumb_func_start Func_ad5f4
	ldr	r3, =iwram_1f2c
	mov	r2, #0x91
	ldr	r3, [r3]
	lsl	r2, #2
	lsl	r0, #2
	add	r0, r2
	str	r1, [r3, r0]
	bx	lr
.func_end Func_ad5f4

.thumb_func_start Func_ad608
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r3, #0x89
	lsl	r0, #2
	lsl	r3, #2
	add	r6, r0, r3
	ldr	r0, [r7, r6]
	mov	r5, r1
	mov	r8, r2
	cmp	r0, #0
	beq	.Lad62c
	bl	_Func_bdd4
	mov	r3, #0
	str	r3, [r7, r6]
.Lad62c:
	ldr	r3, =.Laf304
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	bl	_Func_bc70
	mov	r5, r0
	cmp	r5, #0
	beq	.Lad642
	mov	r1, r8
	bl	_Func_ba30
.Lad642:
	str	r5, [r7, r6]
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ad608

.thumb_func_start Func_ad658
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r5, #0x89
	ldr	r6, [r3]
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #2
	mov	r7, #3
.Lad66c:
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lad67a
	bl	_Func_bdd4
	mov	r3, r8
	str	r3, [r5, r6]
.Lad67a:
	sub	r7, #1
	add	r5, #4
	cmp	r7, #0
	bge	.Lad66c
	ldr	r0, =Func_ad40c
	bl	Func_4278
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad658

.thumb_func_start Func_ad69c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r1, =0x219
	ldr	r2, [r3]
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.Lad6c6
	mov	r3, #0x8a
	lsl	r3, #1
	add	r7, r2, r1
	add	r5, r2, r3
.Lad6b6:
	ldmia	r5!, {r0}
	mov	r1, #1
	bl	_Func_ba30
	ldrb	r3, [r7]
	add	r6, #1
	cmp	r6, r3
	blt	.Lad6b6
.Lad6c6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ad69c

.thumb_func_start Func_ad6d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #0x88
	mov	r9, r3
	mov	r1, #1
	mov	r2, #0
	mov	r3, #2
	mov	r11, r0
	mov	r0, #0
	str	r0, [sp, #0x64]
	str	r1, [sp, #0x60]
	str	r3, [sp, #0x58]
	str	r2, [sp, #0x5c]
	mov	r4, r9
	ldr	r2, [r4, #0x14]
	mov	r3, #0xd
	mov	r0, sp
	strb	r3, [r2, #5]
	mov	r7, #0
	add	r0, #0x80
	mov	r3, #0xa5
	str	r7, [sp, #0x80]
	str	r0, [sp, #0x18]
	lsl	r3, #1
	str	r7, [r0, #4]
	ldr	r1, .Lad748	@ 0xc8
	mov	r2, #3
	add	r3, r9
.Lad71a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.Lad71a
	mov	r1, r9
	mov	r3, #0x1d
	ldrsb	r3, [r1, r3]
	mov	r4, #0x9a
	lsl	r4, #1
	ldr	r2, .Lad74c	@ 0x78
	lsl	r3, #1
	add	r3, r4
	mov	r0, r9
	strh	r2, [r0, r3]
	mov	r3, #0x1d
	ldrsb	r3, [r0, r3]
	mov	r0, #0xa2
	ldr	r1, .Lad750	@ 0x20
	lsl	r0, #1
	lsl	r3, #1
	b	.Lad758

	.align	2, 0
.Lad748:
	.word	0xc8
.Lad74c:
	.word	0x78
.Lad750:
	.word	0x20
	.pool

.Lad758:
	add	r3, r0
	mov	r2, r9
	strh	r1, [r2, r3]
	mov	r3, #0x1c
	ldrsb	r3, [r2, r3]
	ldr	r2, =0x10
	lsl	r3, #1
	add	r3, r4
	mov	r4, r9
	strh	r2, [r4, r3]
	mov	r3, #0x1c
	ldrsb	r3, [r4, r3]
	lsl	r3, #1
	add	r3, r0
	mov	r0, r9
	strh	r1, [r0, r3]
	mov	r5, #0x86
	ldr	r0, [r0, #0x30]
	lsl	r5, #1
	bl	_Func_164ac
	add	r5, r9
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r5
	mov	r1, #1
	bl	Func_a1114
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	b	.Lad7a4

	.pool_aligned

.Lad7a4:
	mov	r2, #0
	mov	r0, r5
	mov	r3, #0x1e
	bl	Func_a10d0
	mov	r1, sp
	mov	r7, #1
	add	r1, #0x78
	mov	r2, r11
	str	r7, [sp, #0x78]
	str	r1, [sp, #0x1c]
	str	r7, [r1, #4]
	cmp	r2, #1
	bls	.Lad7c2
	b	.Lad922
.Lad7c2:
	mov	r0, #0x60
	bl	Func_4970
	mov	r5, #0xa6
	lsl	r5, #1
	str	r0, [sp, #0x54]
	mov	r0, r5
	bl	Func_4970
	mov	r3, #0
	str	r3, [sp, #0x4c]
	str	r3, [sp, #0x48]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r6, [r3]
	ldr	r3, =0x256
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x50]
	mov	r3, #0x95
	lsl	r3, #2
	mov	r4, #0x1f
	add	r3, r9
	mov	r8, r4
	ldrb	r3, [r3]
	mov	r10, r0
	mov	r0, r8
	and	r0, r3
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r2
	lsl	r3, #16
	lsr	r3, #16
	mov	r8, r0
	mov	r0, r6
	str	r3, [sp, #0x44]
	bl	_Func_77394
	mov	r7, r0
	ldr	r3, =Func_1af8
	mov	r1, r7
	mov	r2, r5
	mov	r0, r10
	bl	_call_via_r3
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	mov	r2, r8
	bl	_Func_7a350
	mov	r1, r11
	cmp	r1, #0
	bne	.Lad870
	ldr	r3, =0x257
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x4c]
	ldr	r3, =0x255
	add	r3, r9
	ldrb	r3, [r3]
	mov	r2, #0x1f
	and	r2, r3
	mov	r3, #0xbd
	str	r2, [sp, #0x48]
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r5, #0x80
	lsl	r5, #8
	and	r5, r3
	lsl	r5, #16
	lsr	r5, #16
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	bl	_Func_7a1b4
	cmp	r5, #0
	beq	.Lad870
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x48]
	bl	_Func_7a2e4
.Lad870:
	mov	r0, r6
	bl	_Func_77428
	mov	r3, r10
	mov	r4, sp
	mov	r0, sp
	add	r4, #0x74
	add	r3, #0x58
	add	r0, #0x70
	mov	r1, r7
	str	r3, [sp, #0x40]
	str	r0, [sp, #0x38]
	str	r0, [sp]
	ldr	r2, [sp, #0x54]
	add	r1, #0x58
	mov	r0, r3
	mov	r3, r4
	str	r4, [sp, #0x3c]
	bl	Func_aae14
	mov	r2, #0xa6
	str	r0, [sp, #0x78]
	mov	r1, r10
	lsl	r2, #1
	ldr	r5, =Func_1af8
	mov	r0, r7
	bl	_call_via_r5
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r6, [r3]
	mov	r0, r6
	bl	_Func_77394
	mov	r2, #0xa6
	mov	r7, r0
	mov	r1, r7
	mov	r0, r10
	lsl	r2, #1
	bl	_call_via_r5
	mov	r1, r11
	cmp	r1, #0
	bne	.Lad8d2
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x48]
	bl	_Func_7a350
.Lad8d2:
	mov	r2, r8
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	bl	_Func_7a1b4
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.Lad8ec
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	mov	r2, r8
	bl	_Func_7a2e4
.Lad8ec:
	mov	r0, r6
	bl	_Func_77428
	ldr	r3, [sp, #0x38]
	mov	r1, r7
	str	r3, [sp]
	ldr	r2, [sp, #0x54]
	ldr	r0, [sp, #0x40]
	ldr	r3, [sp, #0x3c]
	add	r1, #0x58
	bl	Func_aae14
	ldr	r4, [sp, #0x1c]
	mov	r2, #0xa6
	str	r0, [r4, #4]
	mov	r1, r10
	lsl	r2, #1
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r10
	bl	Func_2df0
	ldr	r0, [sp, #0x54]
	bl	Func_2df0
	b	.Lad9d8
.Lad922:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Lad9d8
	mov	r0, #0x60
	bl	Func_4970
	str	r0, [sp, #0x34]
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_4970
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r6, [r3]
	ldr	r3, =0x256
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x30]
	mov	r3, #0x95
	lsl	r3, #2
	mov	r10, r0
	add	r3, r9
	mov	r0, #0x1f
	ldrb	r3, [r3]
	mov	r8, r0
	mov	r1, r8
	and	r1, r3
	mov	r2, r11
	mov	r3, #3
	eor	r3, r2
	neg	r5, r3
	mov	r0, r6
	mov	r8, r1
	orr	r5, r3
	bl	_Func_77394
	lsr	r5, #31
	sub	r5, r7, r5
	mov	r2, #0xa6
	mov	r7, r0
	mov	r1, r7
	lsl	r2, #1
	mov	r0, r10
	ldr	r3, =Func_1af8
	bl	_call_via_r3
	mov	r0, r6
	ldr	r1, [sp, #0x30]
	mov	r2, r8
	bl	_Func_7a350
	cmp	r5, #0
	beq	.Lad998
	mov	r0, r6
	ldr	r1, [sp, #0x30]
	mov	r2, r8
	bl	_Func_7a2e4
.Lad998:
	mov	r0, r6
	bl	_Func_77428
	mov	r0, r10
	add	r2, sp, #0x68
	mov	r1, r7
	add	r3, sp, #0x6c
	str	r2, [sp]
	add	r1, #0x58
	ldr	r2, [sp, #0x34]
	add	r0, #0x58
	bl	Func_aae14
	mov	r2, #0xa6
	str	r0, [sp, #0x78]
	mov	r1, r10
	lsl	r2, #1
	ldr	r4, =Func_1af8
	mov	r0, r7
	bl	_call_via_r4
	ldr	r0, [sp, #0x1c]
	ldr	r3, [sp, #0x78]
	mov	r1, #0
	str	r3, [r0, #4]
	mov	r0, r10
	str	r1, [sp, #0x58]
	bl	Func_2df0
	ldr	r0, [sp, #0x34]
	bl	Func_2df0
.Lad9d8:
	ldr	r0, [sp, #0x78]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	add	r0, #1
	str	r0, [sp, #0x78]
	cmp	r0, #0
	bne	.Lad9ee
	mov	r3, #1
	str	r3, [sp, #0x78]
.Lad9ee:
	ldr	r2, [sp, #0x1c]
	ldr	r0, [r2, #4]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x1c]
	add	r0, #1
	str	r0, [r3, #4]
	cmp	r0, #0
	bne	.Lada0a
	ldr	r4, [sp, #0x1c]
	mov	r3, #1
	str	r3, [r4, #4]
.Lada0a:
	mov	r0, r9
	mov	r5, #2
	add	r0, #0x24
	mov	r6, #0xf
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r0, [sp, #0x2c]
	str	r6, [sp]
	bl	Func_a10d0
	mov	r1, r9
	str	r5, [sp, #4]
	mov	r5, #0x86
	add	r1, #0x34
	lsl	r5, #1
	str	r1, [sp, #0x28]
	mov	r2, #5
	mov	r0, r1
	mov	r3, #0xf
	mov	r1, #0xf
	add	r5, r9
	str	r6, [sp]
	bl	Func_a10d0
	ldr	r0, [r5]
	bl	_Func_16498
	mov	r2, r11
	cmp	r2, #2
	bne	.Lada4e
	ldr	r0, =0xba5
	b	.Lada56
.Lada4e:
	mov	r3, r11
	cmp	r3, #3
	bne	.Lada6e
	ldr	r0, =0xba4
.Lada56:
	ldr	r1, [r5]
	mov	r2, #0x60
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x60
	mov	r3, #0x10
	bl	_Func_1e7c0
	b	.Ladaa6
.Lada6e:
	mov	r4, r11
	cmp	r4, #0
	bne	.Lada8e
	ldr	r0, =0xba7
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #8
	bl	_Func_1e7c0
	b	.Ladaa6
.Lada8e:
	ldr	r0, =0xba6
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #8
	bl	_Func_1e7c0
.Ladaa6:
	mov	r1, #1
	mov	r2, r11
	mov	r7, #0xbc
	eor	r2, r1
	lsl	r7, #1
	mov	r0, #0x80
	neg	r3, r2
	add	r7, r9
	lsl	r0, #8
	orr	r3, r2
	mov	r8, r0
	ldrh	r2, [r7]
	lsr	r5, r3, #31
	mov	r3, r8
	and	r3, r2
	sub	r5, r1, r5
	cmp	r3, #0
	bne	.Ladad2
	mov	r0, #2
	bl	_Func_1e71c
	ldrh	r2, [r7]
.Ladad2:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r6, #0x86
	mov	r3, #0x1f
	and	r3, r2
	ldr	r1, =0x45f
	lsl	r0, #2
	lsl	r6, #1
	add	r0, r3
	add	r6, r9
	add	r0, r1
	lsl	r3, r5, #3
	ldr	r1, [r6]
	mov	r2, #0x30
	bl	_Func_1e7c0
	ldrh	r3, [r7]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, #0
	lsr	r1, #5
	ldr	r0, [r6]
	add	r1, r2
	str	r3, [sp]
	mov	r2, #5
	mov	r10, r3
	mov	r3, r5
	bl	_Func_19000
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r4, r11
	cmp	r4, #0
	bne	.Ladbba
	mov	r5, #0xbd
	lsl	r5, #1
	add	r5, r9
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	bne	.Ladb38
	mov	r0, #2
	bl	_Func_1e71c
	ldrh	r2, [r5]
.Ladb38:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	ldr	r1, =0x45f
	lsl	r0, #2
	add	r0, r3
	add	r0, r1
	mov	r2, #0x30
	ldr	r1, [r6]
	mov	r3, #0x10
	bl	_Func_1e7c0
	ldrh	r3, [r5]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, r11
	lsr	r1, #5
	ldr	r0, [r6]
	add	r1, r2
	str	r3, [sp]
	mov	r2, #5
	mov	r3, #2
	bl	_Func_19000
	mov	r0, #0xf
	bl	_Func_1e71c
	b	.Ladc24
.Ladb7a:
	mov	r7, #1
	b	.Lae216

	.pool_aligned

.Ladbb4:
	mov	r0, #0x71
	mov	r7, #2
	b	.Lae15e
.Ladbba:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Ladc24
	ldrh	r2, [r7]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Ladbd4
	mov	r0, #2
	bl	_Func_1e71c
	ldrh	r2, [r7]
.Ladbd4:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	ldr	r4, =0x45f
	and	r3, r2
	lsl	r0, #2
	add	r0, r3
	add	r0, r4
	ldr	r1, [r6]
	mov	r2, #0x30
	mov	r3, #0x10
	bl	_Func_1e7c0
	ldrh	r3, [r7]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, r10
	lsr	r1, #5
	add	r1, r2
	ldr	r0, [r6]
	mov	r2, #5
	str	r3, [sp]
	mov	r3, #2
	bl	_Func_19000
	mov	r0, #0xf
	bl	_Func_1e71c
	ldr	r0, [r6]
	mov	r4, r10
	ldr	r1, =0xf296
	mov	r2, #7
	mov	r3, #1
	str	r4, [sp]
	bl	_Func_19000
.Ladc24:
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r10, r3
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r9
	ldr	r6, [r3]
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	ldr	r0, =0x212c
	str	r3, [sp, #0x20]
	add	r5, r6, r0
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Ladc4a
	b	.Lade0c
.Ladc4a:
	mov	r0, #0x80
	lsl	r0, #2
	bl	Func_4970
	mov	r1, #0
	ldr	r3, =0x2128
	str	r1, [sp, #0x24]
	str	r1, [sp, #0x20]
	add	r2, r6, r3
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	ldr	r3, [r5]
	sub	r3, #5
	mov	r8, r0
	cmp	r3, #0x12
	bls	.Ladc6e
	b	.Lade06
.Ladc6e:
	ldr	r2, =.Ladc78
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ladc78:
	.word	.Ladcc4
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Ladce6
	.word	.Ladd72
	.word	.Ladcc4
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Ladcc4
.Ladcc4:
	ldr	r4, =0x2128
	add	r2, r6, r4
	ldr	r3, [r2]
	cmp	r3, #0x64
	beq	.Ladcd0
	b	.Lade06
.Ladcd0:
	mov	r0, #1
	ldr	r1, =0x212c
	str	r0, [sp, #0x20]
	str	r0, [sp, #0x24]
	mov	r3, #0
	str	r3, [r2]
	add	r2, r6, r1
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lade06
.Ladce6:
	ldr	r2, =0x2128
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Ladcf2
	b	.Lade06
.Ladcf2:
	mov	r2, #0x80
	mov	r1, r10
	ldr	r3, =Func_1af8
	mov	r0, r8
	lsl	r2, #2
	bl	_call_via_r3
	mov	r1, #8
	mov	r2, #0
	mov	r3, #1
	ldr	r0, =0xc43
	bl	_Func_17658
	mov	r7, r0
	mov	r4, r9
	ldr	r3, [r4, #0x14]
	mov	r5, #1
	strb	r5, [r3, #5]
	mov	r0, #2
	mov	r1, #0x60
	bl	Func_a1ac0
	ldr	r3, =ewram_240
	mov	r0, #0x83
	lsl	r0, #2
	add	r3, r0
	strb	r5, [r3]
	b	.Ladd30
.Ladd2a:
	mov	r0, #1
	bl	Func_30f8
.Ladd30:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Ladd2a
	mov	r0, r7
	mov	r1, #1
	bl	_Func_16418
	mov	r2, #0x80
	mov	r1, r8
	ldr	r3, =Func_1af8
	lsl	r2, #2
	mov	r0, r10
	bl	_call_via_r3
	bl	_Func_1e318
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	ldr	r2, =0x2128
	str	r3, [sp, #0x60]
	mov	r1, #0
	add	r3, r6, r2
	str	r1, [r3]
	ldr	r3, =0x212c
	add	r2, r6, r3
	mov	r3, #0xb
	str	r3, [r2]
	mov	r4, r9
	ldr	r2, [r4, #0x14]
	b	.Lade02
.Ladd72:
	ldr	r0, =0x2128
	add	r3, r6, r0
	ldr	r3, [r3]
	cmp	r3, #0x3c
	bne	.Lade06
	mov	r2, #0x80
	mov	r1, r10
	ldr	r3, =Func_1af8
	mov	r0, r8
	lsl	r2, #2
	bl	_call_via_r3
	mov	r1, #8
	mov	r2, #0
	mov	r3, #1
	ldr	r0, =0xc42
	bl	_Func_17658
	mov	r7, r0
	mov	r1, r9
	ldr	r3, [r1, #0x14]
	mov	r5, #1
	strb	r5, [r3, #5]
	mov	r0, #0x6a
	mov	r1, #0x38
	bl	Func_a1ac0
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	strb	r5, [r3]
	b	.Laddba
.Laddb4:
	mov	r0, #1
	bl	Func_30f8
.Laddba:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Laddb4
	mov	r0, r7
	mov	r1, #1
	bl	_Func_16418
	mov	r2, #0x80
	mov	r1, r8
	ldr	r3, =Func_1af8
	lsl	r2, #2
	mov	r0, r10
	bl	_call_via_r3
	bl	_Func_1e318
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, =0x2128
	mov	r3, #1
	ldr	r0, =0x212c
	str	r3, [sp, #0x60]
	mov	r5, #0
	add	r3, r6, r4
	str	r5, [r3]
	add	r2, r6, r0
	mov	r3, #0xc
	str	r3, [r2]
	mov	r1, r9
	ldr	r2, [r1, #0x14]
.Lade02:
	mov	r3, #0xd
	strb	r3, [r2, #5]
.Lade06:
	mov	r0, r8
	bl	Func_2df0
.Lade0c:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0
	bne	.Lade14
	b	.Ladfbc
.Lade14:
	mov	r3, #1
	mov	r4, r11
	mov	r8, r3
	cmp	r4, #1
	bhi	.Lade78
	mov	r5, #0x86
	lsl	r5, #1
	mov	r3, #0x18
	add	r5, r9
	ldr	r0, [r5]
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, #0x10
	mov	r3, #0xe0
	bl	_Func_164d4
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bne	.Lade48
	ldr	r0, =0xba1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0x10
	bl	_Func_1e7c0
	b	.Lade78
.Lade48:
	ldr	r1, [sp, #0x58]
	mov	r2, #2
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	mov	r2, #0x86
	lsl	r2, #2
	lsr	r3, #31
	add	r3, r2
	mov	r2, r9
	add	r2, #2
	ldrb	r0, [r2, r3]
	mov	r1, #1
	bl	_Func_19908
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r1, [r3]
	ldr	r0, =0xba0
	mov	r2, #0x80
	mov	r3, #0x10
	bl	_Func_1e7c0
.Lade78:
	ldr	r2, =0xea6
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	mov	r2, r9
	ldr	r0, [r2, #0x24]
	bl	_Func_16478
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	bl	_Func_16478
	ldr	r4, [sp, #0x60]
	lsr	r3, r4, #1
	cmp	r3, #0
	beq	.Lade9e
	mov	r0, #1
	bl	Func_30f8
.Lade9e:
	mov	r0, r11
	cmp	r0, #3
	bne	.Ladeac
	mov	r1, #0
	mov	r7, #0
	mov	r8, r1
	b	.Ladebc
.Ladeac:
	mov	r2, r11
	cmp	r2, #2
	bne	.Ladeba
	mov	r3, #0
	mov	r7, #1
	mov	r8, r3
	b	.Ladebc
.Ladeba:
	mov	r7, #2
.Ladebc:
	ldr	r4, [sp, #0x58]
	cmp	r4, #0
	beq	.Ladf64
	cmp	r4, #1
	beq	.Laded0
	mov	r0, r11
	mov	r1, #0
	bl	Func_aca04
	b	.Ladfb4
.Laded0:
	mov	r0, r11
	cmp	r0, #1
	bne	.Laded8
	mov	r7, #4
.Laded8:
	ldr	r6, =0x21b
	ldr	r2, [sp, #0x58]
	mov	r1, r9
	add	r6, r9
	ldr	r0, [r1, #0x24]
	ldrb	r3, [r6]
	mov	r5, #0
	str	r2, [sp]
	mov	r1, #0
	mov	r2, #0
	str	r5, [sp, #4]
	str	r7, [sp, #8]
	str	r5, [sp, #0xc]
	str	r5, [sp, #0x10]
	bl	Func_acab8
	ldr	r4, [sp, #0x58]
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	ldr	r1, [sp, #0x18]
	ldrb	r3, [r6]
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r7, [sp, #8]
	ldr	r2, [r1, #4]
	add	r2, #1
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r5, [sp, #0x10]
	bl	Func_acab8
	b	.Ladfb4

	.pool_aligned

.Ladf64:
	mov	r2, r11
	cmp	r2, #1
	bne	.Ladf70
	mov	r3, #0
	mov	r7, #1
	mov	r8, r3
.Ladf70:
	mov	r5, #0x96
	ldr	r1, [sp, #0x58]
	lsl	r5, #2
	mov	r4, r9
	add	r5, r9
	mov	r2, r8
	ldr	r0, [r4, #0x24]
	ldrb	r3, [r5]
	mov	r6, #1
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r1, [sp, #0xc]
	mov	r2, #0
	mov	r1, #0
	str	r7, [sp, #8]
	str	r6, [sp, #0x10]
	bl	Func_acab8
	ldr	r2, [sp, #0x80]
	mov	r3, r9
	mov	r1, r8
	add	r2, #1
	ldr	r4, [sp, #0x58]
	ldr	r0, [r3, #0x34]
	ldrb	r3, [r5]
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r6, [sp, #0x10]
	bl	Func_acab8
.Ladfb4:
	ldr	r2, =0xea6
	mov	r3, #0
	add	r2, r10
	strb	r3, [r2]
.Ladfbc:
	ldr	r2, [sp, #0x58]
	cmp	r2, #1
	bgt	.Lae050
	ldr	r0, [sp, #0x1c]
	mov	r3, r9
	lsl	r4, r2, #2
	ldr	r7, [r3, #0x34]
	add	r3, r4, r0
	ldr	r2, [r3]
	cmp	r2, #1
	ble	.Lae050
	mov	r5, #0
	cmp	r5, r2
	bge	.Lae012
	mov	r6, r3
.Ladfda:
	ldr	r2, =0xf031
	add	r1, r5, r2
	cmp	r5, #9
	ble	.Ladfe4
	ldr	r1, =0xf030
.Ladfe4:
	ldr	r0, [sp, #0x18]
	ldr	r3, [r4, r0]
	cmp	r5, r3
	bne	.Ladff0
	ldr	r2, =0xfffff000
	add	r1, r2
.Ladff0:
	ldr	r3, [r6]
	ldrh	r2, [r7, #8]
	sub	r2, r3
	add	r2, r5
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	sub	r3, #1
	mov	r0, r7
	str	r4, [sp, #0x14]
	bl	_Func_19000
	ldr	r3, [r6]
	add	r5, #1
	ldr	r4, [sp, #0x14]
	cmp	r5, r3
	blt	.Ladfda
.Lae012:
	ldr	r0, [sp, #0x1c]
	ldrh	r2, [r7, #8]
	ldr	r3, [r4, r0]
	mov	r6, #1
	neg	r6, r6
	sub	r2, r3
	mov	r5, #0
	mov	r0, r7
	mov	r3, r6
	ldr	r1, =0xf128
	sub	r2, #3
	str	r5, [sp]
	bl	_Func_19000
	ldrh	r2, [r7, #8]
	ldr	r1, =0xf129
	sub	r2, #2
	mov	r0, r7
	mov	r3, r6
	str	r5, [sp]
	bl	_Func_19000
	ldr	r1, =0xea3
	ldrh	r2, [r7, #0xe]
	add	r1, r10
	lsr	r2, #2
	mov	r3, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.Lae050:
	ldr	r1, [sp, #0x5c]
	add	r1, #1
	str	r1, [sp, #0x5c]
	mov	r0, r1
	mov	r1, #0x3c
	bl	Func_b1c_from_thumb
	sub	r6, r0, #5
	cmp	r6, #0
	bge	.Lae066
	mov	r6, #0
.Lae066:
	cmp	r6, #0x1d
	ble	.Lae06c
	mov	r6, #0x1d
.Lae06c:
	ldr	r5, =0xffff4000
	mov	r0, #0
	mov	r1, r5
	bl	Func_ad5f4
	mov	r0, #1
	mov	r1, r5
	bl	Func_ad5f4
	mov	r2, r11
	cmp	r2, #1
	bhi	.Lae0ec
	mov	r1, #0x1e
	mov	r0, r6
	bl	Func_b1c_from_thumb
	mov	r3, r0
	lsl	r0, r3, #4
	add	r0, r3
	lsl	r0, #4
	add	r0, r3
	lsl	r0, #2
	bl	Func_2322
	ldr	r3, =Func_888
	mov	r1, r0
	mov	r0, #0x10
	.call_via r3
	mov	r3, #6
	neg	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bge	.Lae0b4
	mov	r5, r3
.Lae0b4:
	cmp	r5, #0xc
	ble	.Lae0ba
	mov	r5, #0xc
.Lae0ba:
	mov	r0, r6
	mov	r1, #0x23
	bl	Func_b1c_from_thumb
	lsl	r6, r0, #1
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	add	r1, #0x22
	add	r2, #0x14
	mov	r0, #0
	bl	Func_ad5b4
	mov	r3, r11
	cmp	r3, #0
	bne	.Lae0f8
	mov	r1, #0x63
	mov	r2, #0x24
	sub	r1, r6
	sub	r2, r5
	mov	r0, #1
	mov	r3, #0
	bl	Func_ad5b4
	b	.Lae0f8
.Lae0ec:
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x1e
	mov	r3, #0
	bl	Func_ad5b4
.Lae0f8:
	ldr	r4, [sp, #0x60]
	cmp	r4, #0
	beq	.Lae10c
	mov	r0, #0
	str	r0, [sp, #0x60]
	mov	r1, #2
	ldr	r0, [sp, #0x64]
	bl	Func_aa538
	str	r0, [sp, #0x64]
.Lae10c:
	ldr	r1, [sp, #0x64]
	lsl	r0, r1, #3
	sub	r0, r1
	lsl	r0, #3
	add	r0, #0x50
	mov	r1, #0x10
	bl	Func_a1a40
	ldr	r2, [sp, #0x5c]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lae148
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lae13c
	ldr	r1, =Data_af26c
	ldr	r3, =Func_1af8
	ldr	r0, =0x60052c0
	mov	r2, #0x20
	bl	_call_via_r3
	b	.Lae148
.Lae13c:
	ldr	r3, =Func_8d8
	ldr	r0, =0x60052c0
	mov	r1, #0x20
	ldr	r2, =0x44444444
	bl	_call_via_r3
.Lae148:
	ldr	r4, [sp, #0x24]
	mov	r3, #1
	and	r3, r4
	cmp	r3, #0
	beq	.Lae166
	ldr	r0, [sp, #0x64]
	cmp	r0, #0
	bne	.Lae15a
	b	.Ladb7a
.Lae15a:
	mov	r0, #0x71
	mov	r7, #1
.Lae15e:
	bl	_Func_f9080
	neg	r7, r7
	b	.Lae216
.Lae166:
	ldr	r1, [sp, #0x24]
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Lae172
	b	.Ladbb4
.Lae172:
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	bne	.Lae15a
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Lae1a2
	mov	r2, r11
	cmp	r2, #1
	bhi	.Lae20e
	ldr	r0, [sp, #0x58]
	mov	r1, #3
	add	r0, #1
	bl	Func_b1c_from_thumb
	mov	r3, #2
	str	r0, [sp, #0x58]
	mov	r0, #0x6f
	str	r3, [sp, #0x60]
	bl	_Func_f9080
	b	.Lae20e
.Lae1a2:
	ldr	r4, [sp, #0x20]
	mov	r3, #0x20
	and	r3, r4
	cmp	r3, #0
	beq	.Lae1d8
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bgt	.Lae20e
	ldr	r1, [sp, #0x18]
	lsl	r3, r0, #2
	add	r5, r3, r1
	ldr	r0, [r5]
	sub	r0, #1
	str	r0, [r5]
	ldr	r2, [sp, #0x1c]
	ldr	r1, [r3, r2]
	bl	Func_aa538
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r3, #1
	str	r3, [sp, #0x60]
	b	.Lae20e
.Lae1d8:
	ldr	r4, [sp, #0x20]
	mov	r3, #0x10
	and	r3, r4
	cmp	r3, #0
	beq	.Lae20e
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bgt	.Lae20e
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	ldr	r1, [sp, #0x58]
	ldr	r2, [sp, #0x18]
	lsl	r3, r1, #2
	add	r5, r3, r2
	ldr	r0, [r5]
	add	r0, #1
	str	r0, [r5]
	mov	r4, #1
	str	r4, [sp, #0x60]
	ldr	r2, [sp, #0x1c]
	ldr	r1, [r3, r2]
	bl	Func_aa538
	str	r0, [r5]
.Lae20e:
	mov	r0, #1
	bl	Func_30f8
	b	.Ladc24
.Lae216:
	mov	r1, #0
	mov	r0, #0
	bl	Func_ad5f4
	mov	r1, #0
	mov	r0, #1
	bl	Func_ad5f4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	ldr	r3, =iwram_1e8c
	mov	r5, #0x86
	ldr	r2, [r3]
	ldr	r6, =0xea6
	lsl	r5, #1
	mov	r8, r3
	add	r5, r9
	mov	r3, #1
	mov	r4, #0
	strb	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #1
	mov	r10, r4
	bl	Func_a1114
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x11
	mov	r0, r5
	mov	r1, #0xd
	bl	Func_a10d0
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	Func_a1114
	mov	r1, #1
	ldr	r0, [sp, #0x28]
	bl	Func_a1114
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_16498
	mov	r2, r9
	ldr	r0, [r2, #0x28]
	bl	_Func_16498
	mov	r3, r9
	ldr	r0, [r3, #0x10]
	bl	_Func_16498
	mov	r4, r8
	ldr	r3, [r4]
	mov	r0, r10
	add	r3, r6
	strb	r0, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r7
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ad6d4

.thumb_func_start Func_ae2f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #0x54
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	ldr	r3, [r3]
	str	r1, [sp, #0x34]
	str	r0, [sp, #0x38]
	str	r2, [sp, #0x30]
	ldr	r2, [r3, #0x14]
	mov	r9, r3
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, sp
	add	r3, #0x4c
	mov	r7, #0
	str	r3, [sp, #0x14]
	str	r7, [sp, #0x4c]
	str	r7, [r3, #4]
	mov	r3, #0xa5
	lsl	r3, #1
	ldr	r1, .Lae334	@ 0xc8
	mov	r2, #3
	add	r3, r9
	b	.Lae33c

	.align	2, 0
.Lae334:
	.word	0xc8
	.pool

.Lae33c:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.Lae33c
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_164ac
	mov	r0, #1
	bl	Func_30f8
	add	r2, sp, #0x44
	mov	r7, #1
	str	r7, [sp, #0x44]
	mov	r0, #0x60
	str	r7, [r2, #4]
	mov	r11, r2
	bl	Func_4970
	mov	r5, r0
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_4970
	ldr	r3, =0x21a
	add	r3, r9
	mov	r6, r0
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r1, r0
	add	r2, sp, #0x3c
	add	r1, #0x58
	add	r3, sp, #0x40
	str	r2, [sp]
	mov	r0, r1
	mov	r2, r5
	bl	Func_aae14
	mov	r3, r11
	str	r0, [sp, #0x44]
	str	r0, [r3, #4]
	mov	r0, r6
	bl	Func_2df0
	mov	r0, r5
	bl	Func_2df0
	ldr	r0, [sp, #0x44]
	mov	r1, #6
	sub	r0, #1
	bl	Func_af0_from_thumb
	add	r0, #1
	str	r0, [sp, #0x44]
	cmp	r0, #0
	bne	.Lae3b2
	str	r7, [sp, #0x44]
.Lae3b2:
	mov	r1, r11
	ldr	r0, [r1, #4]
	mov	r1, #6
	sub	r0, #1
	bl	Func_af0_from_thumb
	mov	r2, r11
	add	r0, #1
	str	r0, [r2, #4]
	cmp	r0, #0
	bne	.Lae3ca
	str	r7, [r2, #4]
.Lae3ca:
	mov	r3, r9
	add	r3, #0x24
	str	r3, [sp, #0x2c]
	mov	r5, #2
	mov	r6, #0xf
	mov	r0, r3
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	Func_a10d0
	mov	r0, r9
	mov	r2, #5
	mov	r1, #0xf
	add	r0, #0x34
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r0, [sp, #0x28]
	str	r6, [sp]
	bl	Func_a10d0
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_16498
	mov	r1, r9
	ldr	r0, [r1, #0x10]
	bl	_Func_16498
	ldr	r5, =0xbaa
	mov	r2, r9
	ldr	r1, [r2, #0x10]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	add	r5, #2
	mov	r3, r9
	ldr	r1, [r3, #0x10]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r2, #0x96
	lsl	r2, #2
	ldr	r1, [sp, #0x14]
	add	r2, r9
	mov	r0, #0
	str	r2, [sp, #0x18]
	mov	r8, r0
	mov	r10, r1
.Lae43c:
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.Lae4b6
	ldr	r0, [sp, #0x24]
	ldr	r1, =0xea6
	mov	r2, #1
	add	r5, r0, r1
	strb	r2, [r5]
	mov	r3, r9
	ldr	r0, [r3, #0x24]
	bl	_Func_16478
	mov	r1, r9
	ldr	r0, [r1, #0x34]
	bl	_Func_16478
	mov	r2, r9
	ldr	r1, [sp, #0x18]
	ldr	r0, [r2, #0x24]
	mov	r2, r8
	ldrb	r3, [r1]
	str	r2, [sp]
	str	r2, [sp, #4]
	str	r2, [sp, #0xc]
	mov	r1, #3
	mov	r2, #1
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r1, #0
	mov	r2, #0
	bl	Func_acab8
	ldr	r1, [sp, #0x18]
	mov	r2, r8
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	ldrb	r3, [r1]
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r2, [sp, #0x4c]
	add	r2, #1
	mov	r1, #3
	str	r2, [sp, #0xc]
	mov	r2, #1
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r1, #0
	mov	r2, #0
	bl	Func_acab8
	mov	r3, r8
	strb	r3, [r5]
.Lae4b6:
	mov	r0, #0
	mov	r1, r11
	ldr	r3, [r0, r1]
	cmp	r3, #1
	ble	.Lae54a
	mov	r2, r9
	mov	r5, #0
	ldr	r6, [r2, #0x34]
	cmp	r5, r3
	bge	.Lae506
	mov	r7, #0
	add	r7, r11
.Lae4ce:
	ldr	r3, =0xf031
	add	r1, r5, r3
	cmp	r5, #9
	ble	.Lae4d8
	ldr	r1, =0xf030
.Lae4d8:
	ldr	r2, [sp, #0x14]
	mov	r0, #0
	ldr	r3, [r0, r2]
	cmp	r5, r3
	bne	.Lae4e6
	ldr	r3, =0xfffff000
	add	r1, r3
.Lae4e6:
	ldr	r3, [r7]
	ldrh	r2, [r6, #8]
	sub	r2, r3
	add	r2, r5
	mov	r0, r8
	mov	r3, #1
	str	r0, [sp]
	neg	r3, r3
	sub	r2, #2
	mov	r0, r6
	bl	_Func_19000
	ldr	r3, [r7]
	add	r5, #1
	cmp	r5, r3
	blt	.Lae4ce
.Lae506:
	mov	r0, r11
	mov	r1, #0
	ldr	r3, [r1, r0]
	ldrh	r2, [r6, #8]
	mov	r5, #1
	neg	r5, r5
	mov	r1, r8
	sub	r2, r3
	str	r1, [sp]
	mov	r0, r6
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf128
	bl	_Func_19000
	ldrh	r2, [r6, #8]
	mov	r3, r8
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r6
	ldr	r1, =0xf129
	mov	r3, r5
	bl	_Func_19000
	ldr	r0, [sp, #0x24]
	ldr	r2, =0xea3
	add	r1, r0, r2
	ldrh	r2, [r6, #0xe]
	mov	r3, #2
	lsr	r2, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.Lae54a:
	ldr	r3, [sp, #0x30]
	add	r3, #1
	mov	r0, r3
	mov	r1, #0x3c
	str	r3, [sp, #0x30]
	bl	Func_b1c_from_thumb
	sub	r0, #5
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0xc8
	mov	r3, #0
	bl	Func_ad5b4
	ldr	r0, [sp, #0x34]
	cmp	r0, #0
	beq	.Lae57a
	mov	r1, #0
	str	r1, [sp, #0x34]
	ldr	r0, [sp, #0x38]
	mov	r1, #2
	bl	Func_aa538
	str	r0, [sp, #0x38]
.Lae57a:
	ldr	r3, [sp, #0x30]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lae5a8
	ldr	r0, [sp, #0x30]
	mov	r3, #4
	and	r3, r0
	cmp	r3, #0
	beq	.Lae59c
	ldr	r3, =Func_1af8
	ldr	r0, =0x60052c0
	ldr	r1, =Data_af26c
	mov	r2, #0x20
	bl	_call_via_r3
	b	.Lae5a8
.Lae59c:
	ldr	r3, =Func_8d8
	ldr	r0, =0x60052c0
	mov	r1, #0x20
	ldr	r2, =0x44444444
	bl	_call_via_r3
.Lae5a8:
	ldr	r1, [sp, #0x20]
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Lae5b8
	mov	r0, #0x71
	mov	r7, #2
	b	.Lae5c6
.Lae5b8:
	ldr	r3, =0x303
	ldr	r2, [sp, #0x20]
	and	r3, r2
	cmp	r3, #0
	beq	.Lae5ce
	mov	r0, #0x71
	mov	r7, #1
.Lae5c6:
	bl	_Func_f9080
	neg	r7, r7
	b	.Lae638
.Lae5ce:
	ldr	r0, [sp, #0x1c]
	mov	r3, #0x20
	and	r3, r0
	cmp	r3, #0
	beq	.Lae5fe
	mov	r1, r10
	ldr	r0, [r1]
	sub	r0, #1
	str	r0, [r1]
	mov	r2, r8
	mov	r3, r11
	ldr	r1, [r2, r3]
	bl	Func_aa538
	mov	r1, r10
	str	r0, [r1]
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r2, #1
	str	r2, [sp, #0x34]
	b	.Lae630
.Lae5fe:
	ldr	r0, [sp, #0x1c]
	mov	r3, #0x10
	and	r3, r0
	cmp	r3, #0
	beq	.Lae630
	mov	r1, r10
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r2, #1
	str	r2, [sp, #0x34]
	mov	r3, r10
	ldr	r0, [r3]
	mov	r2, r8
	mov	r3, r11
	ldr	r1, [r2, r3]
	bl	Func_aa538
	mov	r1, r10
	str	r0, [r1]
.Lae630:
	mov	r0, #1
	bl	Func_30f8
	b	.Lae43c
.Lae638:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	ldr	r2, =iwram_1e8c
	mov	r5, #0x86
	mov	r8, r2
	ldr	r6, =0xea6
	ldr	r2, [r2]
	mov	r3, #0
	lsl	r5, #1
	mov	r10, r3
	add	r5, r9
	mov	r3, #1
	strb	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #1
	bl	Func_a1114
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x11
	mov	r0, r5
	mov	r1, #0xd
	bl	Func_a10d0
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	Func_a1114
	mov	r1, #1
	ldr	r0, [sp, #0x28]
	bl	Func_a1114
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_16498
	mov	r2, r9
	ldr	r0, [r2, #0x28]
	bl	_Func_16498
	mov	r3, r9
	ldr	r0, [r3, #0x10]
	bl	_Func_16498
	mov	r0, r8
	ldr	r3, [r0]
	mov	r1, r10
	add	r3, r6
	strb	r1, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r7
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ae2f4

.thumb_func_start Func_ae714
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r2, #0
	sub	sp, #4
	mov	r7, r1
	mov	r6, #0
	cmp	r2, r3
	bge	.Lae760
	mov	r5, r0
.Lae734:
	mov	r3, #0
	strb	r3, [r5]
	cmp	r6, r7
	beq	.Lae752
	mov	r0, r7
	mov	r1, r6
	str	r2, [sp]
	bl	Func_ae778
	ldr	r2, [sp]
	cmp	r0, #0
	bne	.Lae752
	mov	r3, #1
	strb	r3, [r5]
	add	r2, #1
.Lae752:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	add	r6, #1
	add	r5, #1
	cmp	r6, r3
	blt	.Lae734
.Lae760:
	mov	r0, r2
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ae714

.thumb_func_start Func_ae778
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #0x10
	mov	r7, sp
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, r7
	mov	r6, r1
	mov	r8, r3
	bl	Func_ae7fc
	ldrb	r3, [r7, r5]
	sub	r3, #1
	strb	r3, [r7, r5]
	ldrb	r3, [r7, r6]
	ldr	r2, =0x219
	add	r3, #1
	strb	r3, [r7, r6]
	add	r2, r8
	mov	r3, #1
	mov	r10, r3
	ldrb	r3, [r2]
	mov	r5, #0
	cmp	r5, r3
	bcs	.Lae7e4
	mov	r12, r3
	mov	r0, r2
	mov	r14, r12
.Lae7b6:
	mov	r1, r5
	cmp	r5, r12
	bcs	.Lae7da
	ldrb	r6, [r0]
	mov	r4, r7
.Lae7c0:
	add	r3, r1, #1
	lsl	r3, #24
	lsr	r1, r3, #24
	cmp	r1, r6
	bcs	.Lae7da
	ldrsb	r3, [r4, r5]
	ldrsb	r2, [r4, r1]
	sub	r3, r2
	add	r3, #1
	cmp	r3, #2
	bls	.Lae7c0
	mov	r3, #0
	mov	r10, r3
.Lae7da:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, r14
	bcc	.Lae7b6
.Lae7e4:
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ae778

.thumb_func_start Func_ae7fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #0
	ldrb	r3, [r3]
	mov	r8, r2
	mov	r11, r0
	cmp	r8, r3
	bge	.Lae874
	mov	r7, #0x82
	mov	r3, #1
	lsl	r7, #2
	mov	r9, r3
	add	r7, r10
.Lae82a:
	ldrh	r0, [r7]
	bl	_Func_77394
	mov	r6, #0
	mov	r4, #0
	add	r0, #0xf8
.Lae836:
	ldr	r5, [r0, #0x10]
	mov	r1, #0
.Lae83a:
	mov	r2, r9
	lsl	r2, r1
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lae84e
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Lae850
.Lae84e:
	add	r4, #1
.Lae850:
	add	r1, #1
	cmp	r1, #0x13
	ble	.Lae83a
	add	r6, #1
	add	r0, #4
	cmp	r6, #3
	ble	.Lae836
	mov	r3, r8
	mov	r2, r11
	strb	r4, [r2, r3]
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #1
	ldrb	r3, [r3]
	add	r8, r2
	add	r7, #2
	cmp	r8, r3
	blt	.Lae82a
.Lae874:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ae7fc

	.section .rodata

.Laf304:
	.incrom 0xaf304, 0xaf314
