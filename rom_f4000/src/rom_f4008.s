	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f4008
	push	{lr}
	ldr	r3, =0x40
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #9
	bl	_Func_f9080
	bl	Func_f4168
	mov	r0, #0
	b	.Lf4024

	.pool_aligned

.Lf4024:
	pop	{r1}
	bx	r1
.func_end Func_f4008

.thumb_func_start Func_f4028
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	mov	r3, #0x98
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	lsl	r3, #17
	str	r3, [r5, #0x20]
	ldr	r3, =iwram_1ce0
	mov	r6, #0
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	strh	r6, [r5, #0x36]
	str	r6, [r5, #0x1c]
	str	r6, [r3, #0xc]
	str	r6, [r3, #0x10]
	str	r6, [r5, #0x18]
	sub	sp, #0xc
	bl	Func_49ac
	mov	r0, r5
	add	r0, #0xc
	bl	Func_4cb4
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	Func_4c1c
	mov	r3, #0x34
	ldrsh	r0, [r5, r3]
	bl	Func_4bd4
	mov	r0, sp
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	mov	r0, #0xfa
	mov	r1, #0xc0
	ldr	r3, =Func_8ac
	lsl	r1, #8
	lsl	r0, #16
	bl	_call_via_r3
	mov	r1, r0
	mov	r0, #0xfa
	lsl	r0, #16
	ldr	r2, =0x7fff0000
	bl	Func_5258
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_f4028

.thumb_func_start Func_f40b4
	push	{lr}
	lsl	r0, #16
	lsl	r1, #16
	asr	r1, #16
	asr	r0, #16
	mul	r0, r1
	mov	r3, r0
	cmp	r0, #0
	bge	.Lf40c8
	add	r3, #0xff
.Lf40c8:
	lsl	r0, r3, #8
	asr	r0, #16
	pop	{r1}
	bx	r1
.func_end Func_f40b4

.thumb_func_start Func_f40d0
	push	{lr}
	lsl	r0, #16
	lsl	r1, #16
	asr	r1, #16
	asr	r0, #8
	bl	Func_af0_from_thumb
	lsl	r0, #16
	asr	r0, #16
	pop	{r1}
	bx	r1
.func_end Func_f40d0

.thumb_func_start Func_f40e8
	push	{lr}
	mov	r1, r0
	lsl	r1, #16
	mov	r0, #0x80
	asr	r1, #16
	lsl	r0, #9
	bl	Func_af0_from_thumb
	lsl	r0, #16
	asr	r0, #16
	pop	{r1}
	bx	r1
.func_end Func_f40e8

.thumb_func_start Func_f4100
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #0
	ble	.Lf415c
	mov	r1, #0x1f
	mov	r8, r1
	mov	r2, #0xf8
	mov	r1, #0xf8
	lsl	r2, #2
	lsl	r1, #7
	mov	r14, r2
	mov	r12, r1
	mov	r0, r3
.Lf4122:
	ldrh	r4, [r7]
	mov	r2, r8
	mov	r3, r4
	and	r3, r2
	mov	r1, r14
	mov	r2, r4
	and	r2, r1
	mul	r3, r5
	mov	r1, r12
	mul	r2, r5
	and	r1, r4
	mul	r1, r5
	lsr	r4, r3, #16
	mov	r3, r8
	and	r4, r3
	lsr	r2, #16
	mov	r3, r14
	and	r2, r3
	orr	r4, r2
	lsr	r1, #16
	mov	r2, r12
	and	r1, r2
	orr	r4, r1
	sub	r0, #1
	strh	r4, [r6]
	add	r7, #2
	add	r6, #2
	cmp	r0, #0
	bne	.Lf4122
.Lf415c:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f4100

.thumb_func_start Func_f4168
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =0xfffffd00
	ldr	r1, =0x60e
	mov	r0, #0x29
	add	sp, r5
	bl	Func_48b0
	mov	r1, #0x80
	lsl	r1, #2
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r1, =0x782c
	str	r0, [sp, #0x74]
	mov	r0, #0x27
	bl	Func_48f4
	mov	r1, #0xc3
	str	r0, [sp, #0x70]
	lsl	r1, #3
	mov	r0, #0x2d
	bl	Func_48f4
	mov	r1, #0x4c
	str	r0, [sp, #0x6c]
	mov	r0, #0xc
	bl	Func_48f4
	str	r0, [sp, #0x68]
	ldr	r0, =0xc
	bl	Func_2f3c
	bl	Func_f4028
	bl	Func_40e8
	ldr	r2, =iwram_1d18
	mov	r3, #0
	mov	r0, #0
	strb	r3, [r2]
	ldr	r6, =0x6003000
	mov	r11, r0
	mov	r5, #0
	mov	r4, #0
.Lf41cc:
	mov	r1, #0
	mov	r0, r4
.Lf41d0:
	mov	r3, r11
	add	r2, r3, r6
	mov	r7, #2
	add	r3, r1, r0
	add	r1, #1
	strh	r3, [r2]
	add	r11, r7
	cmp	r1, #0x20
	bne	.Lf41d0
	add	r5, #1
	add	r4, #0x1e
	cmp	r5, #0x14
	bne	.Lf41cc
	ldr	r0, =0x42
	bl	Func_2f40
	mov	r1, #0xa0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	add	r1, sp, #0x100
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xe0
	lsl	r0, #1
	add	r4, r0
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6004000
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x43
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, [sp, #0x74]
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	ldr	r1, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #2
	add	r4, r1
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6010000
	ldr	r2, =0x84001f00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r5, #0x80
	lsl	r5, #1
	mov	r3, r5
	ldr	r1, =0x5000200
	ldr	r0, [sp, #0x74]
	mov	r2, #0
	bl	Func_f4100
	mov	r1, #0xa0
	mov	r3, r5
	lsl	r1, #19
	mov	r2, #0
	add	r0, sp, #0x100
	bl	Func_f4100
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lf42ac	@ 0x686
	strh	r3, [r2]
	ldr	r3, .Lf42b0	@ 0x3737
	add	r2, #0x3e
	strh	r3, [r2]
	ldr	r3, .Lf42b4	@ 0x2723
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, .Lf42b8	@ 0x3340
	sub	r2, #0x4a
	strh	r3, [r2]
	ldr	r3, .Lf42bc	@ 0x3f44
	add	r2, #0x50
	strh	r3, [r2]
	ldr	r3, .Lf42c0	@ 0x810
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r2, #0
	strh	r2, [r3, #4]
	strh	r2, [r3, #6]
	ldr	r3, =REG_BG1HOFS
	ldr	r1, .Lf42c4	@ 0xff60
	strh	r2, [r3]
	b	.Lf4318

	.align	2, 0
.Lf42ac:
	.word	0x686
.Lf42b0:
	.word	0x3737
.Lf42b4:
	.word	0x2723
.Lf42b8:
	.word	0x3340
.Lf42bc:
	.word	0x3f44
.Lf42c0:
	.word	0x810
.Lf42c4:
	.word	0xff60
	.pool

.Lf4318:
	add	r3, #2
	strh	r1, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r1, [r3]
	ldr	r1, =0xf0
	ldr	r2, =0xa0
	add	r3, #0x26
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	mov	r4, sp
	mov	r3, #1
	mov	r2, #0
	add	r4, #0x98
	neg	r3, r3
	ldr	r0, [sp, #0x70]
	mov	r1, #0xe1
	lsl	r1, #7
	str	r2, [sp, #0x60]
	str	r2, [sp, #0x58]
	str	r3, [sp, #0x54]
	str	r2, [sp, #0x50]
	str	r2, [sp, #0x4c]
	str	r4, [sp, #0x24]
	str	r4, [sp, #0x14]
	mov	r11, r2
	mov	r6, #0x7f
	mov	r7, #0x1f
	add	r5, r0, r1
	b	.Lf4368

	.pool_aligned

.Lf4368:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #16
	str	r0, [r5, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #14
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	add	r0, #0x20
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #14
	mov	r2, #0
	str	r0, [r5, #0x14]
	str	r2, [r5, #0x18]
	ldr	r0, [sp, #0x14]
	mov	r3, #0x96
	lsl	r3, #1
	stmia	r0!, {r3}
	mov	r1, #1
	add	r11, r1
	mov	r4, r0
	mov	r3, r11
	str	r4, [sp, #0x14]
	add	r5, #0x1c
	cmp	r3, #2
	bne	.Lf4368
	mov	r4, sp
	add	r3, sp, #0xe0
	add	r4, #0x90
	str	r2, [r3, #0xc]
	str	r2, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r4, [sp, #0x34]
	str	r2, [r4, #4]
	str	r2, [sp, #0x90]
	bl	Func_4458
	mov	r1, #6
	bl	Func_b50_from_thumb
	mov	r5, sp
	add	r5, #0x88
	str	r0, [sp, #0x88]
	str	r5, [sp, #0x28]
.Lf43f0:
	bl	Func_4458
	mov	r1, #6
	bl	Func_b50_from_thumb
	ldr	r6, [sp, #0x28]
	str	r0, [r6, #4]
	ldr	r3, [sp, #0x88]
	cmp	r3, r0
	beq	.Lf43f0
	ldr	r7, [sp, #0x70]
	mov	r0, #0xe1
	lsl	r0, #7
	mov	r3, #0xa0
	add	r2, r7, r0
	lsl	r3, #14
	ldr	r1, =0x7084
	str	r3, [r2]
	mov	r0, #0xc0
	ldr	r2, =0x7088
	add	r3, r7, r1
	lsl	r0, #15
	ldr	r1, =0xff600000
	str	r0, [r3]
	add	r3, r7, r2
	str	r1, [r3]
	ldr	r3, =0x709c
	ldr	r4, =0x70a0
	add	r2, r7, r3
	ldr	r3, =0xffd80000
	ldr	r5, =0x70a4
	str	r3, [r2]
	add	r3, r7, r4
	str	r0, [r3]
	add	r3, r7, r5
	str	r1, [r3]
	bl	_Func_15f30
	mov	r6, #6
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #3
	mov	r0, #0x12
	str	r6, [sp]
	bl	_Func_162d4
	ldr	r7, [sp, #0x6c]
	mov	r1, r0
	mov	r0, #0x99
	ldr	r5, =0x906
	lsl	r0, #3
	mov	r8, r6
	add	r6, r7, r0
	str	r1, [r6]
	mov	r0, r5
	mov	r2, #0x30
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r3, =ewram_240
	ldr	r2, [r6]
	ldr	r0, [r3, #0x10]
	mov	r1, #6
	mov	r3, #0
	str	r3, [sp]
	bl	_Func_1ea08
	mov	r1, r8
	str	r1, [sp]
	mov	r2, #8
	mov	r1, #0x10
	mov	r3, #4
	mov	r0, #0x16
	bl	_Func_162d4
	mov	r2, #0x9a
	lsl	r2, #3
	mov	r1, r0
	add	r6, r7, r2
	mov	r0, r5
	str	r1, [r6]
	add	r0, #0xa
	mov	r2, #0
	mov	r3, #0
	add	r5, #0xb
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r3, #8
	ldr	r1, [r6]
	mov	r2, #0
	bl	_Func_1e7c0
	ldr	r4, [sp, #0x68]
	mov	r3, #0
	add	r4, #0xc
	mov	r5, r6
	str	r3, [sp, #0x64]
	str	r4, [sp, #0x30]
	str	r5, [sp, #0x40]
.Lf44b8:
	ldr	r7, [sp, #0x64]
	mov	r6, #0
	mov	r8, r6
	cmp	r7, #0x10
	bgt	.Lf44e2
	mov	r6, #0x80
	lsl	r5, r7, #12
	lsl	r6, #1
	ldr	r1, =0x5000200
	mov	r2, r5
	mov	r3, r6
	ldr	r0, [sp, #0x74]
	bl	Func_f4100
	mov	r1, #0xa0
	add	r0, sp, #0x100
	lsl	r1, #19
	mov	r2, r5
	mov	r3, r6
	bl	Func_f4100
.Lf44e2:
	bl	Func_49ac
	ldr	r0, [sp, #0x68]
	ldr	r1, [sp, #0x30]
	bl	Func_51d8
	ldr	r3, =0xc0006000
	ldr	r0, [sp, #0x6c]
	mov	r2, #0xc8
	str	r3, [r0, r2]
	mov	r3, #0xd6
	mov	r2, #0xcc
	lsl	r3, #2
	str	r3, [r0, r2]
	ldr	r3, =0x40102020
	mov	r2, #0xd0
	str	r3, [r0, r2]
	mov	r3, #0xe6
	mov	r2, #0xd4
	lsl	r3, #2
	str	r3, [r0, r2]
	ldr	r3, =0x40102030
	mov	r2, #0xd8
	str	r3, [r0, r2]
	mov	r3, #0xe8
	mov	r2, #0xdc
	lsl	r3, #2
	str	r3, [r0, r2]
	ldr	r3, =0x40042020
	mov	r2, #0xe0
	mov	r1, #0xea
	str	r3, [r0, r2]
	lsl	r1, #2
	mov	r3, #0xe4
	str	r1, [r0, r3]
	ldr	r3, =0x40042030
	mov	r2, #0xe8
	str	r3, [r0, r2]
	mov	r3, #0xec
	str	r1, [r0, r3]
	mov	r5, #0xec
	mov	r1, #0
	ldr	r6, =0x40202000
	ldr	r2, [sp, #0x28]
	mov	r11, r1
	lsl	r5, #2
	mov	r4, #0x20
	mov	r0, #0xf4
	mov	r1, #0xf0
.Lf4544:
	ldr	r7, [sp, #0x6c]
	mov	r3, r4
	orr	r3, r6
	str	r3, [r7, r1]
	ldmia	r2!, {r3}
	lsl	r3, #3
	add	r3, r5
	str	r3, [r7, r0]
	mov	r3, #1
	add	r11, r3
	mov	r7, r11
	add	r0, #8
	add	r1, #8
	add	r4, #0x10
	cmp	r7, #2
	bne	.Lf4544
	ldr	r3, [sp, #0x60]
	mov	r0, #7
	sub	r3, #2
	str	r0, [sp, #0x44]
	cmp	r3, #1
	bhi	.Lf463c
	mov	r1, #0
	mov	r3, #0x38
	mov	r11, r1
	mov	r2, r3
	mov	r1, #0xe0
	mov	r7, r3
	lsl	r1, #14
	mov	r6, #0
	add	r2, #0xcc
	add	r7, #0xc8
.Lf4584:
	ldr	r4, [sp, #0x58]
	mov	r3, r11
	lsl	r5, r3, #2
	cmp	r4, r6
	bne	.Lf459c
	ldr	r0, =0x12f
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	bl	_Func_f9080
	ldr	r2, [sp, #0xc]
	ldr	r1, [sp, #0x10]
.Lf459c:
	ldr	r0, [sp, #0x58]
	cmp	r0, r6
	blt	.Lf45be
	ldr	r3, =0x80002040
	ldr	r4, [sp, #0x6c]
	orr	r3, r1
	str	r3, [r4, r7]
	add	r3, sp, #0xe0
	ldr	r3, [r3, r5]
	lsl	r3, #5
	add	r3, #0x98
	str	r3, [r4, r2]
	ldr	r5, [sp, #0x44]
	add	r5, #1
	str	r5, [sp, #0x44]
	add	r2, #8
	add	r7, #8
.Lf45be:
	mov	r3, #1
	mov	r0, #0x80
	add	r11, r3
	lsl	r0, #14
	mov	r4, r11
	add	r1, r0
	add	r6, #5
	cmp	r4, #4
	bne	.Lf4584
	ldr	r5, [sp, #0x58]
	cmp	r5, #0x13
	ble	.Lf463c
	ldr	r6, [sp, #0x54]
	cmp	r6, #0
	blt	.Lf463c
	ldr	r3, =.Lf53fc
	ldrb	r2, [r3, r6]
	mov	r7, #0
	mov	r11, r7
	cmp	r2, #0
	beq	.Lf463c
	ldr	r3, =.Lf5400
	ldrb	r3, [r3, r6]
	ldr	r1, [sp, #0x44]
	lsl	r3, #3
	mov	r0, #0x60
	mov	r4, r3
	lsl	r3, r1, #3
	mov	r1, r3
	mov	r12, r0
	mov	r0, r3
	ldr	r3, =0x80002000
	mov	r5, r2
	mov	r14, r3
	mov	r3, #0x9e
	lsl	r2, r5, #4
	lsl	r3, #2
	ldr	r7, =0x1ff
	add	r4, #0x98
	add	r0, #0xcc
	add	r1, #0xc8
	sub	r2, r3, r2
.Lf4612:
	mov	r3, r2
	and	r3, r7
	mov	r6, r12
	lsl	r3, #16
	orr	r3, r6
	mov	r6, r14
	orr	r3, r6
	ldr	r6, [sp, #0x6c]
	str	r3, [r6, r1]
	str	r4, [r6, r0]
	ldr	r3, [sp, #0x44]
	mov	r6, #1
	add	r3, #1
	add	r11, r6
	add	r0, #8
	add	r1, #8
	str	r3, [sp, #0x44]
	add	r4, #0x20
	add	r2, #0x20
	cmp	r11, r5
	bne	.Lf4612
.Lf463c:
	ldr	r7, [sp, #0x60]
	cmp	r7, #2
	beq	.Lf4644
	b	.Lf47bc
.Lf4644:
	ldr	r0, [sp, #0x58]
	cmp	r0, #0x14
	bne	.Lf46d8
	ldr	r1, [sp, #0x50]
	cmp	r1, #0
	ble	.Lf46d8
	mov	r0, r1
	bl	_Func_79700
	ldr	r3, [sp, #0x50]
	mov	r2, #1
	str	r2, [sp, #0x48]
	cmp	r3, #9
	ble	.Lf4686
	ldr	r5, [sp, #0x50]
	mov	r4, #2
	str	r4, [sp, #0x48]
	cmp	r5, #0x63
	ble	.Lf4686
	ldr	r7, [sp, #0x50]
	ldr	r0, =0x3e7
	mov	r6, #3
	str	r6, [sp, #0x48]
	cmp	r7, r0
	ble	.Lf4686
	ldr	r2, [sp, #0x50]
	ldr	r3, =0x270f
	mov	r1, #4
	str	r1, [sp, #0x48]
	cmp	r2, r3
	ble	.Lf4686
	mov	r4, #5
	str	r4, [sp, #0x48]
.Lf4686:
	ldr	r5, [sp, #0x48]
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	mov	r0, #9
	sub	r0, r3
	mov	r2, r5
	mov	r3, #6
	str	r3, [sp]
	add	r2, #0xc
	mov	r1, #0x10
	mov	r3, #3
	bl	_Func_162d4
	ldr	r7, =0x4cc
	ldr	r6, [sp, #0x6c]
	add	r5, r6, r7
	ldr	r6, =0x907
	mov	r1, r0
	str	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r0, [sp, #0x48]
	lsl	r2, r0, #3
	ldr	r1, [r5]
	add	r2, #0x30
	sub	r0, r6, #1
	mov	r3, #0
	bl	_Func_1e7c0
	mov	r1, #0
	ldr	r2, [r5]
	ldr	r0, [sp, #0x50]
	str	r1, [sp]
	mov	r3, #0x30
	ldr	r1, [sp, #0x48]
	bl	_Func_1ea08
.Lf46d8:
	ldr	r2, [sp, #0x4c]
	cmp	r2, #0
	ble	.Lf46e2
	sub	r2, #1
	str	r2, [sp, #0x4c]
.Lf46e2:
	ldr	r3, [sp, #0x58]
	cmp	r3, #0x13
	ble	.Lf4742
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf4742
	mov	r0, #0x70
	bl	_Func_f9080
	ldr	r4, [sp, #0x50]
	cmp	r4, #0
	ble	.Lf470a
	mov	r5, #3
	mov	r6, #0
	str	r5, [sp, #0x60]
	str	r6, [sp, #0x4c]
	b	.Lf4742
.Lf470a:
	mov	r0, #0
	mov	r3, #6
	str	r0, [sp, #0x60]
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #8
	mov	r3, #4
	mov	r0, #0x16
	bl	_Func_162d4
	ldr	r5, =0x910
	ldr	r2, [sp, #0x40]
	mov	r1, r0
	str	r1, [r2]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r3, [sp, #0x40]
	mov	r7, #1
	ldr	r1, [r3]
	add	r0, r5, #1
	mov	r2, #0
	mov	r3, #8
	mov	r8, r7
	bl	_Func_1e7c0
.Lf4742:
	ldr	r4, [sp, #0x58]
	add	r4, #1
	str	r4, [sp, #0x58]
	b	.Lf49e6

	.pool_aligned

.Lf47bc:
	ldr	r5, [sp, #0x60]
	cmp	r5, #3
	bne	.Lf484c
	ldr	r6, [sp, #0x4c]
	cmp	r6, #0
	bne	.Lf47f8
	mov	r7, #0
	ldr	r0, [sp, #0x6c]
	ldr	r1, =0x4cc
	str	r7, [sp, #0x50]
	add	r3, r0, r1
	ldr	r2, [r3]
	mov	r0, #0
	ldr	r1, [sp, #0x48]
	mov	r3, #0x28
	str	r7, [sp]
	bl	_Func_1ea08
	ldr	r3, =ewram_240
	ldr	r2, [sp, #0x6c]
	mov	r4, #0x99
	lsl	r4, #3
	ldr	r0, [r3, #0x10]
	add	r3, r2, r4
	ldr	r2, [r3]
	mov	r1, #6
	mov	r3, #0
	str	r7, [sp]
	bl	_Func_1ea08
.Lf47f8:
	ldr	r5, [sp, #0x4c]
	cmp	r5, #0xf
	bne	.Lf4844
	ldr	r7, [sp, #0x6c]
	ldr	r0, =0x4cc
	mov	r6, #0
	str	r6, [sp, #0x60]
	add	r3, r7, r0
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #8
	mov	r3, #4
	mov	r0, #0x16
	bl	_Func_162d4
	ldr	r5, =0x910
	ldr	r2, [sp, #0x40]
	mov	r1, r0
	str	r1, [r2]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r3, [sp, #0x40]
	add	r0, r5, #1
	ldr	r1, [r3]
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
	mov	r4, #1
	mov	r8, r4
.Lf4844:
	ldr	r5, [sp, #0x4c]
	add	r5, #1
	str	r5, [sp, #0x4c]
	b	.Lf49e6
.Lf484c:
	ldr	r6, [sp, #0x60]
	cmp	r6, #0
	beq	.Lf4854
	b	.Lf49e6
.Lf4854:
	ldr	r7, [sp, #0x64]
	cmp	r7, #0x11
	bgt	.Lf485c
	b	.Lf49e6
.Lf485c:
	ldr	r7, =iwram_1b04
	ldr	r0, =iwram_1ae8
	ldr	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r0]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf488a
	ldr	r1, [sp, #0x70]
	ldr	r3, =0x7084
	add	r2, r1, r3
	ldr	r3, [r2]
	mov	r1, #0x80
	lsl	r1, #11
	add	r3, r1
	str	r3, [r2]
	ldr	r4, [sp, #0x70]
	ldr	r5, =0x70a0
	add	r2, r4, r5
	ldr	r3, [r2]
	add	r3, r1
	str	r3, [r2]
.Lf488a:
	ldr	r3, [r0]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf48ac
	ldr	r6, [sp, #0x70]
	ldr	r0, =0x7084
	add	r2, r6, r0
	ldr	r3, [r2]
	ldr	r1, =0xfffc0000
	add	r3, r1
	str	r3, [r2]
	ldr	r3, =0x70a0
	add	r2, r6, r3
	ldr	r3, [r2]
	add	r3, r1
	str	r3, [r2]
.Lf48ac:
	ldr	r4, [sp, #0x70]
	ldr	r5, =0x7084
	add	r2, r4, r5
	ldr	r3, [r2]
	ldr	r0, =0x1fffff
	cmp	r3, r0
	bgt	.Lf48c0
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2]
.Lf48c0:
	mov	r1, #0xa0
	lsl	r1, #16
	cmp	r3, r1
	ble	.Lf48ca
	str	r1, [r2]
.Lf48ca:
	ldr	r3, =0x70a0
	ldr	r6, [sp, #0x70]
	add	r2, r6, r3
	ldr	r3, [r2]
	cmp	r3, r0
	bgt	.Lf48dc
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2]
.Lf48dc:
	cmp	r3, r1
	ble	.Lf48e2
	str	r1, [r2]
.Lf48e2:
	ldr	r6, =ewram_240
	bl	_Func_77348
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [r6, #0x10]
	lsl	r3, #1
	cmp	r2, r3
	bcs	.Lf4902
	ldr	r4, [sp, #0x40]
	mov	r1, #1
	ldr	r0, [r4]
	bl	_Func_16418
	bl	.Lf535e
.Lf4902:
	ldr	r5, [r7]
	mov	r3, #2
	and	r5, r3
	cmp	r5, #0
	beq	.Lf4920
	mov	r0, #0x71
	bl	_Func_f9080
	ldr	r5, [sp, #0x40]
	mov	r1, #1
	ldr	r0, [r5]
	bl	_Func_16418
	bl	.Lf535e
.Lf4920:
	ldr	r3, [r7]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf49e6
	mov	r0, #0x97
	lsl	r0, #1
	bl	_Func_f9080
	ldr	r7, [sp, #0x40]
	mov	r1, #1
	ldr	r0, [r7]
	bl	_Func_16418
	mov	r0, #1
	str	r0, [sp, #0x60]
	bl	_Func_77348
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	str	r3, [sp, #0x5c]
	ldr	r1, [sp, #0x5c]
	ldr	r3, [r6, #0x10]
	cmp	r1, r3
	bls	.Lf4956
	str	r3, [sp, #0x5c]
.Lf4956:
	ldr	r2, [sp, #0x5c]
	neg	r0, r2
	bl	_Func_79700
	ldr	r0, [r6, #0x10]
	ldr	r4, [sp, #0x6c]
	mov	r6, #0x99
	lsl	r6, #3
	add	r3, r4, r6
	ldr	r2, [r3]
	mov	r1, #6
	mov	r3, #0
	str	r5, [sp]
	bl	_Func_1ea08
	mov	r7, #0
	ldr	r0, [sp, #0x70]
	mov	r1, #0xe1
	mov	r11, r7
	lsl	r1, #7
	ldr	r7, [sp, #0x24]
	add	r6, r0, r1
.Lf4982:
	mov	r2, r11
	cmp	r2, #1
	ble	.Lf4992
	ldr	r3, =0xff4c0000
	str	r3, [r6, #8]
	mov	r3, #0xc0
	lsl	r3, #15
	str	r3, [r6, #4]
.Lf4992:
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x40
	lsl	r3, #12
	str	r3, [r6, #0xc]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x30
	lsl	r3, #13
	str	r3, [r6, #0x10]
	bl	Func_4458
	mov	r5, #0x3f
	mov	r1, #6
	and	r5, r0
	ldr	r0, [r6, #4]
	bl	Func_af0_from_thumb
	add	r5, #0x8c
	lsl	r5, #12
	add	r5, r0
	str	r5, [r6, #0x14]
	bl	Func_4458
	mov	r1, #0x90
	lsl	r1, #7
	bl	Func_b50_from_thumb
	mov	r3, #0x96
	lsl	r3, #1
	str	r0, [r6, #0x18]
	stmia	r7!, {r3}
	mov	r3, #1
	add	r11, r3
	mov	r4, r11
	add	r6, #0x1c
	cmp	r4, #2
	bne	.Lf4982
.Lf49e6:
	mov	r5, r8
	cmp	r5, #1
	bne	.Lf4a40
	ldr	r6, [sp, #0x70]
	mov	r7, #0xe1
	ldr	r0, =0x7084
	lsl	r7, #7
	mov	r3, #0xa0
	add	r2, r6, r7
	lsl	r3, #14
	str	r3, [r2]
	ldr	r1, =0x7088
	add	r3, r6, r0
	mov	r0, #0xc0
	lsl	r0, #15
	str	r0, [r3]
	add	r3, r6, r1
	ldr	r1, =0xff600000
	str	r1, [r3]
	ldr	r3, =0x709c
	ldr	r4, =0x70a0
	add	r2, r6, r3
	ldr	r3, =0xffd80000
	ldr	r5, =0x70a4
	str	r3, [r2]
	add	r3, r6, r4
	str	r0, [r3]
	add	r3, r6, r5
	str	r1, [r3]
	bl	Func_4458
	mov	r1, #6
	bl	Func_b50_from_thumb
	str	r0, [sp, #0x88]
.Lf4a2c:
	bl	Func_4458
	mov	r1, #6
	bl	Func_b50_from_thumb
	ldr	r6, [sp, #0x28]
	str	r0, [r6, #4]
	ldr	r3, [sp, #0x88]
	cmp	r3, r0
	beq	.Lf4a2c
.Lf4a40:
	mov	r7, #0
	mov	r11, r7
	mov	r0, sp
	add	r0, #0x80
	mov	r1, r11
	str	r0, [sp, #0x2c]
	mov	r2, #1
	str	r1, [r0]
	ldr	r3, =0x7088
	mov	r5, #0
	str	r2, [sp, #0x84]
	mov	r4, #1
	ldr	r2, [sp, #0x2c]
	mov	r10, r5
	mov	r12, r3
	mov	r14, r0
	lsl	r3, r4, #3
	mov	r0, r10
	ldr	r1, [r0, r2]
	sub	r3, r4
	lsl	r3, #2
	mov	r6, r12
	add	r7, r3, r6
	lsl	r3, r1, #3
	sub	r3, r1
	lsl	r2, r3, #2
	ldr	r3, [sp, #0x70]
	add	r2, r12
	ldr	r2, [r3, r2]
	ldr	r3, [r3, r7]
	mov	r8, r3
	add	r6, sp, #0x84
	cmp	r2, r8
	ble	.Lf4af4
.Lf4a84:
	mov	r0, #1
	neg	r0, r0
	add	r10, r0
	str	r1, [r6]
	mov	r1, r10
	sub	r6, #4
	sub	r5, #4
	cmp	r1, #0
	blt	.Lf4af0
	mov	r2, r14
	mov	r0, r5
	ldr	r1, [r0, r2]
	lsl	r3, r1, #3
	sub	r3, r1
	lsl	r2, r3, #2
	ldr	r3, [sp, #0x70]
	add	r2, r12
	ldr	r2, [r3, r2]
	ldr	r3, [r3, r7]
	mov	r8, r3
	cmp	r2, r8
	bgt	.Lf4a84
	b	.Lf4af4

	.pool_aligned

.Lf4af0:
	mov	r5, r10
	lsl	r0, r5, #2
.Lf4af4:
	add	r3, r0, #4
	mov	r6, r14
	str	r4, [r3, r6]
	ldr	r1, [sp, #0x44]
	mov	r7, #0
	lsl	r3, r1, #3
	mov	r0, #0xf0
	mov	r2, #0xcc
	add	r2, r3
	mov	r11, r7
	add	r0, sp
	add	r3, #0xc8
	ldr	r7, [sp, #0x2c]
	add	r6, sp, #0xc8
	mov	r9, r0
	mov	r10, r2
	mov	r8, r3
.Lf4b16:
	ldr	r2, [r7]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r4, [sp, #0x70]
	lsl	r3, #2
	mov	r5, #0xe1
	add	r3, r4, r3
	lsl	r5, #7
	add	r4, r3, r5
	mov	r0, r4
	mov	r1, r6
	str	r4, [sp, #8]
	bl	Func_5268
	ldr	r2, [r6, #8]
	ldr	r0, =0x15d
	ldr	r4, [sp, #8]
	cmp	r2, r0
	bgt	.Lf4b44
	mov	r3, #0xaf
	lsl	r3, #1
	str	r3, [r6, #8]
	mov	r2, r3
.Lf4b44:
	ldr	r3, =0x28a
	cmp	r2, r3
	ble	.Lf4b4e
	str	r3, [r6, #8]
	mov	r2, r3
.Lf4b4e:
	ldr	r3, [r7]
	ldr	r1, =0xfffffea2
	lsl	r3, #2
	add	r2, r1
	mov	r5, r9
	str	r2, [r5, r3]
	ldr	r5, [r7]
	mov	r0, r9
	lsl	r3, r5, #2
	ldr	r1, [r0, r3]
	lsr	r3, r1, #31
	add	r1, r3
	asr	r1, #1
	mov	r0, #0x80
	add	r1, #0x80
	lsl	r0, #4
	str	r4, [sp, #8]
	bl	Func_af0_from_thumb
	ldr	r3, [r6]
	sub	r2, r3, r0
	ldr	r3, [r6, #4]
	sub	r0, r3, r0
	mov	r3, r0
	mov	r1, #0x10
	add	r3, #0x60
	neg	r1, r1
	ldr	r4, [sp, #8]
	cmp	r3, r1
	ble	.Lf4bd8
	lsl	r1, r5, #25
	mov	r5, #0x9e
	lsl	r5, #2
	add	r3, r2, r5
	ldr	r2, =0x1ff
	and	r3, r2
	lsl	r3, #16
	sub	r2, #0x9f
	orr	r1, r3
	add	r3, r0, r2
	mov	r2, #0xff
	and	r3, r2
	orr	r1, r3
	ldr	r3, =0x40002300
	orr	r1, r3
	ldr	r3, [sp, #0x6c]
	mov	r5, r8
	str	r1, [r3, r5]
	ldr	r0, [r4, #0x18]
	ldr	r2, =.Lf5408
	cmp	r0, #0
	bge	.Lf4bba
	ldr	r1, =0x3ff
	add	r0, r1
.Lf4bba:
	asr	r3, r0, #10
	ldrb	r3, [r2, r3]
	mov	r2, #0x80
	lsl	r2, #3
	lsl	r3, #3
	orr	r3, r2
	ldr	r2, [sp, #0x6c]
	mov	r4, r10
	str	r3, [r2, r4]
	ldr	r0, [sp, #0x44]
	add	r0, #1
	mov	r5, #8
	str	r0, [sp, #0x44]
	add	r10, r5
	add	r8, r5
.Lf4bd8:
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	add	r7, #4
	cmp	r2, #2
	bne	.Lf4b16
	ldr	r3, [sp, #0x60]
	cmp	r3, #0
	bne	.Lf4ca6
	ldr	r2, [sp, #0x44]
	mov	r4, #0
	ldr	r7, [sp, #0x2c]
	mov	r6, sp
	ldr	r0, [sp, #0x70]
	mov	r1, #0xe1
	lsl	r3, r2, #3
	mov	r11, r4
	mov	r5, #0xc8
	add	r6, #0xf0
	lsl	r1, #7
	mov	r4, #0xcc
	add	r5, sp
	str	r7, [sp, #0x18]
	add	r0, r1
	add	r4, r3
	mov	r7, r3
	str	r6, [sp, #0x3c]
	mov	r9, r5
	mov	r10, r0
	mov	r8, r4
	add	r7, #0xc8
.Lf4c16:
	mov	r1, r9
	mov	r0, r10
	bl	Func_5268
	ldr	r6, [sp, #0x18]
	ldmia	r6!, {r3}
	mov	r5, r6
	ldr	r0, [sp, #0x3c]
	str	r5, [sp, #0x18]
	lsl	r3, #2
	ldr	r6, [r0, r3]
	lsr	r3, r6, #31
	add	r6, r3
	asr	r6, #1
	add	r6, #0x80
	mov	r0, #0x80
	mov	r1, r6
	lsl	r0, #4
	bl	Func_af0_from_thumb
	mov	r1, r9
	ldr	r5, [r1]
	sub	r5, r0
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #2
	bl	Func_af0_from_thumb
	mov	r3, r9
	ldr	r2, [r3, #4]
	mov	r4, #0x9e
	ldr	r3, =0x1ff
	lsl	r4, #2
	mov	r6, #0xb0
	add	r2, r0
	add	r5, r4
	lsl	r6, #1
	and	r5, r3
	add	r2, r6
	mov	r3, #0xff
	and	r2, r3
	lsl	r5, #16
	ldr	r3, =0x80002000
	orr	r5, r2
	ldr	r0, [sp, #0x6c]
	orr	r5, r3
	mov	r1, r11
	str	r5, [r0, r7]
	cmp	r1, #1
	bne	.Lf4c84
	ldr	r3, [r0, r7]
	mov	r2, #0x80
	lsl	r2, #21
	orr	r3, r2
	str	r3, [r0, r7]
.Lf4c84:
	ldr	r2, [sp, #0x6c]
	ldr	r3, =0x958
	mov	r4, r8
	str	r3, [r2, r4]
	ldr	r6, [sp, #0x44]
	mov	r1, #1
	add	r11, r1
	mov	r5, #8
	add	r6, #1
	mov	r0, #0x1c
	mov	r2, r11
	add	r8, r5
	add	r7, #8
	str	r6, [sp, #0x44]
	add	r10, r0
	cmp	r2, #2
	bne	.Lf4c16
.Lf4ca6:
	ldr	r0, [sp, #0x70]
	mov	r6, #0x80
	mov	r1, #0xe1
	ldr	r2, [sp, #0x44]
	mov	r3, #0
	lsl	r6, #19
	lsl	r1, #7
	mov	r11, r3
	mov	r9, r6
	lsl	r3, r2, #3
	add	r6, r0, r1
	mov	r0, #0xc8
	add	r0, r3
	add	r3, #0xcc
	add	r4, sp, #0xd4
	add	r5, sp, #0xc8
	add	r7, sp, #0xf8
	mov	r10, r0
	mov	r8, r3
.Lf4ccc:
	ldr	r3, [r6]
	mov	r1, #0
	str	r1, [r4, #4]
	str	r3, [r4]
	ldr	r3, [r6, #8]
	mov	r0, r4
	str	r3, [r4, #8]
	mov	r1, r5
	str	r4, [sp, #8]
	bl	Func_5268
	ldr	r3, [r5, #8]
	ldr	r2, =0x15d
	ldr	r4, [sp, #8]
	cmp	r3, r2
	bgt	.Lf4cf2
	mov	r3, #0xaf
	lsl	r3, #1
	str	r3, [r5, #8]
.Lf4cf2:
	ldr	r2, =0x28a
	cmp	r3, r2
	ble	.Lf4cfc
	str	r2, [r5, #8]
	mov	r3, r2
.Lf4cfc:
	ldr	r0, =0xfffffea2
	add	r3, r0
	str	r3, [r7]
	mov	r1, #6
	ldrsh	r2, [r6, r1]
	add	r3, r2
	str	r3, [r7]
	ldr	r1, [r5, #4]
	mov	r0, #0x10
	mov	r3, r1
	add	r3, #0x58
	neg	r0, r0
	ldr	r2, [r5]
	cmp	r3, r0
	ble	.Lf4d54
	mov	r0, #0x9c
	lsl	r0, #2
	add	r3, r2, r0
	ldr	r2, =0x1ff
	mov	r0, #0xac
	and	r3, r2
	lsl	r0, #1
	mov	r2, r9
	lsl	r3, #16
	orr	r3, r2
	add	r2, r1, r0
	mov	r1, #0xff
	and	r2, r1
	orr	r3, r2
	ldr	r2, =0x40002300
	ldr	r1, [sp, #0x6c]
	orr	r3, r2
	mov	r2, r10
	str	r3, [r1, r2]
	mov	r3, #0x89
	mov	r0, r8
	lsl	r3, #4
	str	r3, [r1, r0]
	ldr	r2, [sp, #0x44]
	add	r2, #1
	mov	r1, #8
	str	r2, [sp, #0x44]
	add	r10, r1
	add	r8, r1
.Lf4d54:
	mov	r0, #1
	mov	r3, #0x80
	add	r11, r0
	lsl	r3, #18
	mov	r1, r11
	add	r9, r3
	add	r7, #4
	add	r6, #0x1c
	cmp	r1, #2
	bne	.Lf4ccc
	ldr	r2, [sp, #0x60]
	cmp	r2, #1
	beq	.Lf4d70
	b	.Lf5260
.Lf4d70:
	ldr	r4, [sp, #0x24]
	mov	r3, #0
	ldr	r5, [sp, #0x70]
	mov	r6, #0xe1
	lsl	r6, #7
	str	r3, [sp, #0x38]
	str	r4, [sp, #0x20]
	str	r3, [sp, #0x1c]
	mov	r11, r3
	add	r7, r5, r6
.Lf4d84:
	ldr	r1, [r7]
	ldr	r3, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	add	r1, r3
	ldr	r3, [r7, #4]
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #8]
	add	r3, r2
	str	r3, [r7, #8]
	str	r1, [r7]
	ldr	r2, [sp, #0x70]
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r0, #0
	add	r2, r3
	mov	r10, r0
	mov	r9, r2
.Lf4daa:
	cmp	r11, r10
	beq	.Lf4e1c
	mov	r4, r9
	ldr	r3, [r4]
	sub	r3, r1, r3
	asr	r6, r3, #16
	ldr	r2, [r7, #4]
	ldr	r3, [r4, #4]
	mov	r5, r9
	sub	r2, r3
	asr	r4, r2, #16
	ldr	r3, [r5, #8]
	ldr	r2, [r7, #8]
	sub	r2, r3
	asr	r2, #16
	mov	r8, r2
	mov	r3, r4
	mul	r3, r4
	mov	r2, r6
	mul	r2, r6
	mov	r0, r8
	add	r2, r3
	mov	r3, r8
	mul	r3, r0
	add	r0, r2, r3
	ldr	r2, =0x9c3
	cmp	r0, r2
	bgt	.Lf4e1c
	str	r4, [sp, #8]
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r5, r0
	mov	r1, r5
	lsl	r0, r6, #15
	bl	Func_af0_from_thumb
	ldr	r3, [r7, #0xc]
	ldr	r4, [sp, #8]
	add	r3, r0
	str	r3, [r7, #0xc]
	lsl	r0, r4, #15
	mov	r1, r5
	bl	Func_af0_from_thumb
	ldr	r3, [r7, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	mov	r3, r8
	lsl	r0, r3, #15
	mov	r1, r5
	bl	Func_af0_from_thumb
	ldr	r3, [r7, #0x14]
	add	r3, r0
	str	r3, [r7, #0x14]
	ldr	r1, [r7]
.Lf4e1c:
	mov	r5, #1
	add	r10, r5
	mov	r4, #0x1c
	mov	r6, r10
	add	r9, r4
	cmp	r6, #2
	bne	.Lf4daa
	ldr	r0, =0xff380000
	cmp	r1, r0
	bge	.Lf4e48
	ldr	r2, [r7, #0xc]
	neg	r2, r2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #4
	str	r0, [r7]
	cmp	r3, #0
	bge	.Lf4e42
	add	r3, #0x3f
.Lf4e42:
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r1, r0
.Lf4e48:
	mov	r3, #0xc8
	lsl	r3, #16
	cmp	r1, r3
	ble	.Lf4e66
	ldr	r2, [r7, #0xc]
	neg	r2, r2
	str	r3, [r7]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #4
	cmp	r3, #0
	bge	.Lf4e62
	add	r3, #0x3f
.Lf4e62:
	asr	r3, #6
	str	r3, [r7, #0xc]
.Lf4e66:
	ldr	r2, [r7, #8]
	ldr	r1, =0xff6a0000
	cmp	r2, r1
	bge	.Lf4e86
	ldr	r2, [r7, #0x14]
	neg	r2, r2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #4
	str	r1, [r7, #8]
	cmp	r3, #0
	bge	.Lf4e80
	add	r3, #0x3f
.Lf4e80:
	asr	r3, #6
	str	r3, [r7, #0x14]
	mov	r2, r1
.Lf4e86:
	ldr	r3, [r7, #4]
	mov	r0, #0xb4
	lsl	r0, #16
	add	r3, r0
	cmp	r2, r3
	ble	.Lf4eb8
	ldr	r1, [r7, #0x14]
	str	r3, [r7, #8]
	cmp	r1, #0
	ble	.Lf4eb8
	lsr	r3, r1, #31
	ldr	r2, [r7, #0x10]
	add	r3, r1, r3
	asr	r3, #1
	add	r2, r3
	str	r2, [r7, #0x10]
	neg	r2, r1
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	cmp	r2, #0
	bge	.Lf4eb4
	add	r2, #0x3f
.Lf4eb4:
	asr	r3, r2, #6
	str	r3, [r7, #0x14]
.Lf4eb8:
	ldr	r3, [r7, #0x10]
	ldr	r1, =0xffff8000
	add	r2, r3, r1
	ldr	r3, [r7, #4]
	str	r2, [r7, #0x10]
	cmp	r3, #0
	ble	.Lf4ec8
	b	.Lf4fea
.Lf4ec8:
	b	.Lf4f04

	.pool_aligned

.Lf4f04:
	neg	r2, r2
	mov	r3, #0
	str	r3, [r7, #4]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	cmp	r2, #0
	bge	.Lf4f16
	add	r2, #0x3f
.Lf4f16:
	asr	r3, r2, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lf4f74
	ldr	r3, [r7, #0x14]
	ldr	r2, [r7, #0xc]
	asr	r3, #8
	asr	r2, #8
	mov	r4, r3
	mul	r4, r3
	mov	r0, r2
	mul	r0, r2
	mov	r3, r4
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lf4f4c
	add	r3, #0x3f
.Lf4f4c:
	asr	r6, r3, #6
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	asr	r3, #8
	b	.Lf4f96
.Lf4f74:
	ldr	r2, [r7, #0xc]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lf4f82
	add	r3, #0x3f
.Lf4f82:
	ldr	r2, [r7, #0x14]
	asr	r3, #6
	str	r3, [r7, #0xc]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lf4f94
	add	r3, #0x3f
.Lf4f94:
	asr	r3, #6
.Lf4f96:
	str	r3, [r7, #0x14]
	ldr	r5, [sp, #0x20]
	ldr	r3, [r5]
	ldr	r6, [sp, #0x1c]
	cmp	r3, #0x13
	ble	.Lf4fa6
	sub	r3, #0x14
	str	r3, [r5]
.Lf4fa6:
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x2ffff
	cmp	r3, r0
	bgt	.Lf4fee
	mov	r1, #0
	str	r1, [r7, #0xc]
	str	r1, [r7, #0x10]
	str	r1, [r7, #0x14]
	ldr	r2, [sp, #0x20]
	str	r1, [r2]
	ldr	r5, [r7, #0x18]
	mov	r0, r5
	cmp	r5, #0
	bge	.Lf4fc6
	ldr	r3, =0x3ff
	add	r0, r5, r3
.Lf4fc6:
	asr	r0, #10
	mov	r1, #3
	bl	Func_b1c_from_thumb
	cmp	r0, #1
	bne	.Lf4fdc
	mov	r4, #0x80
	lsl	r4, #4
	add	r3, r5, r4
	str	r3, [r7, #0x18]
	b	.Lf4fee
.Lf4fdc:
	cmp	r0, #2
	bne	.Lf4fee
	mov	r0, #0x80
	lsl	r0, #3
	add	r3, r5, r0
	str	r3, [r7, #0x18]
	b	.Lf4fee
.Lf4fea:
	mov	r1, r11
	lsl	r6, r1, #2
.Lf4fee:
	ldr	r3, [r7, #0xc]
	lsl	r2, r3, #6
	sub	r2, r3
	cmp	r2, #0
	bge	.Lf4ffa
	add	r2, #0x3f
.Lf4ffa:
	asr	r3, r2, #6
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	lsl	r2, r3, #6
	sub	r2, r3
	cmp	r2, #0
	bge	.Lf500a
	add	r2, #0x3f
.Lf500a:
	asr	r3, r2, #6
	str	r3, [r7, #0x10]
	ldr	r3, [r7, #0x14]
	lsl	r2, r3, #6
	sub	r2, r3
	cmp	r2, #0
	bge	.Lf501a
	add	r2, #0x3f
.Lf501a:
	asr	r3, r2, #6
	str	r3, [r7, #0x14]
	ldr	r4, [sp, #0x1c]
	ldr	r5, [sp, #0x24]
	ldr	r2, [r7, #0x18]
	ldr	r3, [r4, r5]
	ldr	r0, =0x47ff
	add	r2, r3
	str	r2, [r7, #0x18]
	cmp	r2, r0
	ble	.Lf5036
	ldr	r1, =0xffffb800
	add	r3, r2, r1
	str	r3, [r7, #0x18]
.Lf5036:
	ldr	r2, [sp, #0x20]
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.Lf5042
	sub	r3, #1
	str	r3, [r2]
.Lf5042:
	ldr	r3, [r7, #0xc]
	cmp	r3, #0
	bne	.Lf50a6
	ldr	r3, [r7, #0x10]
	cmp	r3, #0
	bne	.Lf50a6
	ldr	r3, [r7, #0x14]
	cmp	r3, #0
	bne	.Lf50a6
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.Lf50a6
	mov	r1, #0xc0
	ldr	r0, [r7, #0x18]
	lsl	r1, #4
	add	r5, sp, #0xe0
	bl	Func_af0_from_thumb
	ldr	r1, =.Lf541a
	mov	r3, #0
	str	r0, [r5, r6]
	mov	r10, r3
	ldrsh	r3, [r1, r3]
	ldr	r2, [r7, #8]
	lsl	r3, #16
	cmp	r2, r3
	ble	.Lf5082
	mov	r3, r6
	add	r3, #8
	mov	r6, r10
	str	r6, [r5, r3]
	b	.Lf50a0
.Lf5082:
	mov	r0, #1
	add	r10, r0
	mov	r3, r10
	cmp	r3, #6
	beq	.Lf50a0
	lsl	r3, #1
	ldrsh	r3, [r1, r3]
	lsl	r3, #16
	cmp	r2, r3
	ble	.Lf5082
	ldr	r3, [sp, #0x1c]
	add	r2, sp, #0xe0
	add	r3, #8
	mov	r5, r10
	str	r5, [r2, r3]
.Lf50a0:
	ldr	r6, [sp, #0x38]
	add	r6, #1
	str	r6, [sp, #0x38]
.Lf50a6:
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x1c]
	mov	r2, #1
	add	r11, r2
	add	r0, #4
	add	r1, #4
	mov	r3, r11
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x1c]
	add	r7, #0x1c
	cmp	r3, #2
	beq	.Lf50c0
	b	.Lf4d84
.Lf50c0:
	ldr	r4, [sp, #0x38]
	cmp	r4, #2
	beq	.Lf50c8
	b	.Lf5260
.Lf50c8:
	mov	r7, #1
	mov	r6, #0
	mov	r5, #2
	neg	r7, r7
	mov	r0, #0x3c
	str	r5, [sp, #0x60]
	str	r6, [sp, #0x58]
	str	r7, [sp, #0x54]
	str	r6, [sp, #0x50]
	str	r0, [sp, #0x4c]
	add	r1, sp, #0xe0
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	bne	.Lf5168
	ldr	r3, [r1, #8]
	cmp	r2, r3
	bne	.Lf5168
	ldr	r3, [r1, #0xc]
	cmp	r2, r3
	bne	.Lf5168
	ldr	r2, [sp, #0x34]
	mov	r3, #0x78
	str	r3, [r2, #4]
	str	r3, [sp, #0x90]
	str	r6, [sp, #0x54]
	ldr	r3, [sp, #0x88]
	ldr	r2, [r1]
	cmp	r2, r3
	bne	.Lf510c
	ldr	r4, [sp, #0x5c]
	lsl	r3, r4, #4
	sub	r3, r4
	b	.Lf5126
.Lf510c:
	ldr	r5, [sp, #0x28]
	ldr	r3, [r5, #4]
	cmp	r2, r3
	bne	.Lf5120
	ldr	r6, [sp, #0x5c]
	lsl	r3, r6, #1
	add	r3, r6
	lsl	r3, #3
	add	r3, r6
	b	.Lf5126
.Lf5120:
	ldr	r7, [sp, #0x5c]
	lsl	r3, r7, #2
	add	r3, r7
.Lf5126:
	str	r3, [sp, #0x50]
	ldr	r3, =ewram_240
	ldr	r1, [sp, #0x6c]
	mov	r2, #0x99
	lsl	r2, #3
	ldr	r0, [r3, #0x10]
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r1, #6
	mov	r3, #0
	str	r3, [sp]
	bl	_Func_1ea08
	mov	r0, #0x5d
	bl	_Func_f9080
	b	.Lf5260

	.pool_aligned

.Lf5168:
	ldr	r5, =0xfffffde0
	mov	r4, #0
	add	r7, sp, #0x300
	mov	r8, r4
	mov	r11, r4
	mov	r12, r5
	mov	r6, r7
.Lf5176:
	mov	r5, r11
	add	r5, #1
	mov	r10, r5
	cmp	r5, #4
	beq	.Lf51b0
	add	r1, sp, #0x300
	lsl	r3, r5, #2
	mov	r0, r11
	add	r3, r1
	ldr	r1, =0xfffffd78
	add	r7, sp, #0x300
	lsl	r2, r0, #2
	mov	r0, r12
	add	r4, r3, r0
	add	r7, r12
	add	r0, r6, r1
.Lf5196:
	ldr	r1, [r7, r2]
	ldmia	r4!, {r3}
	cmp	r1, r3
	bne	.Lf51a6
	mov	r3, #1
	stmia	r0!, {r1}
	add	r6, #4
	add	r8, r3
.Lf51a6:
	mov	r1, #1
	add	r10, r1
	mov	r3, r10
	cmp	r3, #4
	bne	.Lf5196
.Lf51b0:
	mov	r11, r5
	cmp	r5, #3
	bne	.Lf5176
	mov	r4, r8
	cmp	r4, #1
	bne	.Lf51de
	ldr	r5, [sp, #0x5c]
	ldr	r3, =ewram_240
	str	r5, [sp, #0x50]
	ldr	r6, [sp, #0x6c]
	mov	r7, #0x99
	lsl	r7, #3
	ldr	r0, [r3, #0x10]
	mov	r1, #0
	add	r3, r6, r7
	ldr	r2, [r3]
	str	r1, [sp]
	mov	r3, #0
	mov	r1, #6
	bl	_Func_1ea08
	mov	r2, #3
	str	r2, [sp, #0x54]
.Lf51de:
	mov	r3, r8
	cmp	r3, #2
	bne	.Lf521e
	ldr	r4, [sp, #0x5c]
	lsl	r4, #1
	str	r4, [sp, #0x50]
	ldr	r3, =ewram_240
	ldr	r5, [sp, #0x6c]
	mov	r6, #0x99
	lsl	r6, #3
	ldr	r0, [r3, #0x10]
	add	r3, r5, r6
	ldr	r2, [r3]
	mov	r1, #6
	mov	r3, #0
	mov	r7, #0
	str	r7, [sp]
	bl	_Func_1ea08
	bl	Func_4458
	mov	r3, #1
	and	r3, r0
	ldr	r0, [sp, #0x34]
	lsl	r3, #2
	mov	r2, #0x3c
	str	r2, [r3, r0]
	mov	r1, #2
	mov	r0, #0x5b
	str	r1, [sp, #0x54]
	bl	_Func_f9080
.Lf521e:
	mov	r2, r8
	cmp	r2, #3
	bne	.Lf5260
	ldr	r4, [sp, #0x5c]
	lsl	r3, r4, #1
	add	r3, r4
	str	r3, [sp, #0x50]
	ldr	r5, [sp, #0x6c]
	ldr	r3, =ewram_240
	mov	r6, #0x99
	lsl	r6, #3
	ldr	r0, [r3, #0x10]
	add	r3, r5, r6
	ldr	r2, [r3]
	mov	r1, #6
	mov	r3, #0
	mov	r7, #0
	str	r7, [sp]
	bl	_Func_1ea08
	bl	Func_4458
	mov	r3, #1
	and	r3, r0
	ldr	r0, [sp, #0x34]
	lsl	r3, #2
	mov	r2, #0x3c
	str	r2, [r3, r0]
	mov	r1, #1
	mov	r0, #0x5c
	str	r1, [sp, #0x54]
	bl	_Func_f9080
.Lf5260:
	ldr	r2, [sp, #0x44]
	cmp	r2, #0x80
	beq	.Lf5286
	lsl	r3, r2, #3
	mov	r2, r3
	ldr	r0, =0x40f02000
	mov	r1, #0
	add	r2, #0xcc
	add	r3, #0xc8
.Lf5272:
	ldr	r4, [sp, #0x6c]
	str	r0, [r4, r3]
	str	r1, [r4, r2]
	ldr	r5, [sp, #0x44]
	add	r5, #1
	add	r2, #8
	add	r3, #8
	str	r5, [sp, #0x44]
	cmp	r5, #0x80
	bne	.Lf5272
.Lf5286:
	mov	r1, #0xe4
	mov	r8, r1
	mov	r1, sp
	add	r1, #0xf0
	mov	r6, #0
	mov	r7, sp
	mov	r4, sp
	mov	r2, #0xdc
	mov	r3, #0xd4
	str	r1, [sp, #4]
	mov	r11, r6
	add	r7, #0xa6
	add	r5, sp, #0xa4
	add	r4, #0xa2
	add	r0, sp, #0xa0
	mov	r14, r2
	mov	r12, r3
	mov	r6, #0xcc
.Lf52aa:
	ldr	r1, [sp, #4]
	ldmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #4]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r3, #0x80
	ldr	r2, .Lf52f0	@ 0
	ldr	r1, .Lf52f0	@ 0
	lsl	r3, #16
	asr	r3, #16
	strh	r3, [r7]
	strh	r2, [r5]
	strh	r1, [r4]
	strh	r3, [r0]
	ldrh	r2, [r7]
	lsl	r2, #16
	mov	r10, r2
	ldr	r2, [sp, #0x6c]
	ldr	r3, [r2, r6]
	mov	r1, r10
	orr	r3, r1
	str	r3, [r2, r6]
	ldrh	r2, [r5]
	lsl	r2, #16
	mov	r10, r2
	ldr	r2, [sp, #0x6c]
	mov	r1, r12
	ldr	r3, [r2, r1]
	mov	r2, r10
	orr	r3, r2
	ldr	r2, [sp, #0x6c]
	str	r3, [r2, r1]
	b	.Lf5304

	.align	2, 0
.Lf52f0:
	.word	0
	.pool

.Lf5304:
	ldrh	r2, [r4]
	ldr	r1, [sp, #0x6c]
	lsl	r2, #16
	mov	r10, r2
	mov	r2, r14
	ldr	r3, [r1, r2]
	mov	r1, r10
	orr	r3, r1
	ldr	r1, [sp, #0x6c]
	str	r3, [r1, r2]
	ldrh	r2, [r0]
	lsl	r2, #16
	mov	r10, r2
	mov	r2, r8
	ldr	r3, [r1, r2]
	mov	r1, r10
	orr	r3, r1
	ldr	r1, [sp, #0x6c]
	str	r3, [r1, r2]
	mov	r3, #1
	add	r11, r3
	mov	r2, #0x20
	mov	r1, r11
	add	r8, r2
	add	r14, r2
	add	r12, r2
	add	r6, #0x20
	cmp	r1, #4
	bne	.Lf52aa
	ldr	r0, [sp, #0x6c]
	mov	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	add	r0, #0xc8
	lsl	r1, #19
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x64]
	add	r2, #1
	str	r2, [sp, #0x64]
	bl	.Lf44b8
.Lf535e:
	mov	r3, #0
	mov	r6, #0x80
	mov	r11, r3
	lsl	r6, #1
.Lf5366:
	mov	r4, r11
	mov	r5, #0x80
	lsl	r3, r4, #12
	lsl	r5, #9
	sub	r5, r3
	ldr	r0, [sp, #0x74]
	mov	r2, r5
	ldr	r1, =0x5000200
	mov	r3, r6
	bl	Func_f4100
	mov	r2, r5
	mov	r1, #0xa0
	mov	r5, #1
	add	r0, sp, #0x100
	lsl	r1, #19
	mov	r3, r6
	add	r11, r5
	bl	Func_f4100
	mov	r7, r11
	mov	r0, #1
	bl	Func_30f8
	cmp	r7, #0x11
	bne	.Lf5366
	mov	r0, #0xc
	bl	Func_2dd8
	mov	r0, #0x2d
	bl	Func_2dd8
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	mov	r0, #0x29
	bl	Func_2dd8
	mov	r3, #0xc0
	lsl	r3, #2
	add	sp, r3
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f4168

	.section .rodata

	.incrom 0xf53dc, 0xf53fc
.Lf53fc:
	.incrom 0xf53fc, 0xf5400
.Lf5400:
	.incrom 0xf5400, 0xf5408
.Lf5408:
	.incrom 0xf5408, 0xf541a
.Lf541a:
	.incrom 0xf541a, 0xf6000
