	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.Lc3c
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	ldr	r0, =.Lda4
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_40
	ldr	r0, =.Ldd4
	bx	lr
.func_end OvlFunc_40

.thumb_func_start OvlFunc_48
	push	{lr}
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L58
	ldr	r0, =.Lf28
	b	.L5a
.L58:
	ldr	r0, =.Le08
.L5a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_48

.thumb_func_start OvlFunc_6c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L9c
	mov	r0, #0x1f
	mov	r1, r6
	bl	__Func_b0278
	b	.Lee

	.pool_aligned

.L9c:
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le0
	ldr	r5, =0x261c
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Ld0
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.Ld6
.Ld0:
	add	r0, r5, #2
	bl	__Func_92b94
.Ld6:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	b	.Lee
.Le0:
	ldr	r0, =0x25cf
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.Lee:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c

.thumb_func_start OvlFunc_100
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L130
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_b3284
	b	.L158

	.pool_aligned

.L130:
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14a
	ldr	r0, =0x2620
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L158
.L14a:
	ldr	r0, =0x25d1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L158:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_100

.thumb_func_start OvlFunc_16c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L194
	mov	r0, r5
	bl	__Func_b29a8
	b	.L1ca
.L194:
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1bc
	ldr	r0, =0x262c
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L1ca

	.pool_aligned

.L1bc:
	ldr	r0, =0x25d5
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L1ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16c

.thumb_func_start OvlFunc_1d4
	push	{r5, r6, lr}
	ldr	r5, =0x2624
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L202
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L208
.L202:
	add	r0, r5, #2
	bl	__Func_92b94
.L208:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d4

.thumb_func_start OvlFunc_21c
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	mov	r0, #0x7b
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c

.thumb_func_start OvlFunc_240
	push	{lr}
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__Func_79358
	ldr	r0, =0x98a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L256
	b	.La40
.L256:
	mov	r0, #0x1e
	bl	__Func_f9080
	bl	__Func_916b0
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0xd0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0xb8
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xa0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x10
	mov	r3, #0xc0
	lsl	r3, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_9233c
	mov	r0, #0x13
	bl	__Func_923c4
	bl	__Func_93530
	ldr	r0, =0x25eb
	bl	__Func_92b94
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0x10
	mov	r0, #0x13
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0x18
	mov	r0, #0x13
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r0, #0x13
	mov	r1, #0x30
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x13
	ldr	r1, =0x107
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0xb8
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x15
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x15
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	b	.L658

	.pool_aligned

.L658:
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0x15
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0x32
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92848
	mov	r1, #0xc
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L97c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L99a
.L97c:
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
.L99a:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x1e
	bl	__Func_f9080
	mov	r0, #0x13
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.La22
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x13
	bl	__Func_92128
.La22:
	mov	r0, #0x13
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_8acc4
	bl	__Func_91750
.La40:
	pop	{r0}
	bx	r0
.func_end OvlFunc_240

.thumb_func_start OvlFunc_a54
	push	{lr}
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.La64
	ldr	r0, =.L11ec
	b	.La66
.La64:
	ldr	r0, =.L1090
.La66:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a54

.thumb_func_start OvlFunc_a78
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.La96
	ldr	r0, =0x96f
	bl	__Func_79358
.La96:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #4
	orr	r3, r5
	mov	r2, #0
	strb	r3, [r0]
	mov	r0, #0xd
	mov	r10, r2
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r2, r10
	add	r3, #0x26
	strb	r2, [r3]
	mov	r6, #0x80
	ldr	r3, [r0, #0x50]
	lsl	r6, #7
	strh	r6, [r3, #0x1e]
	ldr	r2, .Lb18	@ 0
	ldr	r1, [r0, #0x50]
	mov	r8, r2
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	orr	r3, r5
	strb	r3, [r1, #9]
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r3, [r0, #0x50]
	mov	r2, r0
	strh	r6, [r3, #0x1e]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r10
	str	r3, [r0, #0xc]
	mov	r0, #0
	b	.Lb28

	.align	2, 0
.Lb18:
	.word	0
	.pool

.Lb28:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_a78

	.section .data

.Lc3c:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xc3c, (0xda4-0xc3c)
.Lda4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xda4, (0xdd4-0xda4)
.Ldd4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xdd4, (0xe08-0xdd4)
.Le08:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xe08, (0xf28-0xe08)
.Lf28:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xf28, (0x1090-0xf28)
.L1090:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x1090, (0x11ec-0x1090)
.L11ec:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x11ec
