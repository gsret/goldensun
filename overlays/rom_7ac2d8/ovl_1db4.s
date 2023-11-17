	.include "macros.inc"

.thumb_func_start OvlFunc_1db4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0xd3
	sub	sp, #0x40
	bl	__Func_f9080
	cmp	r6, #0
	bne	.L1df4
	mov	r5, #1
	mov	r0, #0x6f
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L1e3c
.L1df4:
	cmp	r6, #1
	bne	.L1e1a
	mov	r0, #0x71
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r2, #0x71
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L1e3c
.L1e1a:
	mov	r5, #1
	mov	r0, #0x73
	mov	r1, #0x39
	mov	r2, #0x74
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r2, #0x73
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L1e3c:
	mov	r2, sp
	add	r2, #0x18
	mov	r3, #7
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	ldr	r2, =0xffff3334
	mov	r10, r3
	mov	r3, #1
	mov	r11, r2
	mov	r9, r3
.L1e5a:
	mov	r2, #0
	mov	r3, r10
	str	r2, [sp, #0x14]
	lsl	r2, r3, #20
	mov	r3, #0xcb
	lsl	r3, #18
	sub	r3, r2
	mov	r8, r3
	mov	r3, #0xb0
	lsl	r3, #18
	add	r7, r2, r3
.L1e70:
	ldr	r3, [sp, #0x14]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L1f68
	cmp	r6, #0
	bne	.L1ec8
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	mov	r0, #0xc6
	str	r3, [sp, #0xc]
	lsl	r0, #18
	mov	r1, #0
	mov	r2, r7
	mov	r3, r5
	str	r6, [sp]
	bl	OvlFunc_common0_10c
	b	.L1f62
.L1ec8:
	cmp	r6, #1
	bne	.L1f1a
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	mov	r2, #0xc0
	lsl	r2, #15
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	add	r0, r7, r2
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #0xc]
	mov	r1, #0
	ldr	r2, =0x2ea0000
	mov	r3, r5
	bl	OvlFunc_common0_10c
	b	.L1f62
.L1f1a:
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r2, [sp, #0x10]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r11
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	ldr	r2, =0x2ca0000
	mov	r3, r5
	bl	OvlFunc_common0_10c
.L1f62:
	mov	r0, #1
	bl	__Func_9163c
.L1f68:
	ldr	r3, =0xffff0000
	add	r8, r3
	ldr	r3, [sp, #0x14]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, #1
	add	r7, r2
	str	r3, [sp, #0x14]
	cmp	r3, #7
	bhi	.L1f7e
	b	.L1e70
.L1f7e:
	cmp	r6, #0
	bne	.L1fac
	mov	r2, r9
	mov	r3, r10
	add	r3, #0x2b
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__Func_10424
	mov	r2, r9
	mov	r3, r10
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2c
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	bl	__Func_10424
	b	.L2002
.L1fac:
	cmp	r6, #1
	bne	.L1fd6
	mov	r2, r10
	add	r2, #0x71
	mov	r0, #0x72
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r2, r10
	add	r2, #0x72
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L2002
.L1fd6:
	mov	r3, r10
	mov	r2, #0x73
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x72
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__Func_10424
	mov	r3, r10
	mov	r2, #0x72
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__Func_10424
.L2002:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #1
	bhi	.L200e
	b	.L1e5a
.L200e:
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1db4

.thumb_func_start OvlFunc_2030
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r5, #1
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	mov	r6, r0
	mov	r0, #0x70
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x75
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, #0x74
	mov	r3, #0x2c
	mov	r0, #0x75
	mov	r1, #0x39
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, =0x121
	bl	__Func_f9080
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0x90
	mov	r8, r2
	lsl	r3, #12
	mov	r2, #0
	mov	r7, #0
	mov	r11, r3
	mov	r10, r2
	mov	r9, r5
.L2098:
	mov	r5, #1
.L209a:
	mov	r3, r5
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L2154
	cmp	r6, #0
	bne	.L20dc
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, =0x319
	lsr	r3, #16
	lsl	r2, r7, #2
	sub	r0, r3
	add	r2, r5
	ldr	r3, =0x2b70000
	lsl	r2, #17
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_common0_10c
	b	.L214e
.L20dc:
	cmp	r6, #1
	bne	.L2116
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xba
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r7, #2
	add	r2, r3
	add	r0, r5
	ldr	r3, =0x3120000
	lsl	r0, #17
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_common0_10c
	b	.L214e
.L2116:
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xb2
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r5, #17
	add	r2, r3
	neg	r0, r0
	lsl	r3, r7, #19
	sub	r0, r3
	mov	r3, #0xce
	lsl	r3, #18
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_common0_10c
.L214e:
	mov	r0, #1
	bl	__Func_9163c
.L2154:
	add	r5, #1
	cmp	r5, #7
	bls	.L209a
	cmp	r6, #0
	bne	.L2174
	mov	r2, r9
	mov	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2b
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__Func_10424
	b	.L21a0
.L2174:
	cmp	r6, #1
	bne	.L218c
	mov	r2, r7
	add	r2, #0x71
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L21a0
.L218c:
	mov	r3, r9
	mov	r2, #0x73
	str	r3, [sp]
	str	r3, [sp, #4]
	sub	r2, r7
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2c
	bl	__Func_10424
.L21a0:
	add	r7, #1
	cmp	r7, #2
	bhi	.L21a8
	b	.L2098
.L21a8:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2030

.thumb_func_start OvlFunc_21cc
	push	{r5, r6, lr}
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L21de
	ldr	r2, =0xfffff
	add	r3, r2
.L21de:
	mov	r0, #9
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L21f0
	ldr	r2, =0xfffff
	add	r3, r2
.L21f0:
	mov	r0, #0xa0
	mov	r1, #0xa0
	lsl	r0, #11
	lsl	r1, #8
	asr	r5, r3, #20
	bl	__Func_933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xb2
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x877
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2292
	cmp	r6, #0x32
	bne	.L2230
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2230
	ldr	r1, =.L5f20
	b	.L226a
.L2230:
	cmp	r6, #0x31
	bne	.L2292
	cmp	r5, #0x2c
	bne	.L2272
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r0, =0x31b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r1, =.L5f60
	b	.L226a
.L225a:
	cmp	r5, #0x2c
	bne	.L2272
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2272
	ldr	r1, =.L5ff0
.L226a:
	mov	r0, #9
	bl	__Func_9207c
	b	.L2292
.L2272:
	cmp	r5, #0x2e
	bne	.L2292
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2292
	ldr	r1, =.L5fa8
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	b	.L229a
.L2292:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
.L229a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_21cc

	.section .data

.L5f20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f20, (0x5f60-0x5f20)
.L5f60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f60, (0x5fa8-0x5f60)
.L5fa8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5fa8, (0x5ff0-0x5fa8)
.L5ff0:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ff0, (0x6004-0x5ff0)
