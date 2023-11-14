	.include "macros.inc"

.thumb_func_start Func_178b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x184
	str	r1, [sp]
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	ldr	r6, [r3]
	lsl	r3, r5, #8
	asr	r3, #16
	mov	r10, r3
	mov	r1, #0xc0
	mov	r3, #0xff
	and	r5, r3
	add	r0, sp, #4
	ldr	r3, =Func_8d4
	lsl	r1, #1
	bl	_call_via_r3
	ldr	r0, =0xea4
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L178f0
	mov	r2, #0
	mov	r3, #8
	mov	r9, r2
	b	.L178fa
.L178f0:
	ldr	r2, =0xeae
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r0, #1
	mov	r9, r0
.L178fa:
	mov	r11, r3
	mov	r3, r5
	sub	r3, #0x20
	ldr	r2, =Data_32224
	lsl	r3, #5
	add	r7, r3, r2
	ldrh	r3, [r7]
	ldr	r0, =0xeac
	mov	r8, r3
	add	r3, r6, r0
	ldrh	r3, [r3]
	add	r7, #2
	cmp	r3, #1
	bne	.L1794c
	mov	r1, sp
	ldr	r5, =Func_984
	add	r1, #0x35
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, sp
	add	r1, #0x36
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r2, r11
	add	r1, sp, #0x24
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, sp
	mov	r2, r11
	add	r1, #0x25
	mov	r0, r7
	bl	_call_via_r5
	mov	r2, #1
	add	r8, r2
	b	.L17964
.L1794c:
	mov	r1, sp
	add	r1, #0x35
	mov	r2, r9
	ldr	r5, =Func_984
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r7
	add	r1, sp, #0x24
	mov	r2, r11
	bl	_call_via_r5
.L17964:
	mov	r0, r10
	lsl	r3, r0, #16
	lsr	r2, r3, #16
	cmp	r2, #0
	beq	.L179f4
	ldr	r3, =.L31e24
	lsl	r2, #5
	ldr	r0, =0xeac
	add	r7, r2, r3
	mov	r3, #0
	ldrsh	r2, [r7, r3]
	add	r3, r6, r0
	ldrh	r3, [r3]
	mov	r10, r2
	add	r7, #2
	cmp	r3, #1
	bne	.L179ce
	add	r3, sp, #4
	mov	r2, r8
	add	r6, r3, r2
	mov	r1, r6
	ldr	r5, =Func_984
	add	r1, #0x31
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	add	r1, #0x32
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	add	r1, #0x20
	mov	r2, r11
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	mov	r2, r11
	add	r1, #0x21
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r10
	mov	r2, #0x80
	lsl	r3, r0, #16
	lsl	r2, #9
	add	r3, r2
	asr	r3, #16
	mov	r10, r3
	b	.L179ec
.L179ce:
	add	r5, sp, #4
	add	r5, r8
	mov	r1, r5
	add	r1, #0x31
	mov	r2, r9
	ldr	r6, =Func_984
	mov	r0, r7
	bl	_call_via_r6
	mov	r1, r5
	add	r1, #0x20
	mov	r0, r7
	mov	r2, r11
	bl	_call_via_r6
.L179ec:
	mov	r0, r10
	lsl	r3, r0, #16
	lsr	r3, #16
	add	r8, r3
.L179f4:
	mov	r1, sp
	add	r1, #0xb
	mov	r6, #0
.L179fa:
	mov	r5, #0
.L179fc:
	mov	r4, #0
.L179fe:
	mov	r2, #0
	mov	r0, #7
.L17a02:
	ldrb	r3, [r1]
	lsl	r2, #4
	sub	r0, #1
	add	r2, r3
	sub	r1, #1
	cmp	r0, #0
	bge	.L17a02
	ldr	r0, [sp]
	stmia	r0!, {r2}
	add	r4, #1
	mov	r3, r0
	str	r3, [sp]
	add	r1, #0x18
	cmp	r4, #7
	ble	.L179fe
	add	r5, #1
	sub	r1, #0x78
	cmp	r5, #1
	ble	.L179fc
	add	r6, #1
	add	r1, #0x70
	cmp	r6, #1
	ble	.L179fa
	mov	r0, r8
	add	sp, #0x184
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_178b0

.thumb_func_start Func_17a64
	push	{lr}
	ldrh	r2, [r0]
	mov	r1, #0
	add	r0, #2
	cmp	r2, #0
	beq	.L17a9a
	ldr	r4, =Data_32224
.L17a72:
	cmp	r2, #0x20
	bne	.L17a7a
	add	r1, #4
	b	.L17a92
