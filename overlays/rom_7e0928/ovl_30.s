	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L5000
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L5090
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L50a8
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	ldr	r3, =.L5484
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lfc
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r1, #3
	add	r2, #1
	and	r2, r1
	str	r2, [r3]
	ldr	r3, =.L4c20
	mov	r2, #0xb
	mov	r6, #0x12
	mov	r9, r3
	mov	r10, r2
	mov	r7, #0x21
.L8e:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r8, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r3, r6, r3
	sub	r3, #0x12
	mov	r2, r9
	ldrsb	r5, [r2, r3]
	mov	r0, r6
	mov	r1, r5
	bl	__Func_924d4
	mov	r1, r5
	add	r0, r6, #5
	add	r1, #8
	bl	__Func_924d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #2
	str	r7, [sp]
	bl	__Func_10704
	cmp	r5, #7
	beq	.Ldc
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_10704
.Ldc:
	add	r6, #1
	add	r7, #2
	cmp	r6, #0x16
	ble	.L8e
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	lsl	r3, #1
	add	r3, #5
	ldrsb	r1, [r1, r3]
	mov	r0, #0x1c
	bl	__Func_924d4
	b	.L14c
.Lfc:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r5
	mov	r12, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	ldr	r2, =0x31ffff
	lsl	r3, #1
	ldr	r7, =0x13fffe
	mov	r6, #0x12
	add	r1, r3, r1
	mov	r14, r2
