	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1c34
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1cac
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1cd8
	b	.L5e
.L5c:
	ldr	r0, =.L1cc0
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_74
	ldr	r0, =.L1dd4
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_7c
	push	{lr}
	mov	r0, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L8e
	mov	r1, #0
	bl	__Func_c528
.L8e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_94
	push	{lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb2
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x23
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
.Lb2:
	mov	r3, #8
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_10704
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_94

.thumb_func_start OvlFunc_d4
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r1, #5
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_924d4
	cmp	r5, #0
	beq	.Lfc
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.Lfc:
	mov	r3, #0x3b
	str	r3, [sp, #4]
	mov	r6, #0x15
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0x18
	mov	r2, #0x3e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_105d4
	mov	r5, #0x3a
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x2b
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d4

.thumb_func_start OvlFunc_1b0
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	cmp	r5, #0
	beq	.L1d6
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L1d6:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1f6
	mov	r0, #0x9d
	bl	__Func_f9080
	bl	OvlFunc_d4
	mov	r0, #0x50
	bl	__Func_f9080
	ldr	r0, =0x202
	bl	__Func_79358
.L1f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b0

.thumb_func_start OvlFunc_200
	push	{lr}
	ldr	r0, =0x203
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_200

.thumb_func_start OvlFunc_210
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r0, =0x202
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L286
	mov	r5, #0x15
	mov	r6, #0x39
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x2b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r6, #0x3a
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r0, #0x2b
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
.L286:
	mov	r3, #0x18
	mov	r10, r3
	mov	r3, #0x3e
	mov	r9, r3
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r8, r3
	mov	r0, #2
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x3b
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_105d4
	mov	r2, #2
	mov	r3, #6
	mov	r1, #0x56
	mov	r0, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92b08
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_210

.thumb_func_start OvlFunc_33c
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L372
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L372
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0x9d
	bl	__Func_f9080
	bl	OvlFunc_210
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r0, =0x202
	bl	__Func_79374
.L372:
	pop	{r0}
	bx	r0
.func_end OvlFunc_33c

.thumb_func_start OvlFunc_384
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x3b
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0x18
	mov	r10, r3
	mov	r3, #0x3e
	mov	r9, r3
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r0, #2
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x3a
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x29
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_384

.thumb_func_start OvlFunc_460
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L496
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L496
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0x9d
	bl	__Func_f9080
	bl	OvlFunc_384
	ldr	r0, =0x202
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
.L496:
	pop	{r0}
	bx	r0
.func_end OvlFunc_460

.thumb_func_start OvlFunc_4a8
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4b6
	b	.L800
.L4b6:
	ldr	r0, =0x94d
	bl	__Func_79358
	bl	__Func_916b0
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xc8
	lsl	r2, #1
	mov	r1, #0xb8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_923e4
.L542:
	mov	r0, #0xd
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L57e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L57e:
	mov	r0, #2
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r2, #0xf4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5ba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L5ba:
	mov	r0, #3
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r2, #0xf4
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5f6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L5f6:
	mov	r0, #1
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r2, #0xf4
	mov	r1, #0xb8
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	ldr	r5, =0x250d
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9280c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #1
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L6c2
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	b	.L6d0
.L6c2:
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L6d0:
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	ldr	r5, =0x2512
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_922c4
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x41
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xd
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_922c4
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	add	r5, #3
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xd8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	bl	OvlFunc_828
.L800:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a8

.thumb_func_start OvlFunc_828
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0xc8
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xb8
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa8
	mov	r2, #0x88
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xd4
	mov	r2, #0x84
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9335c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	ldr	r5, =0x2516
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x50
	ldr	r1, =0x107
	mov	r0, #1
	bl	__Func_937b8
	add	r0, r5, #3
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9280c
	add	r0, r5, #4
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	add	r0, r5, #6
	bl	__Func_92b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #3
	bl	__Func_9280c
	add	r0, r5, #7
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xc
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0x46
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x84
	mov	r2, #0x46
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x18
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x19
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0xc
	b	.Ld2c

	.pool_aligned

.Ld2c:
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1a
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_93874
	mov	r0, r5
	add	r0, #0x1b
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0x1c
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x46
	mov	r0, #0xc
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, r5
	add	r0, #0x1d
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x1e
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x1f
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, r5
	add	r0, #0x20
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0x8c
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0xf4
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, r5
	add	r0, #0x21
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_92f84
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x22
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x23
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x24
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x25
	bl	__Func_92b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x26
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lfdc
	mov	r0, r5
	add	r0, #0x27
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	b	.Lfec

	.pool_aligned

.Lfdc:
	mov	r0, r5
	add	r0, #0x28
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
.Lfec:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_937b8
	ldr	r5, =0x253f
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	add	r0, r5, #2
	bl	__Func_92b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_92adc
	add	r0, r5, #3
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_9280c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	add	r0, r5, #5
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	add	r0, r5, #6
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	add	r5, #7
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	OvlFunc_11b8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_828

.thumb_func_start OvlFunc_11b8
	push	{r5, lr}
	ldr	r5, =0x2547
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #1
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
.L120c:
	bl	OvlFunc_12ac
	lsl	r0, #24
	cmp	r0, #0
	beq	.L124e
.L1216:
	bl	OvlFunc_1320
	lsl	r0, #24
	cmp	r0, #0
	beq	.L1290
	bl	OvlFunc_141c
	lsl	r0, #24
	mov	r5, #0
	cmp	r0, #0
	bne	.L123e
.L122c:
	mov	r5, #1
.L122e:
	bl	OvlFunc_134c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L1290
.L123e:
	bl	OvlFunc_1394
	lsl	r0, #24
	cmp	r0, #0
	bne	.L1296
	cmp	r5, #0
	bne	.L122e
	b	.L1296
.L124e:
	bl	OvlFunc_12c4
	lsl	r0, #24
	cmp	r0, #0
	beq	.L1264
	bl	OvlFunc_12f0
	lsl	r0, #24
	cmp	r0, #0
	beq	.L122c
	b	.L1296
.L1264:
	bl	OvlFunc_1368
	lsl	r0, #24
	cmp	r0, #0
	bne	.L1216
	ldr	r5, =0x254b
	mov	r0, r5
	bl	__Func_92b94
	add	r5, #1
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92c40
	b	.L120c
.L1290:
	bl	OvlFunc_1760
	b	.L129e
.L1296:
	bl	OvlFunc_131c
	bl	OvlFunc_1448
.L129e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11b8

.thumb_func_start OvlFunc_12ac
	push	{lr}
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_12ac

.thumb_func_start OvlFunc_12c4
	push	{lr}
	ldr	r0, =0x2549
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_12c4

.thumb_func_start OvlFunc_12f0
	push	{lr}
	ldr	r0, =0x254d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_12f0

.thumb_func_start OvlFunc_131c
	mov	r0, #1
	bx	lr
.func_end OvlFunc_131c

.thumb_func_start OvlFunc_1320
	push	{lr}
	ldr	r0, =0x2557
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_1320

.thumb_func_start OvlFunc_134c
	push	{lr}
	ldr	r0, =0x255d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_134c

.thumb_func_start OvlFunc_1368
	push	{lr}
	ldr	r0, =0x254a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_1368

.thumb_func_start OvlFunc_1394
	push	{r5, lr}
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	ldr	r5, =0x255e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	add	r5, #2
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1394

.thumb_func_start OvlFunc_141c
	push	{lr}
	ldr	r0, =0x255c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_141c

.thumb_func_start OvlFunc_1448
	push	{r5, lr}
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	ldr	r5, =0x254e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0x46
	ldr	r1, =0x105
	mov	r0, #0xd
	bl	__Func_937b8
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
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
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0x84
	mov	r1, #0x9c
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r1, #0xa4
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0x6e
	bl	__Func_9163c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x8c
	bl	__Func_9163c
	add	r5, #8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16bc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L16bc:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16ec
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L16ec:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L171c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L171c:
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	ldr	r0, =0x94f
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1448

.thumb_func_start OvlFunc_1760
	push	{r5, lr}
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	ldr	r5, =0x2558
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	add	r5, #3
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0x84
	mov	r1, #0x98
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r1, #0xa0
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xc8
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1954
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1954:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1984
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1984:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L19b4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L19b4:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_93500
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91df4
	mov	r0, #3
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1760

.thumb_func_start OvlFunc_1a0c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	mov	r5, #0x81
	lsl	r2, #1
	lsl	r5, #2
	str	r5, [r3, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.L1ab0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, =0xf333
	str	r3, [r0, #0x1c]
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a6e
	bl	OvlFunc_210
.L1a6e:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a7c
	bl	OvlFunc_384
.L1a7c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a8c
	bl	OvlFunc_d4
.L1a8c:
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a9e
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
.L1a9e:
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ab0
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
.L1ab0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a0c

	.section .data

.L1c34:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1c34, (0x1cac-0x1c34)
.L1cac:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cac, (0x1cc0-0x1cac)
.L1cc0:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cc0, (0x1cd8-0x1cc0)
.L1cd8:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cd8, (0x1dd4-0x1cd8)
.L1dd4:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1dd4
