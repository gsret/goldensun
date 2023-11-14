	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_21dfc
	ldr	r1, =REG_BG1CNT
	mov	r3, #4
	ldrh	r2, [r1]
	neg	r3, r3
	and	r3, r2
	mov	r2, #3
	orr	r3, r2
	strh	r3, [r1]
	bx	lr
.func_end Func_21dfc

.thumb_func_start Func_21e14
	ldr	r1, =REG_BG1CNT
	mov	r3, #4
	ldrh	r2, [r1]
	neg	r3, r3
	and	r3, r2
	strh	r3, [r1]
	bx	lr
.func_end Func_21e14

.thumb_func_start Func_21e28
	push	{lr}
	ldr	r2, =REG_BG0VOFS
	mov	r3, #0
	strh	r3, [r2]
	ldr	r2, =Func_21e14
	mov	r0, #2
	mov	r1, #0x88
	bl	Func_307c
	pop	{r0}
	bx	r0
.func_end Func_21e28

.thumb_func_start Func_21e48
	push	{r5, lr}
	mov	r3, #1
	bl	Func_17658
	mov	r5, r0
	b	.L21e5a
.L21e54:
	mov	r0, #1
	bl	Func_30f8
.L21e5a:
	bl	Func_17364
	cmp	r0, #0
	beq	.L21e54
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_21e48

