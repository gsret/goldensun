	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1170
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L11d0
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L11e0
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L1240
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{r5, lr}
	ldr	r5, =.L12c0
	ldr	r0, [r5]
	sub	sp, #8
	bl	OvlFunc_c2c
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	bl	__Func_10704
	mov	r1, #0xff
	ldr	r0, [r5]
	bl	OvlFunc_b3c
	bl	OvlFunc_150
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_54

.thumb_func_start OvlFunc_8c
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_8c

.thumb_func_start OvlFunc_98
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	lsl	r1, #7
	ldr	r4, [sp, #0x30]
	mov	r10, r2
	add	r1, r0
	ldr	r2, =ewram_10000
	lsl	r1, #2
	add	r3, r4, r3
	add	r5, r1, r2
	cmp	r4, r3
	bge	.L126
	str	r3, [sp, #4]
	mov	r6, r10
	mov	r3, #0x80
	sub	r3, r6
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	lsl	r3, #4
	mov	r9, r3
.Lce:
	ldr	r0, [sp, #0x2c]
	mov	r1, r10
	add	r2, r0, r1
	cmp	r0, r2
	bge	.L11c
	ldr	r3, =0xfff
	mov	r7, #0xf
	mov	r8, r3
	mov	r3, r4
	and	r3, r7
	add	r3, r9
	lsl	r3, #5
	ldr	r6, =0x6002800
	str	r3, [sp]
	mov	r14, r6
	mov	r12, r2
.Lee:
	ldr	r6, [sp]
	ldmia	r5!, {r1}
	mov	r3, r0
	mov	r2, r8
	and	r3, r7
	and	r1, r2
	add	r3, r6, r3
	ldr	r6, =ewram_20000
	lsl	r1, #3
	add	r2, r1, r6
	ldr	r2, [r2]
	lsl	r3, #2
	mov	r6, r14
	str	r2, [r3, r6]
	ldr	r6, =ewram_20004
	add	r2, r1, r6
	ldr	r1, =0x6002840
	ldr	r2, [r2]
	add	r3, r1
	add	r0, #1
	str	r2, [r3]
	cmp	r0, r12
	blt	.Lee
.L11c:
	ldr	r2, [sp, #4]
	add	r4, #1
	add	r5, r11
	cmp	r4, r2
	blt	.Lce
.L126:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_98

.thumb_func_start OvlFunc_150
	push	{lr}
	ldr	r3, =.L12c4
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #1
	bne	.L174
	mov	r2, #9
	mov	r3, #4
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	str	r3, [sp]
	bl	__Func_10704
	b	.L188
.L174:
	mov	r3, #6
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
.L188:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_150

.thumb_func_start OvlFunc_194
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L12c0
	ldr	r6, [r3]
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #8
	cmp	r3, #0
	beq	.L1d6
	mov	r3, #0x4f
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #2
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, #0xf
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x28
	mov	r2, #2
	mov	r3, #4
	bl	__Func_105d4
	b	.L1ea
.L1d6:
	mov	r3, #0x4f
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #5
	bl	__Func_105d4
.L1ea:
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	cmp	r5, #0
	beq	.L22c
	mov	r5, #0
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x40
	str	r3, [sp]
	mov	r0, #0x20
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L25e
.L22c:
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x40
	str	r3, [sp]
	mov	r0, #0x20
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L25e:
	mov	r2, #1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	neg	r2, r2
	cmp	r3, r2
	beq	.L2fa
	mov	r7, #0
	mov	r8, r2
.L26e:
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r5, [r6, #8]
	cmp	r3, #1
	bne	.L2d8
	mov	r1, #4
	mov	r0, r5
	bl	__Func_c300
	mov	r2, r5
	mov	r3, #3
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r7, [r3]
	mov	r3, #0xd0
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	beq	.L2bc
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r1, #4
	ldrsh	r2, [r6, r1]
	add	r3, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #4
	bl	__Func_105d4
	b	.L2f0
.L2bc:
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r1, #4
	ldrsh	r2, [r6, r1]
	add	r3, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x28
	mov	r2, #4
	mov	r3, #1
	bl	__Func_105d4
	b	.L2f0
.L2d8:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	str	r7, [r5, #0xc]
.L2f0:
	add	r6, #0xc
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, r8
	bne	.L26e
.L2fa:
	mov	r3, #0xa
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r3, #1
	mov	r0, #0x46
	mov	r2, #1
	bl	__Func_105d4
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L338
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r3, #0x20
	mov	r2, #0x20
	bl	__Func_10704
	ldr	r3, =.L12c0
	mov	r1, #0xfe
	ldr	r0, [r3]
	bl	OvlFunc_b3c
	b	.L354
.L338:
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x40
	mov	r3, #0x20
	mov	r2, #0x20
	bl	__Func_10704
	ldr	r3, =.L12c0
	mov	r1, #0xff
	ldr	r0, [r3]
	bl	OvlFunc_b3c
.L354:
	bl	OvlFunc_150
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_194

.thumb_func_start OvlFunc_36c
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_1ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L37e
	cmp	r3, #0x34
	bhi	.L392
.L37e:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L20dc
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L392
	ldr	r5, =.L20d0
.L392:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_36c

.thumb_func_start OvlFunc_3c0
	ldr	r3, =iwram_1ad4
	ldr	r2, =.L20d0
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, =.L20d0
	ldrh	r3, [r2, #2]
	add	r3, #0xb0
	strh	r3, [r2, #2]
	ldrh	r3, [r2, #6]
	add	r3, #0xb0
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #0xa]
	add	r3, #0xb0
	strh	r3, [r2, #0xa]
	bx	lr
.func_end OvlFunc_3c0

.thumb_func_start OvlFunc_3f0
	push	{r5, r6, lr}
	sub	sp, #0xc
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xe0
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0xe8
	bl	__Func_f9080
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L436
	b	.L556
.L436:
	mov	r1, #0x80
	mov	r2, #0xe7
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r6, #0x19
	mov	r5, #0x53
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r5, #0x4f
	mov	r1, #0x22
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x43
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x45
	mov	r1, #0x22
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #0x22
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x47
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x49
	mov	r1, #0x22
	mov	r2, #2
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x1d
	mov	r1, #0x26
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r1, #0x26
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #0x26
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #8
	bl	__Func_30f8
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0xf
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x28
	mov	r2, #2
	mov	r3, #4
	bl	__Func_105d4
	b	.L626
.L556:
	mov	r1, #0x80
	mov	r2, #0xf0
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r6, #0x19
	mov	r5, #0x53
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x4c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r3, #0xf
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x2d
	mov	r2, #2
	mov	r3, #4
	bl	__Func_105d4
	mov	r5, #0x4f
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x47
	mov	r1, #0x32
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r1, #2
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0xe6
	bl	__Func_f9080
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x45
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x43
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x41
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x1e
	bl	__Func_30f8
.L626:
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L672
	str	r3, [sp]
	mov	r6, #9
	mov	r5, #0x1e
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x29
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	b	.L6b2
.L672:
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #9
	mov	r5, #0x1e
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x29
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
.L6b2:
	ldr	r5, =.L20dc
	mov	r6, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r6, [r5]
	ldr	r0, =OvlFunc_3c0
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =OvlFunc_36c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	mov	r0, #0xe7
	bl	__Func_f9080
	str	r6, [r5]
.L6da:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x64
	ble	.L6da
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L754
	str	r3, [sp]
	mov	r6, #9
	mov	r5, #0x13
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x29
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	b	.L794

	.pool_aligned

.L754:
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #9
	mov	r5, #0x13
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x29
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_98
.L794:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =OvlFunc_3c0
	bl	__Func_4278
	ldr	r3, =.L12c8
	ldr	r1, [r3]
	ldr	r2, .L7cc	@ 1
	ldrh	r3, [r1]
	eor	r3, r2
	strh	r3, [r1]
	bl	OvlFunc_194
	bl	__Func_fe9c
	bl	__Func_91750
	add	sp, #0xc
	b	.L7d8

	.align	2, 0
.L7cc:
	.word	1
	.pool

.L7d8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f0

.thumb_func_start OvlFunc_7e0
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r1, #0x80
	ldr	r2, =0x3333
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xb0
	mov	r1, #0x48
	mov	r0, #8
	bl	__Func_92128
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #8
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r3, #6
	str	r3, [sp]
	mov	r5, #9
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r3, =.L12c4
	ldr	r2, [r3]
	ldr	r3, .L8a0	@ 1
	strh	r3, [r2]
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L8a0:
	.word	1
.func_end OvlFunc_7e0

.thumb_func_start OvlFunc_8b0
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r1, #0x80
	ldr	r2, =0x3333
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xb0
	mov	r1, #0x68
	mov	r0, #8
	bl	__Func_92128
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r5, #9
	mov	r3, #4
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r3, =.L12c4
	ldr	r2, [r3]
	ldr	r3, .L970	@ 0
	strh	r3, [r2]
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L970:
	.word	0
.func_end OvlFunc_8b0

.thumb_func_start OvlFunc_980
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =.L12c8
	ldr	r1, =.L12c4
	ldr	r2, =ewram_1000
	mov	r8, r3
	ldr	r7, =.L12c0
	str	r2, [r1]
	add	r3, r2, #2
	mov	r10, r1
	add	r2, #4
	mov	r1, r8
	sub	sp, #8
	str	r3, [r1]
	str	r2, [r7]
	mov	r6, #0
	mov	r5, #0x40
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0x40
	mov	r3, #0x20
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x20
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x20
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0x20
	str	r6, [sp]
	str	r3, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L9fa
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L111c
	ldr	r1, [r7]
	ldr	r2, =0x84000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r10
	ldr	r3, [r2]
	strh	r6, [r3]
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, .La30	@ 1
	strh	r3, [r2]
.L9fa:
	ldr	r0, [r7]
	bl	OvlFunc_a90
	mov	r1, #0xff
	ldr	r0, =.L111c
	bl	OvlFunc_b3c
	bl	OvlFunc_194
	mov	r1, #0
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #8
	strh	r3, [r0, #0x20]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r0, #0x18]
	b	.La54

	.align	2, 0
.La30:
	.word	1
	.pool

.La54:
	str	r3, [r0, #0x1c]
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.La76
	mov	r0, #4
	bl	OvlFunc_e64
.La76:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_980

.thumb_func_start OvlFunc_a90
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	ldrh	r0, [r6]
	cmp	r3, r2
	beq	.Lb32
	mov	r8, r2
.Laa8:
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.Lac8
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r2, #14
	lsl	r3, #20
	add	r1, r3, r2
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	b	.Lade
.Lac8:
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, #20
	add	r1, r3, r2
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #14
.Lade:
	add	r3, r2
	lsl	r0, #16
	asr	r0, #16
	mov	r2, #0
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb32
	mov	r1, #1
	str	r5, [r6, #8]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x20
	strh	r3, [r5, #0x20]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	bl	__Func_11f54
	ldr	r3, [r5, #0xc]
	lsl	r0, #16
	add	r3, r0
	add	r6, #0xc
	str	r3, [r5, #0xc]
	ldrh	r3, [r6]
	str	r0, [r5, #0x14]
	mov	r0, r3
	lsl	r3, r0, #16
	asr	r3, #16
	cmp	r3, r8
	bne	.Laa8
.Lb32:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a90

.thumb_func_start OvlFunc_b3c
	push	{r5, r6, r7, lr}
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r1
	cmp	r3, r2
	beq	.Lb82
	ldr	r7, =ewram_10000
	mov	r12, r2
.Lb50:
	mov	r3, #2
	ldrsh	r4, [r0, r3]
	mov	r3, #4
	ldrsh	r2, [r0, r3]
	mov	r3, #6
	ldrsh	r5, [r0, r3]
	mov	r1, #3
.Lb5e:
	lsl	r3, r2, #7
	add	r3, r4, r3
	lsl	r3, #2
	add	r3, r7
	strb	r6, [r3, #2]
	cmp	r5, #0
	bne	.Lb70
	add	r4, #1
	b	.Lb72
.Lb70:
	add	r2, #1
.Lb72:
	sub	r1, #1
	cmp	r1, #0
	bge	.Lb5e
	add	r0, #0xc
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, r12
	bne	.Lb50
.Lb82:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b3c

.thumb_func_start OvlFunc_b8c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	mov	r4, #1
	mov	r1, r2
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	neg	r4, r4
	cmp	r3, r4
	beq	.Lbd8
	mov	r8, r4
.Lba4:
	mov	r3, #2
	ldrsh	r4, [r0, r3]
	mov	r6, #4
	ldrsh	r2, [r0, r6]
	mov	r6, #6
	ldrsh	r3, [r0, r6]
	mov	r12, r4
	mov	r14, r2
	cmp	r3, #0
	bne	.Lbbc
	add	r4, #3
	b	.Lbbe
.Lbbc:
	add	r2, #3
.Lbbe:
	cmp	r5, r12
	blt	.Lbce
	cmp	r5, r4
	bgt	.Lbce
	cmp	r1, r14
	blt	.Lbce
	cmp	r1, r2
	ble	.Lbda
.Lbce:
	add	r0, #0xc
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, r8
	bne	.Lba4
.Lbd8:
	mov	r0, #0
.Lbda:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b8c

.thumb_func_start OvlFunc_be4
	push	{r5, r6, r7, lr}
	ldr	r7, =ewram_10000
	ldr	r6, =ewram_2c000
	mov	r5, r2
	mov	r2, #0
.Lbee:
	lsl	r3, r1, #7
	add	r3, r0, r3
	lsl	r3, #2
	add	r4, r3, r7
	ldrb	r3, [r4, #2]
	cmp	r3, #0xff
	beq	.Lc06
	ldrb	r3, [r4, #3]
	lsl	r3, #2
	ldrb	r3, [r3, r6]
	cmp	r3, #0
	beq	.Lc0c
.Lc06:
	mov	r0, #1
	neg	r0, r0
	b	.Lc1e
.Lc0c:
	cmp	r5, #0
	bne	.Lc14
	add	r0, #1
	b	.Lc16
.Lc14:
	add	r1, #1
.Lc16:
	add	r2, #1
	cmp	r2, #3
	ble	.Lbee
	mov	r0, #0
.Lc1e:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_be4

.thumb_func_start OvlFunc_c2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r2, #0
	mov	r5, r0
	mov	r0, #0
	str	r2, [sp, #4]
	bl	__Func_92054
	mov	r7, r0
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r6, sp, #8
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	and	r3, r1
	add	r3, r2
	mov	r0, #0x80
	mov	r1, r8
	str	r3, [r6, #8]
	lsl	r0, #13
	mov	r2, r6
	bl	__Func_447c
	ldr	r1, [r6]
	cmp	r1, #0
	bge	.Lc8c
	ldr	r3, =0xfffff
	add	r1, r3
.Lc8c:
	ldr	r2, [r6, #8]
	asr	r1, #20
	cmp	r2, #0
	bge	.Lc98
	ldr	r3, =0xfffff
	add	r2, r3
.Lc98:
	mov	r0, r5
	asr	r2, #20
	bl	OvlFunc_b8c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lca8
	b	.Le2c
.Lca8:
	mov	r2, #0
	mov	r10, r2
	mov	r4, r6
.Lcae:
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	lsl	r3, #20
	str	r3, [r4]
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	mov	r0, #0x80
	lsl	r3, #20
	str	r3, [r4, #8]
	lsl	r0, #13
	mov	r2, r4
	mov	r1, r8
	str	r4, [sp]
	bl	__Func_447c
	ldr	r4, [sp]
	ldr	r0, [r4]
	cmp	r0, #0
	bge	.Lcd8
	ldr	r3, =0xfffff
	add	r0, r3
.Lcd8:
	ldr	r1, [r6, #8]
	asr	r0, #20
	cmp	r1, #0
	bge	.Lce4
	ldr	r2, =0xfffff
	add	r1, r2
.Lce4:
	asr	r1, #20
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	str	r4, [sp]
	bl	OvlFunc_be4
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ld4e
	mov	r2, #1
	str	r2, [sp, #4]
	mov	r2, #6
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.Ld14
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #14
	add	r2, r3
	mov	r11, r2
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	b	.Ld24
.Ld14:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #12
	add	r2, r3
	mov	r11, r2
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #14
.Ld24:
	add	r2, r3
	mov	r9, r2
	ldr	r3, [r6]
	cmp	r3, #0
	bge	.Ld32
	ldr	r2, =0xfffff
	add	r3, r2
.Ld32:
	asr	r3, #20
	strh	r3, [r5, #2]
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Ld40
	ldr	r2, =0xfffff
	add	r3, r2
.Ld40:
	asr	r3, #20
	strh	r3, [r5, #4]
	mov	r3, #1
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0xa
	ble	.Lcae
.Ld4e:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.Le2c
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	mov	r0, #0x80
	lsl	r0, #12
	and	r3, r2
	add	r3, r0
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	and	r3, r2
	add	r3, r0
	mov	r1, r8
	str	r3, [r6, #8]
	mov	r2, r6
	bl	__Func_447c
	mov	r1, r8
	ldr	r7, [r5, #8]
	cmp	r1, #0
	bge	.Ld82
	ldr	r2, =0x3fff
	add	r1, r2
.Ld82:
	asr	r5, r1, #14
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	ldr	r6, =0x3333
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	mov	r0, #0xef
	str	r6, [r7, #0x34]
	bl	__Func_f9080
	ldr	r3, =.L1164
	mov	r0, r7
	ldrb	r1, [r3, r5]
	bl	__Func_c300
	mov	r2, #0
	mov	r3, r9
	mov	r1, r11
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
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
	mov	r0, #0
	ldr	r1, =0x4ccc
	mov	r2, r6
	bl	__Func_92064
	ldr	r3, =.L1168
	ldrsb	r1, [r3, r5]
	ldr	r3, =.L116c
	mov	r0, #0
	ldrsb	r2, [r3, r5]
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
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
.Le2c:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c2c

.thumb_func_start OvlFunc_e64
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_f34
	mov	r6, #0
.Le6e:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Le9c
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Le9c
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_ecc
	strh	r0, [r5]
.Le9c:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Le6e
	bl	OvlFunc_f74
	bl	OvlFunc_f54
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e64

.thumb_func_start OvlFunc_ecc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xf8
	lsl	r0, #16
	lsl	r3, #13
	and	r3, r0
	asr	r6, r3, #16
	ldr	r2, =0x1f
	mov	r8, r1
	lsr	r5, r0, #21
	lsr	r7, r0, #26
	lsl	r1, #2
	mov	r0, r6
	and	r5, r2
	and	r7, r2
	bl	_Func_af0
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_Func_af0
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_Func_af0
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.Lf18

	.pool_aligned

.Lf18:
	cmp	r6, #0x1f
	ble	.Lf1e
	mov	r6, #0x1f
.Lf1e:
	lsl	r3, r7, #10
	lsl	r2, r5, #5
	orr	r3, r2
	orr	r6, r3
	lsl	r0, r6, #16
	lsr	r0, #16
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ecc

.thumb_func_start OvlFunc_f34
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L12d0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_f34

.thumb_func_start OvlFunc_f54
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L19d0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_f54

.thumb_func_start OvlFunc_f74
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, [r3]
	mov	r0, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	mov	r1, r4
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	pop	{r0}
	bx	r0
.func_end OvlFunc_f74

.thumb_func_start OvlFunc_fb4
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lfc4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L19d0
	b	.Lfc8
.Lfc4:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L12d0
.Lfc8:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	bl	OvlFunc_f74
	pop	{r0}
	bx	r0
.func_end OvlFunc_fb4

	.section .data

.L111c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x111c, (0x1164-0x111c)
.L1164:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1164, (0x1168-0x1164)
.L1168:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1168, (0x116c-0x1168)
.L116c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x116c, (0x1170-0x116c)
.L1170:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1170, (0x11d0-0x1170)
.L11d0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11d0, (0x11e0-0x11d0)
.L11e0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11e0, (0x1240-0x11e0)
.L1240:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1240

	.section .bss

	.lcomm	.Lunused_12b8, 8
	.lcomm	.L12c0, 4
	.lcomm	.L12c4, 4
	.lcomm	.L12c8, 8
	.lcomm	.L12d0, 0x700
	.lcomm	.L19d0, 0x700
	.lcomm	.L20d0, 8
	.lcomm	.Lunused_20d8, 4
	.lcomm	.L20dc, 4
