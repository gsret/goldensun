	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f9cc
	push	{lr}
	mov	r3, #1
	sub	r1, #1
	neg	r3, r3
	ldr	r2, =Data_97b8
	cmp	r1, r3
	beq	.Lf9ea
	mov	r12, r3
.Lf9dc:
	ldrb	r3, [r0]
	ldrb	r3, [r2, r3]
	sub	r1, #1
	strb	r3, [r0]
	add	r0, #1
	cmp	r1, r12
	bne	.Lf9dc
.Lf9ea:
	pop	{r0}
	bx	r0
.func_end Func_f9cc

.thumb_func_start Func_f9f4
	push	{r5, r6, r7, lr}
	sub	r3, r0, #1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	mov	r3, #1
	and	r3, r0
	ldr	r6, =ewram_10002
	ldr	r5, =ewram_20000
	cmp	r3, #0
	beq	.Lfa7a
	ldr	r3, =ewram_10001
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lfa38
	cmp	r3, #1
	bgt	.Lfa1c
	cmp	r3, #0
	beq	.Lfa22
	b	.Lfa7a
.Lfa1c:
	cmp	r3, #2
	beq	.Lfa60
	b	.Lfa7a
.Lfa22:
	mov	r1, #0
	cmp	r1, r4
	bge	.Lfa7a
.Lfa28:
	ldrh	r3, [r6]
	add	r1, #1
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	cmp	r1, r4
	blt	.Lfa28
	b	.Lfa7a
.Lfa38:
	ldr	r6, =ewram_10002
	mov	r1, #0
	mov	r7, #0
	add	r0, r4, r6
	cmp	r1, r4
	bge	.Lfa7a
.Lfa44:
	ldrb	r3, [r6]
	ldrb	r2, [r0]
	lsl	r3, #8
	orr	r3, r2
	eor	r3, r7
	add	r1, #1
	strh	r3, [r5]
	add	r0, #1
	add	r6, #1
	add	r5, #2
	mov	r7, r3
	cmp	r1, r4
	blt	.Lfa44
	b	.Lfa7a
.Lfa60:
	mov	r2, #0
	cmp	r4, #0
	ble	.Lfa7a
	mov	r1, r4
.Lfa68:
	ldrh	r3, [r6]
	sub	r1, #1
	eor	r3, r2
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	mov	r2, r3
	cmp	r1, #0
	bne	.Lfa68
.Lfa7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f9f4

.thumb_func_start Func_fa8c
	push	{r5, r6, lr}
	mov	r4, #0x80
	mov	r0, #1
	ldr	r5, =ewram_10000
	ldr	r6, =0xfff
	lsl	r4, #7
	neg	r0, r0
.Lfa9a:
	ldmia	r5!, {r1}
	mov	r2, r1
	and	r2, r6
	cmp	r2, r6
	bne	.Lfab2
	cmp	r0, r2
	beq	.Lfaaa
	add	r0, #1
.Lfaaa:
	add	r3, r1, r0
	sub	r1, r3, r2
	sub	r3, r5, #4
	str	r1, [r3]
.Lfab2:
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa9a
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa8c

.thumb_func_start Func_fac8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, #0x80
	lsl	r5, #8
	mov	r0, r5
	bl	Func_4970
	ldr	r3, =Func_1af8
	ldr	r1, =ewram_10000
	mov	r2, r5
	mov	r8, r0
	bl	_call_via_r3
	ldr	r5, =0x9c
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_a37c
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =ewram_18000
	ldr	r1, =ewram_10000
	mov	r2, r8
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_2df0
	mov	r0, r8
	bl	Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fac8