.thumb_func_start Func_21e6c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	str	r0, [sp, #0x34]
	ldr	r3, =iwram_1e8c
	mov	r0, #0x80
	ldr	r3, [r3]
	lsl	r0, #3
	str	r3, [sp, #0x30]
	bl	Func_40b4
	mov	r7, r0
	mov	r0, #1
	str	r0, [sp, #0x2c]
	mov	r0, #0xf0
	mov	r1, #0
	lsl	r0, #1
	str	r1, [sp, #0x28]
	bl	Func_4970
	mov	r9, r0
	mov	r3, r9
	mov	r2, #0xff
	add	r3, #0xff
	mov	r12, r9
.L21ea8:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.L21ea8
	mov	r2, #0x80
	lsl	r2, #1
	add	r2, r9
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, [sp, #0x34]
	cmp	r2, #0
	bne	.L21ece
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0x14
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, #0xa
	b	.L21eda
.L21ece:
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0x16
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, #8
.L21eda:
	bl	Func_162d4
	mov	r3, #0xd6
	lsl	r3, #1
	add	r3, r9
	str	r0, [r3]
	mov	r3, #0xe2
	lsl	r3, #1
	mov	r0, #1
	add	r3, r9
	neg	r0, r0
	str	r0, [r3]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	bne	.L21f6c
	mov	r2, #0xe4
	lsl	r2, #1
	mov	r4, r9
	mov	r3, #0xe
	str	r3, [r4, r2]
	mov	r1, #4
	add	r3, r2, #4
	str	r1, [r4, r3]
	mov	r1, r2
	mov	r3, #7
	add	r1, #8
	str	r3, [r4, r1]
	ldr	r3, =iwram_1f34
	add	r2, #0xc
	str	r0, [r4, r2]
	ldr	r3, [r3]
	mov	r2, #0xe0
	lsl	r2, #1
	ldr	r3, [r3, #0x3c]
	add	r2, r9
	str	r3, [r2]
	b	.L21ff0
.L21f24:
	mov	r5, #2
	neg	r5, r5
	mov	r10, r5
	ldr	r2, =iwram_1f34
	b	.L2260c
.L21f2e:
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r6, #0xe4
	lsl	r3, #2
	lsl	r6, #1
	add	r3, r6
	mov	r7, r9
	ldr	r3, [r7, r3]
	ldr	r2, =iwram_1f34
	mov	r10, r3
	b	.L2260c
.L21f48:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
	mov	r10, r0
	ldr	r2, =iwram_1f34
	b	.L2260c
.L21f58:
	mov	r3, #0xe4
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r10, r3
	b	.L2260c

	.pool_aligned

.L21f6c:
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	mov	r2, #0xe0
	ldr	r3, [r3, #0x40]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r3, #0xe4
	mov	r1, r9
	mov	r5, #0
	lsl	r3, #1
	str	r5, [r1, r3]
	add	r3, #4
	mov	r5, #1
	str	r5, [r1, r3]
	mov	r0, #0
	bl	_Func_77330
	ldr	r3, [r0]
	mov	r5, #2
	cmp	r3, #0
	beq	.L21fce
	add	r5, sp, #0x38
	mov	r0, #0
	mov	r1, r5
	bl	_Func_be0b4
	mov	r2, sp
	add	r2, #0x3b
.L21fa6:
	ldrb	r3, [r5]
	ldr	r4, [sp, #0x28]
	add	r5, #1
	add	r4, r3
	str	r4, [sp, #0x28]
	cmp	r5, r2
	ble	.L21fa6
	mov	r2, #0xe8
	mov	r5, r9
	lsl	r2, #1
	mov	r3, #0xf
	str	r3, [r5, r2]
	mov	r5, #3
	cmp	r4, #0
	beq	.L21fce
	add	r2, #4
	mov	r3, #0x10
	mov	r6, r9
	str	r3, [r6, r2]
	mov	r5, #4
.L21fce:
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, r5, #2
	mov	r0, r9
	add	r3, r1
	mov	r2, #2
	add	r5, #1
	str	r2, [r0, r3]
	lsl	r3, r5, #2
	add	r3, r1
	mov	r2, #3
	add	r5, #1
	str	r2, [r0, r3]
	lsl	r3, r5, #2
	add	r3, r1
	sub	r2, #4
	str	r2, [r0, r3]
.L21ff0:
	mov	r5, #0x88
	lsl	r5, #1
	add	r5, r9
	mov	r6, #0xe4
	strh	r7, [r5]
	lsl	r6, #1
	add	r6, r9
	mov	r5, #0x96
	ldr	r2, [r6]
	mov	r3, #1
	mov	r6, #0xe6
	mov	r1, #0
	lsl	r5, #1
	lsl	r6, #1
	neg	r3, r3
	mov	r8, r1
	add	r5, r9
	add	r6, r9
	cmp	r2, r3
	beq	.L22038
.L22018:
	mov	r0, r9
	mov	r1, r8
	bl	Func_21d88
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	cmp	r0, #5
	bgt	.L22038
	strh	r7, [r5]
	mov	r1, #1
	ldmia	r6!, {r2}
	neg	r1, r1
	add	r5, #0x1c
	cmp	r2, r1
	bne	.L22018
.L22038:
	mov	r0, #0xd8
	lsl	r0, #1
	mov	r2, r8
	add	r0, r9
	str	r2, [r0]
	mov	r2, #0xda
	lsl	r2, #1
	mov	r3, #0xa0
	add	r2, r9
	lsl	r3, #1
	strh	r3, [r2]
	mov	r2, #0xdb
	lsl	r2, #1
	sub	r3, #0x10
	add	r2, r9
	strh	r3, [r2]
	add	r3, #0x88
	mov	r1, #0
	add	r3, r9
	strh	r1, [r3]
	ldr	r3, [r0]
	mov	r8, r1
	cmp	r8, r3
	bge	.L220a6
	mov	r1, #0x8c
	mov	r4, r0
	lsl	r1, #1
	mov	r0, #0x8a
	lsl	r0, #1
	mov	r5, #0x88
	add	r1, r9
.L22076:
	ldr	r3, [r4]
	mov	r6, r8
	sub	r3, r6, r3
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #3
	mov	r3, r2
	add	r3, #0x9b
	mov	r7, r9
	str	r3, [r0, r7]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.L22096
	mov	r3, r2
	add	r3, #0xab
	str	r3, [r0, r7]
.L22096:
	str	r5, [r1]
	mov	r6, #1
	ldr	r3, [r4]
	add	r8, r6
	add	r1, #0x1c
	add	r0, #0x1c
	cmp	r8, r3
	blt	.L22076
.L220a6:
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_21dfc
	bl	Func_41d8
	ldr	r2, =Func_21e14
	mov	r0, #2
	mov	r1, #0x88
	bl	Func_307c
	mov	r0, #0xd8
	mov	r2, #0xe0
	lsl	r0, #1
	lsl	r2, #1
	add	r0, r9
	add	r2, r9
	mov	r7, r0
	mov	r1, r2
	str	r7, [sp, #0x10]
	str	r1, [sp, #0x18]
.L220ce:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	lsl	r3, #1
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r1, [r1, r3]
	ldr	r4, =0xffffff00
	add	r3, r1, r4
	str	r1, [sp, #0x24]
	cmp	r3, #0
	bge	.L220ec
	mov	r3, r1
	sub	r3, #0xfd
.L220ec:
	mov	r5, #0x98
	asr	r3, #2
	lsl	r5, #1
	add	r5, r3, r5
	str	r5, [sp, #0x24]
	mov	r3, #0xda
	add	r6, sp, #0x24
	ldrh	r6, [r6]
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	mov	r3, #0xdb
	lsl	r3, #1
	add	r3, r9
	ldr	r2, =iwram_1ad0
	mov	r7, r6
	ldr	r0, .L22138	@ 0
	strh	r7, [r3]
	mov	r3, #0x20
	strh	r0, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r1, [sp, #0x2c]
	cmp	r1, #0
	bne	.L2211e
	b	.L2236c
.L2211e:
	ldr	r3, [sp, #0x30]
	ldr	r4, =0xea6
	mov	r2, #0
	str	r2, [sp, #0x2c]
	add	r2, r3, r4
	mov	r3, #1
	strb	r3, [r2]
	ldr	r5, [sp, #0x34]
	cmp	r5, #0
	bne	.L22134
	b	.L22264
.L22134:
	b	.L2215c

	.align	2, 0
.L22138:
	.word	0
	.pool

.L2215c:
	ldr	r7, [sp, #0x10]
	ldr	r3, [r7]
	mov	r6, #0
	mov	r2, #6
	mov	r14, r6
	sub	r3, r2, r3
	cmp	r14, r3
	bge	.L221c2
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	ldr	r6, =0xf07f
	sub	r2, r3
	mov	r7, #3
	mov	r12, r2
	mov	r4, #0
.L2217e:
	mov	r1, r14
	add	r3, r4, r1
	ldr	r2, [sp, #0x30]
	mov	r0, #0
	lsl	r3, #1
	mov	r8, r0
	add	r0, r3, r2
.L2218c:
	mov	r2, #0
	mov	r1, r0
	b	.L22198

	.pool_aligned

.L22198:
	mov	r3, r2
	and	r3, r7
	lsl	r3, #1
	mov	r5, #0x89
	add	r3, r1
	lsl	r5, #3
	add	r3, r5
	add	r2, #1
	strh	r6, [r3]
	cmp	r2, #2
	ble	.L22198
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r0, #0x40
	cmp	r2, #2
	ble	.L2218c
	add	r14, r1
	add	r4, #2
	cmp	r14, r12
	blt	.L2217e
.L221c2:
	ldr	r4, [sp, #0x10]
	mov	r3, #0
	mov	r14, r3
	ldr	r3, [r4]
	cmp	r14, r3
	blt	.L221d0
	b	.L2236c
.L221d0:
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r11, r3
	lsl	r3, #1
	add	r3, r11
	mov	r10, r3
	mov	r5, r10
	lsl	r5, #1
	mov	r6, #0
	str	r5, [sp, #0x20]
	str	r6, [sp, #8]
.L221ea:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #0x30]
	add	r2, r14
	mov	r7, #0
	lsl	r3, r2, #1
	mov	r1, r14
	mov	r8, r7
	add	r4, r3, r0
	mov	r6, r2
	lsl	r5, r1, #4
.L221fe:
	str	r5, [sp, #4]
	mov	r0, #0
	mov	r12, r6
.L22204:
	mov	r1, r0
	mov	r2, #3
	and	r1, r2
	mov	r3, r12
	add	r2, r3, r1
	mov	r7, r10
	sub	r2, r7
	ldr	r3, =0x600fd6c
	ldr	r7, [sp, #4]
	lsl	r2, #1
	add	r2, r3
	add	r3, r7, r0
	mov	r7, #0x80
	lsl	r7, #1
	add	r3, r7
	strh	r3, [r2]
	ldr	r2, [sp, #0x20]
	lsl	r1, #1
	add	r1, r4, r1
	ldr	r3, =0x46c
	sub	r1, r2
	ldr	r7, .L22258	@ 0
	add	r1, r3
	add	r0, #1
	strh	r7, [r1]
	cmp	r0, #2
	ble	.L22204
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r4, #0x40
	add	r6, #0x20
	add	r5, #4
	cmp	r1, #2
	ble	.L221fe
	ldr	r2, [sp, #8]
	add	r14, r0
	add	r2, #2
	str	r2, [sp, #8]
	cmp	r14, r11
	blt	.L221ea
	b	.L2236c

	.align	2, 0
.L22258:
	.word	0
	.pool

.L22264:
	ldr	r4, [sp, #0x10]
	mov	r3, #0
	mov	r14, r3
	ldr	r3, [r4]
	mov	r2, #6
	sub	r3, r2, r3
	cmp	r14, r3
	bge	.L222cc
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	ldr	r6, =0xf07f
	sub	r2, r3
	mov	r7, #3
	mov	r12, r2
	mov	r4, #0
.L22286:
	mov	r0, r14
	add	r3, r4, r0
	ldr	r1, [sp, #0x30]
	mov	r5, #0
	lsl	r3, #1
	mov	r8, r5
	add	r0, r3, r1
.L22294:
	mov	r2, #0
	mov	r1, r0
.L22298:
	mov	r3, r2
	and	r3, r7
	lsl	r3, #1
	ldr	r5, =0x444
	add	r3, r1
	add	r3, r5
	add	r2, #1
	strh	r6, [r3]
	cmp	r2, #2
	ble	.L22298
	b	.L222b8

	.pool_aligned

.L222b8:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r0, #0x40
	cmp	r2, #2
	ble	.L22294
	add	r14, r1
	add	r4, #2
	cmp	r14, r12
	blt	.L22286
.L222cc:
	ldr	r4, [sp, #0x10]
	mov	r3, #0
	mov	r14, r3
	ldr	r3, [r4]
	cmp	r14, r3
	bge	.L2236c
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r11, r3
	lsl	r3, #1
	add	r3, r11
	mov	r10, r3
	mov	r5, r10
	lsl	r5, #1
	mov	r6, #0
	str	r5, [sp, #0x1c]
	str	r6, [sp, #0xc]
.L222f2:
	ldr	r2, [sp, #0xc]
	ldr	r0, [sp, #0x30]
	add	r2, r14
	mov	r7, #0
	lsl	r3, r2, #1
	mov	r1, r14
	mov	r8, r7
	add	r4, r3, r0
	mov	r6, r2
	lsl	r5, r1, #4
.L22306:
	str	r5, [sp, #4]
	mov	r0, #0
	mov	r12, r6
.L2230c:
	mov	r1, r0
	mov	r2, #3
	and	r1, r2
	mov	r3, r12
	add	r2, r3, r1
	mov	r7, r10
	sub	r2, r7
	ldr	r3, =0x600fd68
	ldr	r7, [sp, #4]
	lsl	r2, #1
	add	r2, r3
	add	r3, r7, r0
	mov	r7, #0x80
	lsl	r7, #1
	add	r3, r7
	strh	r3, [r2]
	ldr	r2, [sp, #0x1c]
	lsl	r1, #1
	add	r1, r4, r1
	mov	r3, #0x8d
	sub	r1, r2
	lsl	r3, #3
	ldr	r7, .L22364	@ 0
	add	r1, r3
	add	r0, #1
	strh	r7, [r1]
	cmp	r0, #2
	ble	.L2230c
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r4, #0x40
	add	r6, #0x20
	add	r5, #4
	cmp	r1, #2
	ble	.L22306
	ldr	r2, [sp, #0xc]
	add	r14, r0
	add	r2, #2
	str	r2, [sp, #0xc]
	cmp	r14, r11
	blt	.L222f2
	b	.L2236c

	.align	2, 0
.L22364:
	.word	0
	.pool

.L2236c:
	mov	r7, #0xe2
	mov	r6, #0xe0
	lsl	r7, #1
	lsl	r6, #1
	add	r7, r9
	add	r6, r9
	ldr	r2, [r7]
	ldr	r3, [r6]
	cmp	r2, r3
	beq	.L223c4
	mov	r5, #0xd6
	lsl	r5, #1
	add	r5, r9
	ldr	r0, [r5]
	bl	Func_16478
	ldr	r2, [r6]
	lsl	r3, r2, #3
	sub	r3, r2
	mov	r4, #0x8e
	lsl	r4, #1
	lsl	r3, #2
	add	r3, r4
	mov	r1, r9
	ldr	r0, [r1, r3]
	ldr	r3, =0x1f
	ldr	r1, [r5]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	ldr	r3, [r6]
	str	r3, [r7]
	ldr	r1, [r6]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, r1, #2
	add	r3, r2
	mov	r4, r9
	ldr	r2, [r4, r3]
	mov	r0, r9
	bl	Func_21d88
.L223c4:
	mov	r0, #0xda
	lsl	r0, #1
	add	r0, r9
	bl	Func_3d28
	mov	r3, #0xde
	lsl	r3, #1
	add	r3, r9
	str	r0, [r3]
	ldr	r6, [sp, #0x10]
	mov	r5, #0
	ldr	r3, [r6]
	mov	r8, r5
	cmp	r8, r3
	bge	.L2249e
	mov	r5, #0x82
	mov	r0, #0x3f
	lsl	r5, #1
	neg	r0, r0
	ldr	r6, .L223f4	@ 0xfffffe00
	add	r5, r9
	mov	r7, r0
	b	.L223fc

	.align	2, 0
.L223f4:
	.word	0xfffffe00
	.pool

.L223fc:
	ldr	r1, [sp, #0x18]
	ldr	r3, [r1]
	cmp	r8, r3
	bne	.L2246c
	mov	r3, #0xde
	lsl	r3, #1
	add	r3, r9
	ldrb	r2, [r3]
	mov	r1, #0x1f
	ldrb	r3, [r5, #7]
	and	r2, r1
	lsl	r2, #1
	and	r3, r7
	orr	r3, r2
	strb	r3, [r5, #7]
	ldrb	r3, [r5, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #5]
	ldr	r2, [sp, #0x24]
	lsl	r3, r2, #3
	sub	r2, r3, r2
	ldr	r1, [r5, #0x10]
	cmp	r2, #0
	bge	.L22432
	ldr	r3, =0x1ff
	add	r2, r3
.L22432:
	asr	r2, #9
	ldr	r3, .L22464	@ 0x1ff
	add	r2, r1, r2
	sub	r2, #0xe
	and	r2, r3
	ldrh	r3, [r5, #6]
	and	r3, r6
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r4, [sp, #0x24]
	lsl	r3, r4, #1
	add	r3, r4
	ldr	r2, [r5, #0x14]
	cmp	r3, #0
	bge	.L22452
	add	r3, #0xff
.L22452:
	asr	r3, #8
	add	r3, r2, r3
	sub	r3, #0x14
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0xf1
	bl	Func_3dec
	b	.L22490

	.align	2, 0
.L22464:
	.word	0x1ff
	.pool

.L2246c:
	ldr	r3, =0x1ff
	ldr	r2, [r5, #0x10]
	and	r2, r3
	ldrh	r3, [r5, #6]
	and	r3, r6
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r3, [r5, #0x14]
	strb	r3, [r5, #4]
	ldrb	r3, [r5, #7]
	mov	r0, #4
	and	r3, r7
	strb	r3, [r5, #7]
	neg	r0, r0
	ldrb	r3, [r5, #5]
	mov	r2, r0
	and	r3, r2
	strb	r3, [r5, #5]
.L22490:
	ldr	r2, [sp, #0x10]
	mov	r1, #1
	ldr	r3, [r2]
	add	r8, r1
	add	r5, #0x1c
	cmp	r8, r3
	blt	.L223fc
.L2249e:
	ldr	r3, =iwram_1c94
	b	.L224ac

	.pool_aligned

.L224ac:
	ldr	r2, =iwram_1f34
	ldr	r5, [r3]
	ldr	r3, =iwram_1b04
	ldr	r2, [r2]
	ldr	r7, [r3]
	mov	r3, #0xd8
	add	r3, r2
	ldr	r1, [r3]
	mov	r8, r3
	cmp	r1, #0
	beq	.L22574
	mov	r6, r2
	add	r6, #0xdc
	ldr	r3, [r6]
	mov	r7, #0
	mov	r5, #0
	cmp	r3, #0
	bne	.L22570
	mov	r3, r2
	add	r3, #0xe0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L224fc
	ldr	r4, [sp, #0x18]
	ldr	r3, [r4]
	mov	r5, #0xe4
	lsl	r3, #2
	lsl	r5, #1
	add	r3, r5
	mov	r7, r9
	ldr	r3, [r7, r3]
	cmp	r3, #3
	bne	.L224f4
	mov	r7, #1
	mov	r5, #1
	b	.L224f8
.L224f4:
	mov	r7, #0x20
	mov	r5, #0x20
.L224f8:
	mov	r3, #0x1e
	b	.L22572
.L224fc:
	cmp	r3, #0
	bne	.L22566
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	mov	r2, #0xe4
	lsl	r3, #2
	lsl	r2, #1
	add	r3, r2
	mov	r4, r9
	ldr	r3, [r4, r3]
	cmp	r3, #0x10
	beq	.L2251e
	ldr	r0, [sp, #0x28]
	cmp	r0, #0
	bne	.L2255e
	cmp	r3, #0xf
	bne	.L2255e
.L2251e:
	cmp	r1, #1
	bne	.L22556
	cmp	r3, #0xf
	bne	.L2252a
	ldr	r0, =0xc4a
	b	.L22530
.L2252a:
	cmp	r3, #0x10
	bne	.L2253a
	ldr	r0, =0xc49
.L22530:
	mov	r1, #0xf
	mov	r2, #8
	bl	Func_21e48
	str	r0, [sp, #0x14]
.L2253a:
	mov	r1, #0x9b
	mov	r0, #0x66
	bl	_Func_bb7c0
	mov	r1, #1
	ldr	r0, [sp, #0x14]
	bl	Func_16418
	mov	r1, r8
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	mov	r3, #0x2d
	b	.L22572
.L22556:
	mov	r3, #0xc8
	mov	r7, #1
	mov	r5, #1
	b	.L22572
.L2255e:
	mov	r3, #0x28
	mov	r7, #0x10
	mov	r5, #0x10
	b	.L22572
.L22566:
	mov	r3, #0x3c
	str	r3, [r6]
	mov	r7, #1
	mov	r5, #1
	b	.L22574
.L22570:
	sub	r3, #1
.L22572:
	str	r3, [r6]
.L22574:
	mov	r3, #0xc0
	lsl	r3, #2
	and	r3, r5
	cmp	r3, #0
	beq	.L22586
	ldr	r2, [sp, #0x34]
	cmp	r2, #0
	beq	.L22586
	b	.L21f24
.L22586:
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	beq	.L22590
	b	.L21f2e
.L22590:
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.L225a0
	mov	r3, #2
	and	r3, r5
	cmp	r3, #0
	beq	.L225a0
	b	.L21f48
.L225a0:
	mov	r3, #0x90
	and	r3, r7
	cmp	r3, #0
	beq	.L225c2
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r4, [sp, #0x18]
	ldr	r5, [sp, #0x10]
	ldr	r0, [r4]
	ldr	r1, [r5]
	add	r0, #1
	bl	Func_b1c_from_thumb
	ldr	r6, [sp, #0x18]
	str	r0, [r6]
	b	.L225f0
.L225c2:
	mov	r3, #0x60
	and	r3, r7
	cmp	r3, #0
	beq	.L225e4
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r7, [sp, #0x18]
	ldr	r2, [sp, #0x10]
	ldr	r0, [r7]
	ldr	r1, [r2]
	add	r0, r1
	sub	r0, #1
	bl	Func_b1c_from_thumb
	str	r0, [r7]
	b	.L225f0
.L225e4:
	ldr	r2, =iwram_1f34
	ldr	r3, [r2]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	bne	.L225f0
	b	.L21f58
.L225f0:
	mov	r0, #0x80
	lsl	r0, #19
	ldr	r1, =0x1741
	bl	Func_387c
	ldr	r5, =0xea6
	ldr	r4, [sp, #0x30]
	mov	r6, #0
	add	r3, r4, r5
	strb	r6, [r3]
	mov	r0, #1
	bl	Func_30f8
	b	.L220ce
.L2260c:
	ldr	r7, [sp, #0x34]
	cmp	r7, #0
	beq	.L22620
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r9
	ldr	r2, [r2]
	str	r2, [r3, #0x40]
	b	.L2262c
.L22620:
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r9
	ldr	r2, [r2]
	str	r2, [r3, #0x3c]
.L2262c:
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r9
	mov	r0, #0
	ldr	r3, [r3]
	mov	r8, r0
	cmp	r8, r3
	bge	.L2265a
	mov	r6, #0xd8
	mov	r5, #0x88
	lsl	r6, #1
	lsl	r5, #1
	add	r6, r9
	add	r5, r9
.L22648:
	ldrh	r0, [r5]
	bl	Func_3f3c
	mov	r1, #1
	ldr	r3, [r6]
	add	r8, r1
	add	r5, #0x1c
	cmp	r8, r3
	blt	.L22648
.L2265a:
	ldr	r3, [sp, #0x30]
	ldr	r4, =0xea6
	add	r2, r3, r4
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, #0xd6
	lsl	r3, #1
	add	r3, r9
	ldr	r6, =0xf07f
	mov	r5, #3
	ldr	r0, [r3]
	mov	r1, #1
	ldr	r7, =0x44a
	bl	Func_16418
	mov	r12, r5
	mov	r4, #0
	mov	r5, #0
	mov	r14, r6
.L22680:
	add	r3, r5, r4
	ldr	r2, [sp, #0x30]
	mov	r0, #0
	lsl	r3, #1
	mov	r8, r0
	add	r1, r3, r2
.L2268c:
	mov	r2, #0
	mov	r0, r1
.L22690:
	mov	r3, r2
	mov	r6, r12
	and	r3, r6
	lsl	r3, #1
	add	r3, r0
	add	r3, r7
	mov	r6, r14
	add	r2, #1
	strh	r6, [r3]
	cmp	r2, #2
	ble	.L22690
	mov	r0, #1
	add	r8, r0
	mov	r2, r8
	add	r1, #0x40
	cmp	r2, #2
	ble	.L2268c
	add	r4, #1
	add	r5, #2
	cmp	r4, #6
	ble	.L22680
	ldr	r3, [sp, #0x30]
	ldr	r4, =0xea3
	add	r2, r3, r4
	mov	r3, #1
	strb	r3, [r2]
	bl	Func_30f8
	ldr	r0, =Func_21dfc
	bl	Func_4278
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L22706
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x1541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L22706:
	strh	r4, [r0]
	mov	r0, r9
	bl	Func_2df0
	ldr	r6, =0xea6
	ldr	r5, [sp, #0x30]
	mov	r3, #0
	add	r2, r5, r6
	strb	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r10
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_21e6c

.thumb_func_start Func_22768
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, r0
	mov	r0, r3
	ldr	r3, =iwram_1e8c
	mov	r7, r2
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r3]
	mov	r12, r2
	mov	r5, r12
	mov	r8, r3
	mov	r3, #1
	and	r5, r3
	lsl	r5, #12
	mov	r12, r5
	cmp	r4, #0
	bge	.L22794
	add	r7, r4
	mov	r4, #0
.L22794:
	add	r3, r4, r7
	cmp	r3, #0x1d
	ble	.L2279e
	mov	r3, #0x1e
	sub	r7, r3, r4
.L2279e:
	cmp	r1, #0
	bge	.L227a6
	add	r0, r1
	mov	r1, #0
.L227a6:
	add	r3, r1, r0
	cmp	r3, #0x1d
	ble	.L227b0
	mov	r3, #0x14
	sub	r0, r3, r1
.L227b0:
	cmp	r7, #0
	ble	.L22802
	cmp	r0, #0
	ble	.L22802
	ldr	r2, =0xea3
	add	r2, r8
	lsl	r3, r4, #1
	mov	r14, r2
	lsl	r2, r1, #6
	add	r6, r2, r3
	mov	r3, #2
	mov	r10, r3
.L227c8:
	mov	r5, r8
	mov	r2, r7
	add	r4, r6, r5
	cmp	r2, #0
	beq	.L227ea
	ldr	r3, =0xffffefff
	mov	r9, r3
.L227d6:
	ldrh	r3, [r4]
	mov	r5, r9
	and	r3, r5
	mov	r5, r12
	orr	r3, r5
	sub	r2, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r2, #0
	bne	.L227d6
.L227ea:
	lsr	r3, r1, #2
	mov	r4, r14
	mov	r2, r10
	lsl	r2, r3
	ldrb	r3, [r4]
	orr	r2, r3
	strb	r2, [r4]
	sub	r0, #1
	add	r6, #0x40
	add	r1, #1
	cmp	r0, #0
	bne	.L227c8
.L22802:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_22768

.thumb_func_start Func_2281c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	mov	r5, r0
	mov	r1, #0
	mov	r0, #1
	sub	sp, #4
	ldr	r7, [r3]
	bl	_Func_b6c08
	mov	r8, r0
	lsl	r3, r0, #1
	add	r3, r8
	lsl	r3, #1
	mov	r0, #0x1d
	sub	r0, r3
	mov	r3, #0xf
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #5
	mov	r2, #0x19
	bl	Func_22768
	ldrh	r3, [r5]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.L228a8
	mov	r0, #0
.L22856:
	mov	r3, #0x58
	ldrsh	r2, [r7, r3]
	ldrh	r3, [r0, r5]
	mov	r1, #0
	b	.L2286e
.L22860:
	add	r1, #1
	cmp	r1, #3
	bgt	.L22878
	lsl	r3, r1, #1
	add	r3, #0x58
	ldrsh	r2, [r7, r3]
	ldrh	r3, [r0, r5]
.L2286e:
	cmp	r2, r3
	beq	.L22878
	cmp	r2, #0xff
	bne	.L22860
	mov	r1, #4
.L22878:
	cmp	r1, #4
	beq	.L22898
	mov	r3, r8
	sub	r2, r3, r1
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	mov	r0, #0x1d
	sub	r0, r3
	mov	r3, #0xe
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #5
	bl	Func_22768
.L22898:
	add	r6, #1
	cmp	r6, #3
	bgt	.L228a8
	lsl	r3, r6, #1
	mov	r0, r3
	ldrh	r3, [r0, r5]
	cmp	r3, #0xff
	bne	.L22856
.L228a8:
	mov	r0, #0
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_2281c

.thumb_func_start Func_228bc
	push	{r5, lr}
	mov	r5, r0
	mov	r0, r1
	bl	Func_4620
	ldr	r1, =iwram_1f70
	mov	r2, #0xd
.L228ca:
	ldrb	r3, [r1]
	sub	r2, #1
	strh	r3, [r5]
	add	r1, #1
	add	r5, #2
	cmp	r2, #0
	bge	.L228ca
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_228bc

.thumb_func_start Func_228e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r2, r8
	ldrh	r3, [r2]
	mov	r10, r0
	mov	r9, r1
	cmp	r3, #0
	beq	.L2298e
	ldr	r3, =0x3fff
	ldr	r6, [sp, #0xc]
	mov	r11, r3
	mov	r5, r8
	sub	r6, #2
.L22916:
	ldrh	r0, [r5]
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L2297e
	ldrh	r2, [r5]
	mov	r3, r11
	and	r3, r2
	strh	r3, [r6, #2]
	mov	r1, #1
	add	r9, r1
	mov	r1, r10
	ldrh	r2, [r1]
	ldrh	r3, [r5]
	eor	r3, r2
	mov	r2, r11
	and	r3, r2
	add	r6, #2
	mov	r0, #0
	cmp	r3, #0
	beq	.L2295e
	ldr	r7, .L22970	@ 0x3fff
	mov	r4, r5
.L2294a:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.L2295e
	add	r1, #4
	ldrh	r3, [r4]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r7
	cmp	r3, #0
	bne	.L2294a
.L2295e:
	cmp	r0, #0x20
	bne	.L2297e
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	ldr	r2, .L22974	@ 0x8000
	ldrh	r3, [r6]
	orr	r3, r2
	b	.L2297c

	.align	2, 0
.L22970:
	.word	0x3fff
.L22974:
	.word	0x8000
	.pool

.L2297c:
	strh	r3, [r6]
.L2297e:
	mov	r3, r8
	add	r5, #4
	add	r3, #0x7c
	cmp	r5, r3
	bgt	.L2298e
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L22916
.L2298e:
	mov	r1, r10
	ldrh	r3, [r1]
	cmp	r3, #0
	beq	.L22a18
	mov	r2, r9
	lsl	r3, r2, #1
	ldr	r1, [sp, #0xc]
	ldr	r2, =0x3fff
	mov	r5, r10
	add	r7, r3, r1
	mov	r11, r2
.L229a4:
	ldrh	r0, [r5]
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L22a08
	mov	r1, r8
	ldrh	r2, [r1]
	ldrh	r3, [r5]
	eor	r3, r2
	mov	r2, r11
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	beq	.L229de
	ldr	r6, .L229f0	@ 0x3fff
	mov	r4, r5
.L229ca:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.L229de
	add	r1, #4
	ldrh	r3, [r4]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r6
	cmp	r3, #0
	bne	.L229ca
.L229de:
	cmp	r0, #0x20
	bne	.L22a08
	ldr	r3, [sp]
	add	r3, #1
	str	r3, [sp]
	ldrh	r3, [r5]
	ldr	r2, .L229f4	@ 0x4000
	mov	r1, r11
	b	.L229fc

	.align	2, 0
.L229f0:
	.word	0x3fff
.L229f4:
	.word	0x4000
	.pool

.L229fc:
	and	r3, r1
	orr	r3, r2
	mov	r2, #1
	strh	r3, [r7]
	add	r9, r2
	add	r7, #2
.L22a08:
	mov	r3, r10
	add	r5, #4
	add	r3, #0x7c
	cmp	r5, r3
	bgt	.L22a18
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L229a4
.L22a18:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #8]
	str	r3, [r1]
	ldr	r2, [sp]
	ldr	r3, [sp, #0x30]
	mov	r0, r9
	str	r2, [r3]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_228e4

.thumb_func_start Func_22a38
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	mov	r6, r3
	bl	Func_4080
	mov	r5, r0
	cmp	r5, #0x60
	beq	.L22a6c
	mov	r1, r5
	mov	r0, r6
	bl	Func_21b30
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	Func_1eadc
.L22a6c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_22a38
