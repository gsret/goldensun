	.include "macros.inc"

.thumb_func_start OvlFunc_b8c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, #0
	b	.Lbda
.Lb94:
	ldr	r3, =0x8ccc
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0xffff0000
	str	r3, [r5, #0x28]
	bl	__Func_4458
	ldr	r3, =0xcccc
	mov	r2, r5
	add	r0, r3
	add	r2, #0x59
	mov	r3, #1
	str	r0, [r5, #0x30]
	strb	r3, [r2]
	bl	__Func_4458
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r5
	bl	OvlFunc_b54
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #8
	strh	r3, [r2]
	mov	r0, r5
	ldr	r1, =.L1884
	bl	__Func_c2d8
	add	r7, #1
.Lbda:
	cmp	r7, #3
	bgt	.Lbf0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xf0
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb94
.Lbf0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b8c

.thumb_func_start OvlFunc_c08
	push	{r5, r6, lr}
	mov	r5, #0xa
	mov	r6, #5
.Lc0e:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, =0x1999
	str	r3, [r0, #0x44]
	mov	r3, #0
	str	r3, [r0, #0x48]
	mov	r3, #0xff
	lsl	r3, #16
	sub	r6, #1
	str	r3, [r0, #0xc]
	add	r5, #1
	cmp	r6, #0
	bge	.Lc0e
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_aa0
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c08

.thumb_func_start OvlFunc_c50
	push	{r5, r6, lr}
	mov	r6, #0xb
	mov	r5, #0
.Lc56:
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, =0x1999
	str	r3, [r0, #0x44]
	mov	r3, #0
	str	r3, [r0, #0x48]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, r5
	add	r0, #0xb
	mov	r1, #1
	add	r5, #1
	bl	__Func_92b08
	add	r6, #1
	cmp	r5, #3
	ble	.Lc56
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_9c0
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c50

.thumb_func_start OvlFunc_ca0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r6, =ewram_240
	ldr	r3, =0x60
	ldrsh	r2, [r6, r2]
	sub	sp, #8
	cmp	r2, r3
	bne	.Ld56
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xa
	beq	.Ld50
	cmp	r3, #0xa
	bgt	.Lcd8
	cmp	r3, #8
	bgt	.Ld56
	cmp	r3, #5
	blt	.Ld56
	b	.Lcdc
.Lcd8:
	cmp	r3, #0xd
	bne	.Ld56
.Lcdc:
	ldr	r0, =0x9a8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcfc
	mov	r3, #0x15
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.Ld42
.Lcfc:
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0x1b
	mov	r0, #0x6c
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x19
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
.Ld42:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r6, =ewram_240
	b	.Ld56
.Ld50:
	ldr	r0, =0x9a8
	bl	__Func_79374
.Ld56:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x61
	cmp	r2, r3
	beq	.Ld68
	b	.Lf3e
.Ld68:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld80
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.Ld80:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xd
	bls	.Ld92
	b	.Lf08
.Ld92:
	lsl	r3, r2, #2
	ldr	r2, =.Ld9c
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ld9c:
	.word	.Ldd4
	.word	.Ldd4
	.word	.Ldd4
	.word	.Ldd4
	.word	.Lf08
	.word	.Lf08
	.word	.Lf08
	.word	.Le1c
	.word	.Le1c
	.word	.Lee0
	.word	.Lee0
	.word	.Lf08
	.word	.Lf08
	.word	.Le1c
.Ldd4:
	ldr	r0, =0x9a8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldf4
	mov	r3, #5
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x51
	mov	r2, #0xb
	mov	r3, #7
	bl	__Func_105d4
	b	.Lf08
.Ldf4:
	mov	r3, #6
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	b	.Lf08
.Le1c:
	bl	OvlFunc_c08
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le38
	mov	r0, #0x10
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_50c
.Le38:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le4e
	mov	r0, #0x11
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_554
.Le4e:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le64
	mov	r0, #0x12
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_5a0
.Le64:
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le7a
	mov	r0, #0x13
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_5ec
.Le7a:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le92
	mov	r0, #0x14
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_640
.Le92:
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lea8
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_690
.Lea8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_6e4
	lsl	r1, #4
	bl	__Func_41d8
	b	.Lf08

	.pool_aligned

.Lee0:
	ldr	r0, =0x9a9
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lefc
	bl	OvlFunc_398
	mov	r1, #0xf8
	mov	r2, #0xdb
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
.Lefc:
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.Lf08:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #2
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x59
	strb	r3, [r0]
	ldr	r6, =ewram_240
.Lf3e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L1026
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf68
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
.Lf68:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x80
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #0xe1
	lsl	r2, #1
	orr	r5, r3
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	strb	r5, [r0]
	cmp	r3, #6
	bgt	.L1026
	cmp	r3, #5
	blt	.L1026
	bl	OvlFunc_c50
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, #2
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	ldr	r0, =0x9aa
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1026
	bl	OvlFunc_410
	mov	r1, #0x84
	mov	r2, #0xcc
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
.L1026:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r6, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0x60
	add	r3, r6, r1
	mov	r0, #0
	strh	r2, [r3]
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ca0

	.section .data

.L1884:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1884, (0x1888-0x1884)
