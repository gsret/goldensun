	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L36d4
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L3704
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L3710
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L3998
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_1ec4
	ldr	r7, [r5]
	bl	__Func_916b0
	ldr	r2, =0x40c
	mov	r3, #0
	add	r6, r7, r2
	str	r3, [r6]
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r1, #0xe8
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xda
	mov	r2, #0xac
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xb5
	lsl	r2, #17
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0x9c
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	sub	r5, #8
	bl	__Func_933f8
	bl	__Func_fe9c
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #8
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #4
	bl	__Func_91254
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #4
	bl	__Func_91254
	mov	r0, #4
	bl	__Func_9163c
	bl	OvlFunc_f64
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #4
	bl	__Func_91254
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #4
	bl	__Func_91254
	mov	r0, #4
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #4
	bl	__Func_91254
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x90
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x30
	bl	__Func_91254
	mov	r0, #0x30
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_2d48
	mov	r1, #0x14
	mov	r2, #0x28
	mov	r0, #0
	bl	OvlFunc_2d48
	ldr	r0, =0x10cd
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_2d48
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_2d48
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2d48
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r1, #0x14
	mov	r0, #0
	bl	OvlFunc_2d48
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r2, #0x97
	ldr	r1, =0x1450000
	lsl	r2, #17
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #5
	strb	r3, [r2]
	mov	r3, #1
	str	r3, [r6]
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x96
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xb5
	lsl	r2, #17
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	bl	__Func_923e4
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_933d4
	mov	r0, #0xa4
	mov	r1, #1
	ldr	r2, =0x12b0000
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa7
	bl	__Func_f9080
	mov	r1, #2
	ldr	r0, =0x205294
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0xc8
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x1001
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L418
	ldr	r0, =0x10d6
	bl	__Func_92b94
	b	.L41e

	.pool_aligned

.L418:
	ldr	r0, =0x10d7
	bl	__Func_92b94
.L41e:
	mov	r1, #0
	mov	r2, #0x50
	ldr	r0, =0x1001
	bl	__Func_93040
	ldr	r0, =0x10d8
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #1
	bl	OvlFunc_2d48
	ldr	r3, =0x40c
	add	r5, r7, r3
	mov	r3, #0
	str	r3, [r5]
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r3, #1
	str	r3, [r5]
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x3c
	bl	OvlFunc_2d48
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_2d48
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_2d48
	ldr	r0, =0x1001
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_2d48
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_2d48
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	bl	OvlFunc_1084
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_10c4
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_135c
	bl	__Func_41d8
	mov	r0, #0xf0
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0xb5
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #5
	bl	__Func_92054
	mov	r2, r0
	mov	r3, #0xa
	ldrsh	r0, [r2, r3]
	mov	r3, #0x12
	ldrsh	r2, [r2, r3]
	mov	r1, #1
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0xb
	bl	__Func_92848
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	ldr	r0, =0x4005
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x28
	bl	__Func_92848
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r2, #0x3c
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xd
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x9d
	lsl	r2, #1
	mov	r0, #0xd
	ldr	r1, =0x1d7
	bl	__Func_921c4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_9259c
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	b	.L860

	.pool_aligned

.L860:
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xa
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x200e
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x3c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0xb
	bl	__Func_92848
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0xb
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1db
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0xae
	lsl	r2, #1
	ldr	r1, =0x1eb
	mov	r0, #0xa
	bl	__Func_9218c
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0xb
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0xa9
	ldr	r1, =0x1db
	lsl	r2, #1
	mov	r0, #0xb
	bl	__Func_921c4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r2, r0
	mov	r5, r2
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xae
	strb	r3, [r5]
	lsl	r2, #1
	mov	r0, #0xb
	ldr	r1, =0x1db
	bl	__Func_921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x9e
	mov	r0, #5
	ldr	r1, =0x1cb
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_9259c
	mov	r2, #0x1e
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r5]
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xa6
	mov	r0, #0xb
	ldr	r1, =0x1db
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd8
	mov	r2, #0x9e
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xd3
	ldr	r2, =0x137
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x28
	ldr	r0, =0x100a
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0x94
	mov	r0, #9
	ldr	r1, =0x1eb
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x9a
	mov	r0, #0xa
	ldr	r1, =0x1d7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x9a
	mov	r0, #0xb
	ldr	r1, =0x1c7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x9a
	mov	r0, #0xe
	ldr	r1, =0x1e7
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	b	.Ld38

	.pool_aligned

.Ld38:
	bl	__Func_9163c
	ldr	r0, =0x246
	bl	__Func_79358
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92064
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0xa
	bl	OvlFunc_e30
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #9
	bl	OvlFunc_e30
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xb
	bl	OvlFunc_e30
	mov	r1, #0x90
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_9259c
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #5
	bl	OvlFunc_e30
	mov	r0, #0xd
	bl	OvlFunc_e30
	mov	r1, #0xe0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0xe
	bl	__Func_93040
	mov	r0, #0xe
	bl	OvlFunc_e30
	bl	OvlFunc_1410
	mov	r0, #5
	bl	__Func_91890
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_54

.thumb_func_start OvlFunc_e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0x91
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r8, r0
	mov	r0, r10
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, r10
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x91
	lsl	r2, #17
	ldr	r1, =0x1d70000
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, r10
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_92950
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0xc9
	bl	__Func_f9080
	mov	r6, #0
.Lea2:
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #1
	bl	__Func_9163c
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x3c
	bne	.Lea2
	mov	r0, #0xbe
	bl	__Func_f9080
	ldr	r7, =0xfffffd71
	mov	r6, #0
.Lec6:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_9163c
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x5a
	bne	.Lec6
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e30

.thumb_func_start OvlFunc_f28
	bx	lr
.func_end OvlFunc_f28

.thumb_func_start OvlFunc_f2c
	bx	lr
.func_end OvlFunc_f2c

.thumb_func_start OvlFunc_f30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.Lf4a
	bl	__Func_9509c
	bl	OvlFunc_54
.Lf4a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

