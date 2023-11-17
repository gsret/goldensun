	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_1528
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L153a
	bl	OvlFunc_3a8
.L153a:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1528

.thumb_func_start OvlFunc_1544
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L156c
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_8ec
.L156c:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1544

.thumb_func_start OvlFunc_1578
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_1ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L158a
	cmp	r3, #0x2e
	bhi	.L159e
.L158a:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L3738
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L159e
	ldr	r5, =.L372c
.L159e:
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
.func_end OvlFunc_1578

.thumb_func_start OvlFunc_15cc
	ldr	r3, =iwram_1ad4
	ldr	r2, =.L372c
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, =.L372c
	ldrh	r3, [r2, #2]
	add	r3, #0xc0
	strh	r3, [r2, #2]
	ldrh	r3, [r2, #6]
	add	r3, #0xc0
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #0xa]
	add	r3, #0xc0
	strh	r3, [r2, #0xa]
	bx	lr
.func_end OvlFunc_15cc

.thumb_func_start OvlFunc_15fc
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #0xc
	bl	__Func_79338
	cmp	r0, #0
	bne	.L164c
	str	r0, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	b	.L168c
.L164c:
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
.L168c:
	ldr	r5, =.L3738
	mov	r6, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r6, [r5]
	ldr	r0, =OvlFunc_15cc
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =OvlFunc_1578
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	mov	r0, #0xe7
	bl	__Func_f9080
	str	r6, [r5]
.L16b4:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x64
	ble	.L16b4
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16fa
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x20
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L171c
.L16fa:
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x20
	mov	r1, #0x40
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L171c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =OvlFunc_15cc
	bl	__Func_4278
	bl	__Func_fe9c
	mov	r0, #0x1e
	bl	__Func_30f8
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15fc

.thumb_func_start OvlFunc_175c
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	ldr	r0, =0x1190000
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L185c
	mov	r0, #0xe8
	bl	__Func_f9080
	mov	r2, #0x18
	mov	r1, #0x54
	ldr	r0, =.L2da8
	bl	__Func_10560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_92b08
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xd0
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =.L2dfc
	mov	r1, #0x50
	mov	r2, #0x18
	bl	__Func_10560
	ldr	r0, =.L2e50
	mov	r1, #0x50
	mov	r2, #0x1c
	bl	__Func_10560
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x10
	mov	r3, #0x1b
	mov	r0, #0x41
	bl	__Func_10424
	bl	OvlFunc_15fc
	mov	r0, #9
	bl	OvlFunc_ec8
	mov	r0, #0xa
	bl	OvlFunc_ec8
	mov	r0, #0xb
	bl	OvlFunc_ec8
	mov	r0, #0xc
	bl	OvlFunc_ec8
	mov	r0, #0xd
	bl	OvlFunc_ec8
	mov	r0, #0xe
	bl	OvlFunc_ec8
	mov	r0, #0xf
	bl	OvlFunc_ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	b	.L190c
.L185c:
	mov	r0, #0xe8
	bl	__Func_f9080
	mov	r1, #0x54
	mov	r2, #0x18
	ldr	r0, =.L2dd2
	bl	__Func_10560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe6
	bl	__Func_f9080
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xda
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x1b
	mov	r0, #0x41
	mov	r1, #0x2d
	mov	r2, #0x10
	bl	__Func_10424
	mov	r1, #0x50
	mov	r2, #0x18
	ldr	r0, =.L2e26
	bl	__Func_10560
	bl	OvlFunc_15fc
	mov	r0, #9
	bl	OvlFunc_f58
	mov	r0, #0xa
	bl	OvlFunc_f58
	mov	r0, #0xb
	bl	OvlFunc_f58
	mov	r0, #0xc
	bl	OvlFunc_f58
	mov	r0, #0xd
	bl	OvlFunc_f58
	mov	r0, #0xe
	bl	OvlFunc_f58
	mov	r0, #0xf
	bl	OvlFunc_f58
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L190c:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_175c

.thumb_func_start OvlFunc_1938
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	ldr	r1, [r6, #8]
	ldr	r4, [r5, #8]
	mov	r0, #0
	cmp	r1, r4
	bne	.L1958
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #0xc]
	cmp	r2, r3
	bne	.L1958
	ldr	r2, [r6, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	beq	.L19de
.L1958:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L19de
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L19de
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1974
	ldr	r1, =0xffff
	add	r3, r1
.L1974:
	asr	r2, r3, #16
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1980
	ldr	r1, =0xffff
	add	r3, r1
.L1980:
	asr	r3, #16
	cmp	r2, r3
	bne	.L19de
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L19de
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L19de
	ldr	r3, [r5, #0x50]
	ldrb	r2, [r3, #9]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r1, r3, #28
	lsr	r2, #30
	lsr	r3, r1, #30
	cmp	r2, r3
	bcs	.L19dc
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L19dc:
	mov	r0, #1
.L19de:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1938

.thumb_func_start OvlFunc_19f0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r4, [r5, #8]
	ldr	r1, [r6, #8]
	mov	r0, #0
	cmp	r4, r1
	bne	.L1a10
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	cmp	r2, r3
	bne	.L1a10
	ldr	r2, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	cmp	r2, r3
	beq	.L1a96
.L1a10:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L1a96
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L1a96
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1a2c
	ldr	r1, =0xffff
	add	r3, r1
.L1a2c:
	asr	r2, r3, #16
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1a38
	ldr	r1, =0xffff
	add	r3, r1
.L1a38:
	asr	r3, #16
	cmp	r2, r3
	bne	.L1a96
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L1a96
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L1a96
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r1, r3, #28
	ldr	r3, [r5, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r2, r1, #30
	lsr	r3, #30
	cmp	r2, r3
	bls	.L1a94
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L1a94:
	mov	r0, #1
.L1a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_19f0

.thumb_func_start OvlFunc_1aa8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	ldr	r1, =0xcc7
	ldr	r3, [r3]
	add	r3, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r8, r0
	cmp	r3, #1
	bne	.L1aee
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r0, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r6
	add	r1, #0x59
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r0, #9]
	mov	r3, #1
	orr	r3, r2
	b	.L1bd0
.L1aee:
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_1938
	mov	r5, #8
	mov	r7, r0
.L1afa:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_1938
	add	r5, #1
	add	r7, r0
	cmp	r5, #0xb
	bls	.L1afa
	cmp	r7, #0
	beq	.L1b2a
	mov	r5, #8
.L1b16:
	mov	r0, r5
	bl	__Func_92054
	add	r5, #1
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_19f0
	cmp	r5, #0xb
	bls	.L1b16
.L1b2a:
	mov	r1, r8
	ldr	r2, [r6, #0xc]
	ldr	r3, [r1, #0xc]
	cmp	r2, r3
	bge	.L1ba6
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, [r6, #0x50]
	mov	r1, r8
	ldrb	r2, [r3, #9]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r3, #28
	lsr	r2, #30
	lsr	r3, #30
	cmp	r2, r3
	bcs	.L1bc2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, r0
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r1, r8
	ldr	r3, [r1, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
	mov	r7, #1
	b	.L1bc2
.L1ba6:
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
.L1bc2:
	cmp	r7, #0
	bne	.L1bd2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, r12
.L1bd0:
	strb	r3, [r1]
.L1bd2:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1aa8

.thumb_func_start OvlFunc_1be8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x84
	mov	r2, #0x10
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r11, r1
	mov	r9, r2
.L1c04:
	mov	r0, r11
	add	r0, #8
	bl	__Func_92054
	mov	r3, r11
	mov	r10, r0
	mov	r8, r11
	cmp	r3, #3
	bls	.L1c18
	b	.L1d44
.L1c18:
	ldr	r6, [sp]
	ldr	r4, [sp]
	ldr	r1, =bss_36d0
	add	r6, #0x10
	add	r7, r4, r1
.L1c22:
	mov	r0, r8
	add	r0, #8
	bl	__Func_92054
	mov	r3, r10
	mov	r4, r0
	ldr	r2, [r3, #0xc]
	ldr	r3, [r4, #0xc]
	cmp	r2, r3
	bgt	.L1c42
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r3, [r4, #0x10]
	cmp	r2, r3
	bge	.L1c42
	b	.L1d34
.L1c42:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	add	r1, sp, #0x14
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c54:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c54
	ldr	r3, =REG_DMA3SAD
	mov	r0, r10
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c6e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c6e
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #0x14
	mov	r1, r10
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c88:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c88
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	add	r1, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1ca2:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1ca2
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r4
	mov	r1, r7
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cc0
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r1, r2, r4
	add	r0, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cde:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cde
	ldr	r5, =bss_36d0
	mov	r1, r9
	ldr	r0, [r5, r1]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d0e
	ldr	r0, [r5, r6]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d0e
	mov	r2, r9
	ldr	r0, [r5, r2]
	bl	__Func_79374
	ldr	r0, [r5, r6]
	bl	__Func_79358
	b	.L1d34
.L1d0e:
	ldr	r5, =bss_36d0
	mov	r3, r9
	ldr	r0, [r5, r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d34
	ldr	r0, [r5, r6]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d34
	mov	r4, r9
	ldr	r0, [r5, r4]
	bl	__Func_79358
	ldr	r0, [r5, r6]
	bl	__Func_79374
.L1d34:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x14
	add	r7, #0x14
	cmp	r2, #3
	bhi	.L1d44
	b	.L1c22
.L1d44:
	ldr	r4, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r3, #0x14
	add	r11, r2
	add	r9, r3
	add	r4, #0x14
	add	r1, #0x14
	mov	r3, r11
	str	r4, [sp, #4]
	str	r1, [sp]
	cmp	r3, #2
	bhi	.L1d60
	b	.L1c04
.L1d60:
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1be8

.thumb_func_start OvlFunc_1d84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =bss_36d0
	sub	sp, #0x14
	mov	r0, #8
	mov	r2, #0x10
	mov	r8, r1
	add	r2, sp
	mov	r3, #0
	str	r0, [sp, #0xc]
	str	r0, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r11, r8
.L1daa:
	ldr	r0, [sp, #0xc]
	bl	__Func_92054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	sub	r0, #8
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r3, [r6, #8]
	mov	r0, r8
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r1, [sp, #4]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bne	.L1de2
	b	.L1f90
.L1de2:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	add	r0, #8
	ldr	r1, =.L3720
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1df6:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1df6
	mov	r0, r6
	ldr	r1, =.L3720
	bl	__Func_120dc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L1e18
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #3
	strb	r3, [r7]
	b	.L1e1c
.L1e18:
	mov	r7, r6
	add	r7, #0x55
.L1e1c:
	mov	r0, r8
	mov	r3, r10
	mov	r5, r8
	ldr	r1, [r3, r0]
	add	r5, #0xc
	ldr	r3, [sp, #4]
	add	r5, r10
	ldr	r2, [r3, r0]
	mov	r0, #0
	mov	r3, r5
	bl	OvlFunc_101c
	mov	r0, r11
	ldr	r3, [sp, #4]
	ldr	r1, [r0]
	mov	r0, r8
	ldr	r2, [r3, r0]
	mov	r3, r5
	mov	r0, #2
	bl	OvlFunc_101c
	ldrb	r2, [r7]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1ed0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_12038
	cmp	r0, #0x32
	bne	.L1e82
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	mov	r1, #1
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_1074
	ldrb	r3, [r5]
	mov	r1, #1
	orr	r3, r1
	strb	r3, [r5]
	b	.L1ecc
.L1e82:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_12038
	cmp	r0, #0x33
	bne	.L1ec6
	mov	r1, #0
	mov	r0, r6
	bl	OvlFunc_da8
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r2, #0
	str	r2, [r6, #0xc]
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_1174
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	ldrb	r3, [r5]
	mov	r0, #1
	orr	r3, r0
	strb	r3, [r5]
	b	.L1ecc
.L1ec6:
	mov	r0, r6
	bl	OvlFunc_d78
.L1ecc:
	mov	r1, #0
	strb	r1, [r7]
.L1ed0:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	ldr	r3, =bss_36d0+0xc
	asr	r2, #20
	asr	r1, #20
	add	r3, r10
	mov	r0, #0
	bl	OvlFunc_fcc
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	blt	.L1f2a
	asr	r2, #20
	add	r2, #6
	mov	r0, #0
	mov	r1, #0x1b
	mov	r3, r9
	bl	OvlFunc_fcc
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #0
	mov	r3, r9
	bl	OvlFunc_101c
	mov	r3, r11
	ldrb	r2, [r3, #0xd]
	mov	r0, r9
	ldrb	r1, [r0, #1]
	lsr	r2, #6
	mov	r3, #0x3f
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	strb	r3, [r0, #1]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #2
	mov	r3, r9
	bl	OvlFunc_101c
.L1f2a:
	ldr	r3, [r6, #8]
	mov	r1, r8
	asr	r3, #20
	mov	r2, r10
	str	r3, [r1, r2]
	ldr	r3, [r6, #0xc]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	ldr	r3, [r6, #0x10]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	mov	r5, #0
	mov	r7, #0x10
.L1f48:
	ldr	r3, [sp, #8]
	cmp	r5, r3
	beq	.L1f88
	ldr	r1, =bss_36d0
	ldr	r0, [r1, r7]
	str	r1, [sp]
	bl	__Func_79374
	mov	r0, r5
	add	r0, #8
	bl	__Func_92054
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	ble	.L1f88
	ldr	r0, [r1, r7]
	bl	__Func_79358
.L1f88:
	add	r5, #1
	add	r7, #0x14
	cmp	r5, #3
	bls	.L1f48
.L1f90:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x14
	add	r1, #0x14
	add	r2, #1
	add	r10, r0
	add	r11, r0
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	cmp	r2, #0xb
	bhi	.L1fa8
	b	.L1daa
.L1fa8:
	bl	OvlFunc_1be8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d84

.thumb_func_start OvlFunc_1fd4
	push	{r5, lr}
	bl	__Func_916b0
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L2028
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	bl	OvlFunc_3a8
	bl	OvlFunc_1d84
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.L2028:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fd4

.thumb_func_start OvlFunc_2034
	push	{lr}
	bl	__Func_93fa0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2034

.thumb_func_start OvlFunc_2040
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r1, r0
	ldr	r3, [r1, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r1, #0xc]
	str	r3, [r0, #4]
	mov	r2, #0x80
	ldr	r3, [r1, #0x10]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r0, #8]
	bl	OvlFunc_350
	cmp	r0, #0
	beq	.L206e
	bl	OvlFunc_1fd4
	b	.L207a
.L206e:
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L207a
	bl	__Func_93e28
.L207a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_2040

.thumb_func_start OvlFunc_2080
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r3, [r3]
	str	r0, [r3, #0x18]
	add	r0, #0x62
	mov	r3, #1
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_2080

.thumb_func_start OvlFunc_209c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r3, [r3]
	mov	r2, #0
	add	r0, #0x62
	str	r2, [r3, #0x18]
	strb	r2, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_209c

.thumb_func_start OvlFunc_20b8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, [r5, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	ble	.L20e6
	mov	r1, r5
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r4, #0xfd
	and	r4, r3
	strb	r4, [r1]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	bge	.L20e6
	mov	r2, #2
	mov	r3, r4
	orr	r3, r2
	strb	r3, [r1]
.L20e6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_20b8

.thumb_func_start OvlFunc_20f0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, r0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, =OvlFunc_20b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r1, #0xe
	mov	r0, #0x14
	mov	r3, #1
	bl	__Func_10704
	ldr	r3, =0x1f5
	add	r0, r6, r3
	bl	__Func_79358
	ldr	r1, =OvlData_2d64
	mov	r0, r6
	bl	__Func_9207c
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20f0

.thumb_func_start OvlFunc_2144
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_20f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2144

.thumb_func_start OvlFunc_2150
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_20f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2150

.thumb_func_start OvlFunc_215c
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, =iwram_1f30
	ldr	r2, [r0, #8]
	ldr	r6, [r3]
	ldr	r3, [r5, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r0, =0x203
	bl	__Func_79358
	mov	r2, r6
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
	b	.L219e
.L2198:
	ldr	r0, =0x203
	bl	__Func_79374
.L219e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_215c

.thumb_func_start OvlFunc_21ac
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r0, [r0, #0x50]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	and	r2, r3
	ldr	r3, =0x6666
	orr	r2, r4
	strb	r2, [r1, #9]
	str	r3, [r6, #0x34]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	str	r3, [r6, #0x30]
	mov	r0, r6
	ldr	r3, [r6, #0x10]
	lsl	r2, #14
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21ac

.thumb_func_start OvlFunc_2230
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_1e40
	ldr	r7, [r2]
	mov	r3, #2
	and	r7, r3
	sub	sp, #0x38
	cmp	r7, #0
	bne	.L22bc
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2250
	mov	r0, #0x88
	bl	__Func_f9080
.L2250:
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x19999
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	bl	__Func_4458
	ldr	r3, =0xffff000
	and	r3, r0
	strh	r3, [r6, #0x20]
	ldr	r3, =OvlFunc_13b0
	str	r3, [r6, #0x24]
	bl	__Func_4458
	lsl	r5, r0, #2
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r5, #16
	add	r5, r2
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, #0xa0
	lsl	r2, #11
	lsl	r3, #16
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0x14d0000
	asr	r5, #1
	mov	r0, #0xa2
	mov	r1, #0xc0
	mov	r2, #0xe4
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L22bc:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2230

.thumb_func_start OvlFunc_22d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	mov	r5, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r7, #0
	bne	.L2368
	add	r2, sp, #0x10
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r10, r2
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #8
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r6, [r5, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, =0x90001
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.L2368:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_22d8

.thumb_func_start OvlFunc_2384
	push	{r5, lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L2472
	ldr	r0, =0x202
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r2, #0x3c
	mov	r1, #0xa
	mov	r0, #0x49
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2230
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2442
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, =OvlFunc_22d8
	mov	r1, #6
	str	r3, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_92504
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0x12
	mov	r2, #0xd
	str	r5, [r0, #0x6c]
	mov	r1, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x11
	bl	__Func_10704
	ldr	r0, =0x201
	bl	__Func_79374
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9207c
	b	.L2448
.L2442:
	mov	r0, #0x3c
	bl	__Func_9163c
.L2448:
	ldr	r0, =OvlFunc_2230
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0xa
	mov	r2, #0x3c
	mov	r3, #0xa
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
.L2472:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2384

.thumb_func_start OvlFunc_2498
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	asr	r1, #20
	asr	r2, #20
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_528
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2498

.thumb_func_start OvlFunc_24cc
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xff
	str	r3, [sp, #4]
	asr	r1, #20
	mov	r3, #1
	asr	r2, #20
	mov	r0, #2
	bl	OvlFunc_528
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x10
	bne	.L252a
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L252a
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0xfffe0000
	mov	r0, #0x81
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_79358
.L252a:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24cc

.thumb_func_start OvlFunc_253c
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L2566
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_8ec
	b	.L2572
.L2566:
	bl	OvlFunc_2498
	bl	OvlFunc_3a8
	bl	OvlFunc_24cc
.L2572:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_253c

	.section .data

.L2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.L2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.L2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.L2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.L2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)

	.section .bss

	.space	4

	.global	bss_36d0
bss_36d0:
	.space	0x50
	.ssize	bss_36d0

.L3720:
	.space	0xc
.L372c:
	.space	0xc
.L3738:
	.space	4
