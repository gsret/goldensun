	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_30f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r0, [sp, #4]
	mov	r10, sp
	ldr	r1, =iwram_79ff
	cmp	r10, r1
	bhi	.L3130
	ldr	r4, =iwram_7a00
	ldr	r3, =iwram_1804
	mov	r1, r10
	sub	r2, r4, r1
	mov	r5, #0x84
	str	r2, [r3]
	lsl	r5, #24
	lsr	r2, #2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r10
	ldr	r1, =ewram_23b0
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	sp, r4
.L3130:
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [sp]
	cmp	r2, r3
	bcc	.L313c
	b	.L34c0
.L313c:
	ldr	r2, =iwram_1d24
	mov	r1, #1
	mov	r11, r1
	mov	r9, r2
.L3144:
	ldr	r5, =iwram_1a10
	mov	r3, r11
	mov	r0, #0xc8
	strb	r3, [r5]
	lsl	r0, #4
	bl	Func_4420
	mov	r3, #0
	mov	r1, #0x80
	strb	r3, [r5]
	lsl	r1, #3
	mov	r0, #0x34
	bl	Func_48b0
	bl	Func_3e10
	ldr	r3, =iwram_1e44
	mov	r1, r11
	strb	r1, [r3]
	ldr	r3, =iwram_1f58
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L31ac
	ldr	r3, =REG_VCOUNT
	ldrh	r1, [r3]
	cmp	r1, #0x9f
	bls	.L317e
	sub	r1, #0xa0
	b	.L3180
.L317e:
	add	r1, #0x44
.L3180:
	ldr	r3, =iwram_1ccc
	ldr	r0, =iwram_1af0
	ldrh	r3, [r3]
	ldr	r2, [r0]
	sub	r3, #1
	lsl	r3, #8
	add	r1, r3
	cmp	r2, #0
	bne	.L3198
	ldr	r3, =iwram_1ca4
	str	r2, [r3]
	b	.L319c
.L3198:
	sub	r3, r2, #1
	str	r3, [r0]
.L319c:
	ldr	r2, =iwram_1ca4
	ldr	r3, [r2]
	cmp	r3, r1
	bcs	.L31ac
	str	r1, [r2]
	ldr	r2, =iwram_1af0
	mov	r3, #0x1e
	str	r3, [r2]
.L31ac:
	ldr	r3, =iwram_1ca0
	ldrb	r3, [r3]
	mov	r2, r3
	cmp	r2, #0
	bne	.L3210
	ldr	r3, =iwram_1d08
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L31e4
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L31cc
	mov	r3, r9
	strh	r2, [r3]
	b	.L31e4
.L31cc:
	mov	r1, r9
	ldrh	r3, [r1]
	mov	r2, r9
	add	r3, #1
	strh	r3, [r2]
	ldr	r3, =0x2a30
	ldrh	r2, [r2]
	cmp	r2, r3
	bls	.L31e4
	ldr	r3, =iwram_1cc8
	mov	r1, r11
	strb	r1, [r3]
.L31e4:
	ldr	r3, =iwram_1ae8
	mov	r2, #0xc0
	ldr	r3, [r3]
	lsl	r2, #2
	cmp	r3, r2
	bne	.L320a
	ldr	r2, =iwram_1f5c
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldrh	r3, [r2]
	cmp	r3, #0xb3
	bls	.L3210
	ldr	r3, .L322c	@ 0
	strh	r3, [r2]
	ldr	r3, =iwram_1cc8
	mov	r1, r11
	strb	r1, [r3]
	b	.L3210
.L320a:
	ldr	r2, =iwram_1f5c
	ldr	r3, .L322c
	strh	r3, [r2]
.L3210:
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L321a
	b	.L330a
.L321a:
	ldr	r5, =iwram_1d20
	mov	r2, #0x80
	ldrb	r3, [r5]
	lsl	r2, #20
	ldr	r7, =iwram_1d28
	mov	r8, r2
	ldr	r6, =iwram_1ae8
	b	.L32e4

	.align	2, 0
.L322c:
	.word	0
	.pool

.L3288:
	ldr	r3, [r6]
	cmp	r3, #0xc
	bne	.L330a
	mov	r3, r11
	strb	r3, [r5]
.L3292:
	ldrh	r3, [r7]
	ldr	r2, =0xfffe
	and	r3, r2
	strh	r3, [r7]
	ldr	r0, =iwram_1d28
	mov	r1, #1
.L329e:
	swi	2
	ldrh	r2, [r0]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L329e
	bl	Func_3538
	ldr	r2, =iwram_1cb8
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L32e2
	mov	r3, #0
	strb	r3, [r2]
	ldr	r2, =iwram_7800
	ldr	r3, =0x19670704
	str	r3, [r2]
	b	.L32d8

	.pool_aligned

.L32d8:
	mov	r2, #0
	ldr	r3, =REG_IME
	strh	r2, [r3]
	bl	_call_via_r8
.L32e2:
	ldrb	r3, [r5]
.L32e4:
	cmp	r3, #0
	beq	.L3288
	ldr	r0, =iwram_1b04
	ldr	r3, [r0]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L330a
	ldr	r1, [r6]
	mov	r3, #0xf0
	and	r1, r3
	cmp	r1, #0
	bne	.L330a
	ldr	r3, [r0]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L3292
	strb	r1, [r5]
.L330a:
	ldr	r2, =iwram_1ccc
	ldr	r1, =iwram_1cd0
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldr	r3, .L3340	@ 0
	ldr	r1, =iwram_1d28
	strh	r3, [r2]
	ldr	r2, .L3344	@ 0xfffe
	ldrh	r3, [r1]
	and	r3, r2
	strh	r3, [r1]
	mov	r0, #1
.L3322:
	swi	2
	ldrh	r2, [r1]
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.L3322
	mov	r0, #0x34
	bl	Func_2dd8
	bl	Func_3d04
	ldr	r2, =iwram_1e40
	ldr	r3, [r2]
	add	r3, #1
	b	.L3360

	.align	2, 0
.L3340:
	.word	0
.L3344:
	.word	0xfffe
	.pool

.L3360:
	str	r3, [r2]
	ldr	r2, =iwram_1c9c
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	bl	Func_3538
	ldr	r3, =iwram_1cb0
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L3386
	bl	Func_5fcc
	ldr	r2, =ewram_2240
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L3386
	mov	r3, #1
	strb	r3, [r2, #8]
.L3386:
	ldr	r1, =iwram_1cc8
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L3390
	b	.L3492
.L3390:
	ldr	r3, =iwram_1ca0
	ldrb	r3, [r3]
	mov	r2, r3
	cmp	r2, #0
	beq	.L339c
	b	.L3492
.L339c:
	mov	r4, #0x80
	lsl	r4, #19
	ldrh	r3, [r4]
	mov	r0, #0xa0
	lsl	r3, #16
	lsl	r0, #19
	asr	r7, r3, #16
	ldrh	r3, [r0]
	lsl	r3, #16
	asr	r3, #16
	mov	r8, r3
	ldrb	r3, [r1]
	cmp	r3, #1
	bne	.L348c
	strh	r2, [r4]
	ldr	r3, =0x7fff
	strh	r3, [r0]
	mov	r1, #0
	ldr	r0, =iwram_1d28
	ldr	r5, =0xfffe
	mov	r4, #1
.L33c6:
	ldrh	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strh	r3, [r0]
.L33ce:
	swi	2
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	cmp	r3, #0
	beq	.L33ce
	add	r1, #1
	cmp	r1, #0x3b
	ble	.L33c6
	ldr	r6, =ewram_2000
	ldr	r3, .L3418	@ 1
	strh	r3, [r6]
	mov	r3, #0xc3
	ldr	r5, =REG_KEYCNT
	lsl	r3, #8
	strh	r3, [r5]
	bl	Func_6868
	swi	3
	bl	Func_6870
	ldr	r3, =0xc00f
	strh	r3, [r5]
	ldr	r3, .L341c	@ 0
	strh	r3, [r6]
	lsl	r3, r7, #16
	mov	r2, #0x80
	lsr	r3, #16
	lsl	r2, #19
	strh	r3, [r2]
	mov	r1, r8
	lsl	r3, r1, #16
	mov	r2, #0xa0
	lsr	r3, #16
	lsl	r2, #19
	strh	r3, [r2]
	b	.L344c

	.align	2, 0
.L3418:
	.word	1
.L341c:
	.word	0
	.pool

.L344c:
	mov	r1, #0
	ldr	r0, =iwram_1d28
	ldr	r5, =0xfffe
	mov	r4, #1
.L3454:
	ldrh	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strh	r3, [r0]
.L345c:
	swi	2
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	cmp	r3, #0
	beq	.L345c
	add	r1, #1
	cmp	r1, #9
	ble	.L3454
	ldr	r3, =iwram_1cc8
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L347c	@ 0
	mov	r2, r9
	strh	r3, [r2]
	b	.L3492

	.align	2, 0
.L347c:
	.word	0
	.pool

.L348c:
	ldrb	r3, [r1]
	add	r3, #0xff
	strb	r3, [r1]
.L3492:
	ldr	r2, =iwram_1cb8
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L34b2
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0x80
	ldr	r2, =iwram_7800
	ldr	r3, =0x19670704
	lsl	r0, #20
	str	r3, [r2]
	mov	r2, #0
	ldr	r3, =REG_IME
	strh	r2, [r3]
	bl	_call_via_r0
.L34b2:
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
	add	r3, #1
	str	r3, [sp]
	cmp	r3, r1
	bcs	.L34c0
	b	.L3144
.L34c0:
	ldr	r2, =iwram_1804
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L34fc
	mov	r10, sp
	ldr	r3, [r2]
	mov	r2, r10
	sub	r2, r3
	mov	r10, r2
	mov	sp, r10
	ldr	r3, =iwram_1804
	ldr	r2, [r3]
	mov	r4, #0x84
	lsl	r4, #24
	lsr	r2, #2
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_23b0
	mov	r1, r10
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r3, #24
.L34f0:
	ldr	r2, [r1, #8]
	and	r2, r3
	cmp	r2, #0
	bne	.L34f0
	ldr	r3, =iwram_1804
	str	r2, [r3]
.L34fc:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_30f8

.thumb_func_start Func_352c
	ldr	r2, =iwram_1b00
	mov	r3, #0x13
	str	r3, [r2]
	bx	lr
.func_end Func_352c

.thumb_func_start Func_3538
	push	{r5, lr}
	ldr	r4, =iwram_1b00
	ldr	r0, [r4]
	mov	r5, #0
	cmp	r0, #0
	bgt	.L355e
	ldr	r2, =iwram_1ae8
	ldr	r3, =iwram_1b04
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r1, [r3]
	cmp	r0, #0
	bne	.L3558
	mov	r3, #6
	str	r3, [r4]
	b	.L3564
.L3558:
	mov	r3, #0x13
	str	r3, [r4]
	b	.L3564
.L355e:
	ldr	r3, =iwram_1b04
	str	r5, [r3]
	ldr	r1, [r3]
.L3564:
	cmp	r1, #0
	beq	.L360a
	mov	r3, #0x40
	and	r3, r1
	mov	r2, #0
	cmp	r3, #0
	beq	.L3574
	mov	r2, #1
.L3574:
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.L357e
	add	r2, #1
.L357e:
	mov	r3, #0x20
	and	r3, r1
	cmp	r3, #0
	beq	.L3588
	add	r2, #1
.L3588:
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L3592
	add	r2, #1
.L3592:
	ldr	r0, =iwram_1afc
	str	r1, [r0]
	cmp	r2, #1
	beq	.L35b8
	cmp	r2, #1
	bcc	.L35b0
	cmp	r2, #2
	beq	.L35c2
	cmp	r2, #3
	beq	.L35e0
	ldr	r2, =iwram_1d04
	mov	r3, #0x30
	str	r3, [r2]
	ldr	r2, =0xff0f
	b	.L3602
.L35b0:
	ldr	r2, =iwram_1d04
	mov	r3, #0x30
	str	r3, [r2]
	b	.L360e
.L35b8:
	ldr	r2, =iwram_1d04
	mov	r3, #0xf0
	and	r1, r3
	str	r1, [r2]
	b	.L360e
.L35c2:
	ldr	r1, =iwram_1d04
	ldr	r3, [r1]
	ldr	r2, [r0]
	and	r3, r2
	cmp	r3, #0
	bne	.L35d2
	mov	r3, #0x30
	str	r3, [r1]
.L35d2:
	ldr	r3, [r1]
	ldr	r2, =0xffff
	eor	r3, r2
	ldr	r2, [r0]
	and	r2, r3
	str	r2, [r0]
	b	.L360e
.L35e0:
	ldr	r4, =iwram_1d04
	ldr	r3, [r4]
	mov	r2, #0x30
	and	r3, r2
	cmp	r3, #0
	beq	.L35ee
	mov	r5, #0x30
.L35ee:
	ldr	r3, [r4]
	mov	r2, #0xc0
	and	r3, r2
	cmp	r3, #0
	beq	.L35fa
	mov	r5, #0xc0
.L35fa:
	ldr	r2, =0xffff
	eor	r2, r5
	and	r1, r2
	str	r1, [r4]
.L3602:
	ldr	r3, [r0]
	and	r3, r2
	str	r3, [r0]
	b	.L360e
.L360a:
	ldr	r3, =iwram_1afc
	str	r1, [r3]
.L360e:
	ldr	r1, =iwram_1ae8
	ldr	r0, =iwram_1cf4
	ldr	r3, [r1]
	ldr	r2, [r0]
	eor	r3, r2
	ldr	r2, [r1]
	ldr	r4, =iwram_1c94
	and	r3, r2
	str	r3, [r4]
	ldr	r3, [r1]
	str	r3, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_3538
