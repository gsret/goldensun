	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b798
	push	{lr}
	ldr	r3, =iwram_1e68
	ldr	r3, [r3]
	mov	r2, r3
	add	r2, #0x1c
	mov	r1, #0
.Lb7a4:
	ldr	r3, [r2]
	cmp	r3, r0
	bne	.Lb7ae
	ldr	r0, [r2, #4]
	b	.Lb7b8
.Lb7ae:
	add	r1, #1
	add	r2, #8
	cmp	r1, #7
	bls	.Lb7a4
	mov	r0, #0
.Lb7b8:
	pop	{r1}
	bx	r1
.func_end Func_b798

.thumb_func_start Func_b7c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r2, #0x27
	add	r2, r7
	ldrb	r3, [r2]
	mov	r1, #0
	sub	sp, #8
	mov	r8, r2
	cmp	r1, r3
	bge	.Lb858
	mov	r3, r7
	add	r3, #0x28
	str	r3, [sp, #4]
	mov	r10, r1
.Lb7e2:
	ldr	r3, [sp, #4]
	ldmia	r3!, {r6}
	mov	r2, r3
	str	r2, [sp, #4]
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	str	r1, [sp]
	bl	_Func_185008
	mov	r5, r0
	ldrb	r2, [r5]
	mov	r3, r2
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.Lb84e
	cmp	r1, #0
	bne	.Lb824
	mov	r3, r7
	add	r3, #0x20
	strb	r2, [r3]
	ldrb	r3, [r5, #1]
	mov	r2, r7
	add	r2, #0x21
	strb	r3, [r2]
	ldrh	r3, [r5, #2]
	lsl	r3, #8
	str	r3, [r7, #0x18]
	ldrb	r3, [r5, #7]
	add	r2, #2
	strb	r3, [r2]
	ldrb	r3, [r5, #6]
	sub	r2, #1
	strb	r3, [r2]
.Lb824:
	ldr	r0, [r5, #0xc]
	cmp	r0, #0
	bne	.Lb836
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	str	r1, [sp]
	bl	Func_b798
	ldr	r1, [sp]
.Lb836:
	ldrb	r3, [r5, #4]
	strb	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	ldrb	r3, [r5, #0xa]
	mov	r2, r10
	strb	r3, [r6, #7]
	mov	r3, #0xff
	strb	r3, [r6, #0x16]
	str	r2, [r6, #0x10]
	strb	r2, [r6, #0x14]
.Lb84e:
	mov	r2, r8
	ldrb	r3, [r2]
	add	r1, #1
	cmp	r1, r3
	blt	.Lb7e2
.Lb858:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b7c0

.thumb_func_start Func_b868
	push	{r5, r6, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb8a6
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_Func_185008
	mov	r6, r0
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.Lb8a6
	ldr	r0, [r6, #0xc]
	cmp	r0, #0
	bne	.Lb88e
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	Func_b798
.Lb88e:
	ldrb	r3, [r6, #4]
	strb	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r0, [r5, #8]
	str	r3, [r5, #0xc]
	ldrb	r3, [r6, #0xa]
	mov	r2, #0
	strb	r3, [r5, #7]
	mov	r3, #0xff
	strb	r3, [r5, #0x16]
	str	r2, [r5, #0x10]
	strb	r2, [r5, #0x14]
.Lb8a6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b868

.thumb_func_start Func_b8ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldr	r5, [r6, #0x28]
	mov	r8, r1
	mov	r7, #0
	cmp	r5, #0
	beq	.Lb8d0
	mov	r3, r6
	add	r3, #0x28
.Lb8c2:
	add	r7, #1
	cmp	r7, #3
	bgt	.Lb8d0
	add	r3, #4
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.Lb8c2
.Lb8d0:
	cmp	r7, #4
	bne	.Lb8da
	mov	r0, #1
	neg	r0, r0
	b	.Lb932
.Lb8da:
	mov	r0, r8
	bl	Func_bbc0
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.Lb932
	lsl	r3, r7, #2
	add	r3, #0x28
	mov	r0, r8
	str	r5, [r6, r3]
	bl	_Func_185008
	mov	r2, #0x27
	add	r2, r6
	ldrb	r3, [r2]
	mov	r12, r2
	cmp	r3, #0
	bne	.Lb924
	ldrb	r2, [r0]
	mov	r3, r6
	add	r3, #0x20
	strb	r2, [r3]
	ldrb	r3, [r0, #1]
	mov	r2, r6
	add	r2, #0x21
	strb	r3, [r2]
	ldrh	r3, [r0, #2]
	lsl	r3, #8
	str	r3, [r6, #0x18]
	ldrb	r3, [r0, #7]
	add	r2, #2
	strb	r3, [r2]
	mov	r1, r6
	ldrb	r3, [r0, #6]
	add	r1, #0x22
	strb	r3, [r1]
.Lb924:
	mov	r2, r12
	ldrb	r3, [r2]
	cmp	r7, r3
	bne	.Lb930
	add	r3, r7, #1
	strb	r3, [r2]
.Lb930:
	mov	r0, r5
.Lb932:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b8ac

.thumb_func_start Func_b93c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	cmp	r6, #0
	beq	.Lb99e
	cmp	r5, #0
	beq	.Lb99e
	mov	r0, r5
	bl	Func_bc48
	ldr	r3, [r6, #0x28]
	mov	r0, #0
	cmp	r5, r3
	beq	.Lb96a
	mov	r2, r6
	add	r2, #0x28
.Lb95c:
	add	r0, #1
	cmp	r0, #3
	bhi	.Lb96a
	add	r2, #4
	ldr	r3, [r2]
	cmp	r5, r3
	bne	.Lb95c
.Lb96a:
	cmp	r0, #4
	beq	.Lb99e
	lsl	r3, r0, #2
	mov	r2, #0
	add	r3, #0x28
	str	r2, [r6, r3]
	add	r2, r0, #1
	mov	r4, #0
	cmp	r2, #3
	bhi	.Lb994
	lsl	r3, r2, #2
	add	r3, r6
	mov	r1, r3
	add	r1, #0x28
.Lb986:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lb98e
	add	r4, #1
.Lb98e:
	add	r2, #1
	cmp	r2, #3
	bls	.Lb986
.Lb994:
	cmp	r4, #0
	bne	.Lb99e
	mov	r3, r6
	add	r3, #0x27
	strb	r0, [r3]
.Lb99e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b93c

.thumb_func_start Func_b9a4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	cmp	r5, #0
	beq	.Lb9ee
	cmp	r7, #3
	bhi	.Lb9ee
	lsl	r3, r7, #2
	mov	r6, r3
	add	r6, #0x28
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lb9ee
	bl	Func_bc48
	mov	r3, #0
	add	r2, r7, #1
	str	r3, [r5, r6]
	mov	r0, #0
	cmp	r2, #3
	bhi	.Lb9e4
	lsl	r3, r2, #2
	add	r3, r5
	mov	r1, r3
	add	r1, #0x28
.Lb9d6:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lb9de
	add	r0, #1
.Lb9de:
	add	r2, #1
	cmp	r2, #3
	bls	.Lb9d6
.Lb9e4:
	cmp	r0, #0
	bne	.Lb9ee
	mov	r3, r5
	add	r3, #0x27
	strb	r7, [r3]
.Lb9ee:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b9a4

.thumb_func_start Func_b9f4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r5, #0xc]
	mov	r6, r1
	mov	r7, #0x80
	and	r7, r6
	cmp	r3, #0
	beq	.Lba2a
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_Func_185008
	ldrb	r3, [r0, #5]
	cmp	r6, r3
	bge	.Lba2a
	ldr	r2, [r5, #0xc]
	lsl	r3, r6, #2
	ldr	r2, [r3, r2]
	ldrb	r3, [r0, #4]
	strb	r3, [r5, #4]
	mov	r3, #0x10
	str	r2, [r5, #0x10]
	strb	r3, [r5, #0x15]
	cmp	r7, #0
	bne	.Lba2a
	strb	r7, [r5, #0x14]
	strh	r7, [r5, #2]
.Lba2a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b9f4

.thumb_func_start Func_ba30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r2, #0x24
	mov	r6, r1
	mov	r3, #0x7f
	add	r2, r7
	mov	r4, #0x80
	and	r4, r6
	and	r6, r3
	ldrb	r3, [r2]
	sub	sp, #8
	mov	r10, r2
	cmp	r3, r6
	beq	.Lbaba
	mov	r3, #0x27
	add	r3, r7
	mov	r1, #0
	mov	r8, r3
	b	.Lbaae
.Lba5c:
	lsl	r3, r1, #2
	add	r3, #0x28
	ldr	r5, [r7, r3]
	cmp	r5, #0
	beq	.Lbaac
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.Lbaac
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_Func_185008
	ldrb	r3, [r0, #5]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r6, r3
	bge	.Lbaac
	ldr	r2, [r5, #0xc]
	lsl	r3, r6, #2
	ldr	r2, [r3, r2]
	ldrb	r3, [r0, #4]
	strb	r3, [r5, #4]
	mov	r3, #0x10
	str	r2, [r5, #0x10]
	strb	r3, [r5, #0x15]
	cmp	r4, #0
	bne	.Lba9a
	strb	r4, [r5, #0x14]
	strh	r4, [r5, #2]
.Lba9a:
	cmp	r1, #0
	bne	.Lbaac
	ldrb	r3, [r0, #7]
	mov	r2, r7
	add	r2, #0x23
	strb	r3, [r2]
	ldrb	r3, [r0, #6]
	sub	r2, #1
	strb	r3, [r2]
.Lbaac:
	add	r1, #1
.Lbaae:
	mov	r2, r8
	ldrb	r3, [r2]
	cmp	r1, r3
	blt	.Lba5c
	mov	r3, r10
	strb	r6, [r3]
.Lbaba:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba30

.thumb_func_start Func_bacc
	push	{lr}
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbaf2
	lsl	r1, #4
	add	r0, #0x28
	mov	r4, r3
.Lbade:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.Lbaec
	ldr	r3, [r2, #0xc]
	cmp	r3, #0
	beq	.Lbaec
	strh	r1, [r2, #2]
.Lbaec:
	sub	r4, #1
	cmp	r4, #0
	bne	.Lbade
.Lbaf2:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_bacc

.thumb_func_start Func_baf8
	push	{lr}
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb1c
	add	r0, #0x28
	mov	r4, r3
.Lbb08:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.Lbb16
	ldr	r3, [r2, #0xc]
	cmp	r3, #0
	beq	.Lbb16
	strb	r1, [r2, #0x15]
.Lbb16:
	sub	r4, #1
	cmp	r4, #0
	bne	.Lbb08
.Lbb1c:
	pop	{r0}
	bx	r0
.func_end Func_baf8

.thumb_func_start Func_bb20
	push	{r5, r6, r7, lr}
	sub	sp, #4
	cmp	r0, #3
	bne	.Lbb40
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	Func_48f4
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	Func_48f4
	b	.Lbb56
.Lbb40:
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	Func_48b0
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	Func_48b0
.Lbb56:
	mov	r6, r0
	bl	Func_4838
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r7
	ldr	r2, =0x85000380
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85000180
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =.L12f20
	mov	r1, #0x80
	mov	r0, #0x5d
	bl	Func_3fa4
	ldr	r5, =0x7c
	mov	r0, #0x35
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_a418
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_bb20

.thumb_func_start Func_bbc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r4, #0
	str	r4, [sp]
	mov	r7, r0
	bl	_Func_185008
	ldr	r3, =iwram_1e5c
	mov	r6, r0
	ldr	r2, [r3]
	ldrb	r3, [r6]
	mov	r5, #0
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbc38
	ldrb	r3, [r2, #4]
	mov	r1, #0
	b	.Lbbf6

	.pool_aligned

.Lbbec:
	add	r1, #1
	add	r2, #0x18
	cmp	r1, #0x3f
	bgt	.Lbbfc
	ldrb	r3, [r2, #4]
.Lbbf6:
	cmp	r3, #0
	bne	.Lbbec
	mov	r4, r2
.Lbbfc:
	cmp	r4, #0
	beq	.Lbc38
	ldr	r3, =0
	ldr	r0, [r6, #0xc]
	mov	r5, r4
	mov	r8, r3
	strh	r7, [r5]
	cmp	r0, #0
	bne	.Lbc14
	mov	r0, r7
	bl	Func_b798
.Lbc14:
	ldr	r2, [r6, #0x10]
	str	r0, [r5, #8]
	str	r2, [r5, #0xc]
	ldrb	r3, [r6, #0xa]
	strb	r3, [r5, #7]
	mov	r3, #0xff
	strb	r3, [r5, #0x16]
	ldr	r3, [r2]
	str	r3, [r5, #0x10]
	mov	r3, r8
	strb	r3, [r5, #0x14]
	ldrb	r3, [r6, #4]
	strb	r3, [r5, #4]
	mov	r3, r8
	strb	r3, [r5, #5]
	b	.Lbc38

	.pool_aligned

.Lbc38:
	mov	r0, r5
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bbc0

.thumb_func_start Func_bc48
	push	{lr}
	mov	r1, r0
	sub	sp, #4
	cmp	r1, #0
	beq	.Lbc60
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	ldr	r2, =0x85000006
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lbc60:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_bc48

.thumb_func_start Func_bc70
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r8, r1
	mov	r10, r0
	bl	_Func_185008
	mov	r7, r0
	bl	Func_4080
	ldr	r3, =iwram_1e60
	ldr	r5, [r3]
	ldrb	r3, [r7]
	mov	r6, r0
	mov	r0, #0
	cmp	r3, #0
	bne	.Lbc98
	b	.Lbd9c
.Lbc98:
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
	mov	r2, #0
	b	.Lbcb0
.Lbca2:
	add	r2, #1
	add	r5, #0x38
	cmp	r2, #0x3f
	bgt	.Lbcb6
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
.Lbcb0:
	cmp	r3, #0
	bne	.Lbca2
	mov	r8, r5
.Lbcb6:
	mov	r2, r8
	mov	r0, #0
	cmp	r2, #0
	beq	.Lbd9c
	cmp	r6, #0x60
	beq	.Lbd9c
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	Func_3fa4
	mov	r12, r0
	cmp	r0, #0
	bne	.Lbcd6
	mov	r0, #0
	b	.Lbd9c
.Lbcd6:
	mov	r3, #0
	mov	r2, r8
	mov	r1, r8
	strb	r6, [r1, #0x1c]
	strh	r3, [r2, #0x1e]
	add	r2, #0x26
	mov	r3, #1
	strb	r3, [r2]
	ldrb	r3, [r7]
	ldrb	r2, [r7, #1]
	lsl	r3, #8
	add	r0, r3, r2
	mov	r3, #0x81
	lsl	r3, #5
	ldr	r4, =0x80008000
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd28
	mov	r3, #0x81
	mov	r4, #0x80
	lsl	r3, #4
	lsl	r4, #8
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd12
	sub	r3, #8
	mov	r4, #0
	b	.Lbd58
.Lbd12:
	ldr	r1, =0x1008
	mov	r4, #0x80
	lsl	r4, #7
	cmp	r0, r1
	beq	.Lbd5e
	ldr	r2, =0x1010
	mov	r4, #0x80
	lsl	r4, #23
	cmp	r0, r2
	beq	.Lbd5e
	b	.Lbd5c
.Lbd28:
	mov	r3, #0x81
	lsl	r3, #6
	ldr	r4, =0xc0008000
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd4a
	sub	r3, #0x30
	ldr	r4, =0x80004000
	cmp	r0, r3
	beq	.Lbd5e
	ldr	r1, =0x2020
	mov	r4, #0x80
	lsl	r4, #24
	cmp	r0, r1
	beq	.Lbd5e
	b	.Lbd5c
.Lbd4a:
	ldr	r2, =0x4020
	ldr	r4, =0xc0004000
	cmp	r0, r2
	beq	.Lbd5e
	ldr	r3, =0x4040
	mov	r4, #0xc0
	lsl	r4, #24
.Lbd58:
	cmp	r0, r3
	beq	.Lbd5e
.Lbd5c:
	mov	r4, #0
.Lbd5e:
	mov	r2, r8
	mov	r1, #0
	mov	r3, #0x80
	stmia	r2!, {r1}
	lsl	r3, #6
	orr	r4, r3
	mov	r0, #0x80
	stmia	r2!, {r4}
	lsl	r0, #4
	mov	r3, r12
	orr	r3, r0
	stmia	r2!, {r3}
	mov	r3, #0xc0
	stmia	r2!, {r1}
	lsl	r3, #7
	stmia	r2!, {r3}
	mov	r1, #0xbb
	ldr	r3, =iwram_1b10
	lsl	r1, #1
	add	r3, r1
	ldrh	r3, [r3]
	lsr	r3, #5
	orr	r3, r0
	str	r3, [r2]
	mov	r0, r5
	mov	r1, r10
	bl	Func_b8ac
	mov	r2, #1
	neg	r2, r2
	mov	r0, r8
.Lbd9c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bc70

.thumb_func_start Func_bdd4
	push	{r5, r6, r7, lr}
	mov	r7, r0
	sub	sp, #4
	cmp	r7, #0
	beq	.Lbe10
	ldrb	r2, [r7, #0x1d]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lbdee
	ldrb	r0, [r7, #0x1c]
	bl	Func_3f3c
.Lbdee:
	mov	r5, r7
	add	r5, #0x28
	mov	r6, #3
.Lbdf4:
	ldmia	r5!, {r0}
	sub	r6, #1
	bl	Func_bc48
	cmp	r6, #0
	bge	.Lbdf4
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r7
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lbe10:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_bdd4

.thumb_func_start Func_be20
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r2
	bl	_Func_185008
	ldrb	r3, [r0, #5]
	mov	r7, #0
	cmp	r6, r3
	bcc	.Lbe36
	mov	r0, #0
	b	.Lbe68
.Lbe36:
	ldr	r2, [r0, #0x10]
	lsl	r3, r6, #2
	ldr	r0, [r3, r2]
.Lbe3c:
	ldrb	r2, [r0]
	ldrb	r3, [r0, #1]
	add	r0, #2
	cmp	r2, #0xfe
	beq	.Lbe66
	cmp	r2, #0xf1
	beq	.Lbe66
	cmp	r2, #0xfd
	beq	.Lbe66
	cmp	r2, #0xef
	beq	.Lbe66
	cmp	r2, #0xf5
	beq	.Lbe5e
	cmp	r2, #0xff
	beq	.Lbe5e
	cmp	r2, #0xee
	bhi	.Lbe3c
.Lbe5e:
	sub	r5, #1
	add	r7, r3
	cmp	r5, #0
	bne	.Lbe3c
.Lbe66:
	mov	r0, r7
.Lbe68:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_be20

	.section .rodata

.L12f20:
	.incrom 0x12f20, 0x12fa0
