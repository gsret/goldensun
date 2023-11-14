	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_15e8c
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xd98
	ldr	r3, [r3]
	add	r1, r3, r2
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L15eae
	ldr	r2, [r0]
	cmp	r2, #0
	bne	.L15ea8
	ldr	r4, =0xd9c
	add	r3, r4
	str	r1, [r3]
.L15ea8:
	mov	r3, #0
	str	r2, [r1]
	str	r3, [r0]
.L15eae:
	pop	{r1}
	bx	r1
.func_end Func_15e8c

.thumb_func_start Func_15ec0
	push	{lr}
	ldr	r3, =iwram_1e8c
	mov	r1, #0xd3
	ldr	r2, [r3]
	lsl	r1, #3
	add	r3, r2, r1
	cmp	r0, r3
	bcc	.L15ee6
	ldr	r1, =0xd98
	add	r3, r2, r1
	cmp	r0, r3
	bcs	.L15ee6
	add	r1, #4
	add	r3, r2, r1
	ldr	r2, [r3]
	str	r0, [r3]
	mov	r3, #0
	str	r0, [r2]
	str	r3, [r0]
.L15ee6:
	pop	{r0}
	bx	r0
.func_end Func_15ec0

.thumb_func_start Func_15ef4
	push	{lr}
	ldr	r3, =iwram_1e8c
	mov	r1, #0xd3
	ldr	r0, [r3]
	lsl	r1, #3
	add	r2, r0, r1
	ldr	r1, =0xd98
	add	r3, r0, r1
	str	r2, [r3]
	mov	r3, #0x3e
.L15f08:
	mov	r1, r2
	add	r1, #0x1c
	sub	r3, #1
	str	r1, [r2]
	mov	r2, r1
	cmp	r3, #0
	bge	.L15f08
	ldr	r2, =0xd9c
	mov	r3, #0
	str	r3, [r1]
	add	r3, r0, r2
	str	r1, [r3]
	pop	{r0}
	bx	r0
.func_end Func_15ef4

.thumb_func_start Func_15f30
	push	{r5, lr}
	ldr	r1, =0x12fc
	mov	r0, #0xf
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r5, sp
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x850004bf
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0xea3
	add	r2, r4, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0x12b6
	add	r2, r4, r3
	mov	r3, #0x63
	strh	r3, [r2]
	ldr	r3, =0xea7
	add	r2, r4, r3
	mov	r3, #0xf
	strb	r3, [r2]
	ldr	r3, =0xf000f000
	mov	r0, r5
	str	r3, [r5]
	ldr	r2, =0x85000140
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_15ef4
	bl	Func_19d0c
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_160fc
	bl	Func_41d8
	bl	Func_173f4
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_15f30

.thumb_func_start Func_15fb8
	push	{lr}
	mov	r12, r3
	mov	r3, r9
	push	{r3}
	mov	r3, r12
	mov	r3, r0
	ldr	r0, =0x3ff
	mov	r2, r9
	sub	sp, #4
	mov	r4, r1
	str	r2, [sp]
	and	r4, r0
	ldr	r2, =0x6000010
	and	r0, r3
	lsl	r0, #5
	lsl	r4, #5
	add	r0, r2
	sub	r2, #0x10
	add	r1, r4, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x600000c
	add	r4, r3
	mov	r0, r4
	ldr	r3, =Func_8d4
	mov	r1, #0x14
	bl	_call_via_r3
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r1}
	bx	r1
.func_end Func_15fb8

.thumb_func_start Func_16018
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	mov	r6, r0
	ldr	r1, =0x12fc
	mov	r0, #0xf
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r5, r0
	mov	r4, sp
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x850004bf
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0xea3
	add	r3, r5, r1
	mov	r1, #1
	strb	r1, [r3]
	ldr	r3, =0x12b6
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
	ldr	r2, =0xea5
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0xea7
	add	r2, r5, r3
	mov	r3, #0xf
	strb	r3, [r2]
	ldr	r3, =0xf000f000
	mov	r0, r4
	str	r3, [r4]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_15ef4
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_160fc
	bl	Func_41d8
	mov	r0, r6
	bl	Func_17464
	add	r1, sp, #4
	mov	r9, r1
	ldr	r0, =0xf013
	mov	r1, #0x80
	bl	Func_15fb8
	add	r2, sp, #4
	mov	r9, r2
	mov	r1, #0x81
	ldr	r0, =0xf014
	bl	Func_15fb8
	add	r3, sp, #4
	mov	r9, r3
	mov	r1, #0x82
	ldr	r0, =0xf015
	bl	Func_15fb8
	ldr	r1, =0xda2
	mov	r2, #4
	mov	r3, #2
	add	r5, r1
.L160ac:
	sub	r3, #1
	strb	r2, [r5]
	sub	r5, #1
	cmp	r3, #0
	bge	.L160ac
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_16018

.thumb_func_start Func_160fc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea6
	ldr	r7, [r3]
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L1615a
	sub	r2, #3
	add	r3, r7, r2
	ldrb	r4, [r3]
	cmp	r4, #0
	beq	.L1615a
	ldr	r3, =0x6002000
	mov	r12, r3
	mov	r3, #1
	and	r3, r4
	mov	r5, r7
	cmp	r3, #0
	beq	.L16126
	mov	r4, #0x3f
.L16126:
	mov	r3, #0x3f
	and	r4, r3
	mov	r2, #1
	mov	r6, #0x80
	lsr	r4, #1
	mov	r14, r2
	lsl	r6, #1
.L16134:
	mov	r3, r4
	mov	r2, r14
	and	r3, r2
	cmp	r3, #0
	beq	.L1614a
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r12
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L1614a:
	lsr	r4, #1
	add	r5, r6
	add	r12, r6
	cmp	r4, #0
	bne	.L16134
	ldr	r2, =0xea3
	add	r3, r7, r2
	strb	r4, [r3]
.L1615a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_160fc

.thumb_func_start Func_16178
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r10, r3
	lsl	r3, r1, #5
	add	r3, r0
	lsl	r3, #1
	mov	r6, r2
	mov	r2, r10
	add	r5, r3, r2
	mov	r4, #0xf0
	add	r3, r1, r7
	sub	sp, #4
	mov	r8, r1
	lsl	r4, #8
	cmp	r3, #0x14
	bls	.L161a6
	mov	r3, #0x14
	sub	r7, r3, r1
.L161a6:
	cmp	r6, #1
	bhi	.L161ac
	mov	r6, #2
.L161ac:
	cmp	r6, #0x1e
	bls	.L161b2
	mov	r6, #0x1e
.L161b2:
	cmp	r7, #1
	bhi	.L161b8
	mov	r7, #2
.L161b8:
	cmp	r7, #0x1e
	bls	.L161be
	mov	r7, #0x1e
.L161be:
	mov	r2, r6
	mov	r1, r8
	mov	r3, r7
	str	r4, [sp]
	bl	Func_1e260
	mov	r2, #0
	ldr	r4, [sp]
	cmp	r2, r7
	bcs	.L16208
	ldr	r0, =0xea5
	mov	r3, #0x20
	sub	r3, r6
	add	r0, r10
	lsl	r1, r3, #1
.L161dc:
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.L161f0
	mov	r4, r8
	add	r3, r4, r2
	ldr	r4, =0xf07f
	cmp	r3, #0x10
	bhi	.L161f0
	mov	r4, #0xf0
	lsl	r4, #8
.L161f0:
	mov	r3, #0
	cmp	r3, r6
	bcs	.L16200
.L161f6:
	add	r3, #1
	strh	r4, [r5]
	add	r5, #2
	cmp	r3, r6
	bcc	.L161f6
.L16200:
	add	r2, #1
	add	r5, r1
	cmp	r2, r7
	bcc	.L161dc
.L16208:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_16178