.thumb_func_start OvlFunc_f54
	ldrh	r3, [r0, #6]
	mov	r1, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r1, #7
	add	r3, r1
	strh	r3, [r2, #0x1e]
	mov	r0, #1
	bx	lr
.func_end OvlFunc_f54

.thumb_func_start OvlFunc_f64
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, #0x10
.Lf6e:
	mov	r0, r7
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r7
	bl	__Func_920a0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, r5
	strb	r3, [r1, #9]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x34]
	ldr	r3, =0x1cccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xe8
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r3, #0x84
	lsl	r3, #16
	add	r7, #1
	str	r3, [r5, #0x10]
	cmp	r7, #0x1f
	bls	.Lf6e
	mov	r0, #0x91
	bl	__Func_f9080
	ldr	r1, =Func_888
	mov	r7, #0
	mov	r10, r1
.Lfd8:
	mov	r0, r7
	add	r0, #0x10
	bl	__Func_92054
	mov	r6, r0
	ldr	r0, =0xffffc000
	ldr	r2, [r6, #0x50]
	lsl	r5, r7, #12
	add	r3, r5, r0
	strh	r3, [r2, #0x1e]
	mov	r0, r5
	bl	__Func_231c
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	mov	r8, r0
	mov	r0, r5
	bl	__Func_2322
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r1, r8
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	add	r7, #1
	bl	__Func_d14c
	cmp	r7, #0xf
	bls	.Lfd8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r3, #0x80
	lsl	r1, #9
	lsl	r3, #24
	mov	r7, #0x10
	mov	r10, r1
	mov	r6, #0
	mov	r8, r3
.L103e:
	mov	r0, r7
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r7
	bl	__Func_920a0
	add	r7, #1
	mov	r1, r8
	mov	r0, r10
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r1, [r5, #0x38]
	str	r1, [r5, #0x3c]
	str	r1, [r5, #0x40]
	cmp	r7, #0x1f
	bls	.L103e
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f64

.thumb_func_start OvlFunc_1084
	push	{lr}
	ldr	r2, =.L3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r3, =.L3b00
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L3b6c
	str	r2, [r3]
	ldr	r2, =.L3b70
	mov	r3, #0x78
	str	r3, [r2]
	ldr	r2, =.L3ac0
	mov	r3, #0
	mov	r1, #0
.L10a2:
	add	r3, #1
	stmia	r2!, {r1}
	cmp	r3, #0xf
	bls	.L10a2
	pop	{r0}
	bx	r0
.func_end OvlFunc_1084

.thumb_func_start OvlFunc_10c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ec4
	ldr	r5, [r3]
	ldr	r3, =.L3b00
	mov	r1, #0xa
	ldr	r0, [r3]
	sub	sp, #4
	bl	_Func_b60
	cmp	r0, #0
	beq	.L10fc
	ldr	r1, =0x40c
	mov	r2, #0
	add	r3, r5, r1
	str	r2, [r3]
	lsl	r1, r0, #16
	mov	r2, #0x80
	mov	r0, r1
	lsl	r2, #9
	bl	__Func_12330
	b	.L1112
.L10fc:
	ldr	r3, =0x40c
	mov	r0, #1
	add	r2, r5, r3
	mov	r1, #1
	mov	r3, #1
	str	r3, [r2]
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
.L1112:
	ldr	r2, =.L3b00
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L111e
	sub	r3, #3
	str	r3, [r2]
.L111e:
	ldr	r1, =.L3ac0
	mov	r0, #0
	mov	r8, r0
	mov	r10, r1
	mov	r2, #0
.L1128:
	mov	r3, r8
	lsl	r6, r3, #2
	mov	r0, r10
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.L1198
	mov	r0, r8
	add	r0, #0x10
	str	r2, [sp]
	bl	__Func_92054
	mov	r5, r0
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	ldr	r2, [sp]
	cmp	r3, r1
	bne	.L1198
	ldr	r7, [r5, #0x40]
	cmp	r7, r3
	bne	.L1198
	mov	r0, r10
	ldr	r3, [r0, r6]
	add	r3, #1
	str	r3, [r0, r6]
	cmp	r3, #2
	bne	.L1168
	mov	r0, r5
	mov	r1, #3
	bl	__Func_c300
	ldr	r2, [sp]
.L1168:
	mov	r1, r10
	ldr	r3, [r1, r6]
	cmp	r3, #0x13
	bne	.L1190
	str	r2, [r5, #8]
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r7, [r5, #0x38]
	str	r7, [r5, #0x3c]
	str	r7, [r5, #0x40]
	mov	r0, r5
	mov	r1, #0xf
	str	r2, [sp]
	bl	__Func_929d8
	ldr	r2, [sp]
	b	.L1198
.L1190:
	cmp	r3, #0x14
	bne	.L1198
	mov	r3, r10
	str	r2, [r3, r6]
.L1198:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bls	.L1128
	ldr	r3, =.L3b68
	ldr	r0, =0x3e7
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.L11b2
	b	.L1314
.L11b2:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L11be
	b	.L1314
.L11be:
	ldr	r2, =Func_888
	mov	r1, #0
	ldr	r6, =.L3ac0
	mov	r8, r1
	mov	r9, r2
.L11c8:
	bl	__Func_4458
	ldr	r1, =0xffff
	bl	_Func_b50
	lsl	r0, #16
	asr	r0, #16
	mov	r11, r0
	mov	r0, r8
	add	r0, #0x10
	bl	__Func_92054
	mov	r3, r8
	lsl	r5, r3, #2
	mov	r7, r0
	ldr	r0, [r6, r5]
	mov	r10, r0
	cmp	r0, #0
	beq	.L11f0
	b	.L1304
.L11f0:
	ldr	r0, =0x246
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1200
	mov	r0, #0xf6
	bl	__Func_f9080
.L1200:
	mov	r3, #1
	str	r3, [r6, r5]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #12
	lsl	r3, #9
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x34]
	mov	r0, r7
	mov	r1, #0
	bl	__Func_c528
	ldr	r1, [r7, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
	mov	r0, r7
	ldr	r1, =.L3a00
	bl	__Func_c2d8
	mov	r1, r11
	lsl	r6, r1, #16
	lsr	r6, #16
	mov	r0, r6
	bl	__Func_231c
	mov	r5, r0
	bl	__Func_4458
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	add	r0, r3
	str	r0, [r7, #8]
	mov	r0, r10
	str	r0, [r7, #0xc]
	mov	r0, r6
	bl	__Func_2322
	mov	r5, r0
	bl	__Func_4458
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r3, #0x97
	lsl	r3, #17
	add	r0, r3
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	__Func_231c
	mov	r5, r0
	bl	__Func_4458
	mov	r1, r0
	mov	r0, #0x3f
	and	r1, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r5, r0
	mov	r0, r6
	bl	__Func_2322
	mov	r6, r0
	bl	__Func_4458
	mov	r3, #0x3f
	mov	r1, r0
	and	r1, r3
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r6
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	mov	r1, #0x8f
	add	r5, r3
	lsl	r1, #17
	add	r3, r0, r1
	mov	r2, #0
	mov	r0, r7
	mov	r1, r5
	bl	__Func_d14c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_929d8
	ldr	r2, =.L3b00
	mov	r3, #0x1e
	str	r3, [r2]
	b	.L1314
.L1304:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bhi	.L1314
	b	.L11c8
.L1314:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c4

.thumb_func_start OvlFunc_135c
	push	{r5, lr}
	ldr	r2, =.L3b70
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L136c
	sub	r3, #1
	str	r3, [r2]
	b	.L13fc
.L136c:
	ldr	r5, =.L3b6c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L137a
	sub	r3, #1
	str	r3, [r5]
	b	.L1384
.L137a:
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	str	r0, [r5]
.L1384:
	ldr	r3, =.L3b6c
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L13b0
	cmp	r2, #2
	bhi	.L1396
	cmp	r2, #1
	beq	.L13c8
	b	.L13e0
.L1396:
	cmp	r2, #3
	bne	.L13e0
	ldr	r3, =.L3b68
	str	r2, [r3]
	ldr	r5, =.L3b70
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x28
	b	.L13fa
.L13b0:
	ldr	r2, =.L3b68
	mov	r3, #0xf
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x50
	b	.L13fa
.L13c8:
	ldr	r2, =.L3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0xa0
	b	.L13fa
.L13e0:
	ldr	r2, =.L3b68
	mov	r3, #0x7f
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	mov	r2, #0xa0
	lsr	r3, #16
	lsl	r2, #1
	add	r3, r2
.L13fa:
	str	r3, [r5]
.L13fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_135c

.thumb_func_start OvlFunc_1410
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ec4
	ldr	r3, [r3]
	mov	r0, #0xf
	sub	sp, #8
	mov	r9, r3
	bl	__Func_92054
	mov	r10, r0
	ldr	r0, =OvlFunc_135c
	bl	__Func_4278
	ldr	r2, =.L3b68
	mov	r3, #3
	str	r3, [r2]
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =OvlFunc_10c4
	bl	__Func_4278
	mov	r5, #0
.L145e:
	mov	r0, r5
	add	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #0xf
	bls	.L145e
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0
	bl	OvlFunc_2820
	mov	r0, #1
	bl	OvlFunc_2820
	ldr	r3, =0x40c
	mov	r5, #0
	add	r3, r9
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	str	r5, [r3]
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x50
	bl	__Func_9163c
	bl	OvlFunc_2c9c
	bl	__Func_93554
	mov	r3, r0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0xe7
	lsl	r3, #16
	str	r3, [r0, #8]
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x3c]
	str	r3, [r0, #0x40]
	str	r5, [r0, #0xc]
	str	r5, [r0, #0x24]
	str	r5, [r0, #0x2c]
	mov	r0, #4
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #4
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r8, r0
	mov	r0, #1
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r8
	mov	r1, #0xc0
	ldr	r2, [r0, #0x50]
	ldr	r7, [r6, #0x50]
	lsl	r1, #7
.L1528:
	ldrh	r3, [r2, #0x1e]
	mov	r0, #0x80
	lsl	r0, #1
	add	r3, r0
	strh	r3, [r2, #0x1e]
	ldrh	r3, [r7, #0x1e]
	ldr	r0, =0xffffff00
	add	r3, r0
	strh	r3, [r7, #0x1e]
	mov	r0, r8
	ldr	r3, [r0, #8]
	add	r3, r1
	str	r3, [r0, #8]
	ldr	r3, [r6, #8]
	sub	r3, r1
	str	r3, [r6, #8]
	mov	r0, #1
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	__Func_30f8
	add	r5, #1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	cmp	r5, #0x13
	bls	.L1528
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #1
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r1, #6
	strh	r5, [r3, #0x1e]
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #0xf6
	mov	r2, #0x96
	bl	__Func_92128
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xdc
	bl	__Func_92158
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r5, =0x10f8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1696
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L16a4
.L1696:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r5, #2
	bl	__Func_92b94
.L16a4:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_93040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x10fb
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L17c0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x10fd
	bl	__Func_92b94
	b	.L1806

	.pool_aligned

.L17c0:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x10fe
	bl	__Func_92b94
.L1806:
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8e
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xfe
	mov	r1, #1
	mov	r2, #0xa2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xc8
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x91
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x1110000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r0, =0x10ff
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r5, =0x40c
	mov	r0, #0x17
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_2d48
	add	r5, r9
	mov	r3, #0
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0
	bl	OvlFunc_2d48
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #0xf3
	mov	r2, #0x90
	bl	__Func_92128
	mov	r1, #0xca
	mov	r2, #0x90
	mov	r0, #1
	bl	__Func_92128
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0xdc
	mov	r2, #0x96
	bl	__Func_9218c
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xf6
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1b4c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	b	.L1b6c

	.pool_aligned

.L1b4c:
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x1103
	bl	__Func_92b94
.L1b6c:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xdc
	mov	r2, #0x98
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xf
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0xf
	mov	r1, #0xab
	mov	r2, #0x98
	bl	__Func_92128
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0xd9
	mov	r2, #0xb6
	bl	__Func_9218c
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd9
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0xe7
	mov	r2, #0xaf
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	ldr	r0, =0x1104
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	ldr	r6, =0x40c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_2d48
	add	r6, r9
	mov	r3, #0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	mov	r8, r3
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r3, #1
	mov	r0, #1
	mov	r1, #1
	str	r3, [r6]
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_2d48
	mov	r0, r8
	str	r0, [r6]
	mov	r1, #0x80
	mov	r0, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
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
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x96
	bl	__Func_92128
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	bl	__Func_92128
	mov	r0, #1
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0x28
	mov	r0, #0
	bl	OvlFunc_2d48
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_293c
	bl	__Func_41d8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x82
	mov	r2, #0x71
	mov	r0, #0xf
	bl	__Func_92128
	mov	r0, #0xf
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, r8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_2ff0
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_92548
	mov	r5, #0
	b	.L1f78

	.pool_aligned

.L1f78:
	mov	r0, r10
	bl	OvlFunc_2d94
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L1f78
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_300c
	bl	__Func_41d8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r0, =OvlFunc_293c
	bl	__Func_4278
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r5, #0xf
.L1fc8:
	mov	r0, #0
	bl	OvlFunc_284c
	mov	r0, r5
	bl	__Func_30f8
	mov	r0, #1
	bl	OvlFunc_284c
	mov	r0, r5
	bl	__Func_30f8
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.L1fc8
	mov	r0, #0
	bl	OvlFunc_284c
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, r5
	ldr	r2, =0xe666
	mov	r1, r5
	bl	__Func_12330
	bl	__Func_12350
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	ldr	r0, =OvlFunc_300c
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92950
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xda
	mov	r2, #0xb5
	mov	r3, #1
	lsl	r0, #16
	mov	r1, r5
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa9
	mov	r2, #0x97
	mov	r0, #0xf
	bl	__Func_92128
	mov	r0, #0xf
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xe0
	mov	r2, #0x9e
	lsl	r2, #16
	mov	r3, #1
	mov	r1, r5
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0
	bl	OvlFunc_29a4
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2164
	mov	r0, #0x28
	bl	__Func_9163c
	b	.L2172

	.pool_aligned

.L2164:
	ldr	r0, =0x110c
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x28
	bl	__Func_9163c
.L2172:
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x90
	ldr	r2, [r0, #0xc]
	lsl	r3, #14
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L21f8
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	ldr	r6, [r7, #0x50]
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r6, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r5, r0
	strb	r3, [r6, #9]
	mov	r0, #0xde
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_924d4
	mov	r0, r7
	mov	r1, #3
	bl	__Func_8f140
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_924d4
.L21f8:
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_2d48
	ldr	r0, =0x6666
	mov	r6, #0x80
	mov	r5, #0
	mov	r8, r0
	lsl	r6, #9
.L220c:
	mov	r0, r10
	bl	OvlFunc_2d94
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r10
	bl	OvlFunc_2d94
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, r8
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, r10
	bl	OvlFunc_2d94
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r10
	bl	OvlFunc_2d94
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	str	r6, [r7, #0x18]
	str	r6, [r7, #0x1c]
	cmp	r5, #0x17
	bls	.L220c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #0
	bl	OvlFunc_2d48
	ldr	r0, =0x110d
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	cmp	r7, #0
	beq	.L2278
	mov	r0, r7
	bl	__Func_c0f4
.L2278:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_92adc
	mov	r6, #0xe8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	lsl	r6, #1
	bl	__Func_933d4
	mov	r1, r6
	mov	r0, #0xe8
	bl	OvlFunc_2c1c
	ldr	r5, =0x2c7
	mov	r0, #1
	bl	OvlFunc_29a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #0x90
	bl	OvlFunc_2c1c
	mov	r0, #2
	bl	OvlFunc_29a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_2c1c
	mov	r0, #3
	bl	OvlFunc_29a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	ldr	r2, =0x1590000
	ldr	r1, =0x2460000
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r0, #0xdb
	mov	r1, #0xab
	bl	OvlFunc_2c1c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r2, =0x40c
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2970
	bl	__Func_41d8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0x84
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xf5
	mov	r0, #0
	mov	r2, #0x91
	bl	__Func_92128
	mov	r1, #0xd7
	mov	r2, #0xa8
	mov	r0, #1
	bl	__Func_92128
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0xb8
	mov	r2, #0x57
	mov	r0, #0xf
	bl	__Func_92128
	mov	r0, #0xf
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_92548
	mov	r5, #0
.L2490:
	mov	r0, r10
	bl	OvlFunc_2d94
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L2490
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_300c
	bl	__Func_41d8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r0, =OvlFunc_2970
	bl	__Func_4278
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r5, #7
.L24e0:
	mov	r0, #0
	bl	OvlFunc_28dc
	mov	r0, r5
	bl	__Func_30f8
	mov	r0, #1
	bl	OvlFunc_28dc
	mov	r0, r5
	bl	__Func_30f8
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.L24e0
	mov	r0, #0
	bl	OvlFunc_28dc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_12330
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	ldr	r0, =OvlFunc_300c
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92950
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	b	.L2578

	.pool_aligned

.L2578:
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_293c
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0x7f
	mov	r2, #0x6e
	bl	__Func_92158
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_92548
	mov	r5, #0
.L25c8:
	mov	r0, r10
	bl	OvlFunc_2d94
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L25c8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_300c
	bl	__Func_41d8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =OvlFunc_293c
	bl	__Func_4278
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r5, #7
.L2618:
	mov	r0, #0
	bl	OvlFunc_284c
	mov	r0, r5
	bl	__Func_30f8
	mov	r0, #1
	bl	OvlFunc_284c
	mov	r0, r5
	bl	__Func_30f8
	mov	r3, #1
	sub	r5, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.L2618
	mov	r0, #0
	bl	OvlFunc_284c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r0, #0x3f
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2970
	bl	__Func_41d8
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	ldr	r5, =OvlFunc_300c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92950
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0xb8
	mov	r2, #0x57
	bl	__Func_92158
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92950
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xf
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r5, #0
.L275c:
	mov	r0, r10
	bl	OvlFunc_2d94
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L275c
	ldr	r5, =OvlFunc_300c
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x64
	bl	__Func_30f8
	mov	r1, #1
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, r5
	bl	__Func_4278
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	mov	r1, #1
	str	r3, [r2]
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	bl	OvlFunc_3000
	ldr	r0, =0x814
	bl	__Func_79358
	ldr	r0, =0x83f
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_91e9c
	mov	r0, #0x80
	lsl	r0, #1
	bl	__Func_79358
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1410

.thumb_func_start OvlFunc_2820
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_92054
	mov	r1, #0xe8
	mov	r2, #0xfa
	mov	r6, r0
	lsl	r1, #16
	mov	r0, r5
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #6]
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92b08
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2820

.thumb_func_start OvlFunc_284c
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L288a
	mov	r5, #1
	mov	r0, #8
	mov	r1, #0x2f
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r6, #2
	mov	r0, #7
	mov	r1, #0x30
	mov	r2, #0x3f
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #7
	mov	r1, #0x31
	mov	r2, #0x3f
	mov	r3, #9
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L28ce
.L288a:
	mov	r5, #1
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #9
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x3a
	mov	r1, #0x19
	mov	r2, #0x40
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L28ce:
	bl	__Func_fe9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_284c

.thumb_func_start OvlFunc_28dc
	push	{r5, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L290a
	mov	r5, #2
	mov	r0, #9
	mov	r1, #0x2d
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x2e
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L292e
.L290a:
	mov	r5, #2
	mov	r0, #0x59
	mov	r1, #2
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x66
	mov	r1, #0x20
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__Func_10424
.L292e:
	bl	__Func_fe9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_28dc

.thumb_func_start OvlFunc_293c
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L2966
	bl	__Func_4458
	mov	r1, #0x64
	bl	_Func_b50
	cmp	r0, #0x32
	bls	.L2960
	mov	r0, #1
	bl	OvlFunc_284c
	b	.L2966
.L2960:
	mov	r0, #0
	bl	OvlFunc_284c
.L2966:
	pop	{r0}
	bx	r0
.func_end OvlFunc_293c

.thumb_func_start OvlFunc_2970
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L299a
	bl	__Func_4458
	mov	r1, #0x64
	bl	_Func_b50
	cmp	r0, #0x32
	bls	.L2994
	mov	r0, #1
	bl	OvlFunc_28dc
	b	.L299a
.L2994:
	mov	r0, #0
	bl	OvlFunc_28dc
.L299a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2970

.thumb_func_start OvlFunc_29a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r6, #0
.L29b2:
	mov	r0, r6
	add	r0, #0x10
	add	r6, #1
	bl	__Func_92924
	cmp	r6, #0xf
	bls	.L29b2
	cmp	r7, #1
	beq	.L29d6
	cmp	r7, #1
	bcc	.L29d2
	cmp	r7, #2
	beq	.L29da
	cmp	r7, #3
	beq	.L29e4
	b	.L29ec
.L29d2:
	ldr	r0, =0x4039d2
	b	.L29dc
.L29d6:
	ldr	r0, =0x4049d2
	b	.L29dc
.L29da:
	ldr	r0, =0x404a4e
.L29dc:
	mov	r1, #1
	bl	__Func_91200
	b	.L29ec
.L29e4:
	ldr	r0, =0x403a52
	mov	r1, #1
	bl	__Func_91200
.L29ec:
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0xd6
	bl	__Func_f9080
	ldr	r0, =.L3684
	mov	r6, #0
	mov	r9, r6
	mov	r10, r0
.L2a00:
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #0
	ldr	r2, [r2, #4]
	cmp	r7, #1
	beq	.L2a26
	cmp	r7, #1
	bcc	.L2a1a
	cmp	r7, #2
	beq	.L2a30
	cmp	r7, #3
	beq	.L2a3a
	b	.L2a42
.L2a1a:
	mov	r3, #0xe8
	lsl	r3, #16
	add	r1, r3
	mov	r3, #0x90
	lsl	r3, #16
	b	.L2a42
.L2a26:
	mov	r4, #0xe8
	lsl	r4, #16
	mov	r3, #0xe8
	add	r1, r4
	b	.L2a40
.L2a30:
	ldr	r0, =0x2c70000
	mov	r3, #0x90
	add	r1, r0
	lsl	r3, #16
	b	.L2a42
.L2a3a:
	ldr	r3, =0x2c70000
	add	r1, r3
	mov	r3, #0xe8
.L2a40:
	lsl	r3, #17
.L2a42:
	ldr	r4, =.L3b40
	lsl	r5, r6, #2
	mov	r0, r9
	str	r0, [r4, r5]
	mov	r0, #0x8e
	lsl	r0, #1
	mov	r8, r4
	bl	__Func_c150
	ldr	r3, =.L3b10
	str	r0, [r3, r5]
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r1, [r0, #0x50]
	mov	r3, r1
	add	r3, #0x26
	strb	r2, [r3]
	mov	r4, #0xd
	ldrb	r2, [r1, #9]
	neg	r4, r4
	mov	r3, r4
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r1, #6
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	add	r6, #1
	mov	r0, #8
	add	r10, r0
	cmp	r6, #9
	bls	.L2a00
	cmp	r7, #0
	bne	.L2aaa
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
.L2aaa:
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2ba0
	bl	__Func_41d8
	mov	r0, #0xf6
	mov	r5, #1
	bl	__Func_f9080
	mov	r2, r8
	str	r5, [r2]
	mov	r0, #6
	bl	__Func_30f8
	mov	r3, r8
	str	r5, [r3, #4]
	mov	r0, #6
	bl	__Func_30f8
	mov	r4, r8
	str	r5, [r4, #8]
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, r8
	str	r5, [r0, #0xc]
	mov	r0, #6
	bl	__Func_30f8
	mov	r2, r8
	str	r5, [r2, #0x10]
	mov	r0, #6
	bl	__Func_30f8
	mov	r3, r8
	str	r5, [r3, #0x14]
	mov	r0, #6
	bl	__Func_30f8
	mov	r4, r8
	str	r5, [r4, #0x18]
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, r8
	str	r5, [r0, #0x1c]
	mov	r0, #6
	bl	__Func_30f8
	mov	r2, r8
	str	r5, [r2, #0x20]
	mov	r0, #6
	bl	__Func_30f8
	mov	r3, r8
	str	r5, [r3, #0x24]
	mov	r0, #6
	bl	__Func_30f8
	mov	r5, r8
.L2b28:
	ldr	r3, [r5]
	mov	r6, #0
	b	.L2b38
.L2b2e:
	add	r6, #1
	cmp	r6, #9
	bhi	.L2b40
	lsl	r3, r6, #2
	ldr	r3, [r5, r3]
.L2b38:
	cmp	r3, #0
	beq	.L2b2e
	mov	r6, #0xde
	lsl	r6, #2
.L2b40:
	mov	r4, #0xde
	lsl	r4, #2
	cmp	r6, r4
	bne	.L2b50
	mov	r0, #1
	bl	__Func_30f8
	b	.L2b28
.L2b50:
	mov	r0, #0x28
	bl	__Func_30f8
	ldr	r0, =OvlFunc_2ba0
	bl	__Func_4278
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_29a4

.thumb_func_start OvlFunc_2ba0
	push	{r5, r6, r7, lr}
	ldr	r2, =.L3b40
	ldr	r3, =.L3b10
	mov	r14, r2
	mov	r5, #0xa0
	ldr	r6, =0x4ccc
	mov	r4, #0
	lsl	r5, #13
	mov	r0, r14
	mov	r12, r3
	mov	r1, #0
.L2bb6:
	mov	r7, r14
	ldr	r3, [r1, r7]
	cmp	r3, #0
	beq	.L2bfe
	mov	r7, r12
	ldr	r2, [r7, r1]
	cmp	r3, #8
	bhi	.L2be4
	ldr	r3, [r2, #0x18]
	ldr	r7, =0xffffe334
	add	r3, r7
	str	r3, [r2, #0x18]
	mov	r7, #0x80
	ldr	r3, [r2, #0x1c]
	lsl	r7, #8
	add	r3, r7
	str	r3, [r2, #0x1c]
	ldr	r3, [r2, #0xc]
	add	r3, r6
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r6
	b	.L2bee
.L2be4:
	ldr	r3, [r2, #0xc]
	add	r3, r5
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r5
.L2bee:
	str	r3, [r2, #0x3c]
	ldr	r3, [r0, r1]
	add	r3, #1
	str	r3, [r0, r1]
	cmp	r3, #0xe
	bls	.L2bfe
	mov	r3, #0
	str	r3, [r0, r1]
.L2bfe:
	add	r4, #1
	add	r1, #4
	cmp	r4, #9
	bls	.L2bb6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ba0

.thumb_func_start OvlFunc_2c1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r6, r0
	bl	__Func_93554
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r1, #1
	mov	r2, r8
	mov	r5, r0
	mov	r3, #1
	mov	r0, r6
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r3, r8
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r0, #5
	str	r6, [r5, #8]
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #5
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_30f8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c1c

.thumb_func_start OvlFunc_2c9c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0xa
	str	r3, [sp]
	mov	r5, #0
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xe
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r6, #0x1c
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x2b
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x2b
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c9c

.thumb_func_start OvlFunc_2d48
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r2
	cmp	r0, #1
	bne	.L2d64
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r0, =0x203a52
	mov	r1, #1
	bl	__Func_91200
	b	.L2d74
.L2d64:
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
.L2d74:
	mov	r0, r6
	bl	__Func_91254
	cmp	r5, #0
	beq	.L2d84
	mov	r0, r5
	bl	__Func_9163c
.L2d84:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d48

.thumb_func_start OvlFunc_2d94
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L2dac
	mov	r1, #7
	bl	__Func_c598
	b	.L2db4
.L2dac:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c598
.L2db4:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L2dc6
	mov	r0, r5
	bl	OvlFunc_2eb0
.L2dc6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d94

.thumb_func_start OvlFunc_2dd0
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L2df2
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_c598
.L2df2:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L2e02
	mov	r0, r6
	bl	OvlFunc_2eb0
.L2e02:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2dd0

.thumb_func_start OvlFunc_2e0c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L2e2c
	mov	r0, r5
	bl	__Func_c0f4
	b	.L2e56
.L2e2c:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L2e56:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e0c

.thumb_func_start OvlFunc_2e5c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L2e7c
	mov	r0, r5
	bl	__Func_c0f4
	b	.L2ea8
.L2e7c:
	lsl	r0, #10
	bl	__Func_2322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L2ea8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e5c

.thumb_func_start OvlFunc_2eb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	mov	r6, r0
	ldr	r3, [r3]
	mov	r0, #0x92
	lsl	r0, #1
	sub	sp, #8
	mov	r11, r3
	bl	__Func_f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L2ed8:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L2f84
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L2f0c	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L2f84
	b	.L2f14

	.align	2, 0
.L2f0c:
	.word	0
	.pool

.L2f14:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_3f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L2f7c	@ 0
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L2f84

	.align	2, 0
.L2f7c:
	.word	0xfffffc00
	.pool

.L2f84:
	add	r7, #1
	cmp	r7, #1
	ble	.L2ed8
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_2e5c
	mov	r0, #0xf
	str	r3, [r2, #0x6c]
	bl	__Func_92054
	ldr	r3, [sp]
	ldr	r4, [r3, #0x50]
	ldr	r3, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r3, [r3, #9]
	ldrb	r1, [r4, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r2, r10
	ldr	r1, [r2, #4]
	ldr	r3, [r0, #0x50]
	ldr	r4, [r1, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r4, #9]
	and	r5, r2
	orr	r5, r3
	ldr	r3, =OvlFunc_2e0c
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r5, [r4, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2eb0

.thumb_func_start OvlFunc_2ff0
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_96fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ff0

.thumb_func_start OvlFunc_3000
	push	{lr}
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_3000

.thumb_func_start OvlFunc_300c
	push	{lr}
	mov	r0, #0xf
	bl	__Func_92054
	bl	OvlFunc_2dd0
	pop	{r0}
	bx	r0
.func_end OvlFunc_300c

.thumb_func_start OvlFunc_301c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xca
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #0x44
	bl	__Func_48f4
	str	r0, [sp, #0x40]
	str	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	mov	r2, #0xc8
	str	r0, [sp, #0x38]
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L304e
	b	.L32e2
.L304e:
	add	r1, #8
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x40]
	str	r0, [sp, #8]
	ldr	r0, =.L3a0c
	mov	r10, r1
	ldr	r1, =.L3a2a
	add	r3, #0x24
	add	r4, #0x25
	add	r0, #1
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r0, [sp, #4]
	str	r1, [sp]
.L306a:
	mov	r3, r10
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r5, [r2]
	str	r3, [sp, #0x34]
	mov	r4, r10
	ldr	r4, [r4, #0xc]
	str	r4, [sp, #0x30]
	mov	r0, r10
	ldr	r0, [r0, #0x10]
	str	r0, [sp, #0x2c]
	mov	r1, r10
	ldr	r1, [r1, #0x14]
	str	r1, [sp, #0x28]
	mov	r2, r10
	ldr	r2, [r2, #0x18]
	ldr	r4, [sp, #0x3c]
	str	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	ldr	r4, [r4, #4]
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x3c]
	str	r4, [sp, #0x1c]
	ldr	r0, [r0, #8]
	ldr	r2, [sp, #0x3c]
	str	r0, [sp, #0x18]
	ldr	r2, [r2, #0xc]
	mov	r11, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	ldrb	r3, [r3]
	str	r3, [sp, #0x20]
	add	r3, #0xff
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r11
	str	r3, [sp, #0x20]
	cmp	r3, #0
	beq	.L30ba
	b	.L326e
.L30ba:
	mov	r4, #3
	str	r4, [sp, #0x20]
	cmp	r1, #0
	bne	.L310e
	ldr	r0, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x38]
	add	r0, r2
	str	r0, [sp, #0x28]
	ldr	r3, =.L3a68
	lsl	r2, r4, #2
	ldr	r3, [r3, r2]
	cmp	r0, r3
	blt	.L30e0
	ldr	r3, =.L3a90
	ldr	r3, [r3, r2]
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.L3108
.L30e0:
	ldr	r0, [sp, #0x28]
	ldr	r3, =0x1999
	cmp	r0, r3
	bgt	.L3108
	ldr	r3, =.L3a90
	ldr	r4, =0x1999
	ldr	r3, [r3, r2]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x24]
	ldr	r2, [r5, #8]
	str	r2, [sp, #0x1c]
	ldr	r3, [r5, #0xc]
	str	r3, [sp, #0x18]
	ldr	r4, [r5, #0x10]
	mov	r0, #0x18
	str	r4, [sp, #0x14]
	str	r1, [r5, #8]
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	mov	r11, r0
.L3108:
	ldr	r0, [sp, #0x28]
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
.L310e:
	bl	__Func_4458
	ldr	r2, =.L3a0c
	ldr	r1, [sp, #8]
	ldrb	r3, [r1, r2]
	mul	r3, r0
	lsr	r6, r3, #16
	bl	__Func_4458
	ldr	r4, [sp, #4]
	ldrb	r3, [r4]
	mul	r3, r0
	lsr	r7, r3, #16
	bl	__Func_4458
	ldr	r1, [sp, #4]
	ldrb	r3, [r1, #1]
	mul	r3, r0
	lsr	r3, #16
	mov	r8, r3
	cmp	r6, #0
	beq	.L3148
	mov	r1, #0xfa
	lsl	r0, r6, #16
	lsl	r1, #2
	bl	_Func_b60
	mov	r6, r0
	b	.L314a
.L3148:
	mov	r6, #0
.L314a:
	cmp	r7, #0
	beq	.L315c
	mov	r1, #0xfa
	lsl	r0, r7, #16
	lsl	r1, #2
	bl	_Func_b60
	mov	r9, r0
	b	.L3160
.L315c:
	mov	r2, #0
	mov	r9, r2
.L3160:
	mov	r3, r8
	cmp	r3, #0
	beq	.L3172
	mov	r1, #0xfa
	lsl	r0, r3, #16
	lsl	r1, #2
	bl	_Func_b60
	b	.L3174
.L3172:
	mov	r0, #0
.L3174:
	ldr	r2, =.L3a48
	ldr	r4, [sp, #8]
	ldrsb	r3, [r2, r4]
	cmp	r3, #1
	bne	.L3186
	ldr	r1, [sp, #0x34]
	add	r1, r6
	str	r1, [sp, #0x34]
	b	.L3198
.L3186:
	ldr	r4, [sp, #0x34]
	mov	r1, #1
	sub	r4, r6
	neg	r1, r1
	str	r4, [sp, #0x34]
	cmp	r3, r1
	beq	.L3198
	mov	r3, #0
	str	r3, [sp, #0x34]
.L3198:
	ldr	r3, [sp, #8]
	add	r3, #1
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L31aa
	ldr	r4, [sp, #0x30]
	add	r4, r9
	str	r4, [sp, #0x30]
	b	.L31be
.L31aa:
	ldr	r1, [sp, #0x30]
	mov	r4, r9
	sub	r1, r4
	str	r1, [sp, #0x30]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L31be
	mov	r3, #0
	str	r3, [sp, #0x30]
.L31be:
	ldr	r3, [sp, #8]
	add	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L31d0
	ldr	r4, [sp, #0x2c]
	add	r4, r0
	str	r4, [sp, #0x2c]
	b	.L31e2
.L31d0:
	ldr	r1, [sp, #0x2c]
	mov	r2, #1
	sub	r1, r0
	neg	r2, r2
	str	r1, [sp, #0x2c]
	cmp	r3, r2
	beq	.L31e2
	mov	r3, #0
	str	r3, [sp, #0x2c]
.L31e2:
	ldr	r4, [sp]
	ldr	r1, [sp, #0x34]
	ldrb	r3, [r4]
	mov	r0, r3
	mul	r0, r1
	bl	__Func_2322
	ldr	r2, [sp]
	ldr	r4, [sp, #0x30]
	ldrb	r3, [r2, #1]
	lsl	r6, r0, #1
	mov	r0, r3
	mul	r0, r4
	bl	__Func_2322
	lsl	r7, r0, #1
	ldr	r0, [sp]
	ldr	r1, [sp, #0x2c]
	ldrb	r3, [r0, #2]
	mov	r0, r3
	mul	r0, r1
	bl	__Func_231c
	mov	r2, r11
	lsl	r0, #1
	cmp	r2, #0
	beq	.L3250
	ldr	r3, [sp, #0x1c]
	add	r3, r6
	str	r3, [sp, #0x1c]
	mov	r3, r11
	ldr	r4, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	add	r3, #0xff
	lsl	r3, #24
	add	r4, r7
	add	r1, r0
	lsr	r3, #24
	str	r4, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r11, r3
	cmp	r3, #0
	bne	.L326e
	ldr	r2, [sp, #0x1c]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r2, [r5, #0x38]
	cmp	r3, #0
	beq	.L3248
	str	r4, [r5, #0xc]
	str	r4, [r5, #0x3c]
.L3248:
	ldr	r4, [sp, #0x14]
	str	r4, [r5, #0x10]
	str	r4, [r5, #0x40]
	b	.L326e
.L3250:
	ldr	r3, [r5, #8]
	mov	r1, r9
	add	r3, r6
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	cmp	r1, #0
	beq	.L3266
	ldr	r3, [r5, #0xc]
	add	r3, r7
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
.L3266:
	ldr	r3, [r5, #0x10]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.L326e:
	ldr	r2, [sp, #0x34]
	mov	r3, r10
	str	r2, [r3, #8]
	ldr	r4, [sp, #0x30]
	str	r4, [r3, #0xc]
	ldr	r0, [sp, #0x2c]
	str	r0, [r3, #0x10]
	ldr	r1, [sp, #0x28]
	str	r1, [r3, #0x14]
	ldr	r2, [sp, #0x24]
	str	r2, [r3, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r3, r11
	strb	r3, [r4]
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x3c]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x18]
	mov	r3, r10
	str	r2, [r3]
	ldr	r4, [sp, #0x14]
	add	r0, sp, #0x20
	str	r4, [r1, #0xc]
	ldrb	r0, [r0]
	ldr	r1, [sp, #0x10]
	strb	r0, [r1]
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	add	r1, #3
	add	r2, #3
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	str	r1, [sp]
	str	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	add	r3, #3
	add	r4, #1
	add	r1, #0x28
	add	r2, #0x28
	str	r3, [sp, #4]
	str	r4, [sp, #0x38]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, [sp, #0x3c]
	mov	r0, #0x28
	add	r3, #0x28
	add	r10, r0
	ldr	r4, [sp, #0x40]
	mov	r0, #0xc8
	str	r3, [sp, #0x3c]
	lsl	r0, #1
	add	r3, r4, r0
	ldrh	r3, [r3]
	ldr	r1, [sp, #0x38]
	cmp	r1, r3
	beq	.L32e2
	b	.L306a
.L32e2:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_301c

.thumb_func_start OvlFunc_330c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r1, #0xca
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #4
	bl	__Func_48f4
	mov	r3, #0
	mov	r9, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r5, r9
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x85000065
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	cmp	r2, #0xa
	bls	.L3348
	mov	r3, #0xa
	mov	r8, r3
.L3348:
	mov	r2, #0
	mov	r3, r8
	mov	r10, r2
	cmp	r3, #0
	beq	.L339a
	mov	r11, r2
	mov	r7, #0
.L3356:
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r2, r11
	add	r3, #0x26
	str	r0, [r5]
	add	r0, #0x55
	strb	r2, [r3]
	strb	r2, [r0]
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c548
	ldr	r2, =.L3a68
	ldr	r3, [r7, r2]
	str	r3, [r5, #0x1c]
	ldr	r3, =.L3a90
	ldr	r3, [r3, r7]
	mov	r2, r5
	neg	r3, r3
	str	r3, [r5, #0x20]
	add	r2, #0x24
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r7, #4
	add	r5, #0x28
	add	r6, #1
	cmp	r10, r8
	bne	.L3356
.L339a:
	mov	r3, #0xc8
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_301c
	bl	__Func_41d8
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_330c

	.section .data

	.incbin "overlays/rom_791794/orig.bin", 0x362c, (0x3684-0x362c)
.L3684:
	.incbin "overlays/rom_791794/orig.bin", 0x3684, (0x36d4-0x3684)
.L36d4:
	.incbin "overlays/rom_791794/orig.bin", 0x36d4, (0x3704-0x36d4)
.L3704:
	.incbin "overlays/rom_791794/orig.bin", 0x3704, (0x3710-0x3704)
.L3710:
	.incbin "overlays/rom_791794/orig.bin", 0x3710, (0x3998-0x3710)
.L3998:
	.incbin "overlays/rom_791794/orig.bin", 0x3998, (0x3a00-0x3998)
.L3a00:
	.incbin "overlays/rom_791794/orig.bin", 0x3a00, (0x3a0c-0x3a00)
.L3a0c:
	.incbin "overlays/rom_791794/orig.bin", 0x3a0c, (0x3a2a-0x3a0c)
.L3a2a:
	.incbin "overlays/rom_791794/orig.bin", 0x3a2a, (0x3a48-0x3a2a)
.L3a48:
	.incbin "overlays/rom_791794/orig.bin", 0x3a48, (0x3a68-0x3a48)
.L3a68:
	.incbin "overlays/rom_791794/orig.bin", 0x3a68, (0x3a90-0x3a68)
.L3a90:
	.incbin "overlays/rom_791794/orig.bin", 0x3a90

	.section .bss

	.lcomm	.Lunused_3ab8, 4
	.lcomm	.Lunused_3abc, 4
	.lcomm	.L3ac0, 0x40
	.lcomm	.L3b00, 4
	.lcomm	.Lunused_3b04, 4
	.lcomm	.Lunused_3b08, 4
	.lcomm	.Lunused_3b0c, 4
	.lcomm	.L3b10, 0x28
	.lcomm	.Lunused_3b38, 4
	.lcomm	.Lunused_3b3c, 4
	.lcomm	.L3b40, 0x28
	.lcomm	.L3b68, 4
	.lcomm	.L3b6c, 4
	.lcomm	.L3b70, 4