.L17a7a:
	cmp	r2, #0xff
	bhi	.L17a90
	mov	r3, r2
	sub	r3, #0xde
	cmp	r3, #1
	bls	.L17a92
	add	r3, #0xbe
	lsl	r3, #5
	ldrh	r3, [r3, r4]
	add	r1, r3
	b	.L17a92
.L17a90:
	add	r1, #0xa
.L17a92:
	ldrh	r2, [r0]
	add	r0, #2
	cmp	r2, #0
	bne	.L17a72
.L17a9a:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end Func_17a64

.thumb_func_start Func_17aa4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	mov	r7, r2
	ldr	r6, [r3]
	lsl	r3, r7, #16
	asr	r3, #16
	mov	r5, r0
	sub	sp, #4
	mov	r10, r1
	mov	r4, #0
	mov	r9, r3
	cmp	r5, #0
	beq	.L17aca
	b	.L17be6
.L17aca:
	ldr	r3, =0x12b2
	add	r1, r6, r3
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, #1
	add	r3, r2
	strh	r4, [r6, r3]
	ldrh	r3, [r1]
	add	r5, r6, r2
	ldr	r2, .L17ae8	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.L17be6

	.align	2, 0
.L17ae8:
	.word	0x1ff
	.pool

.L17af4:
	cmp	r4, #0x1e
	bhi	.L17b9a
	sub	r1, r4, #3
	cmp	r1, #0x1a
	bhi	.L17be6
	ldr	r2, =.L17b08
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L17b08:
	.word	.L17b8e
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17b88
	.word	.L17b74
	.word	.L17b78
	.word	.L17b7c
	.word	.L17b84
	.word	.L17b84
	.word	.L17be6
	.word	.L17b96
	.word	.L17b96
	.word	.L17be6
	.word	.L17b84
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17be6
	.word	.L17b96
	.word	.L17b84

.L17b74:
	ldr	r1, =0xeae
	b	.L17b7e
.L17b78:
	ldr	r1, =0xeac
	b	.L17b7e
.L17b7c:
	ldr	r1, =0xea8
.L17b7e:
	ldrh	r2, [r5]
	add	r3, r6, r1
	strh	r2, [r3]
.L17b84:
	add	r5, #2
	b	.L17be6
.L17b88:
	bl	Func_173ac
	b	.L17be6
.L17b8e:
	mov	r2, #0xf
	mov	r7, r9
	add	r8, r2
	b	.L17be6
.L17b96:
	add	r5, #2
	b	.L17b84