.L11a:
	ldrb	r3, [r1]
	lsl	r3, #24
	asr	r5, r3, #24
	ldr	r3, [r0, #8]
	lsl	r2, r6, #21
	sub	r3, r2
	add	r3, r14
	add	r1, #1
	cmp	r3, r7
	bhi	.L146
	cmp	r4, #0xb
	bne	.L13a
	cmp	r5, #4
	bne	.L13a
	mov	r3, r12
	strh	r5, [r3]
.L13a:
	cmp	r4, #0xc
	bne	.L146
	cmp	r5, #5
	bne	.L146
	mov	r2, r12
	strh	r5, [r2]
.L146:
	add	r6, #1
	cmp	r6, #0x16
	ble	.L11a
.L14c:
	ldr	r2, =.L5484
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x11
	bls	.L15c
	mov	r3, #0
	str	r3, [r2]
.L15c:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_188
	push	{r5, lr}
	ldr	r3, =.L5484
	mov	r2, #0
	str	r2, [r3]
	ldr	r5, =OvlFunc_4c
	ldr	r3, =.L5480
	mov	r0, r5
	str	r2, [r3]
	bl	__Func_4278
	bl	_call_via_r5
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_188

.thumb_func_start OvlFunc_1b4
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_4c
	bl	__Func_41d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b4

.thumb_func_start OvlFunc_1c8
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r3, =.L5480
	ldr	r3, [r3]
	mov	r5, #0
	b	.L1e8
.L1d8:
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x77
	bgt	.L1f4
	ldr	r3, =.L5480
	ldr	r3, [r3]
.L1e8:
	cmp	r3, #3
	bne	.L1d8
	ldr	r3, =.L5484
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L1d8
.L1f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c8

.thumb_func_start OvlFunc_204
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r2, r3
	ldr	r5, [r2]
	bl	__Func_92054
	mov	r1, #0x12
	ldrsh	r3, [r0, r1]
	sub	r3, #0xb7
	cmp	r3, #3
	bhi	.L238
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
.L238:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_204

.thumb_func_start OvlFunc_24c
	push	{lr}
	mov	r0, #0xd8
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_24c

.thumb_func_start OvlFunc_274
	push	{r5, r6, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r6, =0x6666
	ldr	r5, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #14
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #11
	bl	__Func_d14c
	ldr	r0, =0x362
	bl	__Func_79358
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_274

.thumb_func_start OvlFunc_2f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, =0x362
	sub	sp, #8
	ldr	r6, [r3]
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	bne	.L3e0
	mov	r0, #0xa
	bl	__Func_92054
	cmp	r0, #0
	beq	.L332
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_92128
.L332:
	mov	r0, r6
	bl	__Func_923c4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, r0
	ldr	r2, =0x6666
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xcccc
	mov	r8, r2
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	mov	r10, r3
	str	r3, [r0, #0x30]
	lsl	r2, #14
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r3, r10
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x30]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_92054
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	strb	r7, [r2]
	mov	r9, r2
	mov	r2, r10
	mov	r3, r8
	str	r2, [r5, #0x30]
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0x34]
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c528
	mov	r0, r6
	bl	__Func_923c4
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x18
	mov	r0, #0
	bl	__Func_10704
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r3, #3
	mov	r2, r9
	strb	r3, [r2]
	ldr	r3, [r5, #0xc]
	ldr	r0, =0x367
	str	r3, [r5, #0x14]
	bl	__Func_79358
.L3e0:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f8

.thumb_func_start OvlFunc_404
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #1
	sub	sp, #8
	bl	__Func_924d4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r2, #0
	mov	r3, r0
	mov	r8, r2
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r6, =0x6666
	ldr	r5, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #11
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r0
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #14
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	bl	__Func_10704
	mov	r0, #2
	bl	__Func_30f8
	ldr	r0, =0x367
	bl	__Func_79374
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_404

.thumb_func_start OvlFunc_4a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #9
	bne	.L564
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r7, #0xc
	bne	.L564
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	mov	r5, r0
	bl	__Func_c528
	mov	r1, #2
	mov	r10, r1
	mov	r2, r5
	add	r2, #0x23
	mov	r1, r10
	strb	r1, [r2]
	mov	r3, #0
	add	r2, #0x32
	strb	r3, [r2]
	ldr	r2, =0x6666
	ldr	r6, =0xcccc
	mov	r8, r2
	str	r2, [r5, #0x34]
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r2, #11
	mov	r0, r5
	str	r6, [r5, #0x30]
	bl	__Func_d14c
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	lsl	r2, #14
	str	r6, [r0, #0x30]
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Func_d14c
	mov	r0, #0xda
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_10704
	mov	r1, r9
	str	r1, [sp]
	mov	r0, #1
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_10704
.L564:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a4

.thumb_func_start OvlFunc_57c
	push	{lr}
	bl	OvlFunc_4628
	bl	OvlFunc_4a4
	pop	{r0}
	bx	r0
.func_end OvlFunc_57c

.thumb_func_start OvlFunc_58c
	push	{r5, r6, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xdc
	asr	r5, #20
	mov	r1, r5
	lsl	r0, #2
	bl	__Func_793c8
	mov	r3, #0x12
	str	r3, [sp]
	mov	r6, #0xb
	mov	r0, #0x12
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x11
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_58c

.thumb_func_start OvlFunc_5d0
	bx	lr
.func_end OvlFunc_5d0

.thumb_func_start OvlFunc_5d4
	push	{lr}
	bl	OvlFunc_4628
	pop	{r0}
	bx	r0
.func_end OvlFunc_5d4

.thumb_func_start OvlFunc_5e0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, #0xf
.L5e6:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_11f54
	cmp	r0, #0
	bne	.L644
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #1
	bl	__Func_10704
	ldr	r3, =0x205
	add	r0, r6, r3
	bl	__Func_79358
.L644:
	add	r6, #1
	cmp	r6, #0x11
	ble	.L5e6
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5e0

.thumb_func_start OvlFunc_658
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r1, r3, #20
	ldr	r3, [r0, #0x10]
	mov	r5, #0x17
	asr	r4, r3, #20
	cmp	r1, #0x51
	bne	.L698
	cmp	r4, #0xc
	bne	.L698
	ldrh	r2, [r0, #6]
	mov	r3, #0xe0
	lsl	r3, #8
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.L68c
	mov	r5, #0xfd
.L68c:
	lsl	r1, #20
	lsl	r2, r4, #20
	mov	r0, #0
	mov	r3, r5
	bl	__Func_12078
.L698:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_658

.thumb_func_start OvlFunc_6a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0
	mov	r1, r5
	mov	r2, r6
	bl	__Func_12038
	cmp	r0, #0xff
	bne	.L6be
	mov	r0, #2
	neg	r0, r0
	b	.L70c
.L6be:
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r5, #20
	asr	r3, #20
	asr	r6, #20
	cmp	r3, r5
	bne	.L6d8
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	beq	.L704
.L6d8:
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r5
	bne	.L6ee
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	beq	.L704
.L6ee:
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r5
	bne	.L70a
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	bne	.L70a
.L704:
	mov	r0, #1
	neg	r0, r0
	b	.L70c
.L70a:
	mov	r0, #0
.L70c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_6a4

.thumb_func_start OvlFunc_714
	push	{r5, r6, lr}
	ldr	r3, =0xffe80000
	mov	r5, r1
	add	r1, r5, r3
	mov	r6, r0
	bl	OvlFunc_6a4
	cmp	r0, #0
	bne	.L754
	ldr	r3, =0xfff80000
	mov	r0, r6
	add	r1, r5, r3
	bl	OvlFunc_6a4
	cmp	r0, #0
	bne	.L754
	mov	r3, #0x80
	lsl	r3, #12
	add	r1, r5, r3
	mov	r0, r6
	bl	OvlFunc_6a4
	cmp	r0, #0
	bne	.L754
	mov	r3, #0xc0
	lsl	r3, #13
	add	r1, r5, r3
	mov	r0, r6
	bl	OvlFunc_6a4
	cmp	r0, #0
	beq	.L75a
.L754:
	mov	r0, #1
	neg	r0, r0
	b	.L75c
.L75a:
	mov	r0, #0
.L75c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_714

.thumb_func_start OvlFunc_76c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r5, r0
	ldr	r0, [r5]
	sub	sp, #0x20
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0x1f
	bl	__Func_92054
	mov	r8, r0
	mov	r0, r10
	ldrh	r3, [r0, #6]
	ldr	r2, =.L4c38
	lsr	r3, #13
	mov	r1, #0
	lsl	r3, #1
	mov	r9, r1
	ldrh	r1, [r2, r3]
	ldr	r3, [r0, #8]
	ldr	r2, =0xfff00000
	ldr	r5, [r5]
	mov	r4, #0x80
	lsl	r4, #12
	and	r3, r2
	add	r3, r4
	mov	r11, r5
	add	r5, sp, #0x14
	str	r3, [r5]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r2
	add	r3, r4
	mov	r0, #0x80
	str	r3, [r5, #8]
	mov	r2, r5
	lsl	r0, #13
	str	r4, [sp, #8]
	bl	__Func_447c
	mov	r1, r8
	ldr	r7, [r1, #8]
	ldr	r2, [r5]
	sub	r3, r2, r7
	ldr	r6, [r1, #0x10]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bge	.L7e2
	sub	r3, r7, r2
.L7e2:
	cmp	r3, r4
	ble	.L7e8
	b	.L9ea
.L7e8:
	ldr	r2, [r5, #8]
	sub	r3, r2, r6
	cmp	r3, #0
	blt	.L7fc
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	ble	.L7fa
	b	.L9ea
.L7fa:
	b	.L808
.L7fc:
	mov	r0, #0x80
	sub	r3, r6, r2
	lsl	r0, #14
	cmp	r3, r0
	ble	.L808
	b	.L9ea
.L808:
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L834
	mov	r1, #2
	sub	r2, #0x28
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.L81c:
	ldr	r3, =0xfff00000
	add	r5, r7, r3
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_714
	cmp	r0, #0
	bne	.L862
	mov	r0, #1
	add	r9, r0
	mov	r7, r5
	b	.L81c
.L834:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	bne	.L840
	b	.L9f2
.L840:
	mov	r1, #3
	mov	r2, #8
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.L848:
	mov	r3, #0x80
	lsl	r3, #13
	add	r5, r7, r3
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_714
	cmp	r0, #0
	bne	.L862
	mov	r0, #1
	add	r9, r0
	mov	r7, r5
	b	.L848
.L862:
	mov	r1, r9
	cmp	r1, #0
	bne	.L86a
	b	.L9f2
.L86a:
	mov	r2, r8
	ldr	r3, [r2, #8]
	asr	r3, #20
	str	r3, [sp]
	mov	r3, #9
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #8
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #0x4a
	mov	r2, #0x3c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #8
	mov	r0, #0x78
	mov	r1, #0x3c
	bl	__Func_10704
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, r11
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	ldr	r5, =0x3333
	mov	r0, #0x80
	mov	r1, r8
	lsl	r0, #8
	str	r0, [r1, #0x30]
	str	r5, [r1, #0x34]
	ldr	r1, [sp, #0x10]
	mov	r0, r8
	bl	__Func_c300
	mov	r3, r6
	mov	r2, #0
	mov	r1, r7
	mov	r0, r8
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, r11
	mov	r1, #2
	bl	__Func_924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_48f4
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	ldr	r0, [r0]
	mov	r1, r8
	bl	__Func_c4bc
	mov	r1, #0x80
	mov	r2, r5
	lsl	r1, #8
	mov	r0, r11
	bl	__Func_92064
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, r10
	mov	r1, #2
	bl	__Func_c300
	ldr	r3, [sp, #0xc]
	mov	r1, r9
	mul	r1, r3
	mov	r0, r10
	ldr	r3, [r0, #8]
	lsl	r1, #16
	add	r1, r3
	mov	r2, #0
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, r10
	bl	__Func_ca6c
	mov	r1, #1
	mov	r0, r10
	bl	__Func_c300
	mov	r0, r8
	bl	__Func_ca6c
	mov	r1, #0xa6
	lsl	r1, #19
	cmp	r7, r1
	blt	.L9a2
	ldr	r0, =0x369
	bl	__Func_79358
	mov	r0, #0x1f
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #6
	mov	r1, #0x12
	mov	r0, #0x1f
	bl	__Func_9228c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	mov	r0, r8
	bl	__Func_ca6c
	mov	r2, r8
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r5, #0x54
	mov	r0, #0x56
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xf0
	bl	__Func_f9080
	b	.L9de
.L9a2:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r2, #9
	asr	r5, r7, #20
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x3d
	str	r3, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_10704
.L9de:
	mov	r0, #0xf
	bl	__Func_9163c
	bl	__Func_91750
	b	.L9f2
.L9ea:
	bl	OvlFunc_4628
	bl	OvlFunc_5e0
.L9f2:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_76c

.thumb_func_start OvlFunc_a20
	push	{lr}
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118a8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd9
	bl	__Func_f9080
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_a20

.thumb_func_start OvlFunc_a44
	push	{r5, lr}
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x19999
	mov	r1, #2
	str	r3, [r5, #0x34]
	str	r3, [r5, #0x30]
	bl	__Func_c300
	mov	r0, r5
	ldr	r1, =.L4c48
	bl	__Func_c2d8
	ldr	r0, =0x363
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a44

.thumb_func_start OvlFunc_a84
	push	{r5, lr}
	mov	r0, #0x1c
	bl	__Func_9ad90
	ldr	r0, =0x361
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r2, =.L5480
	ldr	r3, [r2]
	cmp	r3, #1
	beq	.Lab6
	cmp	r3, #3
	beq	.Lab6
	mov	r5, r2
.Laa6:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.Lab6
	cmp	r3, #3
	bne	.Laa6
.Lab6:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =OvlFunc_4c
	bl	__Func_4278
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a84

.thumb_func_start OvlFunc_ad4
	push	{r5, r6, lr}
	ldr	r6, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r0
	ldr	r0, [r6]
	bl	__Func_92054
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #13
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ad4

.thumb_func_start OvlFunc_b30
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r3, r0
	ldr	r0, [r6]
	bl	__Func_92054
	mov	r5, r0
	mov	r2, #0xa6
	ldr	r3, [r5, #8]
	lsl	r2, #18
	cmp	r3, r2
	ble	.Lb4e
	str	r2, [r5, #8]
.Lb4e:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #12
	ldr	r2, [r5, #0xc]
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_93874
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b30

.thumb_func_start OvlFunc_ba0
	bx	lr
.func_end OvlFunc_ba0

.thumb_func_start OvlFunc_ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r2, =ewram_240
	ldr	r3, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	sub	r1, #0x32
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lc42
	bl	__Func_916b0
	lsl	r3, r6, #1
	ldr	r7, =0x2073
	add	r5, r3, r6
	add	r0, r5, r7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, r8
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lc2e
	add	r0, r7, #1
	add	r0, r5, r0
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #2
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r6
	bl	OvlFunc_2640
	bl	__Func_91dc8
	bl	__Func_91e20
	b	.Lc3e
.Lc2e:
	add	r0, r7, #2
	add	r0, r5, r0
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.Lc3e:
	bl	__Func_91750
.Lc42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ba4

.thumb_func_start OvlFunc_c5c
	push	{r5, r6, lr}
	bl	OvlFunc_3cc0
	bl	__Func_916b0
	mov	r1, #0x11
	mov	r0, #3
	bl	OvlFunc_3ddc
	mov	r6, r0
	bl	OvlFunc_3cd0
	mov	r5, #9
.Lc76:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_920e8
	cmp	r5, #0
	bge	.Lc76
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xbf
	mov	r0, #8
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xbb
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #3
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xbc
	mov	r0, #0
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_9218c
	mov	r1, #0xbe
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #3
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r1, #9
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_91eb0
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x91
	mov	r1, #4
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_91fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c5c

.thumb_func_start OvlFunc_d70
	push	{lr}
	bl	OvlFunc_4790
	cmp	r0, #0
	bne	.Ld7e
	bl	__Func_93c00
.Ld7e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_d70

.thumb_func_start OvlFunc_d84
	push	{lr}
	bl	OvlFunc_4790
	cmp	r0, #0
	bne	.Ld94
	bl	__Func_93c00
	b	.Ld98
.Ld94:
	bl	OvlFunc_57c
.Ld98:
	pop	{r0}
	bx	r0
.func_end OvlFunc_d84

.thumb_func_start OvlFunc_d9c
	ldr	r0, =.L5488
	bx	lr
.func_end OvlFunc_d9c

.thumb_func_start OvlFunc_da4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xa2
	sub	r2, #0xc0
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__Func_79358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_658
	bl	__Func_41d8
	mov	r3, #0x78
	mov	r2, #0x3c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #6
	mov	r2, #8
	mov	r1, #0x3c
	mov	r0, #0x4a
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	mov	r7, r0
	mov	r6, #0x80
	bl	__Func_c528
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	lsl	r6, #14
	strb	r5, [r3]
	mov	r0, #0xb
	str	r6, [r7, #0xc]
	bl	__Func_92054
	mov	r1, #0
	mov	r7, r0
	bl	__Func_c528
	mov	r3, r7
	add	r3, #0x55
	strb	r5, [r3]
	mov	r5, #0x80
	lsl	r5, #11
	str	r5, [r7, #0xc]
	ldr	r0, =0x362
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le5a
	mov	r1, #5
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	str	r5, [r7, #0xc]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0xd
	mov	r7, r0
	mov	r2, #0xc
	str	r6, [r7, #0xc]
	mov	r0, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xc
	b	.Le80
.Le5a:
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xc0
	mov	r7, r0
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	ldr	r0, =0x367
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le8a
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x18
.Le80:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.Le9e
.Le8a:
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Le9e:
	mov	r0, #0xda
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf16
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x19
	mov	r0, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	mov	r7, r0
	bl	__Func_c528
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	mov	r5, #2
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #11
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lf16:
	mov	r0, #0xdc
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Lf26
	mov	r6, #0x13
.Lf26:
	mov	r0, #0xd
	bl	__Func_92054
	mov	r2, #0x80
	mov	r7, r0
	lsl	r2, #12
	lsl	r3, r6, #20
	add	r3, r2
	mov	r2, r7
	str	r3, [r7, #8]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x12
	mov	r5, #0xb
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x11
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10704
	mov	r5, #0xf
.Lf6c:
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #0
	bl	__Func_11f54
	ldr	r3, [r7, #0xc]
	cmp	r3, #0
	bne	.Lfc8
	cmp	r0, #0
	bne	.Lfc8
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r3, [r7, #0x10]
	ldr	r2, [r7, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Lfc8:
	add	r5, #1
	cmp	r5, #0x11
	ble	.Lf6c
	ldr	r0, =0x361
	bl	__Func_79338
	cmp	r0, #0
	beq	.L104a
	mov	r3, #0
	mov	r9, r3
	mov	r2, #2
	mov	r3, #0xb
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #0x21
	mov	r10, r3
.Lfe8:
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #2
	bl	__Func_c300
	add	r0, r5, #5
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r9
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r1, #0xa
	bl	__Func_c300
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	str	r6, [sp]
	bl	__Func_10704
	add	r6, #2
	cmp	r5, #0x16
	ble	.Lfe8
	mov	r0, #0x1c
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r0, #0x1c
	bl	__Func_9ad90
	b	.L108a
.L104a:
	mov	r2, #0
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #2
.L1052:
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	add	r0, r5, #5
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	mov	r2, r8
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	add	r5, #1
	str	r3, [r7, #0xc]
	cmp	r5, #0x16
	ble	.L1052
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_4c
	lsl	r1, #4
	bl	__Func_41d8
.L108a:
	mov	r0, #0xd8
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10b2
	mov	r0, #0x1d
	mov	r1, #4
	bl	__Func_924d4
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
.L10b2:
	ldr	r0, =0x363
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10f4
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x46a0000
	str	r3, [r7, #8]
	mov	r3, #0xb8
	lsl	r3, #16
	str	r3, [r7, #0x10]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	ldr	r1, =.L4bec
	mov	r0, r7
	bl	__Func_c2d8
	b	.L10fa
.L10f4:
	mov	r0, #2
	bl	__Func_118c0
.L10fa:
	ldr	r0, =0x369
	bl	__Func_79338
	cmp	r0, #0
	beq	.L116c
	mov	r0, #0x1f
	bl	__Func_92054
	mov	r1, #8
	mov	r7, r0
	bl	__Func_c300
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa
	mov	r5, #0x54
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	b	.L11a0

	.pool_aligned

.L116c:
	mov	r0, #0x1f
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r2, #9
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
	ldr	r3, [r7, #8]
	mov	r2, #0x3d
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
.L11a0:
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0
	add	r3, #0x55
	mov	r5, #2
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #8
	mov	r1, #9
	bl	__Func_924d4
	ldr	r5, =ewram_240
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r5, r2
	strb	r6, [r3]
	mov	r1, #3
	mov	r0, #0x27
	bl	OvlFunc_3bd0
	mov	r1, #0x11
	mov	r0, #0x28
	bl	OvlFunc_3bd0
	mov	r0, #8
	mov	r1, #2
	bl	__Func_92950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.L1216
	b	.L1350
.L1216:
	ldr	r2, =.L1220
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1220:
	.word	.L1234
	.word	.L12d6
	.word	.L1308
	.word	.L131e
	.word	.L133a
.L1234:
	mov	r2, #0xc0
	lsl	r2, #16
	str	r2, [sp]
	mov	r2, #0x27
	str	r2, [sp, #4]
	mov	r3, #0xbd
	mov	r2, #0x28
	str	r2, [sp, #8]
	lsl	r3, #19
	mov	r1, #8
	mov	r2, #6
	mov	r0, #0
	bl	OvlFunc_4494
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_10788
	mov	r0, #0x20
	bl	__Func_92924
	mov	r0, #0x21
	bl	__Func_92924
	mov	r0, #0x22
	bl	__Func_92924
	mov	r0, #0x23
	bl	__Func_92924
	mov	r0, #0x24
	bl	__Func_92924
	mov	r0, #0x25
	bl	__Func_92924
	mov	r0, #0x26
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12b6
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_2640
	bl	OvlFunc_25c8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #3
	bl	OvlFunc_3468
.L12b6:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_920c0
	ldr	r0, =0xe6
	bl	OvlFunc_457c
	b	.L1350
.L12d6:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2710
	bl	__Func_41d8
	mov	r0, #0x27
	bl	__Func_92924
	mov	r0, #0x28
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1350
	bl	OvlFunc_25c8
	mov	r0, #1
	bl	OvlFunc_2640
	mov	r0, #0
	bl	OvlFunc_3468
	b	.L1350
.L1308:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1350
	mov	r0, #0x20
	bl	OvlFunc_1a0c
	bl	OvlFunc_2a50
	b	.L1350
.L131e:
	mov	r0, #1
	bl	OvlFunc_1474
	mov	r0, #4
	bl	__Func_91e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79358
	ldr	r0, =0x951
	bl	__Func_79358
	b	.L1350
.L133a:
	mov	r0, #1
	neg	r0, r0
	bl	OvlFunc_1474
	mov	r0, #5
	bl	__Func_91e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79358
.L1350:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_da4

.thumb_func_start OvlFunc_137c
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r4, #0x66
	add	r4, r0
	mov	r3, #0
	ldrsh	r2, [r4, r3]
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x666
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #5
	strh	r3, [r1]
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	mov	r0, #0
	bx	lr
.func_end OvlFunc_137c

.thumb_func_start OvlFunc_13c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =.L5b80
	mov	r5, r0
	ldr	r0, [r3]
	ldr	r7, [r5, #8]
	add	r0, #1
	ldr	r5, [r5, #0xc]
	mov	r1, #0xb4
	str	r0, [r3]
	mov	r6, #0x29
	mov	r8, r5
	bl	_Func_b1c
	cmp	r0, #0x14
	beq	.L13f8
	cmp	r0, #0x14
	bgt	.L13f2
	cmp	r0, #0xa
	beq	.L13fe
	b	.L145c
.L13f2:
	cmp	r0, #0x1e
	beq	.L13fc
	b	.L145c
.L13f8:
	mov	r6, #0x2a
	b	.L13fe
.L13fc:
	mov	r6, #0x2b
.L13fe:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L145c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L141e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__Func_923e4
.L141e:
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r7, r3
	str	r2, [r5, #8]
	add	r3, r8
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =.L596c
	mov	r0, r6
	bl	__Func_9207c
.L145c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13c0

.thumb_func_start OvlFunc_1474
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x27
	bl	__Func_92924
	mov	r0, #0x28
	bl	__Func_92924
	mov	r0, #1
	bl	__Func_7808c
	mov	r0, #0x11
	bl	__Func_f9080
	bl	__Func_916b0
	mov	r1, #0xc1
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	cmp	r5, #0
	bge	.L14b6
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	b	.L14be
.L14b6:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
.L14be:
	ldr	r1, =.L5668
	mov	r0, #8
	bl	__Func_9207c
	mov	r1, #0xbc
	mov	r2, #0xc0
	lsl	r2, #16
	lsl	r1, #19
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0
	strh	r5, [r0, #6]
	ldr	r1, =.L5738
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0
	mov	r1, #0x23
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xb7
	mov	r2, #0xb8
	mov	r0, #1
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb7
	mov	r2, #0xc8
	mov	r0, #2
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb5
	mov	r2, #0xc0
	lsl	r2, #16
	lsl	r1, #19
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_92054
	strh	r5, [r0, #6]
	mov	r0, #2
	bl	__Func_92054
	strh	r5, [r0, #6]
	mov	r0, #3
	bl	__Func_92054
	strh	r5, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r5, #0x80
	add	r3, r2
	lsl	r5, #1
	str	r5, [r3]
	mov	r1, #1
	ldr	r0, =0x10001
	bl	__Func_91200
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x20f1
	bl	__Func_92b94
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r6, =.L5950
	mov	r0, #0
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r0, #0
	mov	r10, r3
	bl	__Func_92054
	mov	r2, r10
	mov	r1, #0x24
	str	r2, [r0, #0x1c]
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldr	r3, [r0, #8]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #8]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L5808
	mov	r0, #0
	bl	__Func_9207c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xbc
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #1
	bl	__Func_920c0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xba
	mov	r0, #2
	lsl	r1, #3
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0xbe
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r1, #0xbc
	mov	r2, #0xb0
	mov	r0, #2
	lsl	r1, #3
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_920c0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_920c0
	mov	r1, #0xba
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #3
	bl	__Func_921c4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_920c0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_920c0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_920c0
	mov	r1, #3
	mov	r0, #1
	bl	__Func_920c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =.L58ac
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_920c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #2
	bl	__Func_920c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_920c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r6
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r3, =.L5b80
	ldr	r5, =OvlFunc_13c0
	mov	r6, #9
	mov	r1, #0xc8
	str	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	mov	r8, r3
	bl	__Func_41d8
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x37
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, r8
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r3, r8
	mov	r1, #0xc8
	str	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #2
	bl	__Func_920c0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_920c0
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_920c0
	mov	r2, r8
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #2
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #2
	b	.L18e8

	.pool_aligned

.L18e8:
	bl	__Func_920c0
	mov	r3, r8
	mov	r1, #0xc8
	str	r6, [r3]
	mov	r0, r5
	lsl	r1, #4
	bl	__Func_41d8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb7
	lsl	r1, #3
	mov	r2, #0xc8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0xab
	lsl	r1, #3
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0xbd
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0xab
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #3
	bl	__Func_920c0
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb3
	mov	r0, #3
	lsl	r1, #3
	mov	r2, #0xc8
	bl	__Func_921c4
	mov	r1, #0xab
	lsl	r1, #3
	mov	r2, #0xb8
	mov	r0, #3
	bl	__Func_9218c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xbd
	mov	r2, #0xb0
	mov	r0, #1
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb7
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc3
	mov	r2, #0xc8
	lsl	r2, #16
	mov	r0, #3
	lsl	r1, #19
	bl	__Func_923e4
	bl	__Func_c5b4
	mov	r1, #2
	mov	r0, r10
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	ldr	r0, =0x214c
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1474

.thumb_func_start OvlFunc_1a0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r2, [r0, r3]
	mov	r9, r2
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r10, r2
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r3, r10
	lsl	r5, r3, #16
	mov	r2, r9
	ldr	r3, =0xffd00000
	lsl	r6, r2, #16
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #0
	bl	__Func_923e4
	ldr	r3, =0xffd80000
	ldr	r2, =0xfff00000
	add	r3, r5
	mov	r8, r3
	add	r1, r6, r2
	mov	r0, #1
	mov	r2, r8
	bl	__Func_923e4
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r6, r2
	mov	r0, #2
	mov	r2, r8
	bl	__Func_923e4
	ldr	r3, =0xffe00000
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #3
	bl	__Func_923e4
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x20ed
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b68
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1b68:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b88
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1b88:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1ba8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1ba8:
	mov	r5, r9
	sub	r5, #0x10
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x40
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x10
	bl	__Func_921c4
	mov	r0, r7
	mov	r1, r9
	mov	r2, r10
	bl	__Func_921c4
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a0c

.thumb_func_start OvlFunc_1c20
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1c40
	bl	OvlFunc_288c
	b	.L1dd8
.L1c40:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #1
	bl	OvlFunc_2a94
	mov	r6, r0
	cmp	r6, #0
	beq	.L1c54
	b	.L1db8
.L1c54:
	ldr	r0, =0x20b2
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x44
	mov	r2, #0
	mov	r0, #0x68
	bl	OvlFunc_3a58
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa8
	bl	OvlFunc_3abc
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_3b18
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r0
	ldr	r2, =0xcccc
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0x6666
	mov	r10, r2
	str	r2, [r0, #0x30]
	mov	r2, #0x80
	mov	r8, r3
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	str	r2, [r5, #0x30]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	str	r2, [r0, #0x30]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #14
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	mov	r3, r8
	str	r2, [r5, #0x30]
	mov	r2, #0x80
	lsl	r2, #11
	ldr	r1, [r5, #8]
	str	r3, [r5, #0x34]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x44
	mov	r2, #0
	mov	r0, #0x68
	bl	OvlFunc_3a58
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa8
	bl	OvlFunc_3abc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x44
	mov	r0, #0x68
	bl	OvlFunc_3abc
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_3b18
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #1
	bl	OvlFunc_2b50
	b	.L1dca
.L1db8:
	cmp	r6, #1
	bne	.L1dca
	ldr	r0, =0x20b1
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L1dca:
	mov	r1, r7
	mov	r2, #1
	mov	r0, r6
	bl	OvlFunc_2bac
	bl	__Func_91750
.L1dd8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c20

.thumb_func_start OvlFunc_1df8
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L1e12
	bl	OvlFunc_288c
	b	.L1f7e
.L1e12:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_2a94
	mov	r7, r0
	cmp	r7, #0
	beq	.L1e26
	b	.L1f5e
.L1e26:
	ldr	r0, =0x20b7
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	mov	r5, #0x8c
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	lsl	r5, #1
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_3640
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_3b80
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_3b80
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_93c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_92adc
	bl	__Func_93c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_92adc
	bl	__Func_93c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0xf
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x28
	mov	r2, #0
	mov	r0, #0x60
	bl	OvlFunc_3a58
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0x80
	bl	OvlFunc_3abc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_3abc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x48
	mov	r0, #0xa0
	bl	OvlFunc_3abc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	bl	OvlFunc_3b18
	mov	r0, #0
	bl	OvlFunc_381c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_2b50
	b	.L1f70
.L1f5e:
	cmp	r7, #1
	bne	.L1f70
	ldr	r0, =0x20b6
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L1f70:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_2bac
	bl	__Func_91750
.L1f7e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1df8

.thumb_func_start OvlFunc_1f90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1fae
	bl	OvlFunc_288c
	b	.L20d2
.L1fae:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_2a94
	mov	r6, r0
	cmp	r6, #0
	bne	.L20b2
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	ldr	r0, =0x20bb
	mov	r8, r3
	bl	__Func_92b94
	bl	OvlFunc_188
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x9a
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_1b4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_3640
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	bl	OvlFunc_1c8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xaa
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	OvlFunc_3b40
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	beq	.L206e
	mov	r5, #0xc1
	lsl	r5, #1
	add	r5, r8
.L205a:
	mov	r0, #1
	add	r6, #1
	bl	__Func_30f8
	cmp	r6, #0xef
	bgt	.L206e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #5
	bne	.L205a
.L206e:
	bl	OvlFunc_b30
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_381c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_2b50
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0
	strh	r3, [r2]
	b	.L20c4
.L20b2:
	cmp	r6, #1
	bne	.L20c4
	ldr	r0, =0x20ba
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L20c4:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_2bac
	bl	__Func_91750
.L20d2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f90

.thumb_func_start OvlFunc_20f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L2116
	bl	OvlFunc_288c
	b	.L22a6
.L2116:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_2a94
	mov	r11, r0
	cmp	r0, #0
	beq	.L212a
	b	.L2284
.L212a:
	ldr	r0, =0x20bf
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd6
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xcc
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_3640
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xd2
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xc8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_92adc
	bl	__Func_93fa0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #0xc]
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	mov	r8, r3
	ldr	r6, [r5, #8]
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r2, #0xc0
	lsl	r2, #11
	add	r2, r8
	ldr	r3, [r5, #0x10]
	mov	r1, r6
	mov	r0, r5
	mov	r9, r2
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0
	mov	r1, #0xe
	bl	__Func_924d4
	mov	r3, #0x80
	lsl	r3, #15
	add	r3, r6
	mov	r10, r3
	mov	r2, r9
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r2, #0xd8
	lsl	r2, #14
	add	r8, r2
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	mov	r1, r10
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_924d4
	mov	r3, #0xc0
	lsl	r3, #14
	add	r6, r3
	mov	r2, r8
	ldr	r3, [r5, #0x10]
	mov	r1, r6
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_381c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_2b50
	b	.L2298
.L2284:
	mov	r2, r11
	cmp	r2, #1
	bne	.L2298
	ldr	r0, =0x20be
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L2298:
	mov	r1, r7
	mov	r2, #4
	mov	r0, r11
	bl	OvlFunc_2bac
	bl	__Func_91750
.L22a6:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20f0

.thumb_func_start OvlFunc_22c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L22ec
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
.L22ec:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c4

.thumb_func_start OvlFunc_22f4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L232a
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
.L232a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22f4

.thumb_func_start OvlFunc_2330
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L234e
	bl	OvlFunc_288c
	b	.L24a2
.L234e:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_2a94
	mov	r8, r0
	cmp	r0, #0
	beq	.L2362
	b	.L2480
.L2362:
	ldr	r0, =0x20c3
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_3640
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf8
	lsl	r1, #2
	mov	r0, #0
	mov	r2, #0xb8
	bl	OvlFunc_22f4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_22c4
	mov	r0, #0x78
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_38dc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0x77
	mov	r5, r0
.L241c:
	mov	r1, #0xf8
	ldr	r3, [r5, #8]
	lsl	r1, #18
	cmp	r3, r1
	ble	.L242c
	ldr	r2, =0xfffecccd
	add	r3, r2
	str	r3, [r5, #8]
.L242c:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_30f8
	cmp	r6, #0
	bge	.L241c
	mov	r0, #0
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_22c4
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_38dc
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	bl	OvlFunc_381c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_2b50
	b	.L2494
.L2480:
	mov	r2, r8
	cmp	r2, #1
	bne	.L2494
	ldr	r0, =0x20c2
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L2494:
	mov	r1, r7
	mov	r2, #5
	mov	r0, r8
	bl	OvlFunc_2bac
	bl	__Func_91750
.L24a2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2330

.thumb_func_start OvlFunc_24d0
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.L24ea
	bl	OvlFunc_288c
	b	.L25b6
.L24ea:
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_2a94
	mov	r6, r0
	cmp	r6, #0
	bne	.L2596
	ldr	r0, =0x20c7
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xa1
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x58
	mov	r0, #0xb4
	bl	OvlFunc_3a58
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xa
	mov	r1, #0x54
	mov	r0, #0x20
	bl	OvlFunc_3abc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x1e
	mov	r1, #0x54
	mov	r0, #0x60
	bl	OvlFunc_3abc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	bl	OvlFunc_3b18
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_2b50
	b	.L25a8
.L2596:
	cmp	r6, #1
	bne	.L25a8
	ldr	r0, =0x20c6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L25a8:
	mov	r1, r5
	mov	r2, #6
	mov	r0, r6
	bl	OvlFunc_2bac
	bl	__Func_91750
.L25b6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24d0

.thumb_func_start OvlFunc_25c8
	push	{r5, r6, lr}
	mov	r0, #0xe0
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xe2
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, #0x80
	lsl	r6, #12
	mov	r2, r0
	lsl	r5, #20
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0xe4
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xe6
	lsl	r0, #2
	bl	__Func_793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #0xe8
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xea
	lsl	r0, #2
	bl	__Func_793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r0, #3
	mov	r1, r5
	bl	__Func_923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25c8

.thumb_func_start OvlFunc_2640
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_79664
	mov	r0, #1
	bl	__Func_79664
	mov	r0, #2
	bl	__Func_79664
	mov	r0, #3
	bl	__Func_79664
	mov	r0, #5
	bl	__Func_79664
	mov	r0, r5
	bl	__Func_7961c
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	str	r5, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r5
	bl	__Func_77394
	mov	r5, r0
	ldrh	r3, [r5, #0x34]
	ldr	r1, =0x131
	strh	r3, [r5, #0x38]
	ldrh	r3, [r5, #0x36]
	ldr	r2, .L26b4	@ 0
	strh	r3, [r5, #0x3a]
	add	r3, r5, r1
	strb	r2, [r3]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L26c0
	mov	r3, #0
	cmp	r0, #0
	blt	.L26c0
	mov	r3, r0
	b	.L26c0

	.align	2, 0
.L26b4:
	.word	0
	.pool

.L26c0:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L26d4
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L26d4
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L26d4:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L26f2
	mov	r3, #0
	cmp	r0, #0
	blt	.L26f2
	mov	r3, r0
.L26f2:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L2706
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L2706
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L2706:
	bl	__Func_91858
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2640

.thumb_func_start OvlFunc_2710
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L2746
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.L2746
	ldr	r0, =0x141
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2746
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L2746:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2710

.thumb_func_start OvlFunc_2758
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0x80
	mov	r2, #8
	lsl	r3, #13
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0xfa
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r7, [r3]
	mov	r0, r7
	bl	__Func_92054
	mov	r6, r0
	bl	__Func_916b0
	mov	r5, #8
.L278a:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L27e6
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L27e6
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.L27e6
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L27b8
	ldr	r3, =0xffff
	add	r2, r3
.L27b8:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L27c8
	ldr	r2, =0xffff
	add	r0, r2
.L27c8:
	asr	r0, #16
	cmp	r0, #0
	bgt	.L27e6
	mov	r2, r1
	cmp	r2, #0
	bge	.L27d6
	neg	r2, r2
.L27d6:
	cmp	r0, #0
	bge	.L27dc
	neg	r0, r0
.L27dc:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.L27e6
	mov	r10, r5
	mov	r8, r0
.L27e6:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L278a
	ldr	r0, =0x2085
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_92f84
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	mov	r8, r3
	mov	r3, #0x80
	lsl	r3, #2
	mov	r2, r8
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0xf
	str	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r1, [r6, #8]
	mov	r3, #0xdc
	lsl	r5, r7, #4
	lsl	r3, #2
	add	r0, r5, r3
	asr	r1, #20
	bl	__Func_793c8
	ldr	r1, [r6, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r7, #1
	bl	__Func_793c8
	cmp	r7, #3
	ble	.L2856
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L286a
.L2856:
	mov	r0, r7
	bl	OvlFunc_2640
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.L286a:
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2758

.thumb_func_start OvlFunc_288c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ebc
	mov	r7, r0
	ldr	r0, [r5]
	mov	r9, r0
	mov	r0, r7
	bl	__Func_92054
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	__Func_92054
	mov	r11, r0
	bl	__Func_916b0
	ldr	r3, =0x2086
	mov	r8, r3
	mov	r0, r8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92c40
	ldr	r2, [r5]
	ldr	r0, =0xcc2
	ldr	r1, =0x2089
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0xcc4
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_91c7c
	mov	r10, r0
	cmp	r0, #0
	bne	.L2970
	mov	r0, r8
	add	r0, #1
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	mov	r7, #0xe0
	bl	__Func_92f84
	lsl	r7, #1
	mov	r3, #0x80
	mov	r2, #0xe4
	lsl	r3, #2
	add	r7, r9
	lsl	r2, #1
	add	r2, r9
	str	r3, [r7]
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r11
	ldr	r1, [r0, #8]
	mov	r2, #0xdc
	lsl	r5, r6, #4
	lsl	r2, #2
	add	r0, r5, r2
	asr	r1, #20
	bl	__Func_793c8
	mov	r3, r11
	ldr	r1, [r3, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r6, #1
	bl	__Func_793c8
	cmp	r6, #3
	ble	.L295c
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L2980
.L295c:
	mov	r0, r6
	bl	OvlFunc_2640
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, r10
	str	r3, [r7]
	b	.L2980
.L2970:
	mov	r0, r8
	add	r0, #2
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L2980:
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_288c

.thumb_func_start OvlFunc_29ac
	push	{r5, r6, r7, lr}
	mov	r5, r0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r7, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	bl	__Func_916b0
	bl	__Func_795fc
	cmp	r0, #1
	bgt	.L2a2e
	ldr	r0, =0x20e5
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_93054
	cmp	r0, #0
	bne	.L2a3c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, r6
	add	r2, #0x40
	mov	r1, r7
	mov	r0, r5
	bl	__Func_9218c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, r7
	mov	r2, r6
	bl	__Func_921c4
	mov	r2, r6
	mov	r0, #0
	add	r2, #0x20
	mov	r1, r7
	bl	__Func_921c4
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xb
	bl	__Func_91e9c
	b	.L2a3c
.L2a2e:
	ldr	r0, =0x20e8
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L2a3c:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_29ac

.thumb_func_start OvlFunc_2a50
	push	{lr}
	mov	r0, #0xe0
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe2
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe4
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe6
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe8
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xea
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a50

.thumb_func_start OvlFunc_2a94
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	bl	__Func_8e118
	mov	r1, #5
	mov	r0, r5
	bl	__Func_19908
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L2abc
	ldr	r0, =0x2076
	b	.L2ac8
.L2abc:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L2ac6
	ldr	r0, =0x2078
	b	.L2ac8
.L2ac6:
	ldr	r0, =0x207a
.L2ac8:
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2afc
	mov	r3, #0x82
	lsl	r3, #2
	add	r5, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2b10
	mov	r0, #0
	bl	__Func_2106c
	cmp	r0, #1
	bne	.L2b00
.L2afc:
	mov	r0, #2
	b	.L2b2c
.L2b00:
	cmp	r0, #2
	beq	.L2b0c
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.L2b2c
.L2b0c:
	mov	r0, #3
	b	.L2b2c
.L2b10:
	mov	r0, r5
	bl	__Func_79358
	ldr	r0, =0x207c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
.L2b2c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2a94

.thumb_func_start OvlFunc_2b50
	push	{r5, lr}
	mov	r5, r0
	mov	r0, r1
	mov	r1, #5
	bl	__Func_19908
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L2b72
	ldr	r0, =0x2076
	b	.L2b7e
.L2b72:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L2b7c
	ldr	r0, =0x2078
	b	.L2b7e
.L2b7c:
	ldr	r0, =0x207a
.L2b7e:
	add	r0, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b50

.thumb_func_start OvlFunc_2bac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	sub	sp, #0xc
	mov	r6, r0
	mov	r0, r10
	str	r2, [sp]
	bl	__Func_92054
	mov	r5, r0
	mov	r2, #0xa
	ldrsh	r0, [r5, r2]
	mov	r9, r0
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	mov	r11, r3
	cmp	r6, #3
	beq	.L2cbe
	bl	__Func_795fc
	mov	r7, r0
	cmp	r7, #0
	ble	.L2bfe
	ldr	r3, =ewram_240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.L2bf0:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.L2bf0
.L2bfe:
	cmp	r7, #1
	bgt	.L2c06
	ldr	r0, =0x2083
	b	.L2cc0
.L2c06:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2c1a
	ldr	r0, =0x2084
	b	.L2cc0
.L2c1a:
	cmp	r6, #2
	bne	.L2c28
	mov	r0, #6
	mov	r5, #0
	bl	__Func_30f8
	b	.L2c40
.L2c28:
	ldr	r0, =0x207d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	mov	r5, r0
.L2c40:
	cmp	r5, #0
	bne	.L2cbe
	cmp	r5, r7
	bge	.L2c5e
	add	r6, sp, #4
	mov	r5, r7
.L2c4c:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L2c4c
.L2c5e:
	cmp	r7, #0
	ble	.L2c7c
	add	r6, sp, #4
	mov	r5, r7
.L2c66:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.L2c76
	bl	__Func_7961c
.L2c76:
	sub	r5, #1
	cmp	r5, #0
	bne	.L2c66
.L2c7c:
	bl	__Func_a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.L2c9c
	add	r6, sp, #4
	mov	r5, r7
.L2c8a:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L2c8a
.L2c9c:
	cmp	r7, #0
	ble	.L2cb6
	add	r6, sp, #4
	mov	r5, r7
.L2ca4:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_7961c
	cmp	r5, #0
	bne	.L2ca4
.L2cb6:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L2cce
.L2cbe:
	ldr	r0, =0x207e
.L2cc0:
	bl	__Func_92b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_92f84
	b	.L2dee
.L2cce:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_19908
	ldr	r0, =0x207f
	bl	__Func_92b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2d22
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__Func_923e4
.L2d22:
	mov	r5, r11
	add	r5, #0x10
	mov	r6, r9
	mov	r2, r5
	add	r6, #0x10
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_921c4
	mov	r2, #0x1e
	mov	r0, r8
	mov	r1, #0
	bl	__Func_92848
	mov	r0, r8
	mov	r1, #3
	bl	__Func_924d4
	sub	r5, #0x20
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_921c4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r10
	bl	__Func_9218c
	mov	r0, #0
	mov	r1, r8
	bl	__Func_920c0
	mov	r2, r5
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r0, r10
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, r11
	sub	r2, #0x30
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_921c4
	mov	r1, r9
	mov	r2, r11
	mov	r0, r10
	bl	__Func_921c4
	mov	r0, r8
	bl	__Func_79664
	mov	r3, #0x80
	ldr	r2, [sp]
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_79358
	mov	r0, r8
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, r8
	mov	r2, #0xdc
	lsl	r6, r0, #4
	lsl	r2, #2
	asr	r1, #20
	add	r0, r6, r2
	bl	__Func_793c8
	ldr	r1, [r5, #0x10]
	mov	r3, #0xde
	lsl	r3, #2
	asr	r1, #20
	add	r0, r6, r3
	bl	__Func_793c8
.L2dee:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bac

.thumb_func_start OvlFunc_2e18
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	__Func_77394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	__Func_78588
	mov	r6, #0
	add	r5, #0xd8
.L2e34:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L2e44
	mov	r0, r7
	mov	r1, r6
	bl	__Func_78708
.L2e44:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L2e34
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e18

.thumb_func_start OvlFunc_2e54
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xe5
	lsl	r0, #5
	bl	__Func_4970
	ldr	r7, =.L59a4
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r0
	cmp	r3, r2
	bne	.L2e7a
	bl	__Func_4080
	strh	r0, [r7]
.L2e7a:
	ldr	r3, =.L4cb0
	ldrb	r3, [r3, r5]
	mov	r8, r3
	cmp	r5, #8
	bne	.L2e86
	mov	r5, #4
.L2e86:
	ldr	r0, =0xe7
	bl	__Func_2f40
	mov	r1, r6
	bl	__Func_5340
	mov	r2, r8
	add	r0, r6, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r2, r5, #10
	add	r2, r6
	mov	r1, #0x80
	add	r2, #0xa0
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	__Func_3fa4
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L2eb8:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L2eb8
	mov	r0, r6
	bl	__Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e54

.thumb_func_start OvlFunc_2ee8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.L5c00
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.L59a4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.L2f10:
	ldr	r1, =.L5bdc
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.L2fe6
	ldr	r5, =.L5be0
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.L2fac
	cmp	r3, r2
	bgt	.L2f48
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L2fd4
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.L2f94
	b	.L2f10
.L2f48:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.L2f66
	cmp	r3, r2
	bgt	.L2f5e
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.L2f7c
	b	.L2f10
.L2f5e:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.L2fca
	b	.L2f10
.L2f66:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.L5bb0
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L5c38
	strh	r3, [r1]
	ldr	r3, =.L5bac
	b	.L2fc2
.L2f7c:
	ldr	r2, =.L5c38
	ldr	r1, =.L5c30
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L5bac
	strh	r3, [r1]
	ldr	r3, =.L5bbc
	b	.L2fc2
.L2f94:
	ldr	r2, =.L5bb8
	ldr	r1, =.L5ba8
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L5b94
	strh	r3, [r1]
	ldr	r3, =.L5c3c
	b	.L2fc2
.L2fac:
	ldr	r2, =.L5bd4
	ldr	r1, =.L5bd8
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L5be8
	strh	r3, [r1]
	ldr	r3, =.L5bc4
.L2fc2:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.L2f10
.L2fca:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.L2f10
.L2fd4:
	ldr	r0, =OvlFunc_2ee8
	bl	__Func_4278
	ldr	r3, =.L59a4
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f3c
	b	.L339c
.L2fe6:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.L5b94
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.L3000
	ldr	r3, =.L5bb8
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.L3032
.L3000:
	ldr	r3, =.L5ba8
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L5c3c
	ldr	r3, =.L5bb8
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	mov	r11, r6
	cmp	r5, r7
	blt	.L3032
	ldr	r3, .L3048	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L3032:
	ldr	r1, =.L5be8
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.L309c
	ldr	r3, =.L5bd4
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.L30ce

	.align	2, 0
.L3048:
	.word	0
	.pool

.L309c:
	ldr	r3, =.L5bd8
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.L5bd4
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L5bc4
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	str	r6, [sp, #4]
	cmp	r5, r7
	blt	.L30ce
	ldr	r3, .L30e4	@ 0
	mov	r5, r9
	strh	r3, [r5]
.L30ce:
	ldr	r0, =.L5bac
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.L30fc
	ldr	r3, =.L5c38
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.L312c

	.align	2, 0
.L30e4:
	.word	0
	.pool

.L30fc:
	ldr	r2, =.L5bbc
	ldr	r3, =.L5c30
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.L5c38
	add	r5, #1
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	cmp	r5, r7
	blt	.L312c
	ldr	r3, .L3160	@ 0
	mov	r1, r9
	strh	r3, [r1]
.L312c:
	add	r0, sp, #0xc
	ldr	r3, [r0, #4]
	ldr	r2, =0xffff0000
	and	r3, r2
	str	r3, [r0, #4]
	mov	r3, r11
	lsl	r1, r3, #16
	ldr	r3, [sp, #0xc]
	lsr	r1, #16
	and	r3, r2
	ldr	r2, =0xffff
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #0xc]
	bl	__Func_3d28
	ldr	r2, =.L5bb0
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.L317c

	.align	2, 0
.L3160:
	.word	0
	.pool

.L317c:
	cmp	r3, #0
	bge	.L3182
	add	r3, #0xff
.L3182:
	asr	r6, r3, #8
	ldr	r3, =.L5bd0
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.L3190
	b	.L32e8
.L3190:
	cmp	r3, #2
	bgt	.L319a
	cmp	r3, #1
	beq	.L31a4
	b	.L333a
.L319a:
	cmp	r3, #3
	beq	.L321a
	cmp	r3, #4
	beq	.L3296
	b	.L333a
.L31a4:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.L31ae:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L31be
	add	r3, #0xff
.L31be:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L320e
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	mov	r3, #0xf4
	mov	r0, r1
	lsl	r3, #8
	mov	r1, r8
	orr	r3, r1
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_3dec
	ldr	r4, [sp]
.L320e:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.L31ae
	b	.L333a
.L321a:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.L3224:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L3234
	add	r3, #0xff
.L3234:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L328a
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	ldr	r3, =.L5ba4
	mov	r0, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	lsl	r2, #8
	add	r3, r8
	orr	r3, r2
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_3dec
	ldr	r4, [sp]
.L328a:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.L3224
	b	.L333a
.L3296:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.L333a
	ldr	r3, =0x1ff
	mov	r1, r10
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r5, r1
	orr	r3, r2
	str	r5, [sp, #8]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #8]
	ldr	r3, =.L5ba4
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r1]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_3dec
	b	.L333a
.L32e8:
	mov	r3, r6
	mov	r1, #0x98
	mov	r4, #0x80
	mov	r2, r6
	add	r3, #0x98
	lsl	r1, #1
	mov	r7, #0x30
	lsl	r4, #24
	add	r2, #0x58
	cmp	r3, r1
	bcs	.L333a
	ldr	r3, =0x1ff
	mov	r5, r10
	and	r2, r3
	mov	r3, #0
	stmia	r5!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r1, r5
	orr	r3, r2
	str	r1, [sp, #8]
	stmia	r5!, {r3}
	mov	r0, r5
	str	r0, [sp, #8]
	ldr	r3, =.L5ba4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r5]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_3dec
.L333a:
	ldr	r0, =ewram_2090
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.L3368
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L3368:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.L339a
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	ldr	r5, [sp, #4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L339a:
	strh	r4, [r1]
.L339c:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ee8

.thumb_func_start OvlFunc_33d8
	push	{r5, r6, lr}
	ldr	r3, =.L5bd0
	mov	r5, r0
	mov	r6, r1
	ldr	r2, =.L5ba4
	strh	r5, [r3]
	mov	r1, #0xc8
	lsl	r3, r6, #4
	lsl	r1, #4
	strh	r3, [r2]
	ldr	r0, =OvlFunc_2ee8
	bl	__Func_41d8
	ldr	r1, =.L59a6
	cmp	r5, #2
	bne	.L33fa
	ldr	r1, =.L4cba
.L33fa:
	cmp	r5, #4
	bne	.L3400
	ldr	r1, =.L59d2
.L3400:
	cmp	r5, #3
	bne	.L342a
	cmp	r6, #0
	beq	.L3428
	ldr	r1, =.L4ce2
	b	.L342a

	.pool_aligned

.L3428:
	ldr	r1, =.L5a50
.L342a:
	ldr	r2, .L3444	@ 0
	ldr	r3, =.L5bdc
	strh	r2, [r3]
	ldr	r3, =.L5be0
	str	r1, [r3]
	ldr	r3, =.L5c38
	strh	r2, [r3]
	ldr	r3, =.L5bac
	strh	r2, [r3]
	ldr	r2, =.L5bb0
	mov	r3, #0
	str	r3, [r2]
	b	.L3460

	.align	2, 0
.L3444:
	.word	0
	.pool

.L3460:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_33d8

.thumb_func_start OvlFunc_3468
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	bne	.L34a2
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x59
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_2e54
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_33d8
	mov	r0, #0x78
	bl	__Func_9163c
	bl	__Func_91750
	b	.L3560
.L34a2:
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r2, r5, #4
	ldr	r3, =.L59a6
	sub	r2, r5
	lsl	r2, #2
	strh	r2, [r3, #0x1e]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, r5
	bl	OvlFunc_2e54
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_33d8
	mov	r0, #0x78
	bl	__Func_9163c
	b	.L34e8
.L34e2:
	mov	r0, #1
	bl	__Func_30f8
.L34e8:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L34e2
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #5
	bl	OvlFunc_2e54
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_33d8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	OvlFunc_33d8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #6
	bl	OvlFunc_2e54
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_33d8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #7
	bl	OvlFunc_2e54
	mov	r1, #0
	mov	r0, #4
	bl	OvlFunc_33d8
	mov	r0, #0xed
	bl	__Func_f9080
	bl	__Func_8acc4
	bl	__Func_91750
	ldr	r0, =0x123
	bl	__Func_79358
.L3560:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3468

.thumb_func_start OvlFunc_3574
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r3, r5, #4
	ldr	r2, =.L5a50
	sub	r3, r5
	lsl	r6, r3, #2
	strh	r6, [r2, #0x1a]
	ldr	r1, =.L4ce2
	mov	r2, r5
	cmp	r5, #0
	bge	.L359a
	neg	r2, r5
.L359a:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	strh	r3, [r1, #0x1a]
	cmp	r5, #0
	bge	.L35d0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x56
	bl	__Func_f9080
	mov	r0, #8
	bl	OvlFunc_2e54
	mov	r1, #1
	mov	r0, #3
	bl	OvlFunc_33d8
	lsl	r0, r5, #4
	sub	r0, r5, r0
	lsl	r0, #2
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	b	.L35f6
.L35d0:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_2e54
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_33d8
	mov	r0, r6
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
.L35f6:
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	b	.L3606
.L3600:
	mov	r0, #1
	bl	__Func_30f8
.L3606:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L3600
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	bl	__Func_91df4
	bl	__Func_91e20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3574

.thumb_func_start OvlFunc_3640
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e68
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	mov	r8, r1
	mov	r10, r2
	bl	__Func_92054
	mov	r3, #1
	strb	r3, [r6, #6]
	mov	r3, #4
	mov	r7, r0
	strb	r3, [r6, #7]
	ldr	r3, [r7, #8]
	ldr	r2, =.L5c44
	str	r3, [r2]
	ldr	r3, [r7, #0x10]
	ldr	r2, =.L5b9c
	str	r3, [r2]
	ldr	r0, [r7, #0x50]
	ldrh	r3, [r7, #6]
	ldr	r2, =.L5bc8
	mov	r9, r0
	str	r3, [r2]
	mov	r0, r11
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r2]
	mov	r5, #0x80
	lsl	r5, #7
	mov	r0, r7
	strh	r5, [r7, #6]
	mov	r1, #3
	bl	__Func_c528
	mov	r0, r7
	mov	r1, #0
	bl	__Func_c300
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r1, r8
	lsl	r1, #16
	mov	r0, r11
	mov	r2, r10
	mov	r8, r1
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_9280c
	ldr	r4, =ewram_2090
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	mov	r1, r3
	strh	r6, [r6]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L36fc
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	mov	r2, #0xf0
	add	r3, #4
	lsl	r2, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L36fc:
	strh	r1, [r6]
	mov	r0, r9
	mov	r2, #0xd
	ldrb	r1, [r0, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x11]
	mov	r0, #0xfc
	str	r4, [sp]
	bl	__Func_f9080
	ldr	r4, [sp]
	mov	r5, #0
.L3724:
	mov	r1, #0x80
	lsl	r2, r5, #12
	lsl	r1, #5
	add	r3, r2, r1
	str	r3, [r7, #0x18]
	mov	r3, #0xf8
	lsl	r3, #9
	sub	r3, r2
	str	r3, [r7, #0x1c]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L3766
	lsl	r1, r3, #1
	add	r1, r3
	add	r3, #1
	strh	r3, [r4]
	mov	r3, #0xf
	lsl	r1, #2
	sub	r3, r5
	add	r1, r4, r1
	lsl	r3, #8
	add	r2, r5, #1
	add	r1, #4
	orr	r3, r2
	stmia	r1!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r1!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r1]
.L3766:
	strh	r0, [r6]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_30f8
	add	r5, #2
	ldr	r4, [sp]
	cmp	r5, #0xf
	ble	.L3724
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L37a4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L37a4:
	strh	r4, [r0]
	mov	r3, #0x88
	lsl	r3, #9
	str	r3, [r7, #0x18]
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0xd
	bl	__Func_9163c
	mov	r3, r9
	mov	r2, #0xd
	ldrb	r1, [r3, #5]
	neg	r2, r2
	mov	r3, r2
	mov	r0, r9
	and	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	strb	r2, [r0, #0x11]
	mov	r1, #3
	mov	r0, r11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3640

.thumb_func_start OvlFunc_381c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e68
	mov	r6, r0
	ldr	r7, [r3]
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2]
	mov	r5, r0
	cmp	r3, #1
	bne	.L3850
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_924d4
	b	.L386a

	.pool_aligned

.L3850:
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, r6
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
.L386a:
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, =.L5c44
	ldr	r3, [r3]
	str	r3, [r5, #8]
	ldr	r3, =.L5b9c
	ldr	r3, [r3]
	str	r3, [r5, #0x10]
	ldr	r3, =.L5bc8
	ldr	r3, [r3]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	add	r0, #0x55
	mov	r3, #3
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x2c]
	ldr	r1, .L38c4	@ 0
	strb	r3, [r0]
	mov	r3, r5
	add	r3, #0x22
	strb	r1, [r3]
	mov	r0, r5
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x14]
	mov	r1, #1
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, #1
	bl	__Func_30f8
	b	.L38d4

	.align	2, 0
.L38c4:
	.word	0
	.pool

.L38d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_381c

.thumb_func_start OvlFunc_38dc
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_38dc

.thumb_func_start OvlFunc_38fc
	push	{r5, lr}
	ldr	r5, =.L5ace
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.L3912
	bl	__Func_209b0
	strh	r0, [r5]
.L3912:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_38fc

.thumb_func_start OvlFunc_391c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L5ace
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =.L5bcc
	lsr	r3, #5
	ldr	r0, =.L5bf0
	mov	r10, r3
	mov	r3, #0
	ldrsh	r7, [r2, r3]
	mov	r11, r0
	mov	r9, r2
	cmp	r7, #0
	beq	.L39b0
	ldr	r3, =.L5b90
	ldrh	r5, [r3]
	add	r5, #1
	strh	r5, [r3]
	ldr	r0, =.L5c34
	ldr	r1, =.L5be4
	ldr	r3, =.L5ba0
	mov	r8, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	lsl	r5, #16
	sub	r2, r3
	asr	r5, #16
	ldrh	r6, [r1]
	mov	r0, r5
	mul	r0, r2
	mov	r1, r7
	bl	_Func_af0
	ldr	r2, =.L5bc0
	add	r6, r0
	mov	r1, r8
	strh	r6, [r1]
	mov	r8, r2
	ldr	r3, =.L5c40
	ldr	r2, =.L5bfc
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldrh	r6, [r2]
	mov	r1, #0
	ldrsh	r2, [r2, r1]
	sub	r3, r2
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	mov	r2, r8
	add	r6, r0
	strh	r6, [r2]
	cmp	r5, r7
	blt	.L39aa
	ldr	r3, .L39dc	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L39aa:
	ldr	r2, =.L5bb4
	ldr	r3, .L39dc	@ 0
	strh	r3, [r2]
.L39b0:
	ldr	r2, =.L5bb4
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0xd
	bgt	.L3a3c
	ldr	r3, =.L5c34
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L5bc0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, r11
	mov	r3, #0
	stmia	r0!, {r3}
	sub	r1, #8
	ldr	r3, =.L5b98
	lsl	r1, #16
	b	.L3a14

	.align	2, 0
.L39dc:
	.word	0
	.pool

.L3a14:
	sub	r2, #8
	orr	r2, r1
	mov	r4, #0x80
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r4, #23
	lsl	r3, #28
	orr	r2, r4
	orr	r2, r3
	mov	r3, #0x80
	stmia	r0!, {r2}
	lsl	r3, #3
	mov	r2, r10
	orr	r2, r3
	str	r2, [r0]
	mov	r1, #0xff
	mov	r0, r11
	bl	__Func_3dec
	b	.L3a44
.L3a3c:
	cmp	r3, #0x13
	ble	.L3a44
	ldr	r3, =0
	strh	r3, [r2]
.L3a44:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_391c

.thumb_func_start OvlFunc_3a58
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r8, r1
	mov	r5, r2
	bl	OvlFunc_38fc
	ldr	r3, =.L5c34
	strh	r6, [r3]
	ldr	r3, =.L5bc0
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, .L3a90	@ 3
	ldr	r2, =.L5b98
	and	r5, r3
	strh	r5, [r2]
	ldr	r3, =.L5bb4
	ldr	r2, .L3a94	@ 0
	strh	r2, [r3]
	ldr	r3, =.L5bcc
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_391c
	bl	__Func_41d8
	b	.L3ab0

	.align	2, 0
.L3a90:
	.word	3
.L3a94:
	.word	0
	.pool

.L3ab0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a58

.thumb_func_start OvlFunc_3abc
	push	{lr}
	ldr	r3, =.L5ba0
	strh	r0, [r3]
	ldr	r3, =.L5c40
	strh	r1, [r3]
	ldr	r3, =.L5c34
	ldr	r1, =.L5be4
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L5bc0
	ldr	r1, =.L5bfc
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L5bcc
	strh	r2, [r3]
	ldr	r2, =.L5b90
	ldr	r3, .L3af0	@ 0
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_391c
	bl	__Func_41d8
	pop	{r0}
	bx	r0

	.align	2, 0
.L3af0:
	.word	0
.func_end OvlFunc_3abc

.thumb_func_start OvlFunc_3b18
	push	{r5, lr}
	ldr	r0, =OvlFunc_391c
	bl	__Func_4278
	ldr	r5, =.L5ace
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_3f3c
	ldr	r3, .L3b34	@ 0xffffffff
	strh	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L3b34:
	.word	0xffffffff
.func_end OvlFunc_3b18

.thumb_func_start OvlFunc_3b40
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L3b7a
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
.L3b7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b40

.thumb_func_start OvlFunc_3b80
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L3bc8
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
.L3bc8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b80

.thumb_func_start OvlFunc_3bd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__Func_92054
	mov	r6, r0
	cmp	r6, #0
	beq	.L3c84
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L3c84
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__Func_48b0
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__Func_1a370
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__Func_3fa4
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__Func_bc48
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L3c74	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.L3c84

	.align	2, 0
.L3c74:
	.word	0x3ff
	.pool

.L3c84:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bd0

.thumb_func_start OvlFunc_3c94
	push	{r5, lr}
	add	r0, #8
	mov	r3, #0
	ldr	r5, =.L4e3c
	strb	r3, [r0]
	mov	r2, #7
	sub	r0, #1
	mov	r4, #0xf
.L3ca4:
	mov	r3, r1
	and	r3, r4
	ldrb	r3, [r5, r3]
	sub	r2, #1
	strb	r3, [r0]
	lsr	r1, #4
	sub	r0, #1
	cmp	r2, #0
	bge	.L3ca4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c94

.thumb_func_start OvlFunc_3cc0
	bx	lr
.func_end OvlFunc_3cc0

.thumb_func_start OvlFunc_3cc4
	ldr	r2, =ewram_1000
	mov	r3, #9
	strh	r3, [r2]
	bx	lr
.func_end OvlFunc_3cc4

.thumb_func_start OvlFunc_3cd0
	push	{r5, lr}
	ldr	r5, =ewram_1000
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	beq	.L3cea
.L3cdc:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	bne	.L3cdc
.L3cea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3cd0

.thumb_func_start OvlFunc_3cf4
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	sub	sp, #0xc
	cmp	r3, r2
	bhi	.L3d0e
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L3d0e:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L3d78
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	__Func_447c
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L3d78
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	ldr	r1, =.L4e50
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
.L3d78:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3cf4

.thumb_func_start OvlFunc_3d88
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r2, #0x64
	add	r2, r5
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r8, r2
	bl	__Func_92054
	ldr	r2, [r5, #0xc]
	mov	r3, #0x90
	lsl	r3, #14
	add	r2, r3
	mov	r6, r0
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	ldr	r1, =.L4e74
	mov	r0, r6
	bl	__Func_c2d8
	mov	r0, #0x53
	bl	__Func_f9080
	mov	r2, r8
	strh	r5, [r2]
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3d88

.thumb_func_start OvlFunc_3ddc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f3c
	mov	r10, r0
	ldr	r0, =0x211
	mov	r8, r1
	ldr	r5, [r3]
	bl	__Func_79338
	ldr	r3, =ewram_240
	mov	r7, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r3, r5
	mov	r6, r0
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r0, #0xc0
	ldr	r3, [r6, #8]
	lsl	r0, #12
	add	r1, r2, r0
	cmp	r2, r3
	blt	.L3e1a
	ldr	r3, =0xfff40000
	add	r1, r2, r3
.L3e1a:
	cmp	r7, #0
	beq	.L3e30
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r4, r3, r0
	mov	r3, r5
	add	r3, #0xe4
	b	.L3e3e
.L3e30:
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r5
	add	r3, #0xe2
.L3e3e:
	ldrh	r3, [r3]
	mov	r5, r6
	add	r5, #0x64
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0
	str	r3, [r6, #0x30]
	mov	r0, r6
	mov	r3, r4
	bl	__Func_d14c
	ldr	r0, =0x211
	bl	__Func_79358
	mov	r0, r6
	ldr	r1, =.L5b24
	bl	__Func_c2d8
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L3e80
.L3e72:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L3e72
.L3e80:
	cmp	r7, #0
	bne	.L3e96
	mov	r1, r10
	mov	r0, #0
	bl	OvlFunc_2e18
	mov	r0, r10
	mov	r1, #2
	bl	__Func_19908
	b	.L3ea6
.L3e96:
	mov	r1, r8
	mov	r0, #0
	bl	OvlFunc_2e18
	mov	r0, r8
	mov	r1, #2
	bl	__Func_19908
.L3ea6:
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #1
	bl	__Func_19908
	mov	r1, #3
	ldr	r0, =0x96a
	bl	__Func_1776c
	mov	r0, r6
	bl	__Func_c4ec
	mov	r0, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3ddc

.thumb_func_start OvlFunc_3ef0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_1000
	ldr	r3, =iwram_1f3c
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	sub	sp, #4
	ldr	r6, [r3]
	mov	r8, r1
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	bne	.L3f10
	b	.L40c4
.L3f10:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #1
	beq	.L3f1c
	b	.L4060
.L3f1c:
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	add	r3, #0xf0
	ldrsh	r7, [r6, r3]
	add	r3, r2, #1
	lsl	r2, #16
	asr	r2, #15
	mov	r1, r8
	add	r2, #0xf0
	strh	r3, [r1, #6]
	ldrsh	r4, [r6, r2]
	cmp	r7, #0
	bne	.L3fb8
	cmp	r4, #0
	bne	.L3fb8
	mov	r3, #9
	strh	r3, [r1]
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r6
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r1, #0xc0
	ldr	r3, [r5, #8]
	lsl	r1, #12
	add	r7, r2, r1
	cmp	r2, r3
	blt	.L3f5e
	ldr	r3, =0xfff40000
	add	r7, r2, r3
.L3f5e:
	ldr	r0, =0x211
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f7a
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r1, #0x80
	lsl	r1, #13
	add	r4, r3, r1
	mov	r3, r6
	add	r3, #0xe4
	b	.L3f88
.L3f7a:
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r6
	add	r3, #0xe2
.L3f88:
	ldrh	r2, [r3]
	mov	r3, r5
	add	r3, #0x64
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, r7
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r4
	bl	__Func_d14c
	ldr	r0, =0x211
	bl	__Func_79358
	ldr	r1, =.L5ad0
	mov	r0, r5
	bl	__Func_c2d8
	b	.L40c4
.L3fb8:
	mov	r2, r8
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r7, #16
	lsl	r4, #16
	cmp	r3, #0
	beq	.L3fd0
	mov	r3, r6
	add	r3, #0xe8
	ldr	r3, [r3]
	lsl	r3, #1
	sub	r7, r3, r7
.L3fd0:
	ldr	r2, [r5, #8]
	cmp	r2, r7
	bne	.L3fde
	ldr	r3, [r5, #0x10]
	cmp	r3, r4
	beq	.L401a
	b	.L3fe0
.L3fde:
	ldr	r3, [r5, #0x10]
.L3fe0:
	sub	r0, r4, r3
	sub	r1, r7, r2
	str	r4, [sp]
	bl	__Func_44d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	ldr	r4, [sp]
	cmp	r0, r2
	ble	.L4002
	mov	r0, r2
.L4002:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L400a
	mov	r0, r2
.L400a:
	add	r3, r0
	mov	r2, #0
	strh	r3, [r5, #6]
	mov	r3, r8
	str	r7, [r5, #8]
	str	r4, [r5, #0x10]
	strh	r2, [r3, #8]
	b	.L4024
.L401a:
	mov	r1, r8
	ldrh	r3, [r1, #8]
	mov	r2, r8
	add	r3, #1
	strh	r3, [r2, #8]
.L4024:
	mov	r2, r8
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #2
	ble	.L4038
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	b	.L40c4
.L4038:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	b	.L40c4

	.pool_aligned

.L4060:
	cmp	r3, #2
	bne	.L40c4
	mov	r2, r8
	mov	r3, #0xa
	ldrsh	r7, [r5, r3]
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	mov	r1, #0x12
	ldrsh	r4, [r5, r1]
	add	r3, #0xf0
	add	r1, r2, #1
	lsl	r2, #16
	strh	r7, [r6, r3]
	asr	r2, #15
	mov	r3, r8
	add	r2, #0xf0
	strh	r1, [r3, #6]
	lsl	r3, r1, #16
	strh	r4, [r6, r2]
	asr	r2, r3, #16
	ldr	r3, =0x383e
	cmp	r2, r3
	bne	.L40c4
	add	r3, r1, #1
	lsl	r3, #16
	ldr	r1, .L40bc	@ 0
	lsl	r2, #1
	asr	r3, #15
	add	r2, #0xf0
	add	r3, #0xf0
	strh	r1, [r6, r2]
	strh	r1, [r6, r3]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	mov	r1, r8
	strh	r3, [r1, #4]
	mov	r2, #0
	mov	r3, r8
	strh	r2, [r3, #6]
	mov	r3, #1
	strh	r3, [r1]
	b	.L40c4

	.align	2, 0
.L40bc:
	.word	0
	.pool

.L40c4:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ef0

.thumb_func_start OvlFunc_40d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f3c
	ldr	r3, [r3]
	mov	r1, r3
	sub	sp, #0x14
	mov	r8, r1
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	mov	r7, r8
	add	r7, #0xd8
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [sp, #8]
	mov	r3, r8
	add	r3, #0xe6
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	sub	r3, #0xa
	mov	r11, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L411e
	mov	r6, r8
	add	r6, #0xda
	mov	r3, #2
	strh	r3, [r6]
	b	.L418c
.L411e:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L413e
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	ble	.L418c
	sub	r3, r2, #1
	strh	r3, [r6]
	b	.L418c
.L413e:
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #1
	bgt	.L418c
	add	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L418c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L4d60
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_4970
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L4d80
	bl	__Func_5340
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	lsl	r1, #2
	mov	r2, r5
	bl	__Func_3fa4
	mov	r0, r5
	bl	__Func_2df0
.L418c:
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	cmp	r2, #0
	bne	.L41a2
	ldr	r3, [sp, #0xc]
	add	r3, #0xd8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f78
	b	.L4462
.L41a2:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	mov	r7, r3
	sub	r7, #8
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	lsl	r3, #4
	str	r3, [sp, #4]
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #8
	mov	r3, #0x68
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	sub	r4, r3, r1
	mov	r3, #0
	stmia	r2!, {r3}
	lsl	r3, r4, #16
	mov	r1, r2
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r3, [sp, #8]
	mov	r5, #0xe4
	lsl	r5, #8
	mov	r1, r2
	orr	r3, r5
	str	r1, [sp, #0xc]
	stmia	r2!, {r3}
	mov	r1, r2
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	mov	r6, #0
	add	r8, r2
	bl	__Func_3dec
	cmp	r6, r11
	bcs	.L423c
	ldr	r3, [sp, #8]
	mov	r1, #0x80
	add	r3, #2
	orr	r3, r5
	lsl	r1, #23
	ldr	r5, [sp, #0xc]
	mov	r9, r1
	mov	r10, r3
.L420a:
	lsl	r2, r6, #4
	mov	r3, #0x60
	sub	r4, r3, r2
	mov	r3, #0
	str	r3, [r5]
	lsl	r3, r4, #16
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	str	r3, [r5, #4]
	mov	r3, r10
	str	r3, [r5, #8]
	ldr	r1, [sp, #0xc]
	add	r1, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r6, #1
	add	r8, r2
	add	r5, #0xc
	bl	__Func_3dec
	cmp	r6, r11
	bcc	.L420a
.L423c:
	ldr	r2, [sp, #0xc]
	mov	r6, #0
	mov	r3, #0x80
	stmia	r2!, {r6}
	lsl	r3, #8
	mov	r9, r3
	mov	r3, #0xe0
	mov	r1, r2
	lsl	r3, #15
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r5, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	add	r5, #6
	orr	r5, r2
	stmia	r1!, {r5}
	mov	r0, r8
	mov	r3, r1
	mov	r10, r2
	mov	r1, #0xff
	mov	r2, #0xc
	add	r8, r2
	str	r3, [sp, #0xc]
	bl	__Func_3dec
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r6}
	mov	r3, r1
	str	r3, [sp, #0xc]
	mov	r3, #0xf0
	lsl	r3, #15
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #21
	orr	r3, r2
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	stmia	r1!, {r5}
	mov	r3, r1
	mov	r1, #0xc
	mov	r0, r8
	add	r8, r1
	mov	r1, #0xff
	str	r3, [sp, #0xc]
	bl	__Func_3dec
	cmp	r6, r11
	bcs	.L42fe
	ldr	r4, [sp, #8]
	mov	r2, #0x80
	mov	r1, #0x80
	mov	r3, r10
	add	r4, #2
	lsl	r2, #23
	lsl	r1, #16
	ldr	r5, [sp, #0xc]
	mov	r9, r2
	orr	r4, r3
	mov	r10, r1
.L42c2:
	mov	r3, #0
	str	r3, [r5]
	mov	r2, r10
	mov	r3, r7
	orr	r3, r2
	mov	r1, r9
	mov	r2, #0x80
	orr	r3, r1
	lsl	r2, #21
	orr	r3, r2
	str	r3, [r5, #4]
	str	r4, [r5, #8]
	ldr	r2, [sp, #0xc]
	mov	r0, r8
	add	r2, #0xc
	mov	r3, #0xc
	mov	r1, #0xff
	str	r4, [sp]
	str	r2, [sp, #0xc]
	add	r8, r3
	bl	__Func_3dec
	mov	r1, #0x80
	lsl	r1, #13
	add	r6, #1
	add	r5, #0xc
	add	r10, r1
	ldr	r4, [sp]
	cmp	r6, r11
	bcc	.L42c2
.L42fe:
	mov	r2, #0x80
	ldr	r4, [sp, #4]
	lsl	r2, #8
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	add	r4, #0x80
	stmia	r2!, {r3}
	mov	r11, r3
	lsl	r3, r4, #16
	orr	r7, r3
	mov	r3, r9
	orr	r7, r3
	mov	r3, #0x80
	lsl	r3, #21
	mov	r1, r2
	orr	r7, r3
	str	r1, [sp, #0xc]
	stmia	r2!, {r7}
	ldr	r3, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	orr	r3, r2
	mov	r10, r2
	mov	r2, r1
	stmia	r2!, {r3}
	mov	r1, r2
	mov	r3, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0xff
	add	r8, r3
	bl	__Func_3dec
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #4
	bhi	.L4352
	b	.L4462
.L4352:
	ldr	r3, [sp, #0x10]
	mov	r1, #0x80
	add	r3, #0xe0
	lsl	r1, #23
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r9, r1
	bl	__Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L43e0
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #0xc
	orr	r3, r1
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r8, r2
	bl	__Func_3dec
.L43e0:
	ldr	r3, [sp, #0x10]
	add	r3, #0xde
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L4462
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #8
	ldr	r2, [sp, #0xc]
	orr	r3, r1
	str	r3, [r2]
	mov	r3, r8
	mov	r0, r3
	mov	r1, #0xff
	bl	__Func_3dec
.L4462:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_40d0

.thumb_func_start OvlFunc_4494
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r0, #0x3b
	ldr	r1, =0x7170
	ldr	r5, [sp, #0x28]
	ldr	r6, [sp, #0x2c]
	str	r3, [sp]
	mov	r9, r2
	bl	__Func_48f4
	mov	r7, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_4970
	mov	r3, r7
	add	r3, #0xde
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r2, r9
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, [sp]
	add	r3, #2
	str	r2, [r3]
	ldr	r2, [sp, #0x24]
	add	r3, #4
	str	r2, [r3]
	mov	r11, r0
	mov	r0, r8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r10
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4514
	ldr	r2, [sp]
	lsl	r3, r2, #1
	ldr	r2, [r6, #8]
	sub	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L4514:
	ldr	r2, .L4554	@ 0
	mov	r3, r7
	add	r3, #0xda
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r11
	ldr	r0, =.L4d80
	bl	__Func_5340
	bl	__Func_4080
	mov	r3, r7
	add	r3, #0xd8
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	mov	r2, r11
	lsl	r1, #2
	asr	r0, #16
	bl	__Func_3fa4
	ldr	r1, =0xc76
	ldr	r0, =OvlFunc_40d0
	bl	__Func_41d8
	mov	r0, r11
	bl	__Func_2df0
	add	sp, #4
	b	.L456c

	.align	2, 0
.L4554:
	.word	0
	.pool

.L456c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4494

.thumb_func_start OvlFunc_457c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f3c
	ldr	r6, [r3]
	ldr	r5, =ewram_1000
	bl	__Func_2f40
	mov	r1, r6
	add	r1, #0xf0
	bl	__Func_5340
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L45ac
	mov	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	strh	r0, [r5, #8]
	strh	r3, [r5, #4]
	strh	r0, [r5, #6]
.L45ac:
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_3ef0
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_457c

.thumb_func_start OvlFunc_45d0
	ldr	r3, =iwram_1f3c
	ldr	r3, [r3]
	add	r3, #0xdc
	strh	r0, [r3]
	bx	lr
.func_end OvlFunc_45d0

.thumb_func_start OvlFunc_45e0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L45f2:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L4614
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L4614
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L461c
.L4614:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L45f2
	mov	r0, #0
.L461c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_45e0

.thumb_func_start OvlFunc_4628
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L4fc0
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r1, [r2, r5]
	ldr	r3, =0xffff0000
	mov	r9, r2
	mov	r2, r1
	and	r2, r3
	mov	r10, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r8, r0
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_45e0
	mov	r6, r0
	cmp	r6, #0
	beq	.L476e
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r6
	bl	OvlFunc_45e0
	cmp	r0, #0
	beq	.L46b4
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L476e
.L46b4:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	mov	r1, r6
	bl	OvlFunc_45e0
	cmp	r0, #0
	beq	.L46e0
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L476e
.L46e0:
	mov	r3, #0
	mov	r2, r6
	add	r2, #0x22
	mov	r11, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.L476e
	ldr	r5, =0x3333
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	mov	r0, #0xf
	bl	__Func_30f8
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Func_d14c
	mov	r0, #0xee
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r2, r11
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x24]
	str	r2, [r6, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_c300
.L476e:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4628

.thumb_func_start OvlFunc_4790
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	mov	r6, r0
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	ldr	r1, =0xfff00000
	and	r7, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r5
	mov	r1, r7
	str	r3, [r5, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_45e0
	cmp	r0, #0
	bne	.L481a
	ldr	r3, [r6, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_45e0
.L481a:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4790

	.section .data

.L4bec:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4bec, (0x4c20-0x4bec)
.L4c20:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c20, (0x4c38-0x4c20)
.L4c38:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c38, (0x4c48-0x4c38)
.L4c48:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c48, (0x4cb0-0x4c48)
.L4cb0:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4cb0, (0x4cba-0x4cb0)
.L4cba:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4cba, (0x4ce2-0x4cba)
.L4ce2:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4ce2, (0x4d60-0x4ce2)
.L4d60:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4d60, (0x4d80-0x4d60)
.L4d80:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4d80, (0x4e3c-0x4d80)
.L4e3c:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4e3c, (0x4e50-0x4e3c)
.L4e50:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4e50, (0x4e74-0x4e50)
.L4e74:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4e74, (0x4fc0-0x4e74)
.L4fc0:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4fc0, (0x5000-0x4fc0)
.L5000:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5000, (0x5090-0x5000)
.L5090:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5090, (0x50a8-0x5090)
.L50a8:
	.incbin "overlays/rom_7e0928/orig.bin", 0x50a8, (0x5480-0x50a8)
.L5480:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5480, (0x5484-0x5480)
.L5484:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5484, (0x5488-0x5484)
.L5488:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5488, (0x5668-0x5488)
.L5668:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5668, (0x5738-0x5668)
.L5738:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5738, (0x5808-0x5738)
.L5808:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5808, (0x58ac-0x5808)
.L58ac:
	.incbin "overlays/rom_7e0928/orig.bin", 0x58ac, (0x5950-0x58ac)
.L5950:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5950, (0x596c-0x5950)
.L596c:
	.incbin "overlays/rom_7e0928/orig.bin", 0x596c, (0x59a4-0x596c)
.L59a4:
	.incbin "overlays/rom_7e0928/orig.bin", 0x59a4, (0x59a6-0x59a4)
.L59a6:
	.incbin "overlays/rom_7e0928/orig.bin", 0x59a6, (0x59d2-0x59a6)
.L59d2:
	.incbin "overlays/rom_7e0928/orig.bin", 0x59d2, (0x5a50-0x59d2)
.L5a50:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5a50, (0x5ace-0x5a50)
.L5ace:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5ace, (0x5ad0-0x5ace)
.L5ad0:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5ad0, (0x5b24-0x5ad0)
.L5b24:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5b24

	.section .bss

	.lcomm	.Lunused_5b78, 4
	.lcomm	.Lunused_5b7c, 4
	.lcomm	.L5b80, 4
	.lcomm	.Lunused_5b84, 4
	.lcomm	.Lunused_5b88, 4
	.lcomm	.Lunused_5b8c, 4
	.lcomm	.L5b90, 4
	.lcomm	.L5b94, 4
	.lcomm	.L5b98, 4
	.lcomm	.L5b9c, 4
	.lcomm	.L5ba0, 4
	.lcomm	.L5ba4, 4
	.lcomm	.L5ba8, 4
	.lcomm	.L5bac, 4
	.lcomm	.L5bb0, 4
	.lcomm	.L5bb4, 4
	.lcomm	.L5bb8, 4
	.lcomm	.L5bbc, 4
	.lcomm	.L5bc0, 4
	.lcomm	.L5bc4, 4
	.lcomm	.L5bc8, 4
	.lcomm	.L5bcc, 4
	.lcomm	.L5bd0, 4
	.lcomm	.L5bd4, 4
	.lcomm	.L5bd8, 4
	.lcomm	.L5bdc, 4
	.lcomm	.L5be0, 4
	.lcomm	.L5be4, 4
	.lcomm	.L5be8, 4
	.lcomm	.Lunused_5bec, 4
	.lcomm	.L5bf0, 0xc
	.lcomm	.L5bfc, 4
	.lcomm	.L5c00, 0x30
	.lcomm	.L5c30, 4
	.lcomm	.L5c34, 4
	.lcomm	.L5c38, 4
	.lcomm	.L5c3c, 4
	.lcomm	.L5c40, 4
	.lcomm	.L5c44, 4
