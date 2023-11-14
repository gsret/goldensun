	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L25c0
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L2698
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L26bc
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L280c
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{lr}
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6e
	ldr	r0, =0x813
	bl	__Func_79338
	cmp	r0, #0
	bne	.L82
	mov	r0, #3
	b	.L7a
.L6e:
	ldr	r0, =0x812
	bl	__Func_79338
	cmp	r0, #0
	bne	.L82
	mov	r0, #4
.L7a:
	bl	__Func_91e9c
	mov	r0, #1
	b	.L86
.L82:
	mov	r0, #1
	neg	r0, r0
.L86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_54

.thumb_func_start OvlFunc_98
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0x11
	mov	r3, #8
	bl	__Func_10424
	mov	r0, #0xc8
	bl	__Func_f9080
	mov	r5, #0
	mov	r7, #2
	mov	r6, #1
.Lbc:
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	mov	r0, #0xa
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	str	r6, [sp, #4]
	add	r5, #1
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #0x16
	bne	.Lbc
	mov	r5, #4
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_10424
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0
	bl	__Func_10704
	ldr	r0, =0x207
	bl	__Func_79358
	bl	OvlFunc_16dc
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_98

.thumb_func_start OvlFunc_150
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	ldr	r7, =iwram_1ebc
	mov	r6, #0xe0
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r6, #1
	lsl	r3, #1
	mov	r5, #0xe4
	str	r3, [r2, r6]
	lsl	r5, #1
	mov	r3, #0x20
	str	r3, [r2, r5]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r2, #0xe8
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_9163c
	ldr	r0, =0x101a
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0x90
	mov	r2, #0x8c
	lsl	r2, #17
	mov	r0, #8
	lsl	r1, #18
	bl	__Func_923e4
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd8
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x11f0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r2, [r7]
	ldr	r3, =0x202
	str	r3, [r2, r6]
	mov	r6, #0x10
	str	r6, [r2, r5]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x11f0000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd4
	mov	r2, #0xc8
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_23a4
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #1
	mov	r2, #0xb4
	lsl	r2, #16
	mov	r3, #0
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x9d
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_23a4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0x50
	bl	OvlFunc_23a4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_23a4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #5
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd7
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd9
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	ldr	r2, =0x141
	bl	__Func_921c4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_923e4
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	b	.L598

	.pool_aligned

.L598:
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5ae
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L5ae:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5de
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.L5de:
	mov	r0, #5
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__Func_923e4
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r1, [r7]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	add	r2, #0x44
	str	r2, [r3]
	sub	r2, #0x3c
	add	r3, r1, r2
	str	r6, [r3]
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_150

.thumb_func_start OvlFunc_614
	push	{lr}
	bl	__Func_916b0
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r2, #0x94
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_9163c
	ldr	r0, =0x1004
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd8
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x11f0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #5
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #5
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0xd8
	mov	r2, #0xc8
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xab
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xab
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_23a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #5
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	b	.La4c

	.pool_aligned

.La4c:
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.La5e
	ldr	r0, =0x1010
	bl	__Func_92b94
	b	.La64
.La5e:
	ldr	r0, =0x1011
	bl	__Func_92b94
.La64:
	mov	r1, #6
	mov	r0, #8
	bl	OvlFunc_23a4
	ldr	r0, =0x1012
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x90
	mov	r2, #0xd8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xbf
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xe8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd7
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #8
	ldr	r1, =0x23e
	ldr	r2, =0x143
	bl	__Func_921c4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_923e4
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_23a4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lbf8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.Lbf8:
	mov	r0, #5
	bl	__Func_923c4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lc28
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Lc28:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_614

.thumb_func_start OvlFunc_c8c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r0, #0
	mov	r10, r3
	sub	sp, #0x14
	bl	__Func_92054
	mov	r5, r0
	mov	r2, #0xb3
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Ld0c
	mov	r0, #0
	ldr	r1, =0x23f
	mov	r2, #0x84
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, r10
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	str	r3, [r7, #8]
	str	r7, [r2]
	mov	r6, #0
	mov	r5, r7
.Lcec:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_9163c
	cmp	r6, #0x1e
	bne	.Lcec
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #1
	b	.Ld60
.Ld0c:
	mov	r0, #0
	ldr	r1, =0x241
	mov	r2, #0xde
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r10
	str	r7, [r3]
	mov	r11, r2
	mov	r6, #0
	mov	r5, r7
.Ld44:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_9163c
	cmp	r6, #0x1e
	bne	.Ld44
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #2
.Ld60:
	mov	r9, r3
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Ld6a:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #8
	bl	__Func_9163c
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__Func_10424
	mov	r0, #8
	bl	__Func_9163c
	cmp	r6, #6
	bne	.Ld6a
	mov	r3, #4
	mov	r6, #0
	mov	r8, r3
	mov	r5, #2
.Lda8:
	mov	r2, r8
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	cmp	r6, #0xa
	bne	.Lda8
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Lde6:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #2
	bl	__Func_9163c
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__Func_10424
	mov	r0, #2
	bl	__Func_9163c
	cmp	r6, #0xc
	bne	.Lde6
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #2
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #8
	mov	r3, #0x28
	mov	r1, #0x37
	mov	r2, #0x20
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r3, r9
	cmp	r3, #1
	bne	.Le68
	mov	r6, #0
	mov	r5, r7
.Le52:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_9163c
	cmp	r6, #0x1e
	bne	.Le52
	b	.Le88
.Le68:
	mov	r3, r9
	cmp	r3, #2
	bne	.Le88
	mov	r6, #0
	mov	r5, r7
.Le72:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_9163c
	cmp	r6, #0x1e
	bne	.Le72
.Le88:
	mov	r3, r11
	mov	r2, r10
	str	r3, [r2]
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c8c

.thumb_func_start OvlFunc_eb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r2, [r3]
	ldr	r6, =.L2a50
	cmp	r2, #0
	bge	.Led0
	ldr	r1, =0xffff
	add	r2, r1
.Led0:
	ldr	r3, [r3, #4]
	asr	r2, #16
	mov	r10, r2
	cmp	r3, #0
	bge	.Lede
	ldr	r2, =0xffff
	add	r3, r2
.Lede:
	asr	r3, #16
	mov	r2, #0x50
	sub	r2, r3
	mov	r8, r2
	mov	r3, r8
	add	r3, #0x10
	cmp	r3, #0xaf
	bhi	.Lfb2
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #10
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lf08:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_3dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf08
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #9
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lf48:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_3dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf48
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #8
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r1, =0xfffffe00
	ldr	r3, =0x1ff
	mov	r2, #8
	mov	r7, #0
	add	r8, r2
	mov	r9, r3
	mov	r10, r1
.Lf8c:
	mov	r2, r5
	mov	r3, r9
	and	r2, r3
	ldrh	r3, [r6, #6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_3dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf8c
.Lfb2:
	ldr	r2, =.L2974
	ldr	r3, [r2]
	add	r3, #0x80
	str	r3, [r2]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_eb0

.thumb_func_start OvlFunc_fe4
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.Lffa
	bl	__Func_93c00
.Lffa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_fe4

.thumb_func_start OvlFunc_1000
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1016
	bl	__Func_93c00
.L1016:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1000

.thumb_func_start OvlFunc_101c
	push	{lr}
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L104c
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r1, #0xfc
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_921c4
	bl	__Func_91750
.L104c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_101c

.thumb_func_start OvlFunc_105c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	sub	sp, #8
	bl	OvlFunc_14b8
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0x12
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_92b08
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #3
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bls	.L10e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L10e4:
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1186
	mov	r1, #0x90
	mov	r2, #0xb2
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc9
	mov	r2, #0xc9
	mov	r0, #0x11
	lsl	r1, #19
	lsl	r2, #19
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r5, #4
	mov	r3, #0x26
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_10424
	mov	r3, #0x11
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	b	.L122a
.L1186:
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1234
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1234
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r5, #2
	mov	r3, #8
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0x11
	str	r5, [sp]
	bl	__Func_10424
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r6, #4
	mov	r8, r3
	mov	r0, #0
	mov	r3, #0x26
	mov	r1, #0x3b
	mov	r2, #0xf
	str	r6, [sp]
	bl	__Func_10424
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
.L122a:
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	b	.L128c
.L1234:
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1260
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	bl	__Func_10424
.L1260:
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	beq	.L128c
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	bl	__Func_10424
.L128c:
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12dc
	mov	r1, #0xfc
	mov	r2, #0x98
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r5, #2
	mov	r6, #1
	mov	r0, #2
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x37
	mov	r2, #0x20
	mov	r3, #0x28
	bl	__Func_10424
.L12dc:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L132c
	mov	r1, #0xa2
	mov	r2, #0x98
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r5, #2
	mov	r6, #1
	mov	r0, #4
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	mov	r1, #0x1e
	mov	r2, #0x12
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x37
	mov	r2, #0x24
	mov	r3, #0x28
	bl	__Func_10424
.L132c:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L137a
	mov	r1, #0xfc
	mov	r2, #0xc8
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r5, #1
	mov	r6, #2
	mov	r0, #2
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #2
	mov	r1, #0x1f
	mov	r2, #0x10
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x3a
	mov	r2, #0x20
	mov	r3, #0x2b
	str	r5, [sp, #4]
	bl	__Func_10424
.L137a:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13c8
	mov	r1, #0xa2
	mov	r2, #0xc8
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r5, #1
	mov	r6, #2
	mov	r0, #4
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	mov	r1, #0x1f
	mov	r2, #0x12
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0x3a
	mov	r2, #0x24
	mov	r3, #0x2b
	str	r5, [sp, #4]
	bl	__Func_10424
.L13c8:
	ldr	r5, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1434
	ldr	r0, =0x30a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1420
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L1434

	.pool_aligned

.L1420:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1434
	bl	OvlFunc_150
	ldr	r0, =0x30a
	bl	__Func_79358
.L1434:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1476
	ldr	r0, =0x30b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1462
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L1476
.L1462:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1476
	bl	OvlFunc_614
	ldr	r0, =0x30b
	bl	__Func_79358
.L1476:
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.L149a
	mov	r0, #0x8d
	bl	__Func_91ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	bl	__Func_9509c
.L149a:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_105c

.thumb_func_start OvlFunc_14b8
	push	{r5, r6, lr}
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	ldr	r5, =.L2a50
	bl	__Func_48f4
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =.L256c
	bl	__Func_53e8
	bl	__Func_4080
	mov	r1, #0x80
	mov	r2, r6
	bl	__Func_3fa4
	mov	r3, #0xac
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L14e8:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L14e8
	bl	__Func_4080
	mov	r2, r6
	add	r2, #0x80
	mov	r1, #0x80
	bl	__Func_3fa4
	mov	r3, #0xdc
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L1512:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L1512
	bl	__Func_4080
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r6, r3
	mov	r1, #0x80
	bl	__Func_3fa4
	mov	r3, #0xc0
	lsl	r3, #4
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L153e:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L153e
	mov	r0, #0xe
	bl	__Func_2dd8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_eb0
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_14b8

.thumb_func_start OvlFunc_1574
	push	{lr}
	mov	r0, #9
	mov	r1, #0x1f
	mov	r2, #9
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L1588
	bl	OvlFunc_1c14
.L1588:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1574

.thumb_func_start OvlFunc_158c
	push	{lr}
	mov	r0, #0xb
	mov	r1, #0x28
	mov	r2, #9
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L15a0
	bl	OvlFunc_1d14
.L15a0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_158c

.thumb_func_start OvlFunc_15a4
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x1f
	mov	r2, #0xc
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L15b8
	bl	OvlFunc_1e10
.L15b8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_15a4

.thumb_func_start OvlFunc_15bc
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x28
	mov	r2, #0xc
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L15d0
	bl	OvlFunc_1f0c
.L15d0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_15bc

.thumb_func_start OvlFunc_15d4
	push	{lr}
	mov	r1, #0xd0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_12078
	mov	r0, #0xa
	mov	r1, #0xe
	mov	r2, #7
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L15f8
	bl	OvlFunc_2244
.L15f8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_15d4

.thumb_func_start OvlFunc_15fc
	push	{lr}
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_12078
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	bl	OvlFunc_1be8
	cmp	r0, #0
	beq	.L1620
	bl	OvlFunc_22f4
.L1620:
	pop	{r0}
	bx	r0
.func_end OvlFunc_15fc

.thumb_func_start OvlFunc_1624
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1666
	mov	r3, r5
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.L1666
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_12078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_12078
.L1666:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1624

.thumb_func_start OvlFunc_166c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #7
	bne	.L169e
	mov	r3, r5
	sub	r3, #0xd
	cmp	r3, #1
	bhi	.L169e
	mov	r1, #0xd0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #15
	mov	r3, #0xff
	bl	__Func_12078
.L169e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_166c

.thumb_func_start OvlFunc_16a4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #7
	bne	.L16d6
	mov	r3, r5
	sub	r3, #0x15
	cmp	r3, #1
	bhi	.L16d6
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0xff
	bl	__Func_12078
.L16d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16a4

.thumb_func_start OvlFunc_16dc
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__Func_92054
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #17
	mov	r0, #2
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_12078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_12078
	cmp	r6, #0
	bne	.L170e
	b	.L1924
.L170e:
	ldr	r5, [r6, #0x10]
	asr	r5, #20
	bl	__Func_916b0
	cmp	r5, #8
	beq	.L171c
	b	.L1920
.L171c:
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.L174a
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x11
	bhi	.L174a
	mov	r0, #0
	ldr	r1, =0x121
	mov	r2, #0x9e
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
.L174a:
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1756
	b	.L1920
.L1756:
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1762
	b	.L1920
.L1762:
	ldr	r0, =0x818
	bl	__Func_79358
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x11
	bl	__Func_92064
	mov	r3, r6
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92b08
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0xb2
	mov	r0, #0x11
	bl	__Func_92128
	mov	r0, #8
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r2, #0xb2
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	str	r5, [r6, #0x10]
	str	r5, [r6, #0x24]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x2c]
	bl	__Func_923e4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80f
	bl	__Func_79358
.L18ec:
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x1038
	mov	r1, #1
	bl	__Func_1776c
	mov	r3, #8
	mov	r5, #0x11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #9
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L1920:
	bl	__Func_91750
.L1924:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16dc

.thumb_func_start OvlFunc_195c
	push	{lr}
	mov	r0, #0x11
	bl	__Func_92054
	cmp	r0, #0
	beq	.L19d6
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L19d6
	bl	__Func_916b0
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r0, #0x11
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x88
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0
	bl	__Func_92128
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0x11
	bl	__Func_92128
	mov	r0, #0x11
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	bl	__Func_91750
.L19d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_195c

.thumb_func_start OvlFunc_19e4
	push	{lr}
	sub	sp, #4
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x1f
	mov	r2, #9
	mov	r3, #0x1e
	bl	OvlFunc_1b44
	bl	OvlFunc_1c14
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e4

.thumb_func_start OvlFunc_1a04
	push	{lr}
	sub	sp, #4
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x28
	mov	r2, #9
	mov	r3, #0x29
	bl	OvlFunc_1b44
	bl	OvlFunc_1d14
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a04

.thumb_func_start OvlFunc_1a24
	push	{lr}
	sub	sp, #4
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0xd
	mov	r1, #0x1f
	mov	r2, #0xc
	mov	r3, #0x1e
	bl	OvlFunc_1b44
	bl	OvlFunc_1e10
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a24

.thumb_func_start OvlFunc_1a44
	push	{lr}
	sub	sp, #4
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0x28
	mov	r2, #0xc
	mov	r3, #0x29
	bl	OvlFunc_1b44
	bl	OvlFunc_1f0c
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a44

.thumb_func_start OvlFunc_1a64
	push	{lr}
	sub	sp, #4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0xe
	mov	r2, #7
	mov	r3, #0xd
	bl	OvlFunc_1b44
	bl	OvlFunc_2244
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a64

.thumb_func_start OvlFunc_1a84
	push	{lr}
	mov	r0, #0xa
	sub	sp, #4
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1aa4
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	add	r2, r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0xd
	mov	r3, #0xd
	bl	OvlFunc_1b44
.L1aa4:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a84

.thumb_func_start OvlFunc_1aac
	push	{lr}
	mov	r0, #0xa
	sub	sp, #4
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1acc
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	sub	r2, r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0xd
	mov	r3, #0xd
	bl	OvlFunc_1b44
.L1acc:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1aac

.thumb_func_start OvlFunc_1ad4
	push	{lr}
	sub	sp, #4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	mov	r3, #0x16
	bl	OvlFunc_1b44
	bl	OvlFunc_22f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ad4

.thumb_func_start OvlFunc_1af4
	push	{lr}
	mov	r0, #0xc
	sub	sp, #4
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b14
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	add	r2, r3, #1
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x16
	mov	r3, #0x16
	bl	OvlFunc_1b44
.L1b14:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1af4

.thumb_func_start OvlFunc_1b1c
	push	{lr}
	mov	r0, #0xc
	sub	sp, #4
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b3c
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	sub	r2, r3, #1
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x16
	mov	r3, #0x16
	bl	OvlFunc_1b44
.L1b3c:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b1c

.thumb_func_start OvlFunc_1b44
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r6, [sp, #0x18]
	mov	r9, r0
	mov	r5, r3
	mov	r8, r1
	mov	r10, r2
	bl	__Func_916b0
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r0, r9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__Func_92064
	mov	r0, r9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	lsl	r5, #4
	lsl	r6, #4
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	add	r5, #8
	add	r6, #8
	bl	__Func_924d4
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_92128
	mov	r3, r8
	lsl	r3, #4
	mov	r8, r3
	mov	r3, r10
	lsl	r3, #4
	mov	r10, r3
	mov	r3, #8
	add	r8, r3
	add	r10, r3
	mov	r1, r8
	mov	r2, r10
	mov	r0, r9
	bl	__Func_92128
	mov	r0, r9
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b44

.thumb_func_start OvlFunc_1be8
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1bfe
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r5
	beq	.L1c02
.L1bfe:
	mov	r0, #0
	b	.L1c0e
.L1c02:
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	mov	r0, #0
	cmp	r3, r6
	bne	.L1c0e
	mov	r0, #1
.L1c0e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1be8

.thumb_func_start OvlFunc_1c14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
	mov	r3, #0
	str	r3, [r7]
	mov	r3, #0x37
	mov	r9, r3
	str	r3, [r7, #4]
	mov	r3, #4
	mov	r14, r3
	str	r3, [r7, #0x10]
	mov	r3, #0x10
	str	r3, [r7, #0x50]
	ldr	r3, =0x80b
	str	r3, [r7, #0x60]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x64]
	mov	r3, #0xfa
	mov	r6, #0x28
	lsl	r3, #1
	mov	r4, #0x20
	mov	r12, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x68]
	mov	r6, #0x1c
	mov	r3, #0x84
	mov	r10, r4
	mov	r11, r6
	str	r6, [r7, #0x34]
	str	r3, [r7, #0x6c]
	mov	r6, r9
	mov	r3, #8
	str	r4, [r7, #8]
	str	r3, [r7, #0x70]
	mov	r4, #3
	str	r6, [r7, #0x74]
	mov	r3, r10
	mov	r6, r12
	mov	r2, #2
	mov	r1, #0xa
	mov	r0, #1
	mov	r5, #0x22
	mov	r8, r4
	str	r4, [r7, #0x14]
	str	r3, [r7, #0x78]
	mov	r4, #0x1e
	str	r6, [r7, #0x7c]
	mov	r3, #0x80
	mov	r6, r14
	str	r2, [r7, #0x18]
	str	r4, [r7, #0x1c]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x40]
	str	r2, [r7, #0x48]
	str	r4, [r7, #0x4c]
	str	r2, [r7, #0x58]
	str	r5, [r7, #0x20]
	str	r1, [r7, #0x24]
	str	r0, [r7, #0x2c]
	str	r5, [r7, #0x38]
	str	r1, [r7, #0x3c]
	str	r0, [r7, #0x44]
	str	r1, [r7, #0x54]
	str	r0, [r7, #0x5c]
	str	r6, [r3, r7]
	mov	r6, r8
	mov	r3, #0x84
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x88
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r4, r11
	add	r3, #4
	str	r4, [r3]
	mov	r6, #0x10
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	mov	r2, r7
	str	r0, [r3]
	add	r2, #0xb8
	mov	r3, #9
	str	r3, [r2]
	mov	r3, #0xf4
	add	r2, #4
	lsl	r3, #1
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0x98
	str	r3, [r2]
	bl	OvlFunc_1ff4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c14

.thumb_func_start OvlFunc_1d14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
	mov	r3, #0x37
	mov	r10, r3
	str	r3, [r7, #4]
	mov	r3, #3
	mov	r8, r3
	str	r3, [r7, #0x14]
	mov	r3, #0x1c
	mov	r9, r3
	str	r3, [r7, #0x34]
	ldr	r3, =0x80c
	str	r3, [r7, #0x60]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x64]
	ldr	r3, =0x28e
	str	r3, [r7, #0x68]
	mov	r3, #0x84
	mov	r6, #0x28
	str	r3, [r7, #0x6c]
	mov	r3, #0xc
	mov	r14, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x70]
	mov	r6, #0x1e
	mov	r3, r10
	mov	r11, r6
	str	r6, [r7, #0x1c]
	str	r6, [r7, #0x4c]
	str	r3, [r7, #0x74]
	mov	r6, #0x12
	mov	r3, r7
	mov	r2, #4
	mov	r1, #0x24
	mov	r0, #0xa
	mov	r4, #2
	mov	r5, #1
	mov	r12, r6
	str	r6, [r7, #0x50]
	add	r3, #0x80
	mov	r6, r14
	str	r2, [r7]
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x48]
	str	r6, [r7, #0x7c]
	str	r1, [r7, #8]
	mov	r6, r8
	str	r1, [r7, #0x20]
	str	r0, [r7, #0x24]
	str	r4, [r7, #0x28]
	str	r5, [r7, #0x2c]
	str	r1, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r4, [r7, #0x40]
	str	r5, [r7, #0x44]
	str	r0, [r7, #0x54]
	str	r4, [r7, #0x58]
	str	r5, [r7, #0x5c]
	str	r1, [r7, #0x78]
	str	r2, [r3]
	mov	r3, #0x84
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x88
	str	r2, [r3]
	mov	r6, r11
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r2, r9
	add	r3, #4
	str	r2, [r3]
	mov	r6, r12
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	mov	r2, r7
	add	r3, #4
	str	r5, [r3]
	add	r2, #0xb8
	mov	r3, #0xb
	str	r3, [r2]
	mov	r3, #0xa6
	add	r2, #4
	lsl	r3, #2
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0x98
	str	r3, [r2]
	bl	OvlFunc_1ff4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d14

.thumb_func_start OvlFunc_1e10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
	mov	r3, #0
	str	r3, [r7]
	mov	r3, #0x3a
	mov	r10, r3
	str	r3, [r7, #4]
	mov	r3, #4
	mov	r14, r3
	str	r3, [r7, #0x10]
	mov	r3, #0x10
	mov	r11, r3
	str	r3, [r7, #0x50]
	ldr	r3, =0x80d
	str	r3, [r7, #0x60]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r7, #0x64]
	mov	r3, #0xfa
	mov	r6, #0x2b
	lsl	r3, #1
	mov	r4, #0x20
	mov	r12, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x68]
	mov	r6, #0x1d
	mov	r3, #0xd8
	mov	r8, r4
	mov	r9, r6
	str	r6, [r7, #0x34]
	str	r3, [r7, #0x6c]
	mov	r6, r10
	mov	r3, #8
	str	r3, [r7, #0x70]
	str	r6, [r7, #0x74]
	mov	r3, r8
	mov	r6, r12
	mov	r2, #2
	mov	r1, #1
	mov	r0, #0xb
	mov	r5, #0x22
	str	r4, [r7, #8]
	str	r3, [r7, #0x78]
	mov	r4, #0x1f
	str	r6, [r7, #0x7c]
	mov	r3, #0x80
	mov	r6, r14
	str	r2, [r7, #0x18]
	str	r4, [r7, #0x1c]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x40]
	str	r2, [r7, #0x48]
	str	r4, [r7, #0x4c]
	str	r2, [r7, #0x58]
	str	r1, [r7, #0x14]
	str	r5, [r7, #0x20]
	str	r0, [r7, #0x24]
	str	r1, [r7, #0x2c]
	str	r5, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r1, [r7, #0x44]
	str	r0, [r7, #0x54]
	str	r1, [r7, #0x5c]
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x84
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r4, r9
	add	r3, #4
	str	r4, [r3]
	mov	r6, r11
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	mov	r2, r7
	str	r1, [r3]
	add	r2, #0xb8
	mov	r3, #0xd
	str	r3, [r2]
	mov	r3, #0xf4
	add	r2, #4
	lsl	r3, #1
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0xc8
	str	r3, [r2]
	bl	OvlFunc_1ff4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e10

.thumb_func_start OvlFunc_1f0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, =.L2980
	mov	r3, #0x3a
	mov	r8, r3
	str	r3, [r7, #4]
	mov	r3, #0x2b
	mov	r14, r3
	str	r3, [r7, #0xc]
	mov	r3, #0x1d
	mov	r10, r3
	str	r3, [r7, #0x34]
	mov	r3, #0x12
	mov	r12, r3
	str	r3, [r7, #0x50]
	ldr	r3, =0x80e
	str	r3, [r7, #0x60]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r7, #0x64]
	ldr	r3, =0x28e
	str	r3, [r7, #0x68]
	mov	r3, #0xd8
	str	r3, [r7, #0x6c]
	mov	r3, #0xc
	str	r3, [r7, #0x70]
	mov	r3, r8
	str	r3, [r7, #0x74]
	mov	r3, r14
	str	r3, [r7, #0x7c]
	mov	r3, r7
	mov	r2, #4
	mov	r1, #1
	mov	r0, #0x24
	mov	r4, #0xb
	mov	r5, #2
	mov	r6, #0x1f
	add	r3, #0x80
	str	r2, [r7]
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x48]
	str	r0, [r7, #8]
	str	r1, [r7, #0x14]
	str	r6, [r7, #0x1c]
	str	r0, [r7, #0x20]
	str	r4, [r7, #0x24]
	str	r5, [r7, #0x28]
	str	r1, [r7, #0x2c]
	str	r0, [r7, #0x38]
	str	r4, [r7, #0x3c]
	str	r5, [r7, #0x40]
	str	r1, [r7, #0x44]
	str	r6, [r7, #0x4c]
	str	r4, [r7, #0x54]
	str	r5, [r7, #0x58]
	str	r1, [r7, #0x5c]
	str	r0, [r7, #0x78]
	str	r2, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r2, r10
	add	r3, #4
	str	r2, [r3]
	mov	r2, r12
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	mov	r2, r7
	add	r3, #4
	str	r1, [r3]
	add	r2, #0xb8
	mov	r3, #0xf
	str	r3, [r2]
	mov	r3, #0xa6
	add	r2, #4
	lsl	r3, #2
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0xc8
	str	r3, [r2]
	bl	OvlFunc_1ff4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f0c

.thumb_func_start OvlFunc_1ff4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	sub	sp, #8
	mov	r8, r3
	bl	__Func_916b0
	ldr	r0, =0x80f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2010
	b	.L2208
.L2010:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xac
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xba
	bl	__Func_f9080
	ldr	r5, =.L2980
	ldr	r6, [r5, #0x14]
	ldr	r4, [r5, #0x10]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	str	r6, [sp, #4]
	str	r4, [sp]
	bl	__Func_10424
	mov	r7, #0
	mov	r6, r5
.L2052:
	mov	r0, #0xf6
	bl	__Func_f9080
	ldr	r4, [r6, #0x28]
	ldr	r5, [r6, #0x2c]
	ldr	r1, [r6, #0x1c]
	ldr	r2, [r6, #0x20]
	ldr	r3, [r6, #0x24]
	ldr	r0, [r6, #0x18]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	ldr	r4, [r6, #0x40]
	ldr	r5, [r6, #0x44]
	ldr	r0, [r6, #0x30]
	ldr	r1, [r6, #0x34]
	ldr	r2, [r6, #0x38]
	ldr	r3, [r6, #0x3c]
	add	r7, #1
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	cmp	r7, #0x14
	bne	.L2052
	ldr	r7, =.L2980
	ldr	r4, [r7, #0x58]
	ldr	r5, [r7, #0x5c]
	ldr	r3, [r7, #0x54]
	ldr	r1, [r7, #0x4c]
	ldr	r2, [r7, #0x50]
	ldr	r0, [r7, #0x48]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, [r7, #0x60]
	bl	__Func_79358
	bl	OvlFunc_54
	mov	r3, #1
	mov	r8, r0
	neg	r3, r3
	cmp	r8, r3
	bne	.L21b0
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	beq	.L20ce
	b	.L2208
.L20ce:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9335c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r7, #0x64]
	mov	r1, #0x80
	mov	r2, #0x80
	strh	r3, [r0, #6]
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92560
	ldr	r1, [r7, #0x68]
	ldr	r2, [r7, #0x6c]
	mov	r0, #0
	bl	__Func_92128
	mov	r4, r7
	add	r4, #0x80
	ldr	r5, [r4]
	add	r4, #4
	ldr	r4, [r4]
	ldr	r0, [r7, #0x70]
	ldr	r1, [r7, #0x74]
	ldr	r2, [r7, #0x78]
	ldr	r3, [r7, #0x7c]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_10424
	mov	r3, r7
	add	r3, #0x88
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0x98
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	add	r4, #4
	ldr	r2, [r3]
	ldr	r4, [r4]
	add	r3, #4
	ldr	r3, [r3]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_10424
	mov	r3, r7
	add	r3, #0xa0
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0xb0
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	ldr	r2, [r3]
	add	r4, #4
	add	r3, #4
	ldr	r4, [r4]
	ldr	r3, [r3]
	str	r5, [sp]
	mov	r5, r7
	add	r5, #0xb8
	str	r4, [sp, #4]
	bl	__Func_10424
	ldr	r0, [r5]
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r6, r3
	strb	r6, [r0]
	mov	r3, r7
	add	r3, #0xbc
	ldr	r1, [r3]
	add	r3, #4
	ldr	r2, [r3]
	ldr	r0, [r5]
	bl	__Func_92158
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [r7, #0x60]
	bl	__Func_79374
	b	.L2208
.L21b0:
	mov	r3, r8
	cmp	r3, #0
	bne	.L2208
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2208
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2208
	ldr	r0, =0x80f
	bl	__Func_79358
	bl	OvlFunc_c8c
	b	.L2208
.L21f4:
	ldr	r0, =0x812
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2208
	mov	r0, #5
	bl	__Func_91e9c
	mov	r3, #1
	mov	r8, r3
.L2208:
	mov	r3, r8
	cmp	r3, #1
	bne	.L2216
	bl	__Func_91df4
	bl	__Func_91e20
.L2216:
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ff4

.thumb_func_start OvlFunc_2244
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	bne	.L22dc
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	bne	.L22dc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xba
	bl	__Func_f9080
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	bl	__Func_10424
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22b8
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_10424
.L22b8:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x816
	bl	__Func_79358
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22dc
	bl	OvlFunc_98
.L22dc:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2244

.thumb_func_start OvlFunc_22f4
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x818
	bl	__Func_79338
	cmp	r0, #0
	bne	.L238e
	ldr	r0, =0x817
	bl	__Func_79338
	cmp	r0, #0
	bne	.L238e
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xba
	bl	__Func_f9080
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	bl	__Func_10424
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2368
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_10424
.L2368:
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x817
	bl	__Func_79358
	ldr	r0, =0x816
	bl	__Func_79338
	cmp	r0, #0
	beq	.L238e
	bl	OvlFunc_98
.L238e:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_22f4

.thumb_func_start OvlFunc_23a4
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23a4

	.section .data

.L256c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x256c, (0x25c0-0x256c)
.L25c0:
	.incbin "overlays/rom_78c76c/orig.bin", 0x25c0, (0x2698-0x25c0)
.L2698:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2698, (0x26bc-0x2698)
.L26bc:
	.incbin "overlays/rom_78c76c/orig.bin", 0x26bc, (0x280c-0x26bc)
.L280c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x280c, (0x2974-0x280c)
.L2974:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2974

	.section .bss

	.lcomm	.Lunused_2978, 8
	.lcomm	.L2980,	0xc4
	.lcomm	.Lunused_2a48, 8
	.lcomm	.L2a50, 8
