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
	bl	OvlFunc_common1_2060
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
	bl	OvlFunc_common1_2060
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
	bl	OvlFunc_common1_2060
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
	bl	OvlFunc_common1_78
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
	bl	OvlFunc_common1_16f8
	bl	__Func_916b0
	mov	r1, #0x11
	mov	r0, #3
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
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
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld7e
	bl	__Func_93c00
.Ld7e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_d70

.thumb_func_start OvlFunc_d84
	push	{lr}
	bl	OvlFunc_common1_21c8
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
	bl	OvlFunc_common1_1608
	mov	r1, #0x11
	mov	r0, #0x28
	bl	OvlFunc_common1_1608
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
	bl	OvlFunc_common1_1ecc
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
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #3
	bl	OvlFunc_common1_ea0
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
	bl	OvlFunc_common1_1fb4
	b	.L1350
.L12d6:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__Func_41d8
	mov	r0, #0x27
	bl	__Func_92924
	mov	r0, #0x28
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1350
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.L1350
.L1308:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1350
	mov	r0, #0x20
	bl	OvlFunc_1a0c
	bl	OvlFunc_common1_488
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
	bl	OvlFunc_common1_2c4
	b	.L1dd8
.L1c40:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #1
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa8
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_common1_1550
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
	bl	OvlFunc_common1_1490
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa8
	bl	OvlFunc_common1_14f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x44
	mov	r0, #0x68
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #1
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L1f7e
.L1e12:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_1490
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0x80
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x48
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	bl	OvlFunc_common1_1550
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L20d2
.L1fae:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_1578
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
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L22a6
.L2116:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L24a2
.L234e:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_1314
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
	bl	OvlFunc_common1_1314
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L25b6
.L24ea:
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xa
	mov	r1, #0x54
	mov	r0, #0x20
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x1e
	mov	r1, #0x54
	mov	r0, #0x60
	bl	OvlFunc_common1_14f4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
	bl	__Func_91750
.L25b6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24d0

	.section .data

.L4bec:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4bec, (0x4c20-0x4bec)
.L4c20:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c20, (0x4c38-0x4c20)
.L4c38:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c38, (0x4c48-0x4c38)
.L4c48:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c48, (0x4cb0-0x4c48)

	.section .data1

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

	.section .bss

	.lcomm	.Lunused_5b78, 8
	.lcomm	.L5b80, 16