.thumb_func_start Func_fb38
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
	mov	r6, r0
	strh	r3, [r1]
	mov	r0, #0
	sub	sp, #0xc
	bl	Func_3bb4
	lsl	r3, r6, #1
	ldr	r2, =.L13784
	add	r3, r6
	mov	r6, #0xca
	lsl	r6, #1
	lsl	r3, #2
	add	r3, r2
	mov	r1, r6
	mov	r0, #8
	str	r3, [sp, #8]
	bl	Func_48f4
	mov	r1, r6
	ldr	r3, =Func_8d4
	mov	r8, r0
	bl	_call_via_r3
	ldr	r2, [sp, #8]
	ldr	r3, =0x128
	ldrh	r0, [r2]
	add	r0, r3
	bl	Func_2f40
	mov	r5, r0
	ldr	r3, [r5, #0x24]
	ldr	r1, =ewram_10001
	add	r0, r5, r3
	bl	Func_5340
	bl	Func_f9f4
	ldr	r3, [r5, #0x28]
	ldr	r1, =ewram_2c000
	add	r0, r5, r3
	bl	Func_5340
	ldr	r3, [r5, #0x2c]
	ldr	r1, =ewram_10000
	add	r0, r5, r3
	bl	Func_5340
	bl	Func_fac8
	ldr	r0, [r5, #0x30]
	cmp	r0, #0
	beq	.Lfbc8
	ldr	r6, =ewram_2d000
	add	r0, r5, r0
	mov	r1, r6
	bl	Func_5340
	mov	r0, r6
	bl	Func_118d8
.Lfbc8:
	ldr	r0, [r5, #0x34]
	cmp	r0, #0
	beq	.Lfbde
	ldr	r6, =ewram_2de00
	add	r0, r5, r0
	mov	r1, r6
	bl	Func_5340
	mov	r0, r6
	bl	Func_11a84
.Lfbde:
	ldr	r3, [r5, #0x38]
	mov	r2, r8
	add	r3, r5, r3
	str	r3, [r2, #0x10]
	ldrb	r3, [r5]
	add	r2, #0xec
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #1]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #2]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #3]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	mov	r3, r8
	add	r3, #0xe4
	str	r3, [sp, #4]
	ldr	r2, [sp, #4]
	mov	r3, #0
	str	r3, [r2]
	mov	r2, r8
	add	r2, #0xe8
	str	r2, [sp]
	str	r3, [r2]
	mov	r3, #0x80
	ldrb	r2, [r5, #4]
	lsl	r3, #1
	add	r3, r8
	strb	r2, [r3]
	ldr	r2, =0x101
	ldrb	r3, [r5, #5]
	add	r2, r8
	strb	r3, [r2]
	mov	r2, #0x81
	ldrb	r3, [r5, #6]
	lsl	r2, #1
	add	r2, r8
	strb	r3, [r2]
	mov	r7, #0x82
	ldr	r3, =Func_888
	lsl	r7, #1
	mov	r6, r5
	mov	r2, #2
	add	r7, r8
	add	r6, #0xc
	mov	r9, r3
	mov	r11, r2
.Lfc48:
	ldrb	r0, [r6]
	ldrb	r2, [r6, #1]
	lsl	r3, r0, #19
	str	r3, [r7, #8]
	mov	r14, r3
	lsl	r3, r2, #19
	str	r3, [r7, #0xc]
	mov	r10, r3
	mov	r3, #4
	ldrsb	r3, [r6, r3]
	lsl	r3, #12
	str	r3, [r7, #0x18]
	mov	r3, #5
	ldrsb	r3, [r6, r3]
	lsl	r3, #12
	str	r3, [r7, #0x1c]
	ldrb	r3, [r6, #6]
	strh	r3, [r7, #0x28]
	ldrb	r3, [r6, #7]
	lsr	r2, #1
	strh	r3, [r7, #0x2a]
	lsr	r0, #1
	mov	r3, #0
	lsl	r2, #7
	str	r3, [r7, #0x20]
	str	r3, [r7, #0x24]
	mov	r1, #2
	ldrsb	r1, [r6, r1]
	mov	r4, #3
	ldrsb	r4, [r6, r4]
	add	r2, r0
	ldr	r3, =ewram_10000
	lsl	r2, #2
	add	r2, r3
	lsl	r1, #12
	lsl	r4, #12
	str	r1, [r7, #0x10]
	str	r4, [r7, #0x14]
	str	r2, [r7, #0x2c]
	ldr	r2, [sp, #4]
	ldr	r0, [r2]
	.call_via r9
	add	r0, r14
	str	r0, [r7]
	ldr	r3, [sp]
	mov	r1, r4
	ldr	r0, [r3]
	.call_via r9
	mov	r2, #1
	neg	r2, r2
	add	r11, r2
	add	r0, r10
	mov	r3, r11
	str	r0, [r7, #4]
	add	r6, #8
	add	r7, #0x30
	cmp	r3, #0
	bge	.Lfc48
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r8
	mov	r1, #0x80
	strh	r3, [r2, #0x14]
	lsl	r1, #1
	add	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lfcde
	mov	r3, #0xc0
	lsl	r3, #5
	strh	r3, [r2, #0x14]
.Lfcde:
	ldr	r0, =0x101
	add	r0, r8
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lfcf4
	mov	r2, r8
	ldrh	r3, [r2, #0x14]
	ldr	r2, .Lfd24	@ 0x400
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r2, #0x14]
.Lfcf4:
	mov	r3, #0x81
	lsl	r3, #1
	add	r3, r8
	mov	r12, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lfd0e
	mov	r2, r8
	ldrh	r3, [r2, #0x14]
	ldr	r2, .Lfd28	@ 0x200
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r2, #0x14]
.Lfd0e:
	ldrb	r3, [r5, #7]
	ldrb	r2, [r1]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xa0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG3CNT
	strh	r2, [r3]
	b	.Lfd5c

	.align	2, 0
.Lfd24:
	.word	0x400
.Lfd28:
	.word	0x200
	.pool

.Lfd5c:
	ldrb	r2, [r0]
	ldrb	r3, [r5, #8]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xc0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG2CNT
	strh	r2, [r3]
	mov	r3, r12
	ldrb	r2, [r3]
	ldrb	r3, [r5, #9]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xe0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG1CNT
	strh	r2, [r3]
	mov	r5, #0xb8
	lsl	r5, #1
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lfd98
	mov	r0, r5
	bl	_Func_79374
	b	.Lfe42
.Lfd98:
	mov	r2, #0x80
	lsl	r2, #7
	mov	r11, r2
	mov	r0, r11
	bl	Func_4938
	mov	r7, r0
	cmp	r7, #0
	beq	.Lfe42
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r8, r3
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [sp, #8]
	mov	r10, r3
	ldr	r3, =0x128
	ldrh	r0, [r2, #2]
	mov	r9, r3
	add	r0, r9
	bl	Func_2f40
	mov	r1, r7
	bl	Func_5340
	ldr	r3, =Func_1af8
	mov	r2, r10
	strh	r2, [r7]
	mov	r2, #0xe0
	mov	r10, r3
	mov	r1, r7
	lsl	r2, #1
	mov	r0, r8
	bl	_call_via_r10
	ldr	r2, [sp, #8]
	ldrh	r0, [r2, #4]
	add	r0, r9
	bl	Func_2f40
	mov	r1, r7
	bl	Func_5394
	mov	r2, r11
	mov	r1, r7
	ldr	r0, =0x6004000
	bl	_call_via_r10
	ldr	r3, [sp, #8]
	ldrh	r0, [r3, #6]
	add	r0, r9
	bl	Func_2f40
	mov	r1, r7
	bl	Func_5394
	mov	r1, r7
	mov	r2, r11
	ldr	r0, =0x6008000
	bl	_call_via_r10
	ldr	r2, [sp, #8]
	ldrh	r0, [r2, #8]
	add	r0, r9
	bl	Func_2f40
	mov	r1, r7
	bl	Func_5394
	mov	r1, r7
	mov	r2, r11
	ldr	r0, =0x600c000
	bl	_call_via_r10
	ldr	r3, [sp, #8]
	ldrh	r0, [r3, #0xa]
	add	r0, r9
	bl	Func_2f40
	ldr	r1, =ewram_28000
	bl	Func_5394
	mov	r0, r7
	bl	Func_2df0
.Lfe42:
	ldr	r3, =REG_MOSAIC
	mov	r2, #0
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0xa0
	lsl	r2, #1
	sub	r3, #0x50
	strh	r2, [r3]
	ldr	r0, =Func_10000
	ldr	r1, =0xc85
	bl	Func_41d8
	mov	r0, #2
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_fb38

.thumb_func_start Func_fe9c
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, #0
	mov	r2, #0
	mov	r1, #0
	cmp	r3, #0
	beq	.Lfeb4
	ldmia	r3!, {r0}
	ldmia	r3!, {r2}
	ldr	r1, [r3]
.Lfeb4:
	sub	r1, r2
	bl	Func_10230
	bl	Func_10000
	pop	{r0}
	bx	r0
.func_end Func_fe9c

.thumb_func_start Func_fec8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0x6002800
	lsl	r0, #11
	add	r3, r0
	mov	r12, r3
	lsr	r3, r2, #31
	add	r3, r2, r3
	mov	r4, #0x7f
	asr	r3, #1
	and	r3, r4
	mov	r0, #0x1e
	and	r2, r0
	lsl	r7, r3, #7
	lsr	r3, r1, #31
	lsl	r2, #5
	add	r3, r1, r3
	mov	r10, r2
	asr	r5, r3, #1
	mov	r6, #0x7f
	mov	r2, #0x1e
	and	r5, r4
	and	r0, r1
	mov	r4, #0
	mov	r8, r6
	mov	r14, r2
.Lff00:
	add	r3, r7, r5
	ldr	r6, =ewram_10000
	lsl	r3, #2
	add	r3, r6
	ldr	r1, [r3]
	ldr	r2, =ewram_20000
	lsl	r1, #20
	lsr	r1, #17
	mov	r6, r10
	add	r3, r1, r2
	add	r2, r6, r0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r12
	ldr	r6, =ewram_20004
	str	r3, [r2]
	add	r3, r1, r6
	ldr	r3, [r3]
	add	r5, #1
	str	r3, [r2, #0x40]
	add	r0, #2
	mov	r2, r8
	mov	r3, r14
	add	r4, #1
	and	r5, r2
	and	r0, r3
	cmp	r4, #0xf
	bls	.Lff00
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fec8

.thumb_func_start Func_ff54
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =0x6002800
	lsl	r0, #11
	add	r3, r0
	mov	r14, r3
	lsr	r3, r2, #31
	add	r3, r2, r3
	mov	r4, #0x7f
	asr	r3, #1
	and	r3, r4
	lsl	r6, r3, #7
	lsr	r3, r1, #31
	mov	r0, #0x1e
	add	r3, r1, r3
	and	r2, r0
	asr	r7, r3, #1
	mov	r9, r1
	lsl	r5, r2, #5
	and	r7, r4
	mov	r2, #1
	mov	r4, r9
	and	r4, r0
	mov	r12, r2
	mov	r3, r12
	mov	r9, r4
	mov	r2, #0xf0
	mov	r4, #0xfe
	and	r3, r1
	lsl	r4, #6
	lsl	r2, #2
	mov	r12, r3
	mov	r0, #0
	mov	r10, r4
	mov	r8, r2
.Lffa0:
	add	r3, r6, r7
	ldr	r4, =ewram_10000
	lsl	r3, #2
	add	r3, r4
	ldr	r1, [r3]
	lsl	r1, #20
	lsr	r1, #18
	ldr	r3, =ewram_20000
	add	r1, r12
	lsl	r1, #1
	mov	r4, r9
	add	r2, r1, r3
	add	r3, r5, r4
	add	r3, r12
	ldrh	r2, [r2]
	lsl	r3, #1
	add	r3, r14
	ldr	r4, =ewram_20004
	strh	r2, [r3]
	add	r2, r1, r4
	ldrh	r2, [r2]
	add	r3, #0x40
	strh	r2, [r3]
	add	r6, #0x80
	mov	r2, r10
	add	r5, #0x40
	mov	r3, r8
	add	r0, #1
	and	r6, r2
	and	r5, r3
	cmp	r0, #0xa
	bls	.Lffa0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ff54

.thumb_func_start Func_10000
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r4, #0x82
	ldr	r1, [r3]
	mov	r8, r3
	lsl	r4, #1
	sub	sp, #8
	add	r4, r8
	cmp	r1, #0
	bne	.L10024
	b	.L101fe
.L10024:
	ldmia	r1!, {r3}
	ldr	r2, =0xff880000
	add	r7, r3, r2
	ldmia	r1!, {r2}
	ldr	r3, [r1]
	ldr	r1, =0xffa00000
	sub	r3, r2
	add	r6, r3, r1
	mov	r3, r8
	add	r3, #0xec
	mov	r2, r8
	ldr	r2, [r2, #4]
	ldr	r3, [r3]
	add	r0, r3, r2
	mov	r3, r8
	add	r3, #0xf4
	ldr	r3, [r3]
	mov	r12, r2
	sub	r3, r2
	ldr	r2, =0xff100000
	add	r1, r3, r2
	mov	r3, r8
	mov	r2, r8
	add	r3, #0xf0
	ldr	r5, [r2, #8]
	ldr	r3, [r3]
	add	r3, r5
	mov	r14, r3
	mov	r3, r8
	add	r3, #0xf8
	ldr	r3, [r3]
	ldr	r2, =0xff600000
	sub	r3, r5
	add	r3, r2
	cmp	r0, r1
	ble	.L1006e
	mov	r1, r0
.L1006e:
	cmp	r14, r3
	ble	.L10074
	mov	r3, r14
.L10074:
	cmp	r7, r0
	bge	.L1007a
	mov	r7, r0
.L1007a:
	cmp	r7, r1
	ble	.L10080
	mov	r7, r1
.L10080:
	cmp	r6, r14
	bge	.L10086
	mov	r6, r14
.L10086:
	cmp	r6, r3
	ble	.L1008c
	mov	r6, r3
.L1008c:
	mov	r3, r12
	cmp	r3, #0
	beq	.L100c4
	str	r4, [sp]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r2, r8
	ldr	r2, [r2, #4]
	mov	r1, r0
	mov	r14, r2
	ldr	r3, =Func_888
	mov	r0, r14
	sub	r1, r5, r1
	.call_via r3
	mov	r2, r8
	add	r7, r0
	ldr	r1, [r2, #0xc]
	mov	r0, r14
	.call_via r3
	mov	r3, r8
	str	r0, [r3, #4]
	ldr	r5, [r3, #8]
	ldr	r4, [sp]
.L100c4:
	cmp	r5, #0
	beq	.L100fa
	str	r4, [sp]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r2, r8
	ldr	r2, [r2, #8]
	mov	r1, r0
	mov	r14, r2
	ldr	r3, =Func_888
	mov	r0, r14
	sub	r1, r5, r1
	.call_via r3
	mov	r2, r8
	add	r6, r0
	ldr	r1, [r2, #0xc]
	mov	r0, r14
	.call_via r3
	mov	r3, r8
	str	r0, [r3, #8]
	ldr	r4, [sp]
.L100fa:
	mov	r1, r8
	add	r1, #0xe4
	mov	r2, #0xe8
	str	r1, [sp, #4]
	add	r2, r8
	str	r7, [r1]
	ldr	r1, =Func_888
	mov	r3, #0
	str	r6, [r2]
	mov	r11, r2
	mov	r10, r3
	mov	r9, r1
.L10112:
	ldr	r2, [sp, #4]
	ldr	r1, [r4, #0x10]
	ldr	r0, [r2]
	.call_via r9
	mov	r3, r11
	mov	r7, r0
	ldr	r1, [r4, #0x14]
	ldr	r0, [r3]
	.call_via r9
	ldr	r2, [r4, #0x18]
	mov	r6, r0
	cmp	r2, #0
	beq	.L10142
	ldr	r3, [r4, #0x20]
	add	r3, r2
	add	r7, r3
	str	r3, [r4, #0x20]
	ldrh	r3, [r4, #0x28]
	ldr	r2, =0x7ffff
	lsl	r3, #19
	orr	r3, r2
	and	r7, r3
.L10142:
	ldr	r2, [r4, #0x1c]
	cmp	r2, #0
	beq	.L1015a
	ldr	r3, [r4, #0x24]
	add	r3, r2
	add	r6, r3
	str	r3, [r4, #0x24]
	ldrh	r3, [r4, #0x2a]
	ldr	r2, =0x7ffff
	lsl	r3, #19
	orr	r3, r2
	and	r6, r3
.L1015a:
	ldr	r3, [r4, #8]
	add	r7, r3
	ldr	r3, [r4, #0xc]
	mov	r1, r7
	add	r6, r3
	cmp	r7, #0
	bge	.L1016c
	ldr	r2, =0x7ffff
	add	r1, r7, r2
.L1016c:
	asr	r1, #19
	mov	r8, r1
	mov	r2, r6
	cmp	r6, #0
	bge	.L1017a
	ldr	r3, =0x7ffff
	add	r2, r6, r3
.L1017a:
	ldr	r1, [r4]
	asr	r5, r2, #19
	mov	r3, r1
	mov	r2, #0x80
	eor	r3, r7
	lsl	r2, #12
	and	r3, r2
	cmp	r3, #0
	beq	.L101aa
	cmp	r1, r7
	bge	.L1019c
	mov	r1, r8
	add	r1, #0x1e
	mov	r0, r10
	mov	r2, r5
	str	r4, [sp]
	b	.L101a4
.L1019c:
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	str	r4, [sp]
.L101a4:
	bl	Func_ff54
	ldr	r4, [sp]
.L101aa:
	ldr	r1, [r4, #4]
	mov	r2, #0x80
	mov	r3, r1
	eor	r3, r6
	lsl	r2, #13
	and	r3, r2
	cmp	r3, #0
	beq	.L101d8
	cmp	r1, r6
	bge	.L101ca
	mov	r2, r5
	add	r2, #0x14
	mov	r0, r10
	mov	r1, r8
	str	r4, [sp]
	b	.L101d2
.L101ca:
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	str	r4, [sp]
.L101d2:
	bl	Func_fec8
	ldr	r4, [sp]
.L101d8:
	mov	r1, r10
	mov	r3, #3
	sub	r3, r1
	ldr	r1, =iwram_1ad0
	lsl	r3, #2
	asr	r2, r7, #16
	strh	r2, [r1, r3]
	asr	r2, r6, #16
	add	r3, r1
	strh	r2, [r3, #2]
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	str	r7, [r4]
	str	r6, [r4, #4]
	add	r4, #0x30
	cmp	r3, #2
	bhi	.L101fe
	b	.L10112
.L101fe:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10000

.thumb_func_start Func_10230
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r7, r0
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, #0x82
	sub	sp, #0x20
	lsl	r1, #1
	str	r3, [sp, #0x14]
	add	r3, r1
	mov	r14, r3
	ldr	r3, =0xffa00000
	add	r0, r3
	ldr	r3, [sp, #0x14]
	ldr	r2, =0xff880000
	add	r3, #0xec
	ldr	r3, [r3]
	add	r7, r2
	cmp	r7, r3
	bge	.L10266
	mov	r7, r3
.L10266:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf4
	ldr	r3, [r3]
	ldr	r5, =0xff100000
	add	r3, r5
	cmp	r7, r3
	ble	.L10276
	mov	r7, r3
.L10276:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf0
	ldr	r3, [r3]
	cmp	r0, r3
	bge	.L10282
	mov	r0, r3
.L10282:
	ldr	r3, [sp, #0x14]
	add	r3, #0xf8
	ldr	r3, [r3]
	ldr	r1, =0xff600000
	add	r3, r1
	cmp	r0, r3
	ble	.L10292
	mov	r0, r3
.L10292:
	ldr	r2, [sp, #0x14]
	add	r2, #0xe4
	str	r2, [sp, #0x10]
	str	r7, [r2]
	ldr	r3, [sp, #0x14]
	mov	r5, #0
	add	r3, #0xe8
	str	r3, [sp, #0xc]
	str	r0, [r3]
	str	r5, [sp, #0x1c]
.L102a6:
	ldr	r1, [sp, #0x1c]
	mov	r2, #0x80
	lsl	r2, #1
	ldr	r5, [sp, #0x14]
	add	r3, r1, r2
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	bne	.L102b8
	b	.L103da
.L102b8:
	ldr	r1, [sp, #0x10]
	mov	r2, r14
	ldr	r0, [r1]
	mov	r4, #0x16
	ldr	r1, [r2, #0x10]
	ldr	r3, =Func_888
	.call_via r3
	ldr	r5, [sp, #0xc]
	mov	r2, r14
	mov	r7, r0
	ldr	r1, [r2, #0x14]
	ldr	r0, [r5]
	.call_via r3
	mov	r3, r14
	ldr	r2, [r3, #0x18]
	cmp	r2, #0
	beq	.L102f4
	ldr	r3, [r3, #0x20]
	mov	r5, r14
	add	r3, r2
	add	r7, r3
	str	r3, [r5, #0x20]
	ldrh	r3, [r5, #0x28]
	ldr	r1, =0x7ffff
	lsl	r3, #19
	orr	r3, r1
	and	r7, r3
.L102f4:
	mov	r3, r14
	ldr	r2, [r3, #0x1c]
	cmp	r2, #0
	beq	.L10312
	ldr	r3, [r3, #0x24]
	mov	r5, r14
	add	r3, r2
	add	r0, r3
	str	r3, [r5, #0x24]
	ldrh	r3, [r5, #0x2a]
	ldr	r1, =0x7ffff
	lsl	r3, #19
	orr	r3, r1
	and	r0, r3
	mov	r4, #0x20
.L10312:
	mov	r2, r14
	ldr	r3, [r2, #8]
	add	r7, r3
	ldr	r3, [r2, #0xc]
	add	r0, r3
	mov	r3, #0x30
	add	r14, r3
	mov	r1, r7
	cmp	r7, #0
	bge	.L1032a
	ldr	r5, =0x7ffff
	add	r1, r7, r5
.L1032a:
	asr	r7, r1, #19
	mov	r2, r0
	cmp	r0, #0
	bge	.L10336
	ldr	r3, =0x7ffff
	add	r2, r0, r3
.L10336:
	ldr	r5, [sp, #0x1c]
	lsl	r3, r5, #11
	ldr	r5, =0x6002800
	asr	r0, r2, #19
	add	r5, r3, r5
	lsr	r3, r2, #31
	add	r3, r0, r3
	mov	r2, #0x7f
	asr	r3, #1
	and	r3, r2
	lsl	r6, r3, #7
	mov	r2, #0
	mov	r3, #0x1e
	lsr	r4, #1
	and	r3, r0
	mov	r8, r2
	mov	r11, r4
	str	r5, [sp, #0x18]
	lsl	r5, r3, #5
	cmp	r8, r11
	bcs	.L103da
	lsr	r3, r1, #31
	add	r3, r7, r3
	asr	r3, #1
	str	r3, [sp, #8]
	mov	r1, #0x1e
	mov	r3, #0x7f
	mov	r9, r3
	mov	r10, r1
.L10370:
	ldr	r4, [sp, #8]
	mov	r2, r9
	mov	r0, r7
	mov	r3, r10
	mov	r1, #0
	and	r4, r2
	and	r0, r3
	mov	r12, r1
.L10380:
	add	r3, r6, r4
	ldr	r2, =ewram_10000
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, =ewram_20000
	lsl	r1, #20
	lsr	r1, #17
	str	r1, [sp, #4]
	add	r3, r1, r2
	ldr	r1, [sp, #0x18]
	add	r2, r5, r0
	lsl	r2, #1
	add	r2, r1
	str	r2, [sp]
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, [sp, #4]
	ldr	r1, =ewram_20004
	add	r3, r2, r1
	ldr	r3, [r3]
	ldr	r2, [sp]
	str	r3, [r2, #0x40]
	mov	r2, #1
	mov	r3, r9
	add	r4, #1
	add	r12, r2
	and	r4, r3
	add	r0, #2
	mov	r1, r10
	mov	r3, r12
	and	r0, r1
	cmp	r3, #0xf
	bls	.L10380
	mov	r3, #0xfe
	lsl	r3, #6
	add	r6, #0x80
	and	r6, r3
	mov	r3, #0xf0
	add	r5, #0x40
	lsl	r3, #2
	add	r8, r2
	and	r5, r3
	cmp	r8, r11
	bcc	.L10370
.L103da:
	ldr	r5, [sp, #0x1c]
	add	r5, #1
	str	r5, [sp, #0x1c]
	cmp	r5, #2
	bhi	.L103e6
	b	.L102a6
.L103e6:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_10230

	.section .rodata

.L13784:
	.incrom 0x13784, 0x1404c
