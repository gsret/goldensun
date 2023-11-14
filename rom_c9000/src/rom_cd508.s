	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cd508
	push	{lr}
	ldr	r3, =iwram_1eec
	ldr	r0, [r3]
	ldr	r3, =0x7818
	mov	r1, #8
	add	r0, r3
	ldr	r3, =Func_8d4
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_cd508

.thumb_func_start Func_cd52c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r1, #1
	ldr	r6, [r3]
	ldr	r3, =0x7818
	neg	r1, r1
	sub	sp, #8
	mov	r4, #0
	mov	r8, r1
	mov	r7, #0x24
	add	r5, r6, r3
.Lcd546:
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lcd572
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.Lcd572
	ldr	r1, =0x7828
	add	r3, r6, r1
	ldr	r3, [r3]
	ldrsh	r0, [r3, r7]
	str	r2, [sp]
	mov	r1, #0
	mov	r2, r8
	mov	r3, r8
	str	r4, [sp, #4]
	bl	Func_d6888
	ldr	r4, [sp, #4]
.Lcd572:
	add	r4, #1
	add	r7, #2
	add	r5, #1
	cmp	r4, #8
	bne	.Lcd546
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cd52c

.thumb_func_start Func_cd594
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldr	r2, [r3]
	mov	r9, r2
	mov	r2, r3
	sub	r2, #0x78
	ldr	r2, [r2]
	mov	r10, r2
	ldr	r2, [r3, #4]
	sub	sp, #4
	str	r2, [sp]
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r7, r0
	bl	Func_cd508
	mov	r2, r11
	mov	r3, #1
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, .Lcd604	@ 0
	ldr	r2, =REG_BLDCNT
	ldr	r6, =ewram_2090
	strh	r3, [r2]
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd61c
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd61c

	.align	2, 0
.Lcd604:
	.word	0
	.pool

.Lcd61c:
	strh	r1, [r5]
	ldr	r2, =iwram_1ad0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r10
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c0774
	ldr	r3, =0x77b4
	mov	r2, r8
	add	r3, r9
	str	r2, [r3]
	ldr	r3, =0x77b8
	mov	r1, #0xc8
	add	r3, r9
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =Func_cd4b4
	bl	Func_41d8
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd680
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd680:
	strh	r1, [r5]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, .Lcd6bc	@ 0x784
	ldr	r3, =REG_BG2CNT
	orr	r7, r2
	strh	r7, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd6d8
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd6d8

	.align	2, 0
.Lcd6bc:
	.word	0x784
	.pool

.Lcd6d8:
	strh	r1, [r5]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_c0cec
	mov	r3, r8
	mov	r2, r11
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, .Lcd728	@ 0x3f44
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	ldr	r3, .Lcd72c	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	mov	r2, r8
	str	r2, [r3]
	ldr	r2, =REG_BG2Y
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcd730	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =REG_BG2PD
	ldr	r3, .Lcd734	@ 0x100
	ldr	r1, .Lcd738	@ 0xf0
	strh	r3, [r2]
	ldr	r3, =REG_WIN0H
	b	.Lcd758

	.align	2, 0
.Lcd728:
	.word	0x3f44
.Lcd72c:
	.word	0x100e
.Lcd730:
	.word	0x80
.Lcd734:
	.word	0x100
.Lcd738:
	.word	0xf0
	.pool

.Lcd758:
	ldr	r2, .Lcd784	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcd788	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcd78c	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd7b2
	b	.Lcd794

	.align	2, 0
.Lcd784:
	.word	0x1088
.Lcd788:
	.word	0x3537
.Lcd78c:
	.word	0x3f21
	.pool

.Lcd794:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd7b2:
	strh	r1, [r5]
	mov	r5, #0
	ldr	r3, =0x6003800
	mov	r2, #0x80
	mov	r8, r3
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #2
	mov	r12, r5
	mov	r7, #0
	mov	r10, r2
	mov	r14, r3
	mov	r6, #0
.Lcd7cc:
	mov	r2, r10
	mov	r4, #0
	add	r0, r6, r2
	lsl	r1, r7, #1
.Lcd7d4:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r11, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r11
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcd7d4
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #5
	add	r12, r3
	add	r6, r2
	mov	r2, r12
	add	r7, #8
	cmp	r2, #0x10
	bne	.Lcd7cc
	mov	r1, #0x80
	ldr	r0, [sp]
	ldr	r5, =Func_8d4
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r3, =0x77a8
	ldr	r1, =iwram_1ad0
	add	r3, r9
	mov	r6, #0
	ldr	r2, =0x77a0
	str	r6, [r3]
	ldrh	r3, [r1, #4]
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x77a4
	ldrh	r3, [r1, #6]
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cd594

.thumb_func_start Func_cd86c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldr	r2, [r3]
	mov	r10, r2
	mov	r2, r3
	sub	r2, #0x78
	ldr	r2, [r2]
	mov	r9, r2
	ldr	r2, [r3, #4]
	sub	sp, #4
	str	r2, [sp]
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r7, r0
	bl	Func_cd508
	mov	r2, r11
	mov	r3, #1
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, .Lcd8dc	@ 0
	ldr	r2, =REG_BLDCNT
	ldr	r6, =ewram_2090
	strh	r3, [r2]
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd8f4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd8f4

	.align	2, 0
.Lcd8dc:
	.word	0
	.pool

.Lcd8f4:
	strh	r1, [r5]
	ldr	r2, =iwram_1ad0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r9
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0x80
	bl	_Func_c0774
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r10
	str	r3, [r2]
	ldr	r3, =0x77b8
	mov	r2, r8
	add	r3, r10
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =Func_cd4b4
	bl	Func_41d8
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd95a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd95a:
	strh	r1, [r5]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, .Lcd998
	ldr	r3, =REG_BG2CNT
	orr	r7, r2
	strh	r7, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd9b4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd9b4

	.align	2, 0
.Lcd998:
	.word	0x784
	.pool

.Lcd9b4:
	strh	r1, [r5]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_c0cec
	mov	r3, r8
	mov	r2, r11
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, .Lcda04	@ 0x3f44
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	ldr	r3, .Lcda08	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	mov	r2, r8
	str	r2, [r3]
	ldr	r2, =REG_BG2Y
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcda0c	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =REG_BG2PD
	ldr	r3, .Lcda10	@ 0x100
	ldr	r1, .Lcda14	@ 0xf0
	strh	r3, [r2]
	ldr	r3, =REG_WIN0H
	b	.Lcda34

	.align	2, 0
.Lcda04:
	.word	0x3f44
.Lcda08:
	.word	0x100e
.Lcda0c:
	.word	0x80
.Lcda10:
	.word	0x100
.Lcda14:
	.word	0xf0
	.pool

.Lcda34:
	ldr	r2, .Lcda60	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcda64	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcda68	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcda8e
	b	.Lcda70

	.align	2, 0
.Lcda60:
	.word	0x1088
.Lcda64:
	.word	0x3537
.Lcda68:
	.word	0x3f21
	.pool

.Lcda70:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcda8e:
	strh	r1, [r5]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =0x6003800
	mov	r2, #0x80
	mov	r8, r3
	mov	r3, #0x80
	mov	r5, #0
	lsl	r2, #1
	lsl	r3, #2
	mov	r12, r5
	mov	r7, #0
	mov	r10, r2
	mov	r14, r3
	mov	r6, #0
.Lcdaae:
	mov	r2, r10
	mov	r4, #0
	add	r0, r6, r2
	lsl	r1, r7, #1
.Lcdab6:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r9, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r9
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdab6
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #5
	add	r12, r3
	add	r6, r2
	mov	r2, r12
	add	r7, #8
	cmp	r2, #0x10
	bne	.Lcdaae
	mov	r1, #0x80
	ldr	r0, [sp]
	ldr	r5, =Func_8d4
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, #1
	bl	Func_30f8
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cd86c

.thumb_func_start Func_cdb24
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	bl	Func_cd594
	ldr	r3, =0x6784
	orr	r5, r3
	ldr	r3, =0x6003800
	ldr	r2, =REG_BG2CNT
	mov	r8, r3
	mov	r3, #0x80
	strh	r5, [r2]
	lsl	r3, #2
	mov	r5, #0
	mov	r12, r5
	mov	r7, #0
	mov	r14, r3
	mov	r6, #0
.Lcdb4c:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r4, #0
	add	r0, r6, r3
	lsl	r1, r7, #1
	b	.Lcdb64

	.pool_aligned

.Lcdb64:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r10, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r10
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb64
	ldr	r1, =0x6003800
	ldr	r2, .Lcdb8c	@ 0
	mov	r4, #0
	b	.Lcdb94

	.align	2, 0
.Lcdb8c:
	.word	0
	.pool

.Lcdb94:
	add	r3, r5, r1
	add	r4, #1
	strh	r2, [r3]
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb94
	mov	r3, #0x80
	lsl	r3, #5
	add	r6, r3
	mov	r3, #1
	add	r12, r3
	mov	r3, r12
	add	r7, #8
	cmp	r3, #0x10
	bne	.Lcdb4c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cdb24

.thumb_func_start Func_cdbc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldr	r0, =0x121
	ldr	r5, [r3]
	sub	r3, #0x78
	ldr	r7, [r3]
	bl	_Func_f9080
	ldr	r2, =0x77a0
	add	r3, r5, r2
	ldr	r6, =iwram_1ad0
	ldr	r3, [r3]
	strh	r3, [r6, #4]
	ldr	r3, =0x77a4
	add	r5, r3
	ldr	r3, [r5]
	ldr	r2, =iwram_1ce0
	strh	r3, [r6, #6]
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lcdc1c	@ 0x787
	mov	r1, #0x80
	strh	r3, [r2]
	lsl	r1, #7
	ldr	r3, =Func_8d4
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	ldr	r1, =ewram_2090
	mov	r3, #0x20
	strh	r3, [r6, #6]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdc6e
	b	.Lcdc50

	.align	2, 0
.Lcdc1c:
	.word	0x787
	.pool

.Lcdc50:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdc6e:
	strh	r4, [r0]
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lcdca4	@ 0
	mov	r0, #1
	strh	r3, [r2]
	bl	Func_30f8
	mov	r2, #0xc9
	lsl	r2, #3
	add	r3, r7, r2
	ldrh	r1, [r3]
	mov	r2, #7
	mov	r0, #2
	bl	_Func_c0774
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xc9
	lsl	r3, #3
	mov	r2, #0x15
	mov	r6, #0
	add	r7, r3
	mov	r5, #0
	mov	r8, r2
	b	.Lcdcb0

	.align	2, 0
.Lcdca4:
	.word	0
	.pool

.Lcdcb0:
	mov	r3, r8
	sub	r1, r3, r5
	ldrh	r0, [r7]
	bl	_Func_c0700
	add	r6, #1
	mov	r0, #1
	bl	Func_30f8
	add	r5, #3
	cmp	r6, #8
	bne	.Lcdcb0
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdcf6
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdcf6:
	strh	r4, [r0]
	mov	r0, #1
	bl	Func_30f8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cdbc0

.thumb_func_start Func_cdd14
	push	{r5, lr}
	ldr	r3, =iwram_1f00
	ldr	r2, [r3]
	sub	r3, #0x8c
	ldr	r5, [r3]
	mov	r0, #0x80
	mov	r3, #1
	str	r3, [r2, #0xc]
	ldr	r1, =0x1541
	lsl	r0, #19
	bl	Func_387c
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xc9
	lsl	r3, #3
	add	r5, r3
	ldrh	r1, [r5]
	mov	r0, #2
	mov	r2, #0
	bl	_Func_c0774
	mov	r0, #1
	bl	Func_30f8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_cdd14

.thumb_func_start Func_cdd58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	ldr	r2, [r3, #0x7c]
	ldr	r5, [r3]
	add	r3, #0x8c
	ldr	r6, [r3]
	mov	r8, r2
	bl	Func_cd508
	mov	r3, #0xc9
	lsl	r3, #3
	add	r5, r3
	ldrh	r1, [r5]
	mov	r0, #2
	mov	r2, #0
	bl	_Func_c0774
	ldr	r2, =iwram_1ad0
	mov	r1, #0
	mov	r3, #0x20
	strh	r3, [r2, #6]
	str	r1, [r6, #0xc]
	ldr	r3, =Func_8d4
	mov	r1, #0x40
	ldr	r0, =0x6003fc0
	bl	_call_via_r3
	mov	r1, #0x80
	mov	r2, #1
	neg	r2, r2
	ldr	r3, =Func_8d8
	ldr	r0, =0x600f900
	lsl	r1, #2
	bl	_call_via_r3
	mov	r2, #0x80
	lsl	r2, #1
	ldr	r5, =0x600fb00
	ldr	r7, .Lcddc4	@ 0xff
	mov	r0, #0
	mov	r6, #0
	mov	r12, r2
	mov	r4, #0
.Lcddb2:
	mov	r3, r12
	mov	r1, #0
	add	r2, r4, r3
.Lcddb8:
	cmp	r1, #0xf
	ble	.Lcdde4
	add	r3, r0, r5
	strh	r7, [r3]
	b	.Lcdde8

	.align	2, 0
.Lcddc4:
	.word	0xff
	.pool

.Lcdde4:
	add	r3, r0, r5
	strh	r2, [r3]
.Lcdde8:
	add	r1, #1
	add	r2, #1
	add	r0, #2
	cmp	r1, #0x20
	bne	.Lcddb8
	add	r6, #1
	add	r4, #0x10
	cmp	r6, #0x10
	bne	.Lcddb2
	ldr	r3, .Lcde2c	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Lcde30	@ 0x1f81
	add	r2, #0xa
	strh	r3, [r2]
	ldr	r3, .Lcde34	@ 0x3f42
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r1, .Lcde38	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lcde3c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcde40	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcde44	@ 0x3f21
	b	.Lcde50

	.align	2, 0
.Lcde2c:
	.word	0x7741
.Lcde30:
	.word	0x1f81
.Lcde34:
	.word	0x3f42
.Lcde38:
	.word	0xf0
.Lcde3c:
	.word	0x1088
.Lcde40:
	.word	0x3537
.Lcde44:
	.word	0x3f21
	.pool

.Lcde50:
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =0x100e
	add	r2, #8
	mov	r1, #0x80
	strh	r3, [r2]
	ldr	r5, =Func_8d4
	mov	r0, r8
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, #1
	bl	Func_30f8
	b	.Lcde84

	.pool_aligned

.Lcde84:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cdd58

.thumb_func_start Func_cde90
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	ldr	r3, =iwram_1ef0
	mov	r5, r1
	ldr	r3, [r3]
	mov	r4, r2
	sub	r1, r6, r5
	mov	r2, #0x80
	sub	sp, #4
	mov	r8, r0
	sub	r7, r4, r0
	mov	r10, r1
	mov	r9, r2
	mov	r11, r3
	cmp	r5, #0
	bge	.Lcdebe
	mov	r5, #0
.Lcdebe:
	cmp	r5, #0x7f
	ble	.Lcdec4
	mov	r5, #0x7f
.Lcdec4:
	cmp	r6, #0
	bge	.Lcdeca
	mov	r6, #0
.Lcdeca:
	cmp	r6, #0x7f
	ble	.Lcded0
	mov	r6, #0x7f
.Lcded0:
	mov	r2, r7
	cmp	r7, #0
	bge	.Lcded8
	neg	r2, r7
.Lcded8:
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcdee0
	neg	r3, r3
.Lcdee0:
	cmp	r2, r3
	bge	.Lcdf74
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcdefa
	mov	r12, r8
	mov	r8, r4
	mov	r4, r12
	mov	r12, r5
	mov	r1, r8
	mov	r5, r6
	mov	r6, r12
	sub	r7, r4, r1
.Lcdefa:
	sub	r1, r6, r5
	lsl	r0, r7, #8
	cmp	r7, #0
	bge	.Lcdf08
	mov	r2, r8
	sub	r3, r2, r4
	lsl	r0, r3, #8
.Lcdf08:
	cmp	r1, #0
	bge	.Lcdf0e
	sub	r1, r5, r6
.Lcdf0e:
	bl	Func_af0_from_thumb
	mov	r12, r0
	mov	r0, r5
	mov	r1, r8
	cmp	r0, r6
	beq	.Lce018
	mov	r3, #0x80
	ldr	r5, =0xfffffeff
	lsl	r3, #1
	mov	r4, #7
	mov	r14, r3
	mov	r8, r5
.Lcdf28:
	lsr	r2, r0, #3
	lsr	r3, r1, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r1
	and	r3, r4
	lsl	r2, #3
	mov	r5, r11
	add	r2, r3
	ldrb	r3, [r5, r2]
	ldr	r5, [sp, #0x24]
	cmp	r3, r5
	bge	.Lcdf4e
	mov	r3, r11
	strb	r5, [r3, r2]
.Lcdf4e:
	add	r9, r12
	mov	r3, r9
	mov	r5, r14
	and	r3, r5
	cmp	r3, #0
	beq	.Lcdf6c
	cmp	r7, #0
	ble	.Lcdf62
	add	r1, #1
	b	.Lcdf64
.Lcdf62:
	sub	r1, #1
.Lcdf64:
	mov	r2, r9
	mov	r3, r8
	and	r2, r3
	mov	r9, r2
.Lcdf6c:
	add	r0, #1
	cmp	r0, r6
	bne	.Lcdf28
	b	.Lce018
.Lcdf74:
	cmp	r7, #0
	bge	.Lcdf90
	mov	r12, r8
	mov	r8, r4
	mov	r4, r12
	mov	r12, r5
	mov	r5, r6
	mov	r6, r12
	sub	r2, r6, r5
	mov	r1, r8
	mov	r10, r2
	sub	r7, r4, r1
	mov	r1, r10
	b	.Lcdf92
.Lcdf90:
	sub	r1, r6, r5
.Lcdf92:
	lsl	r0, r1, #8
	cmp	r1, #0
	bge	.Lcdf9c
	sub	r3, r5, r6
	lsl	r0, r3, #8
.Lcdf9c:
	cmp	r7, #0
	blt	.Lcdfae
	mov	r1, r7
	str	r4, [sp]
	bl	Func_af0_from_thumb
	mov	r12, r0
	ldr	r4, [sp]
	b	.Lcdfbc
.Lcdfae:
	mov	r3, r8
	sub	r1, r3, r4
	str	r4, [sp]
	bl	Func_af0_from_thumb
	ldr	r4, [sp]
	mov	r12, r0
.Lcdfbc:
	mov	r0, r8
	mov	r1, r5
	cmp	r0, r4
	beq	.Lce018
	ldr	r6, =0xfffffeff
	mov	r7, #0x80
	mov	r5, #7
	lsl	r7, #1
	mov	r14, r6
.Lcdfce:
	lsr	r2, r1, #3
	lsr	r3, r0, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r1
	and	r3, r5
	lsl	r2, #3
	add	r2, r3
	mov	r3, r0
	and	r3, r5
	lsl	r2, #3
	mov	r6, r11
	add	r2, r3
	ldrb	r3, [r6, r2]
	ldr	r6, [sp, #0x24]
	cmp	r3, r6
	bge	.Lcdff4
	mov	r3, r11
	strb	r6, [r3, r2]
.Lcdff4:
	add	r9, r12
	mov	r3, r9
	and	r3, r7
	cmp	r3, #0
	beq	.Lce012
	mov	r6, r10
	cmp	r6, #0
	ble	.Lce008
	add	r1, #1
	b	.Lce00a
.Lce008:
	sub	r1, #1
.Lce00a:
	mov	r2, r9
	mov	r3, r14
	and	r2, r3
	mov	r9, r2
.Lce012:
	add	r0, #1
	cmp	r0, r4
	bne	.Lcdfce
.Lce018:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cde90

.thumb_func_start Func_ce034
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x3c
	str	r1, [sp, #0x24]
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r2, [r6, #8]
	str	r2, [sp, #0x1c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x1c]
	bl	Func_5340
	ldr	r0, =0x7d
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x24]
	mov	r0, r5
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x28]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x28
	str	r0, [sp, #8]
	str	r3, [r0, #4]
	ldr	r1, [sp, #0x24]
	mov	r2, #0xef
	lsl	r2, #7
	add	r3, r1, r2
	str	r5, [r3]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r8, r0
	mov	r1, #0
	lsl	r2, #3
.Lce0e0:
	mov	r0, #1
	add	r8, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lce0e0
	ldr	r1, [sp, #0x24]
	ldr	r2, =0x7828
	add	r5, r1, r2
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	str	r0, [sp, #0x18]
	mov	r2, r10
	ldr	r3, [r2, #8]
	ldr	r0, =0xfff10000
	str	r0, [sp, #0x14]
	cmp	r3, #0
	bgt	.Lce11e
	mov	r1, #0xf0
	lsl	r1, #12
	str	r1, [sp, #0x14]
.Lce11e:
	ldr	r0, =0x7828
	ldr	r3, [sp, #0x24]
	mov	r1, sp
	add	r0, r3, r0
	add	r1, #0x30
	mov	r2, #0
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r11, r2
.Lce130:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	mov	r2, r11
	cmp	r2, #0x11
	bgt	.Lce14c
	cmp	r2, #0
	bne	.Lce164
.Lce14c:
	ldr	r0, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, r5
	ldr	r0, [r3, #8]
	bl	Func_e3980
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5]
.Lce164:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Lce188
	ldr	r5, [sp, #0xc]
	mov	r1, #0x20
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x40
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	bl	_call_via_r4
.Lce188:
	mov	r2, r11
	sub	r2, #4
	cmp	r2, #0xb
	bhi	.Lce1ec
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	mov	r1, #0
	lsl	r3, #11
	mov	r8, r1
	add	r7, sp, #0x30
	mov	r9, r3
.Lce1a0:
	mov	r2, r8
	lsl	r6, r2, #12
	mov	r0, r6
	bl	Func_2322
	mov	r3, r11
	mul	r3, r0
	ldr	r5, [r7]
	asr	r3, #16
	mov	r0, r6
	add	r5, r3
	bl	Func_231c
	mov	r2, r11
	mul	r2, r0
	ldr	r3, [r7, #4]
	asr	r2, #16
	add	r3, r2
	mov	r0, r11
	mov	r2, #0x20
	ldr	r1, [sp, #0x24]
	sub	r3, r0
	str	r2, [sp]
	sub	r5, #0x10
	mov	r2, #0x40
	str	r2, [sp, #4]
	add	r1, r9
	mov	r2, r5
	sub	r3, #0x40
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bne	.Lce1a0
.Lce1ec:
	mov	r3, r11
	cmp	r3, #4
	bne	.Lce23a
	mov	r3, #0xa0
	mov	r0, r10
	lsl	r3, #13
	str	r3, [r0, #0x28]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x30]
	ldr	r3, =0xab85
	str	r3, [r0, #0x48]
	mov	r3, r10
	mov	r2, #0
	add	r3, #0x5a
	strb	r2, [r3]
	sub	r3, #2
	strb	r2, [r3]
	ldr	r3, [r0, #8]
	lsl	r1, r3, #1
	add	r1, r3
	ldr	r3, [r0, #0x10]
	bl	_Func_d14c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_c300
	ldr	r2, =0x77a8
	ldr	r1, [sp, #0x24]
	mov	r0, r11
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0x88
	bl	_Func_f9080
.Lce23a:
	mov	r1, r11
	cmp	r1, #0x10
	bne	.Lce276
	ldr	r0, =0x89
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	mov	r0, r5
	ldr	r1, [sp, #0x24]
	bl	Func_5340
	mov	r3, #0
	mov	r2, r10
	str	r3, [r2, #0x48]
	str	r3, [r2, #0x24]
	str	r3, [r2, #0x28]
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	str	r3, [r2, #0x10]
	bl	_Func_c4ac
.Lce276:
	mov	r1, r11
	cmp	r1, #0x11
	bgt	.Lce27e
	b	.Lce392
.Lce27e:
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	cmp	r2, #0
	ble	.Lce2f0
	ldr	r0, [sp, #0x14]
	ldr	r3, [r3, #8]
	add	r3, r0
	ldr	r0, =0xfff80000
	mov	r1, r10
	str	r3, [r1, #8]
	add	r3, r2, r0
	str	r3, [r1, #0xc]
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lce2c8
	ldr	r5, [sp, #0xc]
	mov	r1, #0x28
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	sub	r2, #0x14
	sub	r3, #0x34
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5]
	sub	r3, #8
	str	r3, [r5]
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	b	.Lce2f0
.Lce2c8:
	ldr	r5, [sp, #0xc]
	mov	r1, #0x28
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	sub	r2, #0x1a
	sub	r3, #0x34
	ldr	r4, [r0, #4]
	ldr	r1, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r5, #4]
	add	r3, #8
	str	r3, [r5, #4]
	mov	r1, r10
	ldr	r2, [r1, #0xc]
.Lce2f0:
	cmp	r2, #0
	bge	.Lce392
	mov	r3, #0
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r8, r3
	add	r3, sp, #0x30
	ldr	r7, =ewram_10000
	mov	r9, r3
.Lce302:
	bl	Func_4458
	ldr	r5, =0x3ff
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	mov	r0, r9
	and	r6, r3
	ldr	r3, [r0]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r0, #4]
	sub	r3, #0x18
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #8]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	mov	r1, #1
	mov	r2, #0x80
	add	r3, #0x20
	add	r8, r1
	lsl	r2, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Lce302
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x77a8
	mov	r5, #8
	add	r3, r0, r1
	str	r5, [r3]
	mov	r0, #0x91
	bl	_Func_bd7dc
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_Func_b8228
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	mov	r2, #5
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #7
	mov	r3, #0
	str	r5, [sp]
	bl	Func_d6888
.Lce392:
	mov	r2, #0
	ldr	r6, =ewram_10000
	mov	r8, r2
.Lce398:
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	ble	.Lce47a
	ldr	r2, [r6, #8]
	ldr	r3, [r6]
	add	r3, r2
	mov	r12, r3
	str	r3, [r6]
	ldr	r1, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r7, r3, r1
	lsl	r3, r2, #3
	sub	r3, r2
	sub	r0, r4, #1
	lsl	r3, #3
	str	r0, [r6, #0x18]
	str	r7, [r6, #4]
	cmp	r3, #0
	bge	.Lce3c0
	add	r3, #0x3f
.Lce3c0:
	asr	r3, #6
	str	r3, [r6, #8]
	lsl	r3, r1, #3
	sub	r3, r1
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lce3d0
	add	r3, #0x3f
.Lce3d0:
	mov	r1, #0x80
	asr	r3, #6
	lsl	r1, #6
	mov	r2, #0xe0
	add	r3, r1
	lsl	r2, #15
	str	r3, [r6, #0x10]
	cmp	r7, r2
	ble	.Lce434
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Lce47a

	.pool_aligned

.Lce434:
	ldr	r3, =0x7effff
	cmp	r12, r3
	bhi	.Lce47a
	cmp	r7, #0
	blt	.Lce47a
	cmp	r0, #0
	bge	.Lce444
	add	r0, r4, #6
.Lce444:
	asr	r0, #3
	add	r0, #1
	lsl	r5, r0, #1
	ldr	r2, =Data_ede48
	mov	r1, r8
	sub	r3, r5, #2
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	mov	r3, r12
	add	r1, r2, r1
	asr	r2, r3, #16
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	asr	r3, r7, #16
	str	r0, [sp]
	sub	r3, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #8]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
.Lce47a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #1
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Lce398
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r0, =0x7824
	ldr	r3, [sp, #0x24]
	add	r2, r3, r0
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0x58
	beq	.Lce4b0
	b	.Lce130
.Lce4b0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ce034

.thumb_func_start Func_ce4e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_1eec
	mov	r8, r1
	mov	r3, r8
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x2c]
	ldr	r3, =0x7828
	mov	r10, r2
	add	r3, r10
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0xa9
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r5, =Func_1af8
	mov	r1, r6
	lsl	r0, #19
	add	r6, #0x80
	bl	_call_via_r5
	mov	r1, r10
	mov	r0, r6
	bl	Func_5340
	ldr	r0, =0xbb
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r1, r6
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r5
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, r8
	ldr	r3, [r3, #0x1c]
	mov	r6, #3
	str	r3, [sp, #0x20]
	mov	r2, #7
	mov	r3, #3
	mov	r1, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	mov	r5, r8
	ldr	r5, [r5, #0x20]
	str	r5, [sp, #0x24]
	mov	r5, #0x90
	lsl	r5, #3
	mov	r1, r5
	ldr	r0, =Func_dbb9c
	bl	Func_41d8
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r10
	ldr	r2, =0x7784
	str	r6, [r3]
	ldr	r3, =0x4040404
	add	r2, r10
	mov	r1, r5
	str	r3, [r2]
	ldr	r0, =Func_cd260
	ldr	r5, =ewram_10000
	bl	Func_41d8
	mov	r6, #0xff
	mov	r4, #0
.Lce59c:
	str	r4, [sp, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	ldr	r4, [sp, #8]
	sub	r0, #0x7f
	mov	r1, #0x80
	lsl	r0, #15
	add	r4, #1
	lsl	r1, #2
	str	r0, [r5, #8]
	add	r5, #0x1c
	cmp	r4, r1
	bne	.Lce59c
	mov	r0, #0x8e
	bl	_Func_f9080
	mov	r2, #0
	ldr	r3, =0x7828
	str	r2, [sp, #0x28]
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r5, #0x60
	lsl	r3, #5
	neg	r5, r5
	cmp	r3, r5
	bne	.Lce5ee
	b	.Lce7fa
.Lce5ee:
	ldr	r3, =iwram_1e80
	ldr	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x1c]
	cmp	r1, #0x60
	bne	.Lce600
	mov	r0, #0
	bl	_Func_bd7dc
.Lce600:
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	mov	r6, #0xd3
	ldr	r3, [r3, #4]
	lsl	r6, #7
	add	r6, r10
	cmp	r3, #0
	bne	.Lce640
	ldr	r2, [sp, #0x28]
	mov	r4, #0
	lsl	r5, r2, #11
.Lce618:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	Func_2322
	lsl	r2, r0, #1
	add	r2, r0
	mov	r3, #0xc0
	lsl	r2, #1
	lsl	r3, #11
	sub	r3, r2
	asr	r3, #10
	ldr	r4, [sp, #8]
	stmia	r6!, {r3}
	mov	r3, #0x80
	lsl	r3, #4
	add	r4, #1
	add	r5, r3
	cmp	r4, #0xa0
	bne	.Lce618
	b	.Lce666
.Lce640:
	ldr	r1, [sp, #0x28]
	mov	r4, #0
	lsl	r5, r1, #11
.Lce646:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r4, [sp, #8]
	lsl	r3, #1
	mov	r2, #0x80
	asr	r3, #10
	lsl	r2, #4
	add	r4, #1
	stmia	r6!, {r3}
	add	r5, r2
	cmp	r4, #0xa0
	bne	.Lce646
.Lce666:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r5, r10
	mov	r11, r3
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lce678
	b	.Lce7d0
.Lce678:
	ldr	r1, [sp, #0x1c]
	add	r1, #0xc
	str	r1, [sp, #0x18]
	mov	r3, #0x30
	mov	r5, #0x24
	mov	r1, #0
	add	r3, sp
	str	r5, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r9, r3
.Lce68c:
	mov	r3, r10
	add	r6, r3, r2
	ldr	r5, [sp, #0x10]
	ldr	r3, [r6]
	ldrsh	r0, [r3, r5]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	bl	Func_49ac
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r9
	str	r3, [r2, #8]
	bl	Func_4cb4
	mov	r3, r11
	ldr	r1, [sp, #0x28]
	lsl	r5, r3, #5
	cmp	r1, r5
	ble	.Lce7ae
	lsl	r0, r1, #9
	bl	Func_4bd4
	mov	r3, r5
	ldr	r2, [sp, #0x28]
	add	r3, #0x20
	cmp	r2, r3
	bne	.Lce6ec
	ldr	r3, [r6]
	ldr	r5, [sp, #0x10]
	ldrsh	r0, [r3, r5]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r11
	bl	Func_d6888
.Lce6ec:
	mov	r2, r11
	lsl	r2, #3
	mov	r3, #0x3c
	ldr	r5, [sp, #0xc]
	ldr	r1, =ewram_10000
	add	r3, sp
	str	r2, [sp, #0x14]
	mov	r4, #0
	mov	r8, r3
	add	r6, r5, r1
.Lce700:
	ldr	r2, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	add	r3, r2, r4
	lsl	r3, #2
	cmp	r5, r3
	ble	.Lce7a6
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	str	r4, [sp, #8]
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r7, r0, #8
	ldr	r4, [sp, #8]
	cmp	r7, #0
	beq	.Lce7a6
	mov	r1, r8
	mov	r0, r6
	bl	Func_e3944
	mov	r2, r8
	ldr	r5, [r2]
	ldr	r4, [sp, #8]
	asr	r5, #1
	mov	r0, r4
	str	r5, [r2]
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r2, r8
	lsl	r1, r0, #3
	ldr	r3, [r2, #4]
	add	r1, r0
	mov	r2, #0x18
	sub	r5, #0xc
	lsl	r1, #6
	sub	r3, #0xc
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r0, [sp, #0x2c]
	mov	r2, r5
	add	r1, r10
	ldr	r5, [sp, #0x20]
	bl	_call_via_r5
	ldr	r5, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r3, [r6, #0x18]
	sub	r5, r0
	add	r3, #1
	str	r5, [r6, #8]
	str	r3, [r6, #0x18]
	ldr	r4, [sp, #8]
.Lce7a6:
	add	r4, #1
	add	r6, #0x1c
	cmp	r4, #8
	bne	.Lce700
.Lce7ae:
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	mov	r3, #0xe0
	lsl	r3, #3
	add	r2, r3
	add	r1, #2
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	mov	r5, #1
	ldr	r3, [r3, #0x14]
	add	r11, r5
	cmp	r11, r3
	beq	.Lce7d0
	b	.Lce68c
.Lce7d0:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x28]
	ldr	r3, =0x7828
	add	r2, #1
	str	r2, [sp, #0x28]
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #5
	add	r3, #0x60
	cmp	r2, r3
	beq	.Lce7fa
	b	.Lce5ee
.Lce7fa:
	ldr	r0, =Func_cd260
	bl	Func_4278
	ldr	r0, =Func_dbb9c
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ce4e8

.thumb_func_start Func_ce85c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r1}
	ldr	r2, =0x7828
	mov	r10, r1
	ldr	r3, [r3]
	sub	sp, #0x40
	add	r2, r10
	str	r3, [sp, #0x1c]
	str	r0, [r2]
	mov	r0, #0
	mov	r8, r2
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lce8c8	@ 0x100
	ldr	r0, =0xaf
	strh	r3, [r2]
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r10
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r2, #7
	str	r3, [sp, #0x20]
	mov	r1, #7
	b	.Lce8e0

	.align	2, 0
.Lce8c8:
	.word	0x100
	.pool

.Lce8e0:
	mov	r3, #0xf
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x20]
	mov	r1, sp
	mov	r6, #0x90
	add	r1, #0x20
	lsl	r6, #3
	str	r1, [sp, #0x10]
	ldr	r0, =Func_dbb9c
	str	r3, [r1, #4]
	mov	r1, r6
	bl	Func_41d8
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	str	r5, [r3]
	add	r2, r10
	mov	r3, #0x32
	str	r3, [r2]
	ldr	r0, =Func_cd260
	mov	r1, r6
	bl	Func_41d8
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lce930
	ldr	r3, =0xffff9800
	ldr	r2, =REG_BG2X
	str	r3, [r2]
	mov	r3, #0x70
	neg	r3, r3
	str	r3, [sp, #0x14]
	b	.Lce934
.Lce930:
	mov	r1, #0
	str	r1, [sp, #0x14]
.Lce934:
	mov	r2, #0
	mov	r8, r2
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x30
	lsl	r3, #4
	neg	r1, r1
	cmp	r3, r1
	bne	.Lce94c
	b	.Lceadc
.Lce94c:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r1, r10
	mov	r9, r3
	ldr	r3, [r1, r2]
	mov	r6, #0xd3
	ldr	r3, [r3, #4]
	lsl	r6, #7
	add	r6, r10
	cmp	r3, #0
	bne	.Lce98c
	mov	r3, #0x80
	mov	r2, r8
	mov	r7, #0
	lsl	r3, #12
	lsl	r5, r2, #10
.Lce96c:
	mov	r0, r5
	str	r3, [sp, #8]
	bl	Func_2322
	ldr	r3, [sp, #8]
	lsl	r0, #3
	sub	r0, r3, r0
	mov	r1, #0x80
	asr	r0, #10
	lsl	r1, #3
	add	r7, #1
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r7, #0xa0
	bne	.Lce96c
	b	.Lce9ae
.Lce98c:
	mov	r2, r8
	mov	r7, #0
	lsl	r5, r2, #10
.Lce992:
	mov	r0, r5
	bl	Func_2322
	ldr	r3, =0xffff9000
	lsl	r0, #3
	asr	r0, #10
	mov	r1, #0x80
	add	r0, r3
	lsl	r1, #3
	add	r7, #1
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r7, #0xa0
	bne	.Lce992
.Lce9ae:
	bl	Func_49ac
	mov	r1, r9
	add	r1, #0xc
	mov	r0, r9
	bl	Func_51d8
	mov	r2, #0
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lceab8
	mov	r3, #0x34
	mov	r1, #0x24
	add	r3, sp
	str	r1, [sp, #0xc]
	mov	r9, r3
.Lce9d6:
	mov	r3, r10
	add	r5, r3, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [sp, #0x18]
	lsl	r2, r3, #4
	ldr	r6, [r0]
	cmp	r8, r2
	ble	.Lcea9e
	mov	r3, r2
	add	r3, #0x3c
	cmp	r8, r3
	bge	.Lcea9e
	sub	r3, #0x1c
	cmp	r8, r3
	bne	.Lcea10
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	bl	Func_d6888
.Lcea10:
	ldr	r3, [r6, #8]
	mov	r1, r9
	str	r3, [r1]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r1, #4]
	ldr	r3, [r6, #0x10]
	add	r5, sp, #0x28
	str	r3, [r1, #8]
	mov	r0, r9
	mov	r1, r5
	bl	Func_e3944
	mov	r2, r8
	mov	r7, #0
	mov	r11, r5
	lsl	r6, r2, #9
.Lcea32:
	mov	r0, r6
	bl	Func_2322
	mov	r1, r11
	ldr	r3, [r1]
	lsl	r0, #4
	asr	r0, #16
	ldr	r2, [sp, #0x14]
	add	r3, r0
	mov	r0, r6
	add	r5, r3, r2
	bl	Func_231c
	mov	r1, r11
	ldr	r3, [r1, #4]
	lsl	r0, #4
	asr	r0, #16
	add	r0, r3, r0
	mov	r3, r8
	cmp	r3, #0
	bge	.Lcea5e
	add	r3, #0xf
.Lcea5e:
	asr	r2, r3, #4
	mov	r3, #1
	ldr	r1, [sp, #0x10]
	and	r3, r2
	lsl	r3, #2
	add	r4, r3, r1
	mov	r1, r8
	cmp	r1, #0
	bge	.Lcea72
	add	r1, #3
.Lcea72:
	lsl	r3, r2, #2
	asr	r1, #2
	sub	r1, r3
	mov	r3, r0
	mov	r0, #0x20
	str	r0, [sp]
	str	r0, [sp, #4]
	lsl	r1, #10
	mov	r2, r5
	sub	r2, #0x10
	add	r1, r10
	sub	r3, #0x10
	ldr	r4, [r4]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #7
	add	r7, #1
	add	r6, r2
	cmp	r7, #4
	bne	.Lcea32
.Lcea9e:
	ldr	r3, [sp, #0xc]
	ldr	r1, [sp, #0x18]
	add	r3, #2
	add	r1, #1
	str	r1, [sp, #0x18]
	str	r3, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r1, [sp, #0x18]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Lce9d6
.Lceab8:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r8, r2
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	lsl	r3, #4
	add	r3, #0x30
	cmp	r8, r3
	beq	.Lceadc
	b	.Lce94c
.Lceadc:
	ldr	r0, =Func_cd260
	bl	Func_4278
	ldr	r0, =Func_dbb9c
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ce85c
