	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L4194
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L41dc
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L41f4
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{r5, r6, r7, lr}
	ldr	r7, =.L441c
	ldr	r3, [r7]
	sub	sp, #8
	cmp	r3, #6
	beq	.Lae
	cmp	r3, #6
	bhi	.L62
	cmp	r3, #0
	beq	.Lde
	b	.L122
.L62:
	cmp	r3, #0x3c
	beq	.L6c
	cmp	r3, #0x42
	bne	.L122
	b	.Lae
.L6c:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x19
	mov	r2, #6
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r0, #0x10
	mov	r1, #0xb
	bl	__Func_924d4
	b	.L122
.Lae:
	mov	r3, #0x32
	str	r3, [sp]
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r0, #0x10
	mov	r1, #0xa
	bl	__Func_924d4
	b	.L122
.Lde:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1d
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x5c
	mov	r1, #0x1d
	str	r5, [sp, #4]
	bl	__Func_10788
	mov	r0, #0x10
	mov	r1, #0xc
	bl	__Func_924d4
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r3, #1
	mov	r1, #0x18
	mov	r2, #6
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0x78
	str	r3, [r7]
.L122:
	ldr	r3, [r7]
	sub	r3, #1
	str	r3, [r7]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_134
	push	{r5, lr}
	ldr	r3, =.L441c
	ldr	r5, =OvlFunc_4c
	mov	r2, #0
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_4278
	bl	_call_via_r5
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_134

.thumb_func_start OvlFunc_158
	push	{lr}
	ldr	r3, =.L441c
	mov	r2, #0x42
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_4c
	bl	__Func_41d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_158

.thumb_func_start OvlFunc_178
	push	{r5, r6, lr}
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r2, =.L441c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0x16
	beq	.L19e
	mov	r6, r2
.L18c:
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x77
	bgt	.L19e
	ldr	r3, [r6]
	cmp	r3, #0x16
	bne	.L18c
.L19e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_178

.thumb_func_start OvlFunc_1a8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #3
	mov	r0, #0x1b
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_11f54
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.L202
	cmp	r0, #0
	bne	.L202
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
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L202:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, #0xc4
	asr	r1, #20
	lsl	r0, #2
	bl	__Func_793c8
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a8

.thumb_func_start OvlFunc_238
	push	{lr}
	bl	OvlFunc_38f8
	bl	OvlFunc_1a8
	pop	{r0}
	bx	r0
.func_end OvlFunc_238

.thumb_func_start OvlFunc_248
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2f
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2f
	bl	__Func_10704
	ldr	r0, =0x303
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_248

.thumb_func_start OvlFunc_270
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__Func_79358
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x96
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r0, r5
	mov	r1, #3
	bl	__Func_c300
	bl	__Func_93530
	mov	r2, #0
	mov	r10, r2
	mov	r3, r5
	mov	r2, r10
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r6, =0xcccc
	ldr	r3, =0x6666
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	mov	r8, r3
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	mov	r0, r5
	lsl	r2, #12
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	mov	r2, r10
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r3, #0x29
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_270

.thumb_func_start OvlFunc_33c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3e0
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3ea
.L3e0:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	b	.L3f2
.L3ea:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
.L3f2:
	mov	r0, #0xe2
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r1, #2
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_33c

.thumb_func_start OvlFunc_42c
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r6, #0x30
	asr	r0, r3, #20
	neg	r6, r6
	cmp	r0, #8
	bgt	.L44c
	mov	r6, #0x30
.L44c:
	str	r0, [sp, #4]
	mov	r3, #1
	mov	r5, #0x40
	mov	r0, #0x43
	mov	r1, #8
	mov	r2, #3
	str	r5, [sp]
	bl	__Func_10704
	mov	r2, r6
	mov	r1, #0
	mov	r0, #0x11
	bl	OvlFunc_33c
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	str	r0, [sp, #4]
	mov	r1, #0x18
	mov	r0, #0x40
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_42c

.thumb_func_start OvlFunc_490
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_92054
	ldr	r1, =iwram_1ae8
	ldr	r3, [r0, #8]
	asr	r7, r3, #20
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L4b6
	mov	r5, #1
	neg	r5, r5
.L4b6:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L4c2
	mov	r5, #1
.L4c2:
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r7, #0x3f
	bne	.L4d8
	cmp	r6, #0xb
	beq	.L52e
	mov	r6, #0xa0
	b	.L4f8
.L4d8:
	cmp	r7, #0x43
	bne	.L4ec
	cmp	r6, #0xb
	bne	.L4e8
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.L52e
.L4e8:
	mov	r6, #0x60
	b	.L4f8
.L4ec:
	cmp	r6, #0xb
	bne	.L4f4
	mov	r6, #0x60
	b	.L4f6
.L4f4:
	mov	r6, #0xa0
.L4f6:
	neg	r6, r6
.L4f8:
	mov	r3, #3
	mov	r5, #9
	mov	r0, #0x48
	mov	r1, #9
	mov	r2, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, r6
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_33c
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r1, #0x19
	asr	r7, r3, #20
	mov	r0, #0x3f
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L52e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_490

.thumb_func_start OvlFunc_540
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r3]
	mov	r0, r5
	sub	sp, #0xc
	bl	__Func_92054
	str	r0, [sp, #8]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r7, r0
	ldr	r0, =0x302
	bl	__Func_79358
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, r5
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	ldr	r3, =0x3333
	mov	r0, #0xef
	str	r3, [r7, #0x34]
	mov	r8, r3
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
	ldr	r1, [r7, #8]
	ldr	r2, =0xffd00000
	ldr	r3, [r7, #0x10]
	add	r1, r2
	mov	r0, r7
	mov	r2, #0
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_48f4
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	mov	r1, r7
	bl	__Func_c4bc
	mov	r0, r5
	ldr	r1, =0x4ccc
	mov	r2, r8
	bl	__Func_92064
	ldr	r2, [sp, #8]
	ldr	r3, =0xffe80000
	ldr	r1, [r2, #8]
	mov	r0, r2
	add	r1, r3
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_923c4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r7
	bl	__Func_ca6c
	mov	r1, #1
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_9163c
	bl	__Func_91750
	mov	r5, #7
	mov	r0, #0x25
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	mov	r6, #0x22
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x301
	bl	__Func_79338
	mov	r10, r0
	cmp	r0, #0
	beq	.L6ea
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8a
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0x64
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0xf
	bl	__Func_9163c
	bl	__Func_91750
	b	.L7f8
.L6ea:
	ldr	r0, =0x301
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x96
	mov	r1, #1
	mov	r2, #0xc8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xd
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r2, =0xcccc
	ldr	r3, =0x6666
	str	r2, [r7, #0x30]
	mov	r9, r2
	mov	r2, #0x80
	str	r3, [r7, #0x34]
	ldr	r1, [r7, #8]
	lsl	r2, #12
	mov	r8, r3
	ldr	r3, [r7, #0x10]
	bl	__Func_d14c
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x64
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r9
	mov	r3, r8
	str	r2, [r7, #0x30]
	mov	r2, #0x80
	ldr	r1, [r7, #8]
	lsl	r2, #14
	str	r3, [r7, #0x34]
	ldr	r3, [r7, #0x10]
	bl	__Func_d14c
	mov	r0, r7
	bl	__Func_ca6c
	mov	r0, #0xf
	bl	__Func_9163c
	bl	__Func_91750
	mov	r3, #0x29
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L7f8:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_540

.thumb_func_start OvlFunc_830
	push	{lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_830

.thumb_func_start OvlFunc_840
	push	{r5, r6, lr}
	bl	OvlFunc_2f90
	bl	__Func_916b0
	mov	r1, #0x7f
	mov	r0, #0x78
	bl	OvlFunc_30ac
	mov	r6, r0
	bl	OvlFunc_2fa0
	mov	r5, #9
.L85a:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_920e8
	cmp	r5, #0
	bge	.L85a
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa5
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
	mov	r1, #0xa1
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
	mov	r1, #0xa2
	mov	r0, #0
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_9218c
	mov	r1, #0xa4
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
	mov	r1, #0
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_91eb0
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x8f
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
.func_end OvlFunc_840

.thumb_func_start OvlFunc_954
	push	{lr}
	bl	OvlFunc_3a60
	cmp	r0, #0
	bne	.L964
	bl	__Func_93c00
	b	.L968
.L964:
	bl	OvlFunc_238
.L968:
	pop	{r0}
	bx	r0
.func_end OvlFunc_954

.thumb_func_start OvlFunc_96c
	ldr	r0, =.L4420
	bx	lr
.func_end OvlFunc_96c

.thumb_func_start OvlFunc_974
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x18
	bl	__Func_92924
	mov	r0, #0x19
	bl	__Func_92924
	mov	r0, #1
	bl	__Func_7808c
	bl	__Func_916b0
	mov	r1, #0xa5
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa1
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_9280c
	cmp	r5, #0
	bge	.L9d8
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x23
	bl	__Func_924d4
	b	.L9e8
.L9d8:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_924d4
.L9e8:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xa3
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #19
	bl	__Func_933f8
	mov	r0, r5
	bl	OvlFunc_2844
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974

.thumb_func_start OvlFunc_a10
	push	{lr}
	bl	__Func_92054
	cmp	r0, #0
	beq	.La38
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x10]
	asr	r3, #19
	sub	r3, #0x5e
	asr	r2, #19
	cmp	r3, #1
	bhi	.La38
	cmp	r2, #0x17
	ble	.La38
	cmp	r2, #0x1a
	bgt	.La38
	mov	r2, r0
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
.La38:
	pop	{r0}
	bx	r0
.func_end OvlFunc_a10

.thumb_func_start OvlFunc_a3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	mov	r0, #0xa2
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__Func_79358
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_11f54
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.Laa0
	cmp	r0, #0
	bne	.Laa0
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
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Laa0:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Lab0
	mov	r6, #0x19
.Lab0:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r2
	lsl	r3, r6, #20
	mov	r5, r0
	add	r3, r9
	mov	r1, #0
	str	r3, [r5, #8]
	mov	r8, r1
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r7, #2
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r10, r3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_4c
	bl	__Func_41d8
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb40
	mov	r0, r5
	mov	r1, #4
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, r5
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #3
	sub	r3, #0x36
	strb	r2, [r3]
	mov	r3, #0x2f
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Lb40:
	mov	r0, #0x11
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #0x10]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #0x40
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x40
	bl	__Func_10704
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbd6
	mov	r6, #0x22
	mov	r5, #7
	mov	r0, #0x25
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x26
	str	r3, [sp, #4]
	mov	r0, #0x64
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_105d4
.Lbd6:
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc1a
	mov	r3, #0x29
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	ldr	r3, =0x6666
	str	r3, [r5, #0x34]
	ldr	r3, =0xcccc
	mov	r2, r9
	str	r3, [r5, #0x30]
	str	r2, [r5, #0xc]
	mov	r0, r5
	mov	r1, #3
	bl	__Func_c300
	b	.Lc22
.Lc1a:
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
.Lc22:
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r1, #0x78
	mov	r0, #0x18
	bl	OvlFunc_2ea0
	mov	r1, #0x7f
	mov	r0, #0x19
	bl	OvlFunc_2ea0
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.Lc52
	b	.Ld74
.Lc52:
	ldr	r2, =.Lc5c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lc5c:
	.word	.Lc70
	.word	.Ld10
	.word	.Ld42
	.word	.Ld58
	.word	.Ld66
.Lc70:
	mov	r2, #0xc0
	lsl	r2, #16
	str	r2, [sp]
	mov	r2, #0x18
	str	r2, [sp, #4]
	mov	r3, #0xa3
	mov	r2, #0x19
	str	r2, [sp, #8]
	lsl	r3, #19
	mov	r1, #8
	mov	r2, #4
	mov	r0, #0
	bl	OvlFunc_3764
	mov	r3, #0x13
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_10788
	mov	r0, #0x13
	bl	__Func_92924
	mov	r0, #0x14
	bl	__Func_92924
	mov	r0, #0x15
	bl	__Func_92924
	mov	r0, #0x16
	bl	__Func_92924
	mov	r0, #0x17
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcf0
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_1910
	bl	OvlFunc_1898
	mov	r0, #1
	bl	OvlFunc_a10
	mov	r0, #2
	bl	OvlFunc_a10
	mov	r0, #3
	bl	OvlFunc_a10
	mov	r0, #1
	bl	OvlFunc_2738
.Lcf0:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_920c0
	ldr	r0, =0xe4
	bl	OvlFunc_384c
	b	.Ld74
.Ld10:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_19e0
	bl	__Func_41d8
	mov	r0, #0x18
	bl	__Func_92924
	mov	r0, #0x19
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld74
	bl	OvlFunc_1898
	mov	r0, #1
	bl	OvlFunc_1910
	mov	r0, #0
	bl	OvlFunc_2738
	b	.Ld74
.Ld42:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld74
	mov	r0, #0x13
	bl	OvlFunc_db8
	bl	OvlFunc_1d20
	b	.Ld74
.Ld58:
	mov	r0, #1
	bl	OvlFunc_974
	mov	r0, #4
	bl	__Func_91e9c
	b	.Ld74
.Ld66:
	mov	r0, #1
	neg	r0, r0
	bl	OvlFunc_974
	mov	r0, #5
	bl	__Func_91e9c
.Ld74:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_a3c

.thumb_func_start OvlFunc_db8
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
	mov	r0, #0
	add	r2, r5, r3
	mov	r1, r6
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
	mov	r0, #3
	add	r2, r5, r3
	mov	r1, r6
	bl	__Func_923e4
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x20cb
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, r7
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r0, r7
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_93054
	cmp	r0, #0
	beq	.Lf28
	b	.L1088
.Lf28:
	ldr	r0, =0x20d5
	bl	__Func_92b94
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r7
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, r7
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xc2
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_93530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x9b
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #7
	bl	__Func_9280c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r2, #0
	mov	r0, r7
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_93054
	cmp	r0, #0
	beq	.L1072
	b	.Lf28
.L1072:
	mov	r1, #2
	mov	r0, r7
	bl	__Func_925cc
	ldr	r0, =0x20d4
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L1088:
	ldr	r0, =0x20e1
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_9163c
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
	beq	.L1148
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1148:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1168
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1168:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1188
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1188:
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
	mov	r1, #0xc0
	mov	r0, r7
	lsl	r1, #8
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
.func_end OvlFunc_db8

.thumb_func_start OvlFunc_1214
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L122e
	bl	OvlFunc_1b5c
	b	.L13d0
.L122e:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_1d64
	mov	r7, r0
	cmp	r7, #0
	beq	.L1242
	b	.L13b0
.L1242:
	ldr	r0, =0x208c
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_2910
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r5, #0x94
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #1
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_92adc
	bl	OvlFunc_38f8
	mov	r0, #0
	bl	OvlFunc_2bac
	bl	OvlFunc_38f8
	mov	r0, #0
	bl	OvlFunc_2bac
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x98
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc8
	bl	__Func_921c4
	mov	r2, #0xf
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92adc
	bl	OvlFunc_38f8
	mov	r0, #0
	bl	OvlFunc_2bac
	bl	OvlFunc_38f8
	mov	r0, #0
	bl	OvlFunc_2bac
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2aec
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r1, #0x9c
	mov	r2, #0xa8
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_1e20
	b	.L13c2
.L13b0:
	cmp	r7, #1
	bne	.L13c2
	ldr	r0, =0x208b
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L13c2:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_1e7c
	bl	__Func_91750
.L13d0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1214

.thumb_func_start OvlFunc_13e4
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
	bne	.L1404
	bl	OvlFunc_1b5c
	b	.L15be
.L1404:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_1d64
	mov	r10, r0
	cmp	r0, #0
	beq	.L1418
	b	.L159c
.L1418:
	ldr	r0, =0x2090
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_2d28
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa0
	bl	OvlFunc_2d8c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_2de8
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r6, =0xcccc
	ldr	r3, =0x6666
	mov	r2, #0x80
	mov	r8, r3
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #12
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0xc0
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #13
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0
	ldr	r1, [r5, #8]
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_2d28
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_2d8c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0x40
	mov	r0, #0x38
	bl	OvlFunc_2d8c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	bl	OvlFunc_2de8
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_1e20
	b	.L15b0
.L159c:
	mov	r2, r10
	cmp	r2, #1
	bne	.L15b0
	ldr	r0, =0x208f
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L15b0:
	mov	r1, r7
	mov	r2, #2
	mov	r0, r10
	bl	OvlFunc_1e7c
	bl	__Func_91750
.L15be:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13e4

.thumb_func_start OvlFunc_15e0
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.L15fa
	bl	OvlFunc_1b5c
	b	.L16d6
.L15fa:
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_1d64
	mov	r6, r0
	cmp	r6, #0
	bne	.L16b6
	ldr	r0, =0x2095
	bl	__Func_92b94
	bl	OvlFunc_134
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	bl	OvlFunc_158
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xb8
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_2910
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	bl	OvlFunc_178
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xcc
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2aec
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_1e20
	b	.L16c8
.L16b6:
	cmp	r6, #1
	bne	.L16c8
	ldr	r0, =0x2094
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L16c8:
	mov	r1, r5
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_1e7c
	bl	__Func_91750
.L16d6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15e0

.thumb_func_start OvlFunc_16ec
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L1706
	bl	OvlFunc_1b5c
	b	.L1884
.L1706:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_1d64
	mov	r7, r0
	cmp	r7, #0
	beq	.L171a
	b	.L1864
.L171a:
	ldr	r0, =0x2099
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x48
	mov	r0, #0x78
	bl	OvlFunc_2d28
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	bl	OvlFunc_2de8
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_2910
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r5, #0xfa
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	lsl	r5, #2
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xc0
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r1, r5
	mov	r2, #0xb0
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r1, #0xfe
	lsl	r1, #2
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_2e50
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_33c
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x95
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2aec
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r1, #0xfe
	mov	r2, #0xa8
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_1e20
	b	.L1876
.L1864:
	cmp	r7, #1
	bne	.L1876
	ldr	r0, =0x2098
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L1876:
	mov	r1, r6
	mov	r2, #4
	mov	r0, r7
	bl	OvlFunc_1e7c
	bl	__Func_91750
.L1884:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16ec

.thumb_func_start OvlFunc_1898
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
.func_end OvlFunc_1898

.thumb_func_start OvlFunc_1910
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
	ldr	r2, .L1984	@ 0
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
	bgt	.L1990
	mov	r3, #0
	cmp	r0, #0
	blt	.L1990
	mov	r3, r0
	b	.L1990

	.align	2, 0
.L1984:
	.word	0
	.pool

.L1990:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L19a4
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L19a4
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L19a4:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L19c2
	mov	r3, #0
	cmp	r0, #0
	blt	.L19c2
	mov	r3, r0
.L19c2:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L19d6
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L19d6
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L19d6:
	bl	__Func_91858
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1910

.thumb_func_start OvlFunc_19e0
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L1a16
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.L1a16
	ldr	r0, =0x141
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a16
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L1a16:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e0

.thumb_func_start OvlFunc_1a28
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
.L1a5a:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1ab6
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L1ab6
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.L1ab6
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L1a88
	ldr	r3, =0xffff
	add	r2, r3
.L1a88:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L1a98
	ldr	r2, =0xffff
	add	r0, r2
.L1a98:
	asr	r0, #16
	cmp	r0, #0
	bgt	.L1ab6
	mov	r2, r1
	cmp	r2, #0
	bge	.L1aa6
	neg	r2, r2
.L1aa6:
	cmp	r0, #0
	bge	.L1aac
	neg	r0, r0
.L1aac:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.L1ab6
	mov	r10, r5
	mov	r8, r0
.L1ab6:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L1a5a
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
	ble	.L1b26
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L1b3a
.L1b26:
	mov	r0, r7
	bl	OvlFunc_1910
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.L1b3a:
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a28

.thumb_func_start OvlFunc_1b5c
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
	bne	.L1c40
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
	ble	.L1c2c
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L1c50
.L1c2c:
	mov	r0, r6
	bl	OvlFunc_1910
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, r10
	str	r3, [r7]
	b	.L1c50
.L1c40:
	mov	r0, r8
	add	r0, #2
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L1c50:
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b5c

.thumb_func_start OvlFunc_1c7c
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
	bgt	.L1cfe
	ldr	r0, =0x20e5
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_93054
	cmp	r0, #0
	bne	.L1d0c
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
	b	.L1d0c
.L1cfe:
	ldr	r0, =0x20e8
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L1d0c:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c7c

.thumb_func_start OvlFunc_1d20
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
.func_end OvlFunc_1d20

.thumb_func_start OvlFunc_1d64
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
	bne	.L1d8c
	ldr	r0, =0x2076
	b	.L1d98
.L1d8c:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L1d96
	ldr	r0, =0x2078
	b	.L1d98
.L1d96:
	ldr	r0, =0x207a
.L1d98:
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1dcc
	mov	r3, #0x82
	lsl	r3, #2
	add	r5, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1de0
	mov	r0, #0
	bl	__Func_2106c
	cmp	r0, #1
	bne	.L1dd0
.L1dcc:
	mov	r0, #2
	b	.L1dfc
.L1dd0:
	cmp	r0, #2
	beq	.L1ddc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.L1dfc
.L1ddc:
	mov	r0, #3
	b	.L1dfc
.L1de0:
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
.L1dfc:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1d64

.thumb_func_start OvlFunc_1e20
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
	bne	.L1e42
	ldr	r0, =0x2076
	b	.L1e4e
.L1e42:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L1e4c
	ldr	r0, =0x2078
	b	.L1e4e
.L1e4c:
	ldr	r0, =0x207a
.L1e4e:
	add	r0, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e20

.thumb_func_start OvlFunc_1e7c
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
	beq	.L1f8e
	bl	__Func_795fc
	mov	r7, r0
	cmp	r7, #0
	ble	.L1ece
	ldr	r3, =ewram_240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.L1ec0:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.L1ec0
.L1ece:
	cmp	r7, #1
	bgt	.L1ed6
	ldr	r0, =0x2083
	b	.L1f90
.L1ed6:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1eea
	ldr	r0, =0x2084
	b	.L1f90
.L1eea:
	cmp	r6, #2
	bne	.L1ef8
	mov	r0, #6
	mov	r5, #0
	bl	__Func_30f8
	b	.L1f10
.L1ef8:
	ldr	r0, =0x207d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	mov	r5, r0
.L1f10:
	cmp	r5, #0
	bne	.L1f8e
	cmp	r5, r7
	bge	.L1f2e
	add	r6, sp, #4
	mov	r5, r7
.L1f1c:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L1f1c
.L1f2e:
	cmp	r7, #0
	ble	.L1f4c
	add	r6, sp, #4
	mov	r5, r7
.L1f36:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.L1f46
	bl	__Func_7961c
.L1f46:
	sub	r5, #1
	cmp	r5, #0
	bne	.L1f36
.L1f4c:
	bl	__Func_a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.L1f6c
	add	r6, sp, #4
	mov	r5, r7
.L1f5a:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L1f5a
.L1f6c:
	cmp	r7, #0
	ble	.L1f86
	add	r6, sp, #4
	mov	r5, r7
.L1f74:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_7961c
	cmp	r5, #0
	bne	.L1f74
.L1f86:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L1f9e
.L1f8e:
	ldr	r0, =0x207e
.L1f90:
	bl	__Func_92b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_92f84
	b	.L20be
.L1f9e:
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
	beq	.L1ff2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__Func_923e4
.L1ff2:
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
.L20be:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e7c

.thumb_func_start OvlFunc_20e8
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
.L2104:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L2114
	mov	r0, r7
	mov	r1, r6
	bl	__Func_78708
.L2114:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L2104
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20e8

.thumb_func_start OvlFunc_2124
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xe5
	lsl	r0, #5
	bl	__Func_4970
	ldr	r7, =.L457c
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r0
	cmp	r3, r2
	bne	.L214a
	bl	__Func_4080
	strh	r0, [r7]
.L214a:
	ldr	r3, =.L3e44
	ldrb	r3, [r3, r5]
	mov	r8, r3
	cmp	r5, #8
	bne	.L2156
	mov	r5, #4
.L2156:
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
.L2188:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L2188
	mov	r0, r6
	bl	__Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2124

.thumb_func_start OvlFunc_21b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.L47c0
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.L457c
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.L21e0:
	ldr	r1, =.L479c
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.L22b6
	ldr	r5, =.L47a0
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.L227c
	cmp	r3, r2
	bgt	.L2218
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L22a4
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.L2264
	b	.L21e0
.L2218:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.L2236
	cmp	r3, r2
	bgt	.L222e
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.L224c
	b	.L21e0
.L222e:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.L229a
	b	.L21e0
.L2236:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.L4770
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L47f8
	strh	r3, [r1]
	ldr	r3, =.L476c
	b	.L2292
.L224c:
	ldr	r2, =.L47f8
	ldr	r1, =.L47f0
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L476c
	strh	r3, [r1]
	ldr	r3, =.L477c
	b	.L2292
.L2264:
	ldr	r2, =.L4778
	ldr	r1, =.L4768
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L4754
	strh	r3, [r1]
	ldr	r3, =.L47fc
	b	.L2292
.L227c:
	ldr	r2, =.L4794
	ldr	r1, =.L4798
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L47a8
	strh	r3, [r1]
	ldr	r3, =.L4784
.L2292:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.L21e0
.L229a:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.L21e0
.L22a4:
	ldr	r0, =OvlFunc_21b8
	bl	__Func_4278
	ldr	r3, =.L457c
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f3c
	b	.L266c
.L22b6:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.L4754
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.L22d0
	ldr	r3, =.L4778
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.L2302
.L22d0:
	ldr	r3, =.L4768
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L47fc
	ldr	r3, =.L4778
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
	blt	.L2302
	ldr	r3, .L2318	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L2302:
	ldr	r1, =.L47a8
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.L236c
	ldr	r3, =.L4794
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.L239e

	.align	2, 0
.L2318:
	.word	0
	.pool

.L236c:
	ldr	r3, =.L4798
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.L4794
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L4784
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
	blt	.L239e
	ldr	r3, .L23b4	@ 0
	mov	r5, r9
	strh	r3, [r5]
.L239e:
	ldr	r0, =.L476c
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.L23cc
	ldr	r3, =.L47f8
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.L23fc

	.align	2, 0
.L23b4:
	.word	0
	.pool

.L23cc:
	ldr	r2, =.L477c
	ldr	r3, =.L47f0
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.L47f8
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
	blt	.L23fc
	ldr	r3, .L2430	@ 0
	mov	r1, r9
	strh	r3, [r1]
.L23fc:
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
	ldr	r2, =.L4770
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.L244c

	.align	2, 0
.L2430:
	.word	0
	.pool

.L244c:
	cmp	r3, #0
	bge	.L2452
	add	r3, #0xff
.L2452:
	asr	r6, r3, #8
	ldr	r3, =.L4790
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.L2460
	b	.L25b8
.L2460:
	cmp	r3, #2
	bgt	.L246a
	cmp	r3, #1
	beq	.L2474
	b	.L260a
.L246a:
	cmp	r3, #3
	beq	.L24ea
	cmp	r3, #4
	beq	.L2566
	b	.L260a
.L2474:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.L247e:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L248e
	add	r3, #0xff
.L248e:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L24de
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
.L24de:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.L247e
	b	.L260a
.L24ea:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.L24f4:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L2504
	add	r3, #0xff
.L2504:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L255a
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
	ldr	r3, =.L4764
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
.L255a:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.L24f4
	b	.L260a
.L2566:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.L260a
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
	ldr	r3, =.L4764
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
	b	.L260a
.L25b8:
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
	bcs	.L260a
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
	ldr	r3, =.L4764
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
.L260a:
	ldr	r0, =ewram_2090
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.L2638
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
.L2638:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.L266a
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
.L266a:
	strh	r4, [r1]
.L266c:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21b8

.thumb_func_start OvlFunc_26a8
	push	{r5, r6, lr}
	ldr	r3, =.L4790
	mov	r5, r0
	mov	r6, r1
	ldr	r2, =.L4764
	strh	r5, [r3]
	mov	r1, #0xc8
	lsl	r3, r6, #4
	lsl	r1, #4
	strh	r3, [r2]
	ldr	r0, =OvlFunc_21b8
	bl	__Func_41d8
	ldr	r1, =.L457e
	cmp	r5, #2
	bne	.L26ca
	ldr	r1, =.L3e4e
.L26ca:
	cmp	r5, #4
	bne	.L26d0
	ldr	r1, =.L45aa
.L26d0:
	cmp	r5, #3
	bne	.L26fa
	cmp	r6, #0
	beq	.L26f8
	ldr	r1, =.L3e76
	b	.L26fa

	.pool_aligned

.L26f8:
	ldr	r1, =.L4628
.L26fa:
	ldr	r2, .L2714	@ 0
	ldr	r3, =.L479c
	strh	r2, [r3]
	ldr	r3, =.L47a0
	str	r1, [r3]
	ldr	r3, =.L47f8
	strh	r2, [r3]
	ldr	r3, =.L476c
	strh	r2, [r3]
	ldr	r2, =.L4770
	mov	r3, #0
	str	r3, [r2]
	b	.L2730

	.align	2, 0
.L2714:
	.word	0
	.pool

.L2730:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26a8

.thumb_func_start OvlFunc_2738
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	bne	.L2772
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x59
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_2124
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_26a8
	mov	r0, #0x78
	bl	__Func_9163c
	bl	__Func_91750
	b	.L2830
.L2772:
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r2, r5, #4
	ldr	r3, =.L457e
	sub	r2, r5
	lsl	r2, #2
	strh	r2, [r3, #0x1e]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, r5
	bl	OvlFunc_2124
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_26a8
	mov	r0, #0x78
	bl	__Func_9163c
	b	.L27b8
.L27b2:
	mov	r0, #1
	bl	__Func_30f8
.L27b8:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L27b2
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #5
	bl	OvlFunc_2124
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_26a8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	OvlFunc_26a8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #6
	bl	OvlFunc_2124
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_26a8
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #7
	bl	OvlFunc_2124
	mov	r1, #0
	mov	r0, #4
	bl	OvlFunc_26a8
	mov	r0, #0xed
	bl	__Func_f9080
	bl	__Func_8acc4
	bl	__Func_91750
	ldr	r0, =0x123
	bl	__Func_79358
.L2830:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2738

.thumb_func_start OvlFunc_2844
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r3, r5, #4
	ldr	r2, =.L4628
	sub	r3, r5
	lsl	r6, r3, #2
	strh	r6, [r2, #0x1a]
	ldr	r1, =.L3e76
	mov	r2, r5
	cmp	r5, #0
	bge	.L286a
	neg	r2, r5
.L286a:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	strh	r3, [r1, #0x1a]
	cmp	r5, #0
	bge	.L28a0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x56
	bl	__Func_f9080
	mov	r0, #8
	bl	OvlFunc_2124
	mov	r1, #1
	mov	r0, #3
	bl	OvlFunc_26a8
	lsl	r0, r5, #4
	sub	r0, r5, r0
	lsl	r0, #2
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	b	.L28c6
.L28a0:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_2124
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_26a8
	mov	r0, r6
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
.L28c6:
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	b	.L28d6
.L28d0:
	mov	r0, #1
	bl	__Func_30f8
.L28d6:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L28d0
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
.func_end OvlFunc_2844

.thumb_func_start OvlFunc_2910
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
	ldr	r2, =.L4804
	str	r3, [r2]
	ldr	r3, [r7, #0x10]
	ldr	r2, =.L475c
	str	r3, [r2]
	ldr	r0, [r7, #0x50]
	ldrh	r3, [r7, #6]
	ldr	r2, =.L4788
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
	bgt	.L29cc
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
.L29cc:
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
.L29f4:
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
	bgt	.L2a36
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
.L2a36:
	strh	r0, [r6]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_30f8
	add	r5, #2
	ldr	r4, [sp]
	cmp	r5, #0xf
	ble	.L29f4
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L2a74
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
.L2a74:
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
.func_end OvlFunc_2910

.thumb_func_start OvlFunc_2aec
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
	bne	.L2b20
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_924d4
	b	.L2b3a

	.pool_aligned

.L2b20:
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
.L2b3a:
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, =.L4804
	ldr	r3, [r3]
	str	r3, [r5, #8]
	ldr	r3, =.L475c
	ldr	r3, [r3]
	str	r3, [r5, #0x10]
	ldr	r3, =.L4788
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
	ldr	r1, .L2b94	@ 0
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
	b	.L2ba4

	.align	2, 0
.L2b94:
	.word	0
	.pool

.L2ba4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2aec

.thumb_func_start OvlFunc_2bac
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
.func_end OvlFunc_2bac

.thumb_func_start OvlFunc_2bcc
	push	{r5, lr}
	ldr	r5, =.L46a6
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.L2be2
	bl	__Func_209b0
	strh	r0, [r5]
.L2be2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bcc

.thumb_func_start OvlFunc_2bec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L46a6
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =.L478c
	lsr	r3, #5
	ldr	r0, =.L47b0
	mov	r10, r3
	mov	r3, #0
	ldrsh	r7, [r2, r3]
	mov	r11, r0
	mov	r9, r2
	cmp	r7, #0
	beq	.L2c80
	ldr	r3, =.L4750
	ldrh	r5, [r3]
	add	r5, #1
	strh	r5, [r3]
	ldr	r0, =.L47f4
	ldr	r1, =.L47a4
	ldr	r3, =.L4760
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
	ldr	r2, =.L4780
	add	r6, r0
	mov	r1, r8
	strh	r6, [r1]
	mov	r8, r2
	ldr	r3, =.L4800
	ldr	r2, =.L47bc
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
	blt	.L2c7a
	ldr	r3, .L2cac	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L2c7a:
	ldr	r2, =.L4774
	ldr	r3, .L2cac	@ 0
	strh	r3, [r2]
.L2c80:
	ldr	r2, =.L4774
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0xd
	bgt	.L2d0c
	ldr	r3, =.L47f4
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L4780
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, r11
	mov	r3, #0
	stmia	r0!, {r3}
	sub	r1, #8
	ldr	r3, =.L4758
	lsl	r1, #16
	b	.L2ce4

	.align	2, 0
.L2cac:
	.word	0
	.pool

.L2ce4:
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
	b	.L2d14
.L2d0c:
	cmp	r3, #0x13
	ble	.L2d14
	ldr	r3, =0
	strh	r3, [r2]
.L2d14:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bec

.thumb_func_start OvlFunc_2d28
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r8, r1
	mov	r5, r2
	bl	OvlFunc_2bcc
	ldr	r3, =.L47f4
	strh	r6, [r3]
	ldr	r3, =.L4780
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, .L2d60	@ 3
	ldr	r2, =.L4758
	and	r5, r3
	strh	r5, [r2]
	ldr	r3, =.L4774
	ldr	r2, .L2d64	@ 0
	strh	r2, [r3]
	ldr	r3, =.L478c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2bec
	bl	__Func_41d8
	b	.L2d80

	.align	2, 0
.L2d60:
	.word	3
.L2d64:
	.word	0
	.pool

.L2d80:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d28

.thumb_func_start OvlFunc_2d8c
	push	{lr}
	ldr	r3, =.L4760
	strh	r0, [r3]
	ldr	r3, =.L4800
	strh	r1, [r3]
	ldr	r3, =.L47f4
	ldr	r1, =.L47a4
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L4780
	ldr	r1, =.L47bc
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L478c
	strh	r2, [r3]
	ldr	r2, =.L4750
	ldr	r3, .L2dc0	@ 0
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2bec
	bl	__Func_41d8
	pop	{r0}
	bx	r0

	.align	2, 0
.L2dc0:
	.word	0
.func_end OvlFunc_2d8c

.thumb_func_start OvlFunc_2de8
	push	{r5, lr}
	ldr	r0, =OvlFunc_2bec
	bl	__Func_4278
	ldr	r5, =.L46a6
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_3f3c
	ldr	r3, .L2e04	@ 0xffffffff
	strh	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L2e04:
	.word	0xffffffff
.func_end OvlFunc_2de8

.thumb_func_start OvlFunc_2e10
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L2e4a
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
.L2e4a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e10

.thumb_func_start OvlFunc_2e50
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L2e98
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
.L2e98:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e50

.thumb_func_start OvlFunc_2ea0
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
	beq	.L2f54
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L2f54
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
	ldr	r3, .L2f44	@ 0x3ff
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
	b	.L2f54

	.align	2, 0
.L2f44:
	.word	0x3ff
	.pool

.L2f54:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ea0

.thumb_func_start OvlFunc_2f64
	push	{r5, lr}
	add	r0, #8
	mov	r3, #0
	ldr	r5, =.L3fd0
	strb	r3, [r0]
	mov	r2, #7
	sub	r0, #1
	mov	r4, #0xf
.L2f74:
	mov	r3, r1
	and	r3, r4
	ldrb	r3, [r5, r3]
	sub	r2, #1
	strb	r3, [r0]
	lsr	r1, #4
	sub	r0, #1
	cmp	r2, #0
	bge	.L2f74
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f64

.thumb_func_start OvlFunc_2f90
	bx	lr
.func_end OvlFunc_2f90

.thumb_func_start OvlFunc_2f94
	ldr	r2, =ewram_1000
	mov	r3, #9
	strh	r3, [r2]
	bx	lr
.func_end OvlFunc_2f94

.thumb_func_start OvlFunc_2fa0
	push	{r5, lr}
	ldr	r5, =ewram_1000
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	beq	.L2fba
.L2fac:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	bne	.L2fac
.L2fba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2fa0

.thumb_func_start OvlFunc_2fc4
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	sub	sp, #0xc
	cmp	r3, r2
	bhi	.L2fde
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L2fde:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L3048
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
	beq	.L3048
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	ldr	r1, =.L3fe4
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
.L3048:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2fc4

.thumb_func_start OvlFunc_3058
	pushal	{r5, r6, lr}
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
	ldr	r1, =.L4008
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
.func_end OvlFunc_3058

.thumb_func_start OvlFunc_30ac
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
	blt	.L30ea
	ldr	r3, =0xfff40000
	add	r1, r2, r3
.L30ea:
	cmp	r7, #0
	beq	.L3100
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r4, r3, r0
	mov	r3, r5
	add	r3, #0xe4
	b	.L310e
.L3100:
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r5
	add	r3, #0xe2
.L310e:
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
	ldr	r1, =.L46fc
	bl	__Func_c2d8
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L3150
.L3142:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L3142
.L3150:
	cmp	r7, #0
	bne	.L3166
	mov	r1, r10
	mov	r0, #0
	bl	OvlFunc_20e8
	mov	r0, r10
	mov	r1, #2
	bl	__Func_19908
	b	.L3176
.L3166:
	mov	r1, r8
	mov	r0, #0
	bl	OvlFunc_20e8
	mov	r0, r8
	mov	r1, #2
	bl	__Func_19908
.L3176:
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
.func_end OvlFunc_30ac

.thumb_func_start OvlFunc_31c0
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
	bne	.L31e0
	b	.L3394
.L31e0:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #1
	beq	.L31ec
	b	.L3330
.L31ec:
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
	bne	.L3288
	cmp	r4, #0
	bne	.L3288
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
	blt	.L322e
	ldr	r3, =0xfff40000
	add	r7, r2, r3
.L322e:
	ldr	r0, =0x211
	bl	__Func_79338
	cmp	r0, #0
	beq	.L324a
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r1, #0x80
	lsl	r1, #13
	add	r4, r3, r1
	mov	r3, r6
	add	r3, #0xe4
	b	.L3258
.L324a:
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r6
	add	r3, #0xe2
.L3258:
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
	ldr	r1, =.L46a8
	mov	r0, r5
	bl	__Func_c2d8
	b	.L3394
.L3288:
	mov	r2, r8
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r7, #16
	lsl	r4, #16
	cmp	r3, #0
	beq	.L32a0
	mov	r3, r6
	add	r3, #0xe8
	ldr	r3, [r3]
	lsl	r3, #1
	sub	r7, r3, r7
.L32a0:
	ldr	r2, [r5, #8]
	cmp	r2, r7
	bne	.L32ae
	ldr	r3, [r5, #0x10]
	cmp	r3, r4
	beq	.L32ea
	b	.L32b0
.L32ae:
	ldr	r3, [r5, #0x10]
.L32b0:
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
	ble	.L32d2
	mov	r0, r2
.L32d2:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L32da
	mov	r0, r2
.L32da:
	add	r3, r0
	mov	r2, #0
	strh	r3, [r5, #6]
	mov	r3, r8
	str	r7, [r5, #8]
	str	r4, [r5, #0x10]
	strh	r2, [r3, #8]
	b	.L32f4
.L32ea:
	mov	r1, r8
	ldrh	r3, [r1, #8]
	mov	r2, r8
	add	r3, #1
	strh	r3, [r2, #8]
.L32f4:
	mov	r2, r8
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #2
	ble	.L3308
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	b	.L3394
.L3308:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	b	.L3394

	.pool_aligned

.L3330:
	cmp	r3, #2
	bne	.L3394
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
	bne	.L3394
	add	r3, r1, #1
	lsl	r3, #16
	ldr	r1, .L338c	@ 0
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
	b	.L3394

	.align	2, 0
.L338c:
	.word	0
	.pool

.L3394:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31c0

.thumb_func_start OvlFunc_33a0
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
	beq	.L33ee
	mov	r6, r8
	add	r6, #0xda
	mov	r3, #2
	strh	r3, [r6]
	b	.L345c
.L33ee:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L340e
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	ble	.L345c
	sub	r3, r2, #1
	strh	r3, [r6]
	b	.L345c
.L340e:
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #1
	bgt	.L345c
	add	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L345c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L3ef4
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_4970
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L3f14
	bl	__Func_5340
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	lsl	r1, #2
	mov	r2, r5
	bl	__Func_3fa4
	mov	r0, r5
	bl	__Func_2df0
.L345c:
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	cmp	r2, #0
	bne	.L3472
	ldr	r3, [sp, #0xc]
	add	r3, #0xd8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f78
	b	.L3732
.L3472:
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
	bcs	.L350c
	ldr	r3, [sp, #8]
	mov	r1, #0x80
	add	r3, #2
	orr	r3, r5
	lsl	r1, #23
	ldr	r5, [sp, #0xc]
	mov	r9, r1
	mov	r10, r3
.L34da:
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
	bcc	.L34da
.L350c:
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
	bcs	.L35ce
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
.L3592:
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
	bcc	.L3592
.L35ce:
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
	bhi	.L3622
	b	.L3732
.L3622:
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
	beq	.L36b0
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
.L36b0:
	ldr	r3, [sp, #0x10]
	add	r3, #0xde
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L3732
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
.L3732:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_33a0

.thumb_func_start OvlFunc_3764
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
	bne	.L37e4
	ldr	r2, [sp]
	lsl	r3, r2, #1
	ldr	r2, [r6, #8]
	sub	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L37e4:
	ldr	r2, .L3824	@ 0
	mov	r3, r7
	add	r3, #0xda
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r11
	ldr	r0, =.L3f14
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
	ldr	r0, =OvlFunc_33a0
	bl	__Func_41d8
	mov	r0, r11
	bl	__Func_2df0
	add	sp, #4
	b	.L383c

	.align	2, 0
.L3824:
	.word	0
	.pool

.L383c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3764

.thumb_func_start OvlFunc_384c
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
	bne	.L387c
	mov	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	strh	r0, [r5, #8]
	strh	r3, [r5, #4]
	strh	r0, [r5, #6]
.L387c:
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_31c0
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_384c

.thumb_func_start OvlFunc_38a0
	ldr	r3, =iwram_1f3c
	ldr	r3, [r3]
	add	r3, #0xdc
	strh	r0, [r3]
	bx	lr
.func_end OvlFunc_38a0

.thumb_func_start OvlFunc_38b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L38c2:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L38e4
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L38e4
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L38ec
.L38e4:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L38c2
	mov	r0, #0
.L38ec:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_38b0

.thumb_func_start OvlFunc_38f8
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
	ldr	r2, =.L4154
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
	bl	OvlFunc_38b0
	mov	r6, r0
	cmp	r6, #0
	beq	.L3a3e
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
	bl	OvlFunc_38b0
	cmp	r0, #0
	beq	.L3984
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L3a3e
.L3984:
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
	bl	OvlFunc_38b0
	cmp	r0, #0
	beq	.L39b0
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L3a3e
.L39b0:
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
	bgt	.L3a3e
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
.L3a3e:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_38f8

.thumb_func_start OvlFunc_3a60
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
	bl	OvlFunc_38b0
	cmp	r0, #0
	bne	.L3aea
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
	bl	OvlFunc_38b0
.L3aea:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3a60

	.section .data

.L3e44:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e44, (0x3e4e-0x3e44)
.L3e4e:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e4e, (0x3e76-0x3e4e)
.L3e76:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e76, (0x3ef4-0x3e76)
.L3ef4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3ef4, (0x3f14-0x3ef4)
.L3f14:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3f14, (0x3fd0-0x3f14)
.L3fd0:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fd0, (0x3fe4-0x3fd0)
.L3fe4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fe4, (0x4008-0x3fe4)
.L4008:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4008, (0x4154-0x4008)
.L4154:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4154, (0x4194-0x4154)
.L4194:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4194, (0x41dc-0x4194)
.L41dc:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41dc, (0x41f4-0x41dc)
.L41f4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41f4, (0x441c-0x41f4)
.L441c:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x441c, (0x4420-0x441c)
.L4420:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4420, (0x457c-0x4420)
.L457c:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457c, (0x457e-0x457c)
.L457e:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457e, (0x45aa-0x457e)
.L45aa:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x45aa, (0x4628-0x45aa)
.L4628:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4628, (0x46a6-0x4628)
.L46a6:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a6, (0x46a8-0x46a6)
.L46a8:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a8, (0x46fc-0x46a8)
.L46fc:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46fc

	.section .bss

	.lcomm	.L4750, 4
	.lcomm	.L4754, 4
	.lcomm	.L4758, 4
	.lcomm	.L475c, 4
	.lcomm	.L4760, 4
	.lcomm	.L4764, 4
	.lcomm	.L4768, 4
	.lcomm	.L476c, 4
	.lcomm	.L4770, 4
	.lcomm	.L4774, 4
	.lcomm	.L4778, 4
	.lcomm	.L477c, 4
	.lcomm	.L4780, 4
	.lcomm	.L4784, 4
	.lcomm	.L4788, 4
	.lcomm	.L478c, 4
	.lcomm	.L4790, 4
	.lcomm	.L4794, 4
	.lcomm	.L4798, 4
	.lcomm	.L479c, 4
	.lcomm	.L47a0, 4
	.lcomm	.L47a4, 4
	.lcomm	.L47a8, 4
	.lcomm	.Lunused_47ac, 4
	.lcomm	.L47b0, 0xc
	.lcomm	.L47bc, 4
	.lcomm	.L47c0, 0x30
	.lcomm	.L47f0, 4
	.lcomm	.L47f4, 4
	.lcomm	.L47f8, 4
	.lcomm	.L47fc, 4
	.lcomm	.L4800, 4
	.lcomm	.L4804, 4
