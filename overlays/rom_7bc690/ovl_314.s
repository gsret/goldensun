	.include "macros.inc"

.thumb_func_start OvlFunc_314
	push	{lr}
	mov	r0, #0xd
	mov	r1, #3
	mov	r2, #3
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0x3c
.L32c:
	cmp	r5, #0
	beq	.L33e
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7, #0xc]
	sub	r5, #1
	cmp	r3, r6
	bgt	.L32c
.L33e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_324

.thumb_func_start OvlFunc_344
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #7
	and	r3, r2
	sub	sp, #0x38
	mov	r7, r0
	cmp	r3, #0
	bne	.L35c
	mov	r0, #0x76
	bl	__Func_f9080
.L35c:
	ldr	r6, [r5]
	mov	r3, #0xf
	and	r6, r3
	mov	r0, #0
	cmp	r6, #0
	bne	.L398
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x880001
	strh	r0, [r5, #0x22]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.L398:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_344

.thumb_func_start OvlFunc_3ac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L2174
	b	.L3e4
.L3c4:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L21d4
	b	.L3e4
.L3ce:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L2234
	b	.L3e4
.L3d8:
	ldr	r3, =0x5c
	cmp	r2, r3
	bne	.L3e2
	ldr	r0, =.L22dc
	b	.L3e4
.L3e2:
	ldr	r0, =.L212c
.L3e4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_3ac

.thumb_func_start OvlFunc_410
	mov	r0, #0
	bx	lr
.func_end OvlFunc_410

.thumb_func_start OvlFunc_414
	ldr	r0, =.L236c
	bx	lr
.func_end OvlFunc_414

.thumb_func_start OvlFunc_41c
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L444
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L444
	ldr	r0, =0x90a
	bl	__Func_79358
.L444:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L458
	ldr	r0, =.L23c8
	b	.L46e
.L458:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L462
	ldr	r0, =.L2410
	b	.L46e
.L462:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L46c
	ldr	r0, =.L24b8
	b	.L46e
.L46c:
	ldr	r0, =.L23b0
.L46e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_41c

.thumb_func_start OvlFunc_498
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_79358
	ldr	r0, =0x8b2
	bl	__Func_79358
.L4be:
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_498

.thumb_func_start OvlFunc_4dc
	ldr	r0, =.L2500
	bx	lr
.func_end OvlFunc_4dc

	.section .data

.L212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.L2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.L21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.L2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.L22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
.L236c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.L23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.L23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.L2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.L24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
.L2500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)
