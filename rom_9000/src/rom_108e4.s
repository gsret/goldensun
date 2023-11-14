	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_108e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r3
	ldr	r3, =iwram_1e70
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0x88
	ldr	r2, [r3]
	lsl	r1, #1
	add	r3, r2, r1
	ldr	r6, [r3]
	mov	r1, r10
	mov	r3, #1
	and	r1, r3
	mov	r10, r1
	lsl	r0, #1
	mov	r1, r8
	and	r1, r3
	mov	r9, r0
	mov	r8, r1
	mov	r3, r9
	add	r3, r8
	lsl	r3, #1
	add	r3, r10
	lsl	r3, #1
	add	r2, r3
	ldr	r1, [sp, #0x1c]
	mov	r3, #0xce
	lsl	r3, #2
	add	r2, r3
	cmp	r1, #0
	bne	.L10932
	ldrh	r3, [r2]
	mov	r0, #0
	cmp	r5, r3
	beq	.L109be
.L10932:
	mov	r1, #0x80
	strh	r5, [r2]
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48b0
	lsl	r3, r5, #2
	mov	r7, r0
	ldr	r0, [r3, r6]
	mov	r1, r7
	add	r0, r6, r0
	bl	Func_53e8
	mov	r3, r9
	add	r3, r8
	lsl	r3, #5
	add	r3, r10
	ldr	r2, =ewram_20000
	lsl	r3, #6
	mov	r4, r7
	add	r5, r3, r2
	mov	r6, #0
.L1095e:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r6, #1
	add	r4, #0x40
	add	r5, #0x80
	cmp	r6, #0xf
	bls	.L1095e
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L109b6
	mov	r3, r9
	add	r3, r8
	lsl	r3, #6
	add	r3, r10
	ldr	r2, =0x6004000
	lsl	r3, #5
	ldr	r5, =ewram_10000
	add	r1, r3, r2
	mov	r4, r7
	mov	r6, #0
.L1098e:
	mov	r0, #0
.L10990:
	ldrh	r3, [r4]
	lsl	r3, #2
	ldrh	r2, [r3, r5]
	strh	r2, [r1]
	ldr	r2, =ewram_10002
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #2
	add	r4, #4
	cmp	r0, #0xf
	bls	.L10990
	add	r6, #1
	add	r1, #0x60
	cmp	r6, #0xf
	bls	.L1098e
.L109b6:
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r0, #1
.L109be:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_108e4

.thumb_func_start Func_109e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xc1ff
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #0
	sub	sp, #0x20
	bl	Func_3bb4
	mov	r1, #0xd7
	lsl	r1, #2
	mov	r0, #8
	bl	Func_48b0
	mov	r6, #0
	mov	r7, r0
	add	r0, sp, #0x1c
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r7
	ldr	r2, =0x850000d7
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r7
	add	r3, #0xe4
	str	r6, [r3]
	add	r3, #4
	str	r6, [r3]
	mov	r2, r7
	mov	r3, #0x80
	add	r2, #0xec
	lsl	r3, #14
	str	r3, [r2]
	mov	r3, #0x80
	add	r2, #4
	lsl	r3, #15
	str	r3, [r2]
	mov	r3, r7
	mov	r2, #0xff
	lsl	r2, #21
	add	r3, #0xf4
	str	r2, [r3]
	add	r3, #4
	str	r2, [r3]
	str	r6, [r7, #0x10]
	ldr	r0, =0xd4
	bl	Func_2f40
	mov	r1, #0x88
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r5, =ewram_2d000
	str	r0, [r3]
	ldr	r0, =0xd6
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	mov	r0, r5
	bl	Func_118d8
	ldr	r2, =0x3f9e
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	ldr	r0, =0xd5
	bl	Func_2f40
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r0, =0xd7
	bl	Func_2f40
	ldr	r1, =ewram_2c000
	bl	Func_5340
	mov	r3, #0xf8
	lsl	r3, #5
	strh	r3, [r7, #0x14]
	mov	r3, #0x80
	strb	r3, [r7, #0x16]
	ldr	r2, =0xa80a
	ldr	r3, =REG_BG3CNT
	strh	r2, [r3]
	ldr	r2, =0xaa0e
	sub	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x501
	sub	r3, #2
	strh	r2, [r3]
	add	r3, #0x16
	mov	r2, #0x80
	lsl	r2, #1
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	add	r3, #2
	strh	r6, [r3]
	add	r3, #2
	mov	r1, #0x80
	lsl	r1, #1
	strh	r1, [r3]
	add	r3, #2
	str	r6, [r3]
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	add	r3, #2
	strh	r6, [r3]
	add	r3, #2
	strh	r1, [r3]
	add	r3, #2
	str	r6, [r3]
	add	r3, #4
	str	r6, [r3]
	mov	r0, #0xc
	mov	r1, #0x4c
	bl	Func_48f4
	ldr	r1, =0x3484
	mov	r9, r0
	mov	r0, #7
	bl	Func_48b0
	mov	r2, #0xc
	add	r2, r9
	mov	r3, #0xc8
	mov	r8, r2
	lsl	r3, #4
	mov	r1, #0xd2
	mov	r2, #0xd3
	add	r3, r0, r3
	lsl	r1, #2
	mov	r5, #0xff
	lsl	r2, #2
	str	r3, [sp, #8]
	lsl	r5, #17
	add	r3, r7, r1
	add	r2, r7, r2
	str	r0, [sp, #0xc]
	add	r1, #0xc
	str	r5, [r3]
	str	r2, [sp, #4]
	str	r5, [r2]
	mov	r2, #0x80
	add	r3, r7, r1
	lsl	r2, #9
	str	r2, [r3]
	add	r1, #4
	mov	r2, r9
	add	r3, r7, r1
	str	r6, [r2, #0x18]
	str	r6, [r2, #0x1c]
	ldr	r2, =iwram_1ce0
	strh	r6, [r3]
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	mov	r3, #0x60
	asr	r1, r5, #1
	mov	r0, r5
	str	r3, [r2, #0x10]
	lsl	r2, r5, #1
	bl	Func_5258
	mov	r3, r8
	str	r6, [r3]
	str	r6, [r3, #4]
	str	r6, [r3, #8]
	bl	Func_49ac
	mov	r0, r8
	bl	Func_4cb4
	mov	r1, #0x8d
	lsl	r1, #1
	add	r1, r7, r1
	str	r1, [sp]
	ldrh	r0, [r1]
	bl	Func_4c1c
	mov	r2, #0x8c
	lsl	r2, #1
	add	r2, r7
	ldrh	r0, [r2]
	mov	r11, r2
	bl	Func_4bd4
	add	r3, sp, #0x10
	mov	r10, r3
	str	r6, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #8]
	mov	r1, r9
	ldr	r2, =Func_9c0
	mov	r0, r10
	bl	_call_via_r2
	bl	Func_49ac
	mov	r0, r9
	mov	r1, r8
	bl	Func_51d8
	ldr	r5, =0x284
	mov	r0, #0x2e
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_a0f8
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r11
	ldrh	r0, [r3]
	bl	Func_231c
	mov	r1, r11
	mov	r5, r0
	ldrh	r0, [r1]
	bl	Func_2322
	ldr	r3, =Func_8ac
	mov	r1, r0
	mov	r0, r5
	bl	_call_via_r3
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	bl	Func_123f4
	ldr	r3, =iwram_1f60
	str	r6, [r3]
	mov	r1, r11
	ldrh	r3, [r1]
	ldr	r2, =iwram_1af4
	str	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	ldr	r1, =iwram_1e50
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [sp, #8]
	add	r1, #0xb8
	lsl	r3, #10
	ldr	r4, [r1]
	add	r3, r2, r3
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	mov	r0, r9
	bl	_call_via_r4
	mov	r3, r8
	str	r6, [r3]
	str	r6, [r3, #4]
	str	r6, [r3, #8]
	bl	Func_49ac
	mov	r3, #0xe0
	mov	r1, r11
	lsl	r3, #8
	strh	r3, [r1]
	ldr	r2, [sp]
	strh	r6, [r2]
	bl	Func_49ac
	mov	r0, r8
	bl	Func_4cb4
	ldr	r3, [sp]
	ldrh	r0, [r3]
	bl	Func_4c1c
	mov	r1, r11
	ldrh	r0, [r1]
	bl	Func_4bd4
	mov	r2, r10
	str	r6, [r2]
	str	r6, [r2, #4]
	ldr	r1, [sp, #4]
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #9
	add	r3, r2
	mov	r1, r10
	str	r3, [r1, #8]
	mov	r0, r10
	mov	r1, r9
	ldr	r2, =Func_9c0
	bl	_call_via_r2
	ldr	r3, =REG_MOSAIC
	strh	r6, [r3]
	mov	r3, #0x42
	mov	r1, #0x80
	lsl	r1, #19
	strh	r3, [r1]
	ldr	r3, =iwram_1ad0
	mov	r2, #0x80
	lsl	r2, #1
	strh	r6, [r3, #4]
	strh	r6, [r3, #6]
	strh	r6, [r3, #8]
	strh	r6, [r3, #0xa]
	strh	r6, [r3, #0xc]
	strh	r6, [r3, #0xe]
	add	r3, r7, r2
	strh	r6, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
	strh	r3, [r2]
	ldr	r1, =0xc85
	ldr	r0, =Func_111b4
	bl	Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_10ff0
	bl	Func_41d8
	ldr	r1, =0x336
	mov	r3, #0xff
	add	r0, r7, r1
.L10ca6:
	strh	r3, [r0]
	sub	r3, #1
	sub	r0, #2
	cmp	r3, #0
	bge	.L10ca6
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_109e8

.thumb_func_start Func_10d48
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, r3
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, [r3]
	mov	r6, #0
	sub	sp, #4
	mov	r4, r2
	mov	r12, r6
	cmp	r3, #0
	beq	.L10d6c
	ldmia	r3!, {r6}
	ldr	r3, [r3, #4]
	mov	r12, r3
.L10d6c:
	asr	r1, #4
	lsl	r3, r1, #4
	mov	r2, r12
	asr	r5, #4
	asr	r0, #3
	asr	r4, #3
	add	r7, r3, r5
	asr	r2, #24
	asr	r3, r0, #31
	mov	r12, r2
	asr	r5, r4, #31
	lsr	r2, r3, #31
	mov	r14, r3
	add	r2, r0, r2
	lsr	r3, r5, #31
	mov	r1, #0xf
	asr	r2, #1
	add	r3, r4, r3
	and	r2, r1
	asr	r3, #1
	and	r3, r1
	lsl	r2, #4
	add	r2, r3
	mov	r3, #0x9c
	lsl	r3, #1
	lsl	r2, #1
	add	r2, r3
	asr	r6, #24
	mov	r3, r8
	strh	r7, [r3, r2]
	sub	r3, r6, r4
	cmp	r3, #0
	blt	.L10db4
	cmp	r3, #1
	ble	.L10dba
	b	.L10e04
.L10db4:
	sub	r3, r4, r6
	cmp	r3, #1
	bgt	.L10e04
.L10dba:
	mov	r2, r12
	sub	r3, r2, r0
	cmp	r3, #0
	blt	.L10dc8
	cmp	r3, #1
	ble	.L10dd0
	b	.L10e04
.L10dc8:
	mov	r2, r12
	sub	r3, r0, r2
	cmp	r3, #1
	bgt	.L10e04
.L10dd0:
	mov	r3, r14
	lsr	r6, r5, #31
	lsr	r5, r3, #31
	add	r6, r4, r6
	add	r5, r0, r5
	mov	r2, #1
	asr	r6, #1
	asr	r5, #1
	mov	r8, r2
	str	r2, [sp]
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	mov	r0, #0
	bl	Func_108e4
	mov	r2, #0xa0
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #1
	mov	r1, r6
	mov	r2, r5
	bl	Func_108e4
.L10e04:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10d48

.thumb_func_start Func_10e14
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	mov	r2, #0
	lsl	r0, #2
	sub	sp, #4
	mov	r6, r1
	mov	r9, r2
	bl	Func_4938
	ldr	r3, =iwram_1e70
	mov	r10, r0
	ldr	r7, [r3]
	cmp	r5, #0
	bge	.L10e3e
	ldr	r3, =0x1fffff
	add	r5, r3
.L10e3e:
	asr	r5, #21
	mov	r2, #0x1f
	mov	r1, r6
	and	r5, r2
	cmp	r1, #0
	bge	.L10e4e
	ldr	r3, =0x1fffff
	add	r1, r3
.L10e4e:
	asr	r3, r1, #21
	and	r3, r2
	lsl	r3, #5
	add	r3, r5, r3
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r3]
	lsl	r3, #1
	lsr	r3, #25
	cmp	r3, #0x15
	bne	.L10e6a
	mov	r3, #1
	mov	r9, r3
.L10e6a:
	mov	r2, r9
	lsl	r6, r2, #1
	ldr	r3, =.L132cc
	add	r6, r9
	mov	r2, #0x8e
	lsl	r2, #1
	lsl	r6, #3
	mov	r5, #0xa0
	add	r6, r3
	lsl	r5, #19
	add	r3, r7, r2
	str	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	ldr	r0, [r6]
	mov	r8, r3
	bl	Func_2f40
	mov	r1, r10
	bl	Func_53e8
	mov	r3, r8
	mov	r2, r10
	strh	r3, [r2]
	mov	r0, r10
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_38000
	ldr	r0, [r6, #4]
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6008000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_3a000
	ldr	r0, [r6, #8]
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600a000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_3c000
	ldr	r0, [r6, #0xc]
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600c000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_3e000
	ldr	r0, [r6, #0x10]
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600e000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [r6, #0x14]
	bl	Func_2f40
	ldr	r1, =ewram_28000
	bl	Func_5340
	ldr	r3, =0xf07ff07f
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002800
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000180
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0x6003000
	ldr	r2, =0x1a901a8
	ldr	r4, =0x20002
	mov	r0, #0
.L10f32:
	mov	r3, #0xe
.L10f34:
	sub	r3, #1
	stmia	r1!, {r2}
	add	r2, r4
	cmp	r3, #0
	bge	.L10f34
	add	r0, #1
	add	r1, #4
	cmp	r0, #0x13
	ble	.L10f32
	mov	r3, r9
	cmp	r3, #1
	bne	.L10f82
	mov	r3, #0xa6
	lsl	r3, #1
	add	r2, r7, r3
	sub	r3, #0x42
	strh	r3, [r2]
	add	r3, #0x44
	add	r2, r7, r3
	sub	r3, #0x43
	strh	r3, [r2]
	add	r3, #0x45
	add	r2, r7, r3
	sub	r3, #0x44
	strh	r3, [r2]
	add	r3, #0x60
	add	r2, r7, r3
	sub	r3, #0x52
	strh	r3, [r2]
	add	r3, #0x54
	add	r2, r7, r3
	sub	r3, #0x53
	strh	r3, [r2]
	add	r3, #0x55
	add	r2, r7, r3
	sub	r3, #0x54
	strh	r3, [r2]
	bl	Func_113e4
.L10f82:
	mov	r0, r10
	bl	Func_2df0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10e14

.thumb_func_start Func_10ff0
	push	{r5, r6, lr}
	ldr	r1, =iwram_1e6c
	mov	r2, #0xc8
	ldmia	r1!, {r3}
	lsl	r2, #4
	add	r6, r3, r2
	mov	r3, #0x80
	lsl	r3, #19
	ldrh	r2, [r3]
	ldr	r1, [r1]
	ldr	r3, =0xfff8
	mov	r12, r1
	and	r3, r2
	ldr	r1, =REG_DMA0SAD
	lsl	r3, #16
	ldrh	r2, [r1, #0xa]
	asr	r5, r3, #16
	ldr	r3, =0xc5ff
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r3, =0x7fff
	ldrh	r2, [r1, #0xa]
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r4, =REG_BG2PA
	ldrh	r3, [r1, #0xa]
	cmp	r6, #0
	beq	.L11064
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #10
	add	r0, r6, r0
	ldmia	r0!, {r3}
	str	r3, [r4]
	ldmia	r0!, {r3}
	add	r4, #4
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	ldr	r2, =0xa6600008
	str	r3, [r4]
	mov	r3, r1
	sub	r1, #0x90
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L11064:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r12
	mov	r2, #0x82
	ldrh	r3, [r3]
	lsl	r2, #1
	add	r2, r12
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r3, r12
	ldrh	r0, [r3]
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	strh	r0, [r3]
	ldrh	r1, [r2]
	mov	r3, #0
	cmp	r1, #0xc7
	bhi	.L110a4
	lsl	r2, r0, #16
	lsr	r2, #16
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	lsl	r3, #1
	cmp	r1, r2
	bhi	.L110a4
	mov	r3, #0
	cmp	r1, #0
	bne	.L110a4
	mov	r3, #2
.L110a4:
	orr	r5, r3
	lsl	r3, r5, #16
	mov	r2, #0x80
	lsr	r3, #16
	lsl	r2, #19
	strh	r3, [r2]
	mov	r2, #0x84
	lsl	r2, #1
	add	r2, r12
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_10ff0

.thumb_func_start Func_110e0
	push	{r5, lr}
	lsr	r3, r0, #31
	add	r3, r0, r3
	mov	r2, #0x1f
	asr	r3, #1
	and	r3, r2
	ldr	r2, =ewram_20000
	lsl	r3, #7
	add	r4, r3, r2
	mov	r3, #0x3e
	and	r3, r0
	ldr	r5, =0x6004000
	lsl	r3, #6
	add	r1, r3, r5
	mov	r0, #0
.L110fe:
	ldrh	r2, [r4]
	ldr	r5, =ewram_10000
	lsl	r2, #2
	add	r3, r2, r5
	ldrh	r3, [r3]
	add	r5, #2
	strh	r3, [r1]
	add	r3, r2, r5
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #2
	add	r4, #4
	cmp	r0, #0x1f
	bls	.L110fe
	mov	r2, #0xfc
	mov	r3, #0xf8
	lsl	r2, #4
	lsl	r3, #4
	add	r1, r2
	add	r4, r3
	mov	r0, #0
.L1112e:
	ldrh	r2, [r4]
	ldr	r5, =ewram_10000
	lsl	r2, #2
	add	r3, r2, r5
	ldrh	r3, [r3]
	add	r5, #2
	strh	r3, [r1]
	add	r3, r2, r5
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #2
	add	r4, #4
	cmp	r0, #0x1f
	bls	.L1112e
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_110e0

.thumb_func_start Func_11164
	push	{r5, lr}
	lsr	r3, r0, #31
	add	r3, r0, r3
	mov	r2, #0x1f
	asr	r3, #1
	and	r3, r2
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r4, r3, r2
	ldr	r5, =0x6004000
	mov	r3, #0x3e
	and	r3, r0
	add	r1, r3, r5
	mov	r0, #0
.L11180:
	ldrh	r2, [r4]
	ldr	r5, =ewram_10000
	lsl	r2, #2
	add	r3, r2, r5
	ldrh	r3, [r3]
	add	r5, #2
	strh	r3, [r1]
	add	r3, r2, r5
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #0x80
	add	r4, #0x80
	cmp	r0, #0x3f
	bls	.L11180
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_11164

.thumb_func_start Func_111b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e80
	ldr	r1, [r3]
	sub	sp, #0x24
	str	r1, [sp, #0x14]
	mov	r2, r3
	sub	r2, #0x14
	ldr	r2, [r2]
	str	r2, [sp, #0x10]
	sub	r3, #0x10
	ldr	r6, [r3]
	add	r1, #0xc
	ldr	r2, [r6]
	ldr	r3, [sp, #0x10]
	mov	r10, r1
	mov	r1, #0xc8
	lsl	r1, #4
	str	r2, [sp, #0xc]
	add	r1, r3, r1
	mov	r2, #0xd2
	str	r1, [sp, #8]
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r1, #0xd3
	str	r3, [sp, #4]
	lsl	r1, #2
	add	r3, r6, r1
	ldr	r3, [r3]
	str	r3, [sp]
	bl	Func_114a0
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.L11208
	b	.L112e0
.L11208:
	ldr	r3, [r2, #8]
	mov	r8, r3
	ldr	r3, [r6, #4]
	ldr	r7, [r2]
	cmp	r3, #0
	beq	.L1123a
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	ldr	r4, [r6, #4]
	mov	r1, r0
	ldr	r3, =Func_888
	mov	r0, r4
	sub	r1, r5, r1
	.call_via r3
	add	r7, r0
	ldr	r1, [r6, #0xc]
	mov	r0, r4
	.call_via r3
	str	r0, [r6, #4]
.L1123a:
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.L11266
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	ldr	r4, [r6, #8]
	mov	r1, r0
	ldr	r3, =Func_888
	mov	r0, r4
	sub	r1, r5, r1
	.call_via r3
	add	r8, r0
	ldr	r1, [r6, #0xc]
	mov	r0, r4
	.call_via r3
	str	r0, [r6, #8]
.L11266:
	mov	r0, r7
	cmp	r7, #0
	bge	.L11270
	ldr	r1, =0xfffff
	add	r0, r7, r1
.L11270:
	asr	r4, r0, #20
	mov	r0, r8
	cmp	r0, #0
	bge	.L1127c
	ldr	r0, =0xfffff
	add	r0, r8
.L1127c:
	mov	r2, #0xe4
	add	r2, r6
	ldr	r1, [r2]
	mov	r11, r2
	mov	r3, r1
	mov	r2, #0x80
	eor	r3, r7
	lsl	r2, #13
	asr	r0, #20
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.L112ac
	cmp	r1, r7
	bge	.L112a4
	mov	r0, r4
	add	r0, #0x10
	bl	Func_11164
	b	.L112ac
.L112a4:
	mov	r0, r4
	sub	r0, #0x10
	bl	Func_11164
.L112ac:
	mov	r5, r6
	add	r5, #0xe8
	ldr	r1, [r5]
	mov	r2, r8
	mov	r3, r1
	eor	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	and	r3, r2
	cmp	r3, #0
	beq	.L112d8
	cmp	r1, r8
	bge	.L112d0
	mov	r0, r9
	add	r0, #0xc
	bl	Func_110e0
	b	.L112d8
.L112d0:
	mov	r0, r9
	sub	r0, #0x12
	bl	Func_110e0
.L112d8:
	mov	r3, r11
	mov	r1, r8
	str	r7, [r3]
	str	r1, [r5]
.L112e0:
	ldr	r2, =iwram_1ce0
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	mov	r3, #0x60
	str	r3, [r2, #0x10]
	ldr	r2, [sp]
	lsr	r1, r2, #31
	add	r1, r2, r1
	ldr	r0, [sp, #4]
	asr	r1, #1
	lsl	r2, #1
	bl	Func_5258
	ldr	r2, [sp, #0xc]
	ldmia	r2!, {r3}
	mov	r1, r2
	str	r1, [sp, #0xc]
	mov	r7, #0
	mov	r1, r10
	str	r3, [r1]
	str	r7, [r1, #4]
	ldr	r3, [r2, #4]
	str	r3, [r1, #8]
	bl	Func_49ac
	mov	r0, r10
	bl	Func_4cb4
	mov	r2, #0x8d
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r0, [r3]
	bl	Func_4c1c
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r3
	ldrh	r0, [r6]
	bl	Func_4bd4
	add	r0, sp, #0x18
	str	r7, [r0]
	str	r7, [r0, #4]
	ldr	r1, [sp]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1, r2
	str	r3, [r0, #8]
	ldr	r1, [sp, #0x14]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	bl	Func_49ac
	mov	r1, r10
	ldr	r0, [sp, #0x14]
	bl	Func_51d8
	ldr	r3, =iwram_1af4
	ldrh	r0, [r6]
	mov	r8, r3
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L11388
	bl	Func_231c
	mov	r5, r0
	ldrh	r0, [r6]
	bl	Func_2322
	ldr	r3, =Func_8ac
	mov	r1, r0
	mov	r0, r5
	bl	_call_via_r3
	mov	r1, r10
	ldr	r2, [sp, #0x10]
	bl	Func_123f4
	ldr	r3, =iwram_1f60
	str	r7, [r3]
	ldrh	r3, [r6]
	mov	r1, r8
	str	r3, [r1]
.L11388:
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	ldr	r1, =iwram_1e50
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [sp, #8]
	add	r1, #0xb8
	lsl	r3, #10
	add	r3, r2, r3
	ldr	r4, [r1]
	ldr	r2, [sp, #0x10]
	ldr	r0, [sp, #0x14]
	mov	r1, r10
	bl	_call_via_r4
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_111b4

.thumb_func_start Func_113e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r1, #0
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1140e
	ldmia	r3!, {r2}
	str	r2, [sp, #8]
	ldr	r3, [r3, #4]
	str	r3, [sp, #4]
.L1140e:
	ldr	r1, [sp, #8]
	mov	r2, #0xff
	lsl	r2, #24
	add	r3, r1, r2
	ldr	r1, [sp, #4]
	ldr	r2, =0xfec00000
	asr	r3, #25
	str	r3, [sp, #8]
	add	r3, r1, r2
	asr	r3, #25
	str	r3, [sp, #4]
	mov	r3, #0
	mov	r9, r3
	mov	r11, r3
.L1142a:
	mov	r1, #0
	ldr	r6, [sp, #4]
	mov	r10, r1
.L11430:
	mov	r3, r6
	mov	r2, #0xf
	and	r3, r2
	mov	r5, #0
	mov	r8, r6
	lsl	r7, r3, #4
.L1143c:
	ldr	r3, [sp, #8]
	add	r1, r3, r5
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r4, r7, r3
	mov	r2, #0x9c
	lsl	r3, r4, #1
	lsl	r2, #1
	add	r3, r2
	ldr	r2, [sp, #0xc]
	ldrh	r4, [r2, r3]
	mov	r3, #1
	add	r4, r11
	str	r3, [sp]
	mov	r0, r9
	mov	r2, r8
	mov	r3, r4
	add	r5, #1
	bl	Func_108e4
	cmp	r5, #1
	bls	.L1143c
	mov	r3, #1
	add	r10, r3
	mov	r1, r10
	add	r6, #1
	cmp	r1, #1
	bls	.L11430
	mov	r2, #0xa0
	add	r9, r3
	lsl	r2, #1
	mov	r3, r9
	add	r11, r2
	cmp	r3, #1
	bls	.L1142a
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_113e4

.thumb_func_start Func_114a0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r1, #0
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r1, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L114ca
	ldmia	r3!, {r2}
	str	r2, [sp, #0xc]
	ldr	r3, [r3, #4]
	str	r3, [sp, #8]
.L114ca:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xff
	lsl	r2, #24
	add	r3, r1, r2
	ldr	r1, [sp, #8]
	ldr	r2, =0xfec00000
	asr	r3, #25
	str	r3, [sp, #0xc]
	add	r3, r1, r2
	asr	r3, #25
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r9, r3
.L114e6:
	ldr	r2, [sp, #4]
	mov	r1, #0
	ldr	r6, [sp, #8]
	mov	r10, r1
	mov	r11, r2
.L114f0:
	mov	r3, r6
	mov	r1, #0xf
	and	r3, r1
	mov	r5, #0
	mov	r8, r6
	lsl	r7, r3, #4
.L114fc:
	ldr	r2, [sp, #0xc]
	add	r1, r2, r5
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r4, r7, r3
	mov	r2, #0x9c
	lsl	r3, r4, #1
	lsl	r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x10]
	ldrh	r4, [r2, r3]
	mov	r3, #0
	add	r4, r11
	str	r3, [sp]
	mov	r0, r9
	mov	r2, r8
	mov	r3, r4
	bl	Func_108e4
	cmp	r0, #0
	bne	.L1154e
	add	r5, #1
	cmp	r5, #1
	bls	.L114fc
	mov	r3, #1
	add	r10, r3
	mov	r1, r10
	add	r6, #1
	cmp	r1, #1
	bls	.L114f0
	ldr	r2, [sp, #4]
	mov	r3, #0xa0
	lsl	r3, #1
	mov	r1, #1
	add	r2, r3
	add	r9, r1
	str	r2, [sp, #4]
	mov	r2, r9
	cmp	r2, #1
	bls	.L114e6
.L1154e:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_114a0

	.section .rodata

.L132cc:
	.incrom 0x132cc, 0x132fc