.L17b9a:
	mov	r3, r10
	ldrh	r2, [r3, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L17bd4
	ldrh	r0, [r5]
	cmp	r4, #0x20
	bls	.L17bd4
	cmp	r0, #0x20
	bls	.L17bd4
	mov	r3, r4
	mov	r2, r0
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
	bhi	.L17bd4
	lsl	r3, r0, #8
	orr	r4, r3
	add	r5, #2
.L17bd4:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r7
	mov	r0, r10
	mov	r1, r4
	mov	r3, r8
	bl	Func_18cac
	add	r7, r0
.L17be6:
	ldrh	r4, [r5]
	add	r5, #2
	cmp	r4, #0xff
	bls	.L17bf0
	mov	r4, #0x40
.L17bf0:
	cmp	r4, #0
	beq	.L17bf6
	b	.L17af4
.L17bf6:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_17aa4

.thumb_func_start Func_17c1c
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_1e8c
	mov	r5, r1
	mov	r7, r2
	ldr	r4, [r3]
	cmp	r0, #0
	bne	.L17c4a
	ldr	r3, =0x12b2
	add	r1, r4, r3
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, #1
	add	r3, r2
	add	r0, r4, r2
	ldr	r2, .L17c6c	@ 0
	strh	r2, [r4, r3]
	ldrh	r3, [r1]
	ldr	r2, .L17c70	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
.L17c4a:
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r6
	add	r3, #1
	lsl	r3, #5
	add	r2, r7
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L17c84
	ldr	r3, =0x6002000
	lsl	r1, #1
	add	r2, r1, r3
	add	r1, r4, r1
	b	.L17c80

	.align	2, 0
.L17c6c:
	.word	0
.L17c70:
	.word	0x1ff
	.pool

.L17c80:
	bl	Func_1de5c
.L17c84:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_17c1c

.thumb_func_start Func_17c8c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r7, r2
	mov	r8, r3
	lsl	r3, r7, #16
	asr	r3, #16
	mov	r6, r0
	sub	sp, #8
	mov	r9, r1
	mov	r10, r3
	cmp	r6, #0
	bne	.L17cd0
	ldr	r1, =0x12b2
	add	r1, r8
	ldrh	r3, [r1]
	mov	r2, #0xeb
	lsl	r2, #4
	mov	r0, r8
	lsl	r3, #1
	add	r3, r2
	add	r6, r0, r2
	ldr	r2, .L17cf0	@ 0
	strh	r2, [r0, r3]
	ldrh	r3, [r1]
	ldr	r2, .L17cf4	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
.L17cd0:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r1, r3, #16
	add	r6, #2
	cmp	r1, #0
	beq	.L17db2
.L17cdc:
	lsr	r5, r1, #16
	cmp	r5, #0x1e
	bhi	.L17d80
	sub	r1, r5, #3
	cmp	r1, #0x1a
	bhi	.L17da4
	ldr	r2, =.L17d08
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	b	.L17d04

	.align	2, 0
.L17cf0:
	.word	0
.L17cf4:
	.word	0x1ff
	.pool

.L17d04:
	mov	pc, r3
	.align	2, 0
.L17d08:
	.word	.L17d74
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17d7c
	.word	.L17da4
	.word	.L17d7a
	.word	.L17d7a
	.word	.L17da4
	.word	.L17d7c
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17da4
	.word	.L17d7a
	.word	.L17d7c

.L17d74:
	mov	r7, r10
	add	r4, #1
	b	.L17da4
.L17d7a:
	add	r6, #2
.L17d7c:
	add	r6, #2
	b	.L17da4
.L17d80:
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r7
	mov	r3, r4
	mov	r0, r9
	mov	r1, r5
	str	r4, [sp, #4]
	bl	Func_18efc
	ldr	r0, =0xff22
	mov	r2, #0x80
	add	r3, r5, r0
	lsl	r3, #16
	lsl	r2, #9
	ldr	r4, [sp, #4]
	cmp	r3, r2
	bls	.L17da4
	add	r7, #1
.L17da4:
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	lsl	r3, #16
	add	r6, #2
	mov	r1, r3
	cmp	r3, #0
	bne	.L17cdc
.L17db2:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_17c8c

.thumb_func_start Func_17dd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r6, r1
	mov	r7, r0
	mov	r8, r2
	mov	r9, r3
	cmp	r6, #0
	bge	.L17df6
	cmp	r2, #0
	bne	.L17df4
	mov	r3, #1
	mov	r9, r3
.L17df4:
	neg	r6, r6
.L17df6:
	mov	r3, #0x20
	mov	r5, r7
	strb	r3, [r7]
	add	r5, #0xc
	mov	r10, r7
.L17e00:
	mov	r0, r6
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	add	r0, #0x30
	strb	r0, [r5]
	mov	r1, #0xa
	mov	r0, r6
	bl	Func_af0_from_thumb
	sub	r5, #1
	mov	r6, r0
	cmp	r5, r10
	bne	.L17e00
	mov	r0, #0
	strb	r0, [r7, #0xd]
	mov	r1, #0x20
	mov	r0, #1
	mov	r4, #0x2d
	mov	r2, r7
	b	.L17e2e
.L17e2a:
	add	r2, #1
	add	r0, #1
.L17e2e:
	cmp	r0, #0xd
	beq	.L17e48
	ldrb	r3, [r2, #1]
	cmp	r3, #0x30
	bne	.L17e40
	cmp	r0, #0xc
	beq	.L17e2a
	strb	r1, [r2, #1]
	b	.L17e2a
.L17e40:
	mov	r3, r9
	cmp	r3, #0
	beq	.L17e48
	strb	r4, [r2]
.L17e48:
	mov	r3, r8
	cmp	r3, #0
	bne	.L17e6a
	ldrb	r3, [r7]
	mov	r0, #0
	cmp	r3, #0x20
	bne	.L17e66
	mov	r2, r7
.L17e58:
	add	r0, #1
	cmp	r0, #0xc
	beq	.L17e66
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0x20
	beq	.L17e58
.L17e66:
	add	r0, r7, r0
	b	.L17e7a
.L17e6a:
	mov	r3, r8
	cmp	r3, #0xc
	bls	.L17e74
	mov	r3, #0xc
	mov	r8, r3
.L17e74:
	mov	r3, r8
	sub	r0, r7, r3
	add	r0, #0xd
.L17e7a:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_17dd4

	.section .rodata

.L31e24:
	.incrom 0x31e24, 0x32224