.thumb_func_start Func_16230
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r10, r3
	ldrh	r3, [r0, #0xa]
	ldrh	r2, [r0, #0x16]
	mov	r8, r3
	mov	r3, #0
	strh	r3, [r0, #0x1a]
	mov	r3, #8
	and	r3, r2
	sub	sp, #4
	ldrh	r5, [r0, #0xc]
	ldrh	r6, [r0, #0xe]
	ldrh	r7, [r0, #8]
	cmp	r3, #0
	beq	.L1629c
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1627c
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_170f8
	mov	r1, #0xf0
	ldr	r3, =Func_8d8
	ldr	r0, =0x6002500
	lsl	r1, #4
	ldr	r2, =0x44444444
	bl	_call_via_r3
	b	.L1628a
.L1627c:
	mov	r1, #0xf0
	ldr	r3, =Func_8d8
	ldr	r0, =0x6002500
	lsl	r1, #4
	mov	r2, #0
	bl	_call_via_r3
.L1628a:
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_17248
	b	.L162a8
.L1629c:
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_170f8
.L162a8:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_16230

.thumb_func_start Func_162d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r14, r3
	ldr	r3, =iwram_1e8c
	mov	r12, r2
	ldr	r3, [r3]
	mov	r2, #0xa0
	lsl	r2, #3
	add	r4, r3, r2
	ldrh	r2, [r4, #0x16]
	mov	r3, #1
	and	r3, r2
	mov	r7, r1
	ldr	r6, [sp, #0x14]
	mov	r5, #0
	mov	r1, #0
	b	.L1630a

	.pool_aligned

.L162fc:
	add	r1, #1
	add	r4, #0x24
	cmp	r1, #8
	beq	.L16318
	ldrh	r2, [r4, #0x16]
	mov	r3, #1
	and	r3, r2
.L1630a:
	cmp	r3, #0
	bne	.L162fc
	mov	r2, #0x1a
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bne	.L162fc
	mov	r5, r4
.L16318:
	cmp	r5, #0
	beq	.L163e0
	mov	r3, #0
	mov	r8, r3
	mov	r2, r12
	mov	r3, r14
	strh	r7, [r5, #0xe]
	strh	r2, [r5, #8]
	strh	r3, [r5, #0xa]
	mov	r2, r8
	mov	r3, r8
	mov	r7, #1
	strh	r0, [r5, #0xc]
	strh	r3, [r5, #0x14]
	str	r2, [r5]
	str	r4, [r5, #4]
	strh	r7, [r5, #0x10]
	strh	r7, [r5, #0x16]
	bl	Func_173ac
	mov	r0, #8
	mov	r3, r6
	and	r3, r0
	cmp	r3, #0
	beq	.L16352
	ldrh	r3, [r5, #0x16]
	ldr	r2, =8
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16352:
	mov	r3, #0x20
	and	r3, r6
	cmp	r3, #0
	beq	.L16362
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x20
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16362:
	mov	r3, #0x40
	and	r3, r6
	cmp	r3, #0
	beq	.L16380
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x40
	orr	r3, r2
	strh	r3, [r5, #0x16]
	b	.L16380

	.pool_aligned

.L16380:
	mov	r3, #0x80
	and	r3, r6
	cmp	r3, #0
	beq	.L16390
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x80
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16390:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r3, r6
	and	r3, r1
	cmp	r3, #0
	beq	.L163a4
	ldrh	r2, [r5, #0x16]
	mov	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L163a4:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L163ce
	ldrh	r3, [r5, #0x16]
	ldr	r2, =2
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r5, #0x16]
	strh	r2, [r5, #0x18]
	b	.L163c4

	.pool_aligned

.L163c4:
	strh	r7, [r5, #0x1a]
	mov	r0, r5
	bl	Func_16230
	b	.L163e0
.L163ce:
	mov	r3, #7
	strh	r0, [r5, #0x1a]
	strh	r3, [r5, #0x18]
	mov	r0, r5
	bl	Func_163ec
	mov	r0, #1
	bl	Func_30f8
.L163e0:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_162d4

.thumb_func_start Func_163ec
	push	{r5, lr}
	mov	r5, r0
	ldrh	r2, [r5, #0x16]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L16410
	mov	r2, #0x1a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L16410
.L16402:
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0x1a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L16402
.L16410:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_163ec

.thumb_func_start Func_16418
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	cmp	r5, #0
	beq	.L16472
	bl	Func_16478
	ldrh	r3, [r5, #0xc]
	strh	r3, [r5, #0x1c]
	ldrh	r3, [r5, #0xe]
	strh	r3, [r5, #0x1e]
	ldrh	r3, [r5, #8]
	strh	r3, [r5, #0x20]
	ldrh	r3, [r5, #0xa]
	mov	r6, #0
	strh	r6, [r5, #0x16]
	strh	r3, [r5, #0x22]
	cmp	r7, #0
	beq	.L1646c
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_16178
	str	r6, [r5]
	str	r6, [r5, #4]
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
	strh	r6, [r5, #0xc]
	strh	r6, [r5, #0xe]
	strh	r6, [r5, #0x10]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
	strh	r6, [r5, #0x1c]
	strh	r6, [r5, #0x1e]
	strh	r6, [r5, #0x20]
	strh	r6, [r5, #0x22]
	b	.L16472
.L1646c:
	mov	r3, #4
	strh	r7, [r5, #0x18]
	strh	r3, [r5, #0x1a]
.L16472:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_16418

.thumb_func_start Func_16478
	push	{r5, lr}
	mov	r5, r0
	ldrh	r2, [r5, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L16490
	bl	Func_16498
	mov	r0, r5
	bl	Func_164ac
.L16490:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_16478

.thumb_func_start Func_16498
	push	{lr}
	ldrh	r4, [r0, #0xc]
	ldrh	r1, [r0, #0xe]
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #0xa]
	mov	r0, r4
	bl	Func_170f8
	pop	{r0}
	bx	r0
.func_end Func_16498

.thumb_func_start Func_164ac
	push	{r5, lr}
	mov	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L164cc
	ldr	r0, [r3]
	str	r3, [r3, #4]
	str	r5, [r3]
	cmp	r0, #0
	beq	.L164cc
.L164c0:
	ldr	r5, [r0]
	bl	Func_16594
	mov	r0, r5
	cmp	r0, #0
	bne	.L164c0
.L164cc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_164ac

.thumb_func_start Func_164d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r7, r2
	ldr	r2, =iwram_1e8c
	mov	r5, r1
	ldr	r1, [sp, #0x18]
	ldr	r2, [r2]
	lsr	r4, r5, #3
	add	r3, #7
	ldrh	r5, [r0, #0xc]
	add	r1, #7
	ldrh	r0, [r0, #0xe]
	mov	r8, r2
	lsr	r3, #3
	lsr	r2, r7, #3
	lsr	r1, #3
	add	r2, r0
	add	r4, r5
	add	r3, r5
	add	r1, r0
	add	r5, r4, #1
	add	r7, r2, #1
	sub	r6, r3, r4
	sub	r4, r1, r2
	mov	r3, r4
	mov	r1, r7
	mov	r2, r6
	mov	r0, r5
	str	r4, [sp]
	bl	Func_1e260
	lsl	r3, r7, #5
	add	r3, r5
	ldr	r4, [sp]
	lsl	r3, #1
	mov	r2, r8
	mov	r1, #0
	add	r0, r3, r2
	cmp	r1, r4
	bcs	.L16548
	mov	r3, #0x20
	sub	r3, r6
	lsl	r3, #1
.L1652e:
	mov	r5, #0
	cmp	r5, r6
	bcs	.L16540
	ldr	r2, .L16554	@ 0xf020
.L16536:
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, r6
	bcc	.L16536
.L16540:
	add	r1, #1
	add	r0, r3
	cmp	r1, r4
	bcc	.L1652e
.L16548:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	add	sp, #4
	b	.L16560

	.align	2, 0
.L16554:
	.word	0xf020
	.pool

.L16560:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_164d4

.thumb_func_start Func_1656c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, r0
	cmp	r3, #0
	beq	.L1657e
.L16576:
	mov	r2, r3
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L16576
.L1657e:
	str	r2, [r0, #4]
	pop	{r0}
	bx	r0
.func_end Func_1656c

.thumb_func_start Func_16584
	push	{lr}
	cmp	r0, #0
	beq	.L16590
	ldr	r3, [r0, #4]
	str	r1, [r3]
	str	r1, [r0, #4]
.L16590:
	pop	{r0}
	bx	r0
.func_end Func_16584

.thumb_func_start Func_16594
	push	{r5, lr}
	mov	r5, r0
	bl	Func_15ec0
	ldrb	r3, [r5, #4]
	cmp	r3, #0
	beq	.L165c0
	ldrb	r0, [r5, #0xe]
	bl	Func_3f3c
	ldrb	r3, [r5, #4]
	cmp	r3, #2
	bne	.L165c0
	ldr	r3, =iwram_1e8c
	ldr	r1, [r3]
	ldrb	r3, [r5, #0x19]
	ldr	r2, =0x12d0
	lsr	r3, #4
	lsl	r3, #1
	add	r3, r2
	ldr	r2, .L165cc	@ 0x3e7
	strh	r2, [r1, r3]
.L165c0:
	mov	r3, #0
	strb	r3, [r5, #5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L165cc:
	.word	0x3e7
.func_end Func_16594

.thumb_func_start Func_165d8
	push	{r5, r6, r7, lr}
	mov	r7, r3
	ldr	r3, =iwram_1e8c
	mov	r12, r1
	ldr	r3, [r3]
	mov	r1, #0xc4
	lsl	r1, #3
	add	r4, r3, r1
	ldr	r3, [r4]
	mov	r6, r0
	ldr	r5, [sp, #0x10]
	mov	r0, #0
	mov	r1, #0
	b	.L165fe
.L165f4:
	add	r1, #1
	add	r4, #0x28
	cmp	r1, #3
	beq	.L16604
	ldr	r3, [r4]
.L165fe:
	cmp	r3, #0
	bne	.L165f4
	mov	r0, r4
.L16604:
	cmp	r0, #0
	beq	.L16668
	lsl	r3, r2, #8
	strh	r3, [r0, #0x1e]
	strh	r3, [r0, #4]
	lsl	r3, r7, #8
	strh	r3, [r0, #6]
	mov	r3, r12
	strh	r3, [r0, #0x12]
	mov	r3, #0xf
	strh	r3, [r0, #0x16]
	mov	r3, #0xa
	strh	r3, [r0, #0x1a]
	ldr	r3, [sp, #0x14]
	mov	r2, #0
	str	r6, [r0]
	strh	r2, [r0, #0x14]
	strh	r2, [r0, #0x18]
	strh	r2, [r0, #0x20]
	strh	r3, [r0, #0x24]
	cmp	r5, #0
	beq	.L1664c
	mov	r2, r0
	mov	r1, #0
	add	r2, #8
.L16636:
	ldrh	r3, [r5]
	add	r1, #1
	strh	r3, [r2]
	add	r5, #2
	add	r2, #2
	cmp	r1, #3
	bls	.L16636
	b	.L16664

	.pool_aligned

.L1664c:
	mov	r3, r0
	ldr	r2, =0
	mov	r1, #0
	add	r3, #8
.L16654:
	add	r1, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r1, #3
	bls	.L16654
	b	.L16664

	.pool_aligned

.L16664:
	mov	r3, #0
	strh	r3, [r0, #0x10]
.L16668:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_165d8

.thumb_func_start Func_16670
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e8c
	mov	r4, #0xc4
	ldr	r3, [r3]
	lsl	r4, #3
	mov	r6, r1
	mov	r5, #0
	add	r1, r3, r4
	mov	r4, #0
	b	.L16688
.L16684:
	add	r1, #0x28
	add	r4, #1
.L16688:
	cmp	r4, #3
	beq	.L1669a
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L16698
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L16684
.L16698:
	mov	r5, r1
.L1669a:
	cmp	r5, #0
	beq	.L1670e
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L166b2
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	mov	r3, #0xc0
	lsl	r3, #2
	str	r0, [r5]
	b	.L166de
.L166b2:
	cmp	r2, #0
	bne	.L166e0
	ldrh	r3, [r5, #6]
	mov	r2, r3
	cmp	r2, #0
	bne	.L166c6
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	b	.L166da
.L166c6:
	mov	r1, #0xd0
	lsl	r1, #4
	cmp	r2, r1
	bcs	.L166d4
	add	r3, r1
	strh	r3, [r5, #6]
	b	.L166da
.L166d4:
	mov	r0, r5
	bl	Func_167d8
.L166da:
	mov	r3, #0xc0
	lsl	r3, #2
.L166de:
	strh	r3, [r5, #4]
.L166e0:
	mov	r3, #0xc0
	lsl	r3, #2
	strh	r3, [r5, #0x1e]
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r3, #0x14]
	mov	r3, #0xf
	strh	r3, [r5, #0x16]
	mov	r3, #0xa
	strh	r3, [r5, #0x1a]
	strh	r6, [r5, #0x12]
	mov	r3, r5
	strh	r2, [r5, #0x14]
	strh	r2, [r5, #0x18]
	strh	r2, [r5, #0x10]
	strh	r2, [r5, #0x20]
	mov	r4, #0
	add	r3, #8
.L16704:
	add	r4, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r4, #3
	bls	.L16704
.L1670e:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_16670

.thumb_func_start Func_1671c
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_8d8
	lsl	r1, #4
	mov	r2, #0
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_1671c

.thumb_func_start Func_16738
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_8d8
	lsl	r1, #4
	ldr	r2, =0x44444444
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_16738

.thumb_func_start Func_16758
	push	{r5, lr}
	ldr	r3, =iwram_1e8c
	mov	r1, #0xc4
	ldr	r3, [r3]
	lsl	r1, #3
	add	r2, r3, r1
	mov	r5, #0
	mov	r1, #0
	b	.L1676e
.L1676a:
	add	r2, #0x28
	add	r1, #1
.L1676e:
	cmp	r1, #3
	beq	.L16780
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L1677e
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L1676a
.L1677e:
	mov	r5, r2
.L16780:
	cmp	r5, #0
	beq	.L167a2
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L16792
	bl	Func_1671c
	mov	r3, #0
	strh	r3, [r5, #6]
.L16792:
	mov	r3, #0
	strh	r3, [r5, #4]
	strh	r3, [r5, #0x14]
	mov	r2, #0xf
	strh	r3, [r5, #0x18]
	mov	r3, #0xa
	strh	r2, [r5, #0x16]
	strh	r3, [r5, #0x1a]
.L167a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_16758

.thumb_func_start Func_167ac
	ldr	r3, =iwram_1e8c
	ldr	r4, =0xeae
	ldr	r2, [r3]
	ldrh	r1, [r0, #0x16]
	add	r3, r2, r4
	strh	r1, [r3]
	sub	r4, #2
	ldrh	r1, [r0, #0x18]
	add	r3, r2, r4
	strh	r1, [r3]
	ldr	r1, =0xea8
	ldrh	r3, [r0, #0x1a]
	add	r2, r1
	strh	r3, [r2]
	bx	lr
.func_end Func_167ac

.thumb_func_start Func_167d8
	mov	r3, #2
	strh	r3, [r0, #0x1c]
	bx	lr
.func_end Func_167d8

.thumb_func_start Func_167e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r6, =0x6002520
	lsl	r1, r3, #1
	lsl	r3, #3
	mov	r8, r3
	add	r5, r3, r6
	ldr	r3, =0x6002500
	sub	sp, #8
	str	r3, [sp]
	mov	r3, #0x20
	mov	r2, #0x18
	mov	r4, #0x84
	sub	r3, r1
	sub	r2, r1
	lsl	r4, #24
	lsl	r3, #2
	mov	r9, r2
	mov	r11, r4
	mov	r10, r3
	mov	r7, #0x1d
.L16818:
	mov	r2, r9
	mov	r4, r11
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r6
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [sp]
	ldr	r3, =Func_8d8
	add	r0, r10
	mov	r1, r8
	mov	r2, #0
	bl	_call_via_r3
	ldr	r3, [sp]
	sub	r7, #1
	add	r3, #0x80
	add	r6, #0x80
	add	r5, #0x80
	str	r3, [sp]
	cmp	r7, #0
	bge	.L16818
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_167e0

.thumb_func_start Func_16868
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	mov	r2, #0xc4
	ldr	r3, [r3]
	lsl	r2, #3
	add	r5, r3, r2
	mov	r3, #1
	mov	r7, #0
	mov	r8, r3
.L1687e:
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L168dc
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bne	.L168dc
	ldrh	r3, [r2, #0x16]
	cmp	r3, #0
	bne	.L16894
	str	r3, [r5]
	b	.L168dc
.L16894:
	ldrh	r6, [r2, #0x12]
	cmp	r6, #0
	beq	.L168a2
	mov	r0, r5
	bl	Func_19854
	b	.L168dc
.L168a2:
	mov	r0, r5
	bl	Func_168f4
	cmp	r0, #8
	beq	.L168b2
	cmp	r0, #9
	beq	.L168b8
	b	.L168dc
.L168b2:
	ldr	r3, [r5]
	mov	r2, r8
	b	.L168da
.L168b8:
	ldr	r0, [r5]
	ldrh	r3, [r0, #0x16]
	mov	r1, #2
	and	r1, r3
	lsl	r1, #16
	lsr	r1, #16
	bl	Func_16418
	ldr	r3, [r5]
	mov	r2, r8
	strh	r6, [r5, #4]
	strh	r6, [r5, #6]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
.L168da:
	strh	r2, [r3, #0x14]
.L168dc:
	add	r7, #1
	add	r5, #0x28
	cmp	r7, #3
	bne	.L1687e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_16868

.thumb_func_start Func_168f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r1, =iwram_1ae8
	ldr	r3, [r3]
	mov	r6, r0
	mov	r8, r3
	mov	r0, #0x83
	ldr	r3, [r1]
	ldr	r3, =ewram_240
	lsl	r0, #2
	add	r3, r0
	ldrb	r3, [r3]
	ldr	r2, =.L7380b
	ldrb	r2, [r2, r3]
	sub	sp, #0x34
	ldr	r3, =0xea5
	str	r2, [sp, #0x20]
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16944
	ldr	r3, =iwram_1cd0
	ldrh	r3, [r3]
	mov	r2, r3
	cmp	r2, #0
	bge	.L16936
	mov	r2, #0
.L16936:
	cmp	r2, #2
	ble	.L1693c
	mov	r2, #2
.L1693c:
	lsl	r3, r2, #2
	add	r3, r2
	add	r3, #3
	str	r3, [sp, #0x20]
.L16944:
	ldrh	r3, [r6, #0x1c]
	cmp	r3, #0
	beq	.L16958
	mov	r0, #1
	bl	Func_167e0
	ldrh	r3, [r6, #0x1c]
	sub	r3, #1
	strh	r3, [r6, #0x1c]
	b	.L16f18
.L16958:
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L16972
	ldrh	r2, [r6, #0x22]
	mov	r3, r2
	cmp	r3, #0
	beq	.L16972
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r6, #0x22]
	b	.L16f18
.L1696e:
	mov	r0, #9
	b	.L16f1a
.L16972:
	ldrh	r3, [r6, #0x20]
	mov	r7, #0
	cmp	r3, #0
	bne	.L16988
	ldrh	r3, [r6, #0x12]
	mov	r2, #0xeb
	lsl	r3, #1
	lsl	r2, #4
	add	r3, r2
	mov	r4, r8
	ldrh	r7, [r4, r3]
.L16988:
	cmp	r7, #0x1e
	bls	.L1698e
	b	.L16d76
.L1698e:
	ldr	r2, =.L16998
	lsl	r3, r7, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L16998:
	.word	.L16d58
	.word	.L16a80
	.word	.L16c2c
	.word	.L16a14
	.word	.L16c7c
	.word	.L16c58
	.word	.L16c62
	.word	.L16d18
	.word	.L16c90
	.word	.L16cd4
	.word	.L16cfc
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d30
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d64
	.word	.L16d58

.L16a14:
	ldrh	r3, [r6, #0x1e]
	strh	r3, [r6, #4]
	ldr	r3, [r6]
	ldrh	r2, [r3, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L16a42
	ldrh	r2, [r6, #6]
	ldr	r3, =0xcff
	cmp	r2, r3
	bls	.L16a38
	mov	r0, r6
	bl	Func_167d8
	mov	r0, #1
	str	r0, [sp, #0x20]
	b	.L16d64
.L16a38:
	mov	r1, #0xd0
	lsl	r1, #4
	add	r3, r2, r1
	strh	r3, [r6, #6]
	b	.L16d64
.L16a42:
	ldrh	r3, [r6, #6]
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r2
	ldrh	r2, [r6, #0x10]
	strh	r3, [r6, #6]
	mov	r3, r2
	cmp	r3, #2
	bls	.L16a56
	b	.L16d64
.L16a56:
	add	r3, r2, #1
	strh	r3, [r6, #0x10]
	b	.L16d64

	.pool_aligned

.L16a80:
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16a9a
	mov	r4, #0xe1
	ldrh	r3, [r6, #0x14]
	lsl	r4, #2
	cmp	r3, r4
	bcs	.L16a9a
	ldr	r2, =iwram_1af8
	mov	r3, #0
	str	r3, [r2]
.L16a9a:
	ldr	r3, =0x397
	mov	r0, r6
	ldr	r7, .L16acc	@ 0
	strh	r3, [r6, #0x14]
	bl	Func_199ec
	cmp	r0, #0
	bne	.L16afa
	ldr	r0, [r6]
	ldrh	r3, [r0, #8]
	cmp	r3, #0
	bne	.L16ab4
	b	.L16d64
.L16ab4:
	ldrh	r3, [r0, #0xa]
	cmp	r3, #0
	bne	.L16abc
	b	.L16d64
.L16abc:
	ldr	r7, =0x12f8
	add	r7, r8
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L16ac8
	b	.L16d64
.L16ac8:
	b	.L16ae0

	.align	2, 0
.L16acc:
	.word	0
	.pool

.L16ae0:
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #0xa]
	lsl	r2, #2
	lsl	r3, #3
	mov	r5, #1
	sub	r2, #8
	sub	r3, #0x10
	mov	r1, #1
	str	r5, [sp]
	bl	Func_18cac
	strb	r5, [r7]
	b	.L16d64
.L16afa:
	ldr	r5, [r6]
	ldrh	r3, [r5, #0xc]
	ldrh	r0, [r5, #8]
	str	r3, [sp, #0x30]
	ldrh	r3, [r5, #0xe]
	str	r0, [sp, #0x1c]
	str	r3, [sp, #0x2c]
	ldr	r3, =0x12f8
	ldrh	r1, [r5, #0xa]
	ldrh	r4, [r6, #0x12]
	add	r3, r8
	str	r1, [sp, #0x18]
	mov	r0, r5
	strb	r7, [r3]
	str	r4, [sp, #0xc]
	bl	Func_16478
	ldrh	r3, [r6, #0x24]
	ldr	r4, [sp, #0xc]
	cmp	r3, #0
	bne	.L16b3c
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	orr	r3, r2
	cmp	r3, #0
	beq	.L16b3c
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_16178
	ldr	r4, [sp, #0xc]
.L16b3c:
	ldr	r3, =0x1ff
	add	r4, #1
	and	r4, r3
	mov	r2, #0xeb
	lsl	r3, r4, #1
	lsl	r2, #4
	add	r3, r2
	mov	r0, r8
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L16c12
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	orr	r3, r2
	cmp	r3, #0
	beq	.L16c12
	ldrh	r7, [r6, #0x24]
	cmp	r7, #0
	beq	.L16b70
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_16178
	b	.L16c06
.L16b70:
	add	r1, sp, #0x30
	mov	r11, r1
	mov	r0, #0x24
	mov	r1, #8
	add	r0, sp
	add	r1, r6
	mov	r2, sp
	mov	r3, sp
	add	r3, #0x28
	add	r2, #0x2c
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r9, r0
	mov	r10, r1
	mov	r0, r4
	mov	r1, r11
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r2, [sp, #0x14]
	str	r7, [sp, #8]
	bl	Func_1868c
	ldrh	r1, [r5, #0x16]
	mov	r3, #0x80
	and	r3, r1
	ldr	r4, [sp, #0xc]
	cmp	r3, #0
	beq	.L16bc0
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0x18]
	cmp	r3, r2
	beq	.L16bb8
	sub	r2, r3
	ldr	r3, [sp, #0x2c]
	sub	r3, r2
	str	r3, [sp, #0x2c]
.L16bb8:
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	bge	.L16bc0
	str	r7, [sp, #0x2c]
.L16bc0:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r1
	cmp	r3, #0
	bne	.L16bf6
	ldr	r3, [sp, #0x28]
	ldr	r0, [sp, #0x1c]
	sub	r3, r0, r3
	cmp	r3, #0
	bge	.L16bd6
	add	r3, #3
.L16bd6:
	ldr	r2, [sp, #0x30]
	asr	r3, #2
	add	r2, r3
	mov	r1, r9
	mov	r3, #2
	str	r2, [sp, #0x30]
	mov	r2, r10
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r4
	mov	r1, r11
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	bl	Func_1868c
.L16bf6:
	ldr	r3, [sp, #0x30]
	strh	r3, [r5, #0xc]
	ldr	r3, [sp, #0x2c]
	strh	r3, [r5, #0xe]
	ldr	r3, [sp, #0x28]
	strh	r3, [r5, #8]
	ldr	r3, [sp, #0x24]
	strh	r3, [r5, #0xa]
.L16c06:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_170f8
.L16c12:
	ldrh	r3, [r6, #0x1e]
	mov	r2, #0
	ldr	r5, =0x12b6
	strh	r3, [r6, #4]
	strh	r2, [r6, #6]
	strh	r2, [r6, #0x10]
	add	r5, r8
	ldrh	r0, [r5]
	bl	Func_3f3c
	mov	r3, #0x63
	strh	r3, [r5]
	b	.L16d64
.L16c2c:
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16c46
	mov	r4, #0xe1
	ldrh	r3, [r6, #0x14]
	lsl	r4, #2
	cmp	r3, r4
	bcs	.L16c46
	ldr	r2, =iwram_1af8
	mov	r3, #0
	str	r3, [r2]
.L16c46:
	mov	r0, r6
	bl	Func_199ec
	cmp	r0, #0
	beq	.L16c52
	b	.L1696e
.L16c52:
	ldr	r3, =0x397
	strh	r3, [r6, #0x14]
	b	.L16d64
.L16c58:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c6c
	mov	r3, #0x14
	b	.L16c6a
.L16c62:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c6c
	mov	r3, #0x78
.L16c6a:
	strh	r3, [r6, #0x14]
.L16c6c:
	ldr	r2, =0x12f6
	mov	r3, #0
	add	r2, r8
	strh	r3, [r2]
	mov	r0, r6
	bl	Func_1999c
	b	.L16d64
.L16c7c:
	ldrh	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L16c86
	mov	r3, #0x3c
	strh	r3, [r6, #0x14]
.L16c86:
	ldr	r2, =0x12f6
	mov	r3, #0
	add	r2, r8
	strh	r3, [r2]
	b	.L16d64
.L16c90:
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16cb4	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xeb
	lsl	r0, #4
	lsl	r3, #1
	add	r3, r0
	mov	r1, r8
	ldrh	r3, [r1, r3]
	mov	r0, r6
	strh	r3, [r6, #0x16]
	bl	Func_167ac
	b	.L16d64

	.align	2, 0
.L16cb4:
	.word	0x1ff
	.pool

.L16cd4:
	ldrh	r3, [r6, #0x12]
	ldr	r2, =0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r2, #0xeb
	lsl	r3, #1
	lsl	r2, #4
	add	r3, r2
	mov	r4, r8
	ldrh	r3, [r4, r3]
	mov	r0, r6
	strh	r3, [r6, #0x18]
	bl	Func_167ac
	b	.L16d64

	.pool_aligned

.L16cfc:
	ldrh	r3, [r6, #0x12]
	ldr	r2, =0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xeb
	lsl	r0, #4
	lsl	r3, #1
	add	r3, r0
	mov	r1, r8
	ldrh	r3, [r1, r3]
	mov	r0, r6
	b	.L16d24
.L16d18:
	mov	r3, #0
	mov	r2, #0xf
	strh	r3, [r6, #0x18]
	mov	r0, r6
	mov	r3, #0xa
	strh	r2, [r6, #0x16]
.L16d24:
	strh	r3, [r6, #0x1a]
	bl	Func_167ac
	b	.L16d64

	.pool_aligned

.L16d30:
	ldrh	r3, [r6, #0x12]
	ldr	r0, =0x1ff
	add	r3, #1
	and	r3, r0
	strh	r3, [r6, #0x12]
	ldrh	r2, [r6, #0x12]
	mov	r4, #0xeb
	lsl	r3, r2, #1
	lsl	r4, #4
	add	r3, r4
	mov	r4, r8
	ldrh	r3, [r4, r3]
	ldr	r1, [r6]
	add	r2, #1
	strh	r3, [r1, #0x12]
	and	r2, r0
	mov	r3, #0xa
	strh	r3, [r6, #0x14]
	strh	r2, [r6, #0x12]
	b	.L16d64
.L16d58:
	mov	r3, #1
	strh	r3, [r6, #0x20]
	mov	r0, #8
	b	.L16f1a

	.pool_aligned

.L16d64:
	ldr	r3, =0xea5
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16d70
	b	.L16ede
.L16d70:
	mov	r0, #1
	str	r0, [sp, #0x20]
	b	.L16ede
.L16d76:
	ldrh	r3, [r6, #4]
	mov	r2, r3
	add	r2, #0x80
	cmp	r2, #0
	bge	.L16d84
	ldr	r1, =0x17f
	add	r2, r3, r1
.L16d84:
	asr	r5, r2, #8
	ldrh	r2, [r6, #6]
	mov	r3, r2
	add	r3, #0x80
	cmp	r3, #0
	bge	.L16d94
	ldr	r4, =0x17f
	add	r3, r2, r4
.L16d94:
	asr	r3, #8
	mov	r12, r3
	mov	r0, #0x83
	ldr	r3, =ewram_240
	lsl	r0, #2
	add	r3, r0
	ldrb	r3, [r3]
	ldr	r2, =.L7380e
	ldrb	r2, [r2, r3]
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	mov	r10, r2
	ldrh	r2, [r6, #0x12]
	cmp	r3, #0
	beq	.L16db6
	add	r5, #8
.L16db6:
	add	r3, r2, #1
	ldr	r2, =0x1ff
	mov	r1, #0xeb
	and	r3, r2
	lsl	r3, #1
	lsl	r1, #4
	add	r3, r1
	mov	r0, r8
	ldrh	r4, [r0, r3]
	cmp	r4, #0xde
	bne	.L16dec
	mov	r3, #0x80
	lsl	r3, #7
	b	.L16df4

	.pool_aligned

.L16dec:
	cmp	r4, #0xdf
	bne	.L16dfe
	mov	r3, #0x80
	lsl	r3, #8
.L16df4:
	orr	r7, r3
	ldrh	r3, [r6, #0x12]
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16dfe:
	ldr	r0, [r6]
	ldrh	r2, [r0, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L16e3e
	cmp	r7, #0x20
	bls	.L16e3e
	cmp	r4, #0x20
	bls	.L16e3e
	mov	r3, r7
	mov	r2, r4
	ldr	r1, =Data_32224
	sub	r3, #0x20
	sub	r2, #0x20
	lsl	r3, #5
	lsl	r2, #5
	ldrh	r3, [r1, r3]
	ldrh	r2, [r1, r2]
	mov	r1, #0xf0
	add	r3, r2
	lsl	r3, #16
	lsl	r1, #12
	cmp	r3, r1
	bhi	.L16e3e
	lsl	r3, r4, #8
	orr	r7, r3
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16e6c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16e3e:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r5
	mov	r3, r12
	mov	r1, r7
	bl	Func_18cac
	ldr	r3, =ewram_240
	mov	r4, r0
	mov	r0, #0x83
	lsl	r0, #2
	add	r3, r0
	ldr	r2, =.L73808
	ldrb	r3, [r3]
	ldrb	r3, [r2, r3]
	strh	r3, [r6, #0x22]
	cmp	r4, #0
	beq	.L16ecc
	ldr	r1, =0x12f4
	add	r1, r8
	ldrh	r3, [r1]
	b	.L16e80

	.align	2, 0
.L16e6c:
	.word	0x1ff
	.pool

.L16e80:
	cmp	r3, #0
	beq	.L16eb6
	ldr	r5, =0x12f6
	add	r5, r8
	ldrh	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L16eb0
	cmp	r7, #0x20
	beq	.L16eb6
	ldrh	r0, [r1]
	mov	r3, #3
	and	r3, r7
	add	r0, r3
	str	r4, [sp, #0xc]
	bl	_Func_f9080
	mov	r1, r10
	strh	r1, [r5]
	ldr	r4, [sp, #0xc]
	b	.L16eb6

	.pool_aligned

.L16eb0:
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r5]
.L16eb6:
	lsl	r0, r4, #8
	cmp	r7, #0x20
	bne	.L16ec6
	ldrh	r3, [r6, #0x10]
	lsl	r3, #1
	add	r3, #8
	ldrh	r3, [r6, r3]
	add	r0, r3
.L16ec6:
	ldrh	r3, [r6, #4]
	add	r3, r0
	strh	r3, [r6, #4]
.L16ecc:
	cmp	r7, #0x20
	bne	.L16ede
	ldr	r3, =0xea5
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L16ede
	mov	r1, #1
	str	r1, [sp, #0x20]
.L16ede:
	ldrh	r2, [r6, #0x14]
	mov	r3, r2
	cmp	r3, #0
	beq	.L16ef2
	ldr	r4, =0xffff
	add	r3, r2, r4
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L16efc
.L16ef2:
	ldrh	r3, [r6, #0x12]
	ldr	r2, .L16f0c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r6, #0x12]
.L16efc:
	ldr	r0, [sp, #0x20]
	sub	r0, #1
	str	r0, [sp, #0x20]
	cmp	r0, #0
	beq	.L16f08
	b	.L16972
.L16f08:
	b	.L16f18

	.align	2, 0
.L16f0c:
	.word	0x1ff
	.pool

.L16f18:
	mov	r0, #0
.L16f1a:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_168f4

.thumb_func_start Func_16f2c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	mov	r1, #0xa0
	ldr	r7, [r3]
	lsl	r1, #3
	mov	r2, #0
	add	r5, r7, r1
	mov	r8, r2
.L16f40:
	ldrh	r6, [r5, #0x16]
	cmp	r6, #0
	beq	.L16f6e
	mov	r4, #0x18
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	beq	.L16f5e
	mov	r0, r5
	mov	r1, #0
	bl	Func_17004
	ldrh	r3, [r5, #0x18]
	sub	r3, #1
	strh	r3, [r5, #0x18]
	b	.L16fe6
.L16f5e:
	mov	r1, #0x1a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L16fe6
	mov	r0, r5
	bl	Func_16230
	b	.L16fe6
.L16f6e:
	mov	r3, #0x1a
	ldrsh	r2, [r5, r3]
	cmp	r2, #0
	beq	.L16fe6
	mov	r4, #0x18
	ldrsh	r3, [r5, r4]
	cmp	r3, r2
	beq	.L16faa
	mov	r1, #0x1c
	ldrsh	r0, [r5, r1]
	mov	r2, #0x1e
	ldrsh	r1, [r5, r2]
	mov	r3, #0x20
	ldrsh	r2, [r5, r3]
	mov	r4, #0x22
	ldrsh	r3, [r5, r4]
	bl	Func_16178
	mov	r1, #1
	mov	r0, r5
	bl	Func_17004
	ldrh	r3, [r5, #0x18]
	ldr	r1, =0xea3
	add	r3, #1
	strh	r3, [r5, #0x18]
	mov	r2, #1
	add	r3, r7, r1
	strb	r2, [r3]
	b	.L16fe6
.L16faa:
	mov	r3, #0x1e
	ldrsh	r1, [r5, r3]
	mov	r2, #0x1c
	ldrsh	r0, [r5, r2]
	mov	r4, #0x22
	ldrsh	r3, [r5, r4]
	mov	r4, #0x20
	ldrsh	r2, [r5, r4]
	bl	Func_16178
	ldr	r1, =0xea3
	mov	r3, #1
	add	r2, r7, r1
	str	r6, [r5]
	str	r6, [r5, #4]
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
	strh	r6, [r5, #0xc]
	strh	r6, [r5, #0xe]
	strh	r6, [r5, #0x10]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
	strh	r6, [r5, #0x1c]
	strh	r6, [r5, #0x1e]
	strh	r6, [r5, #0x20]
	strh	r6, [r5, #0x22]
	strb	r3, [r2]
.L16fe6:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x24
	cmp	r3, #8
	bne	.L16f40
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_16f2c

.thumb_func_start Func_17004
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp]
	mov	r7, r0
	mov	r3, #0x18
	ldrsh	r6, [r7, r3]
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	sub	r3, r0, r6
	mov	r10, r3
	ldrh	r3, [r7, #8]
	mov	r1, r3
	mul	r1, r6
	ldr	r3, =Func_8ac
	add	r5, sp, #4
	lsl	r1, #16
	lsl	r0, #17
	mov	r8, r3
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xc]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r0, r3
	ldrh	r3, [r7, #8]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xa]
	mov	r1, r3
	mul	r1, r6
	str	r0, [r5, #8]
	asr	r0, #15
	mov	r11, r0
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	lsl	r1, #16
	lsl	r0, #17
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xe]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r6, r0, r3
	ldrh	r3, [r7, #0xa]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	str	r0, [r5, #8]
	asr	r5, r0, #15
	mov	r3, r5
	mov	r0, r9
	mov	r1, r6
	mov	r2, r11
	bl	Func_170f8
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L170ac
	mov	r3, r9
	strh	r3, [r7, #0x1c]
	mov	r3, r11
	strh	r6, [r7, #0x1e]
	strh	r3, [r7, #0x20]
	strh	r5, [r7, #0x22]
.L170ac:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_17004

.thumb_func_start Func_170c4
	push	{r5, lr}
	mov	r4, r2
	sub	sp, #4
	mov	r5, r0
	cmp	r4, #0
	ble	.L170e8
	mov	r0, sp
	mov	r2, #0x81
	add	r0, #2
	lsl	r2, #24
	strh	r1, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r3, r4, #1
	add	r5, r3
.L170e8:
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_170c4

.thumb_func_start Func_170f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r11, r3
	lsl	r3, r1, #5
	add	r3, r0
	mov	r8, r2
	lsl	r3, #1
	mov	r2, r11
	add	r5, r3, r2
	mov	r3, r8
	cmp	r3, #1
	bhi	.L17122
	b	.L17230
.L17122:
	cmp	r7, #1
	bhi	.L17128
	b	.L17230
.L17128:
	cmp	r3, #0x1e
	bls	.L1712e
	b	.L17230
.L1712e:
	cmp	r7, #0x1e
	bls	.L17134
	b	.L17230
.L17134:
	mov	r3, r7
	mov	r2, r8
	bl	Func_1e260
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1714a
	ldr	r3, .L17170	@ 0xf01c
	b	.L1714c
.L1714a:
	ldr	r3, .L17174	@ 0xf010
.L1714c:
	strh	r3, [r5]
	add	r5, #2
	mov	r2, #2
	neg	r2, r2
	add	r2, r8
	mov	r0, r5
	ldr	r1, =0xf011f011
	mov	r10, r2
	bl	Func_170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17188
	ldr	r3, .L17178	@ 0xf41c
	b	.L1718a

	.align	2, 0
.L17170:
	.word	0xf01c
.L17174:
	.word	0xf010
.L17178:
	.word	0xf41c
	.pool

.L17188:
	ldr	r3, =0xf012
.L1718a:
	strh	r3, [r5]
	add	r5, #2
	mov	r3, #0x20
	mov	r2, r8
	sub	r3, r2
	lsl	r3, #1
	mov	r6, #1
	sub	r7, #1
	add	r5, r3
	cmp	r6, r7
	bcs	.L171d8
	mov	r9, r3
.L171a2:
	ldr	r3, =0xf016
	mov	r2, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r2, #2
	beq	.L171ca
	mov	r0, r5
	ldr	r1, =0xf020f020
	mov	r2, r10
	bl	Func_170c4
	b	.L171c8

	.pool_aligned

.L171c8:
	mov	r5, r0
.L171ca:
	ldr	r3, .L171e8	@ 0xf017
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	add	r5, r9
	cmp	r6, r7
	bcc	.L171a2
.L171d8:
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L171f4
	ldr	r3, .L171ec	@ 0xf81c
	b	.L171f6

	.align	2, 0
.L171e8:
	.word	0xf017
.L171ec:
	.word	0xf81c
	.pool

.L171f4:
	ldr	r3, .L17214	@ 0xf013
.L171f6:
	strh	r3, [r5]
	add	r5, #2
	mov	r0, r5
	ldr	r1, =0xf014f014
	mov	r2, r10
	bl	Func_170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17224
	ldr	r3, .L17218	@ 0xfc1c
	b	.L17226

	.align	2, 0
.L17214:
	.word	0xf013
.L17218:
	.word	0xfc1c
	.pool

.L17224:
	ldr	r3, =0xf015
.L17226:
	strh	r3, [r5]
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r11
	strb	r3, [r2]
.L17230:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_170f8

.thumb_func_start Func_17248
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r14, r3
	ldr	r3, =iwram_1e8c
	lsl	r1, #5
	ldr	r3, [r3]
	add	r1, r0
	sub	sp, #4
	lsl	r1, #1
	mov	r6, r2
	ldr	r4, [sp, #0x24]
	str	r3, [sp]
	add	r1, r3
	cmp	r6, #1
	bls	.L17350
	mov	r2, r14
	cmp	r2, #1
	bls	.L17350
	cmp	r6, #0x1e
	bhi	.L17350
	cmp	r2, #0x1e
	bhi	.L17350
	add	r1, #0x40
	cmp	r4, #0
	bne	.L172e8
	mov	r3, #1
	neg	r3, r3
	add	r3, r14
	mov	r5, #1
	mov	r8, r3
	cmp	r5, r8
	bcs	.L17334
	mov	r3, #0x20
	sub	r3, r6
	lsl	r3, #1
	sub	r2, r6, #1
	mov	r10, r3
	ldr	r3, =0x127
	mov	r12, r2
	mov	r9, r12
	mov	r11, r3
.L172a4:
	mov	r4, #1
	add	r1, #2
	cmp	r4, r9
	bcs	.L172cc
	mov	r3, r14
	sub	r3, #2
	mov	r2, r3
	ldr	r7, .L172d8	@ 0xfff
	mov	r3, r11
	ldr	r6, .L172dc	@ 0xf000
	add	r0, r3, r5
.L172ba:
	mov	r3, r0
	and	r3, r7
	orr	r3, r6
	add	r4, #1
	strh	r3, [r1]
	add	r0, r2
	add	r1, #2
	cmp	r4, r12
	bcc	.L172ba
.L172cc:
	add	r1, #2
	add	r5, #1
	add	r1, r10
	cmp	r5, r8
	bcc	.L172a4
	b	.L17334

	.align	2, 0
.L172d8:
	.word	0xfff
.L172dc:
	.word	0xf000
	.pool

.L172e8:
	mov	r0, r14
	mov	r5, #1
	sub	r0, #1
	cmp	r5, r0
	bcs	.L17334
	mov	r3, #0x20
	sub	r3, r6
	ldr	r2, =0x127
	lsl	r3, #1
	mov	r10, r3
	mov	r9, r2
	mov	r8, r0
.L17300:
	mov	r4, #0
	cmp	r4, r6
	bcs	.L1732c
	mov	r3, #2
	neg	r3, r3
	add	r3, r14
	ldr	r2, =0xfff
	mov	r11, r3
	ldr	r7, .L17340	@ 0xf000
	mov	r3, r9
	mov	r12, r2
	add	r0, r5, r3
.L17318:
	mov	r3, r0
	mov	r2, r12
	and	r3, r2
	orr	r3, r7
	add	r4, #1
	strh	r3, [r1]
	add	r0, r11
	add	r1, #2
	cmp	r4, r6
	bcc	.L17318
.L1732c:
	add	r5, #1
	add	r1, r10
	cmp	r5, r8
	bcc	.L17300
.L17334:
	ldr	r3, [sp]
	ldr	r1, =0xea3
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	b	.L17350

	.align	2, 0
.L17340:
	.word	0xf000
	.pool

.L17350:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_17248

.thumb_func_start Func_17364
	push	{lr}
	ldr	r3, =iwram_1e8c
	mov	r1, #0xc4
	ldr	r3, [r3]
	lsl	r1, #3
	add	r2, r3, r1
	mov	r1, #0
.L17372:
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L17380
	ldrh	r3, [r3, #0x14]
	mov	r0, #0
	cmp	r3, #0
	beq	.L1738a
.L17380:
	add	r1, #1
	add	r2, #0x28
	cmp	r1, #3
	bne	.L17372
	mov	r0, #1
.L1738a:
	pop	{r1}
	bx	r1
.func_end Func_17364

.thumb_func_start Func_17394
	push	{lr}
	ldrh	r3, [r0, #0x16]
	cmp	r3, #0
	bne	.L173a6
	mov	r2, #0x1a
	ldrsh	r3, [r0, r2]
	mov	r0, #1
	cmp	r3, #0
	beq	.L173a8
.L173a6:
	mov	r0, #0
.L173a8:
	pop	{r1}
	bx	r1
.func_end Func_17394

.thumb_func_start Func_173ac
	ldr	r3, =iwram_1e8c
	ldr	r2, [r3]
	ldr	r3, =0xeae
	add	r1, r2, r3
	mov	r3, #0xf
	strh	r3, [r1]
	ldr	r3, =0xea8
	add	r1, r2, r3
	mov	r3, #0xa
	strh	r3, [r1]
	ldr	r3, =0x12b0
	add	r1, r2, r3
	mov	r3, #9
	strh	r3, [r1]
	ldr	r1, =0xeac
	mov	r0, #0
	add	r3, r2, r1
	strh	r0, [r3]
	ldr	r3, =0xeaa
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bx	lr
.func_end Func_173ac

.thumb_func_start Func_173f4
	push	{r5, lr}
	ldr	r3, =iwram_1e8c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x5f
	ldr	r5, [r3]
	bl	Func_3fa4
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r5, r2
	strh	r1, [r5]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_1789c
	bl	Func_41d8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_173f4

.thumb_func_start Func_17464
	push	{r5, lr}
	ldr	r3, =iwram_1e8c
	ldr	r5, [r3]
	cmp	r0, #0
	beq	.L17480
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x5f
	bl	Func_3fa4
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
.L17480:
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r3, r5, r2
	strh	r1, [r3]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_1789c
	bl	Func_41d8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_17464

.thumb_func_start Func_174d8
	push	{r5, lr}
	ldr	r3, =iwram_1ee4
	ldr	r5, [r3]
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L174ee
	mov	r1, #1
	bl	Func_16418
	mov	r3, #0
	str	r3, [r5]
.L174ee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_174d8

.thumb_func_start Func_174f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	ldr	r6, [r3]
	ldr	r7, [r3, #0x58]
	ldr	r3, =0xea5
	add	r5, r6, r3
	mov	r3, #2
	mov	r2, #0
	strb	r3, [r5]
	mov	r1, #1
	mov	r8, r2
	sub	sp, #4
	bl	Func_18038
	mov	r2, #1
	mov	r9, r2
	mov	r3, r9
	mov	r2, #0xeb
	strb	r3, [r5]
	lsl	r2, #4
	lsl	r3, r0, #1
	add	r3, r2
	ldrh	r3, [r6, r3]
	mov	r10, r0
	cmp	r3, #0
	beq	.L17588
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.L17564
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #0xf
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	Func_162d4
	mov	r3, r9
	mov	r5, r0
	str	r5, [r7]
	mov	r2, #0x1e
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0xf
	mov	r3, #6
	bl	Func_17248
	mov	r2, r8
	str	r2, [r7, #8]
	b	.L17566
.L17564:
	mov	r5, r0
.L17566:
	cmp	r5, #0
	beq	.L17588
	ldr	r2, [r7, #8]
	mov	r0, r5
	mov	r1, r10
	bl	Func_16670
	mov	r3, #0
	mov	r8, r0
	str	r0, [r7, #4]
	str	r3, [r7, #8]
	cmp	r0, #0
	bne	.L17588
	mov	r0, r5
	mov	r1, #1
	bl	Func_16418
.L17588:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_174f8

.thumb_func_start Func_175a0
	push	{lr}
	bl	Func_174f8
	b	.L175ae
.L175a8:
	mov	r0, #1
	bl	Func_30f8
.L175ae:
	bl	Func_17364
	cmp	r0, #0
	beq	.L175a8
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_175a0

.thumb_func_start Func_175c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, =0x12f4
	ldr	r5, [r3]
	mov	r6, #0
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	strh	r6, [r3]
	mov	r7, r0
	mov	r0, r1
	mov	r1, #1
	sub	sp, #0x10
	bl	Func_18038
	mov	r2, #0xeb
	mov	r1, r0
	lsl	r3, r1, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L17610
	cmp	r7, #0
	beq	.L17610
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	Func_165d8
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.L17610
	mov	r0, r6
.L17610:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_175c0

.thumb_func_start Func_17620
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L17648
	mov	r1, #1
	mov	r3, r0
	and	r3, r1
	cmp	r3, #0
	beq	.L1763a
	ldr	r4, =0x12fa
	add	r3, r2, r4
	strb	r1, [r3]
.L1763a:
	mov	r3, #2
	and	r3, r0
	cmp	r3, #0
	beq	.L17648
	ldr	r0, =0x12fb
	add	r3, r2, r0
	strb	r1, [r3]
.L17648:
	pop	{r0}
	bx	r0
.func_end Func_17620

.thumb_func_start Func_17658
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r3
	ldr	r3, =iwram_1e8c
	sub	sp, #0x24
	ldr	r3, [r3]
	str	r2, [sp, #0x14]
	ldr	r2, =0x12f4
	mov	r8, r3
	lsl	r3, r5, #4
	add	r2, r8
	lsr	r3, #20
	str	r1, [sp, #0x18]
	strh	r3, [r2]
	ldr	r3, =0x12f6
	mov	r6, #0
	add	r3, r8
	strh	r6, [r3]
	ldr	r3, =0xffff
	mov	r1, #1
	and	r5, r3
	bl	Func_18038
	lsl	r3, r0, #1
	mov	r10, r0
	mov	r0, #0xeb
	lsl	r0, #4
	add	r3, r0
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r7, #0
	mov	r0, #0
	cmp	r3, #0
	beq	.L17744
	add	r0, sp, #0xc
	str	r0, [sp]
	add	r0, sp, #0x1c
	add	r2, sp, #0x14
	str	r0, [sp, #4]
	add	r1, sp, #0x18
	add	r3, sp, #0x10
	mov	r9, r0
	mov	r0, r10
	str	r6, [sp, #8]
	bl	Func_1868c
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.L176ca
	ldr	r4, [sp, #0xc]
	cmp	r4, #0
	bne	.L176cc
	mov	r0, #0
	b	.L17744
.L176ca:
	ldr	r4, [sp, #0xc]
.L176cc:
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	bne	.L176d8
	mov	r3, #2
	orr	r7, r3
.L176d8:
	mov	r1, #8
	mov	r3, r5
	and	r3, r1
	cmp	r3, #0
	beq	.L176e4
	orr	r7, r1
.L176e4:
	mov	r3, #0x10
	and	r3, r5
	cmp	r3, #0
	beq	.L176f0
	mov	r3, #0x80
	orr	r7, r3
.L176f0:
	mov	r3, #0x20
	and	r3, r5
	cmp	r3, #0
	beq	.L176fe
	mov	r3, #0x80
	lsl	r3, #1
	orr	r7, r3
.L176fe:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	mov	r3, r4
	str	r7, [sp]
	bl	Func_162d4
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.L17744
	mov	r2, r9
	str	r2, [sp]
	mov	r5, #0
	mov	r0, r6
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #4]
	bl	Func_165d8
	cmp	r0, #0
	bne	.L17736
	mov	r0, r6
	mov	r1, #1
	bl	Func_16418
	mov	r0, #0
	b	.L17744
.L17736:
	ldr	r3, =0x12fa
	add	r3, r8
	strb	r5, [r3]
	ldr	r3, =0x12fb
	add	r3, r8
	strb	r5, [r3]
	mov	r0, r6
.L17744:
	add	sp, #0x24
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_17658

.thumb_func_start Func_1776c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	sub	sp, #0x1c
	mov	r8, r3
	mov	r3, #0
	mov	r4, #0
	mov	r6, r1
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	mov	r3, #2
	mov	r5, #0
	mov	r2, #1
	mov	r7, r6
	and	r3, r6
	mov	r10, r0
	str	r5, [sp, #0x18]
	str	r5, [sp, #0x14]
	and	r7, r2
	cmp	r3, #0
	beq	.L177a2
	ldr	r3, =0x12f9
	add	r3, r8
	strb	r2, [r3]
.L177a2:
	add	r0, sp, #0xc
	add	r2, sp, #0x14
	add	r3, sp, #0x10
	str	r0, [sp]
	add	r1, sp, #0x18
	mov	r0, r10
	bl	Func_187ac
	ldr	r2, [sp, #0x10]
	mov	r3, #0x1e
	sub	r3, r2
	asr	r3, #1
	ldr	r2, [sp, #0xc]
	str	r3, [sp, #0x18]
	mov	r3, #0xc
	sub	r3, r2
	asr	r2, r3, #1
	mov	r3, #8
	and	r3, r6
	str	r2, [sp, #0x14]
	cmp	r3, #0
	beq	.L177d2
	add	r3, r2, #4
	b	.L17800
.L177d2:
	mov	r3, #0x40
	and	r3, r6
	cmp	r3, #0
	beq	.L177e0
	mov	r3, r2
	add	r3, #0xc
	b	.L17800
.L177e0:
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	add	r5, sp, #4
	ldr	r0, [r3]
	mov	r1, r5
	bl	_Func_94154
	ldr	r3, [r5, #4]
	asr	r3, #3
	cmp	r3, #9
	ble	.L177fe
	sub	r3, #5
	b	.L17800
.L177fe:
	add	r3, #4
.L17800:
	str	r3, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	mov	r0, r10
	mov	r3, r7
	bl	Func_17658
	mov	r5, r0
	cmp	r5, #0
	beq	.L1785a
	b	.L1781c
.L17816:
	mov	r0, #1
	bl	Func_30f8
.L1781c:
	bl	Func_17364
	cmp	r0, #0
	beq	.L17816
	mov	r3, #0x20
	and	r3, r6
	cmp	r3, #0
	beq	.L17838
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea6
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
.L17838:
	mov	r3, #4
	and	r3, r6
	cmp	r3, #0
	bne	.L1785a
	mov	r0, r5
	mov	r1, r7
	bl	Func_16418
	b	.L17850
.L1784a:
	mov	r0, #1
	bl	Func_30f8
.L17850:
	mov	r0, r5
	bl	Func_17394
	cmp	r0, #0
	beq	.L1784a
.L1785a:
	ldr	r3, =0x12f9
	mov	r2, #0
	add	r3, r8
	strb	r2, [r3]
	ldr	r3, =0x12f4
	add	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r2, [r3]
	mov	r0, #3
	bl	Func_30f8
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1776c

.thumb_func_start Func_1789c
	push	{lr}
	bl	Func_16f2c
	bl	Func_16868
	bl	Func_191cc
	pop	{r0}
	bx	r0
.func_end Func_1789c

	.section .rodata

.L73808:
	.incrom 0x73808, 0x7380b
.L7380b:
	.incrom 0x7380b, 0x7380e
.L7380e:
	.incrom 0x7380e, 0x73812
