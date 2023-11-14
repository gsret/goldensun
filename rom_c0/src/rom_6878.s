	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_6878
	push	{r4, r5, lr}
	sub	sp, #0x44
	mov	r0, sp
	bl	Func_6ac0
	mov	r5, sp
	add	r5, #1
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0x90
	strb	r0, [r2]
	add	r1, sp, #0x40
	ldr	r2, =0x4e20
	mov	r0, r2
	b	.L68b0

	.pool_aligned

.L68ac:
	ldrh	r0, [r1]
	sub	r0, #1
.L68b0:
	strh	r0, [r1]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.L68ac
	ldr	r0, =0xe000001
	bl	_call_via_r5
	lsl	r0, #24
	lsr	r4, r0, #16
	mov	r0, #0xe0
	lsl	r0, #20
	bl	_call_via_r5
	lsl	r0, #24
	lsr	r0, #24
	orr	r4, r0
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xf0
	strb	r0, [r2]
	add	r1, sp, #0x40
	ldr	r2, =0x4e20
	mov	r0, r2
	b	.L68fc

	.pool_aligned

.L68f8:
	ldrh	r0, [r1]
	sub	r0, #1
.L68fc:
	strh	r0, [r1]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.L68f8
	mov	r0, r4
	add	sp, #0x44
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end Func_6878

.thumb_func_start Func_6910
	push	{r4, lr}
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	bl	Func_6878
	lsl	r0, #16
	lsr	r3, r0, #16
	ldr	r2, =.L7a0c
	mov	r4, #1
	b	.L693e

	.pool_aligned

.L693c:
	add	r2, #4
.L693e:
	ldr	r1, [r2]
	mov	r0, r1
	add	r0, #0x28
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L6952
	ldrh	r0, [r1, #0x28]
	cmp	r3, r0
	bne	.L693c
	mov	r4, #0
.L6952:
	ldr	r1, =ewram_4c04
	ldr	r0, [r2]
	ldr	r0, [r0]
	str	r0, [r1]
	ldr	r1, =ewram_4c10
	ldr	r0, [r2]
	ldr	r0, [r0, #4]
	str	r0, [r1]
	ldr	r1, =ewram_4c14
	ldr	r0, [r2]
	ldr	r0, [r0, #8]
	str	r0, [r1]
	ldr	r1, =ewram_4c00
	ldr	r0, [r2]
	ldr	r0, [r0, #0xc]
	str	r0, [r1]
	ldr	r1, =ewram_4c18
	ldr	r0, [r2]
	ldr	r0, [r0, #0x10]
	str	r0, [r1]
	ldr	r1, =ewram_4c08
	ldr	r0, [r2]
	add	r0, #0x14
	str	r0, [r1]
	mov	r0, r4
	pop	{r4}
	pop	{r1}
	bx	r1
.func_end Func_6910

.thumb_func_start Func_69a4
	ldr	r1, =ewram_4c22
	ldrh	r0, [r1]
	cmp	r0, #0
	beq	.L69be
	ldrh	r0, [r1]
	sub	r0, #1
	strh	r0, [r1]
	lsl	r0, #16
	cmp	r0, #0
	bne	.L69be
	ldr	r1, =ewram_4c24
	mov	r0, #1
	strb	r0, [r1]
.L69be:
	bx	lr
.func_end Func_69a4

.thumb_func_start Func_69c8
	mov	r2, r1
	lsl	r0, #24
	lsr	r1, r0, #24
	cmp	r1, #3
	bhi	.L69fc
	ldr	r0, =ewram_4c20
	strb	r1, [r0]
	ldr	r1, =ewram_4c28
	ldrb	r0, [r0]
	lsl	r0, #2
	ldr	r3, =REG_TM0CNT
	add	r0, r3
	str	r0, [r1]
	ldr	r0, =Func_69a4
	str	r0, [r2]
	mov	r0, #0
	b	.L69fe

	.pool_aligned

.L69fc:
	mov	r0, #1
.L69fe:
	bx	lr
.func_end Func_69c8

.thumb_func_start Func_6a00
	push	{r4, r5, lr}
	lsl	r0, #24
	lsr	r0, #24
	ldr	r1, =ewram_4c18
	lsl	r2, r0, #1
	add	r2, r0
	lsl	r2, #1
	ldr	r0, [r1]
	add	r2, r0
	ldr	r1, =ewram_4c2c
	ldr	r3, =REG_IME
	ldrh	r0, [r3]
	strh	r0, [r1]
	mov	r5, #0
	strh	r5, [r3]
	ldr	r4, =REG_IE
	ldr	r0, =ewram_4c20
	ldrb	r0, [r0]
	mov	r1, #8
	lsl	r1, r0
	ldrh	r0, [r4]
	orr	r0, r1
	strh	r0, [r4]
	mov	r0, #1
	strh	r0, [r3]
	ldr	r0, =ewram_4c24
	strb	r5, [r0]
	ldr	r1, =ewram_4c22
	ldrh	r0, [r2]
	strh	r0, [r1]
	add	r2, #2
	ldr	r3, =ewram_4c28
	ldr	r0, [r3]
	ldrh	r1, [r2]
	strh	r1, [r0]
	add	r0, #2
	str	r0, [r3]
	ldrh	r1, [r2, #2]
	strh	r1, [r0]
	sub	r0, #2
	str	r0, [r3]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_6a00

.thumb_func_start Func_6a78
	ldr	r1, =ewram_4c28
	ldr	r0, [r1]
	mov	r2, #0
	strh	r2, [r0]
	add	r0, #2
	str	r0, [r1]
	strh	r2, [r0]
	sub	r0, #2
	str	r0, [r1]
	ldr	r3, =REG_IME
	strh	r2, [r3]
	ldr	r2, =REG_IE
	ldr	r0, =ewram_4c20
	ldrb	r0, [r0]
	mov	r1, #8
	lsl	r1, r0
	ldrh	r0, [r2]
	bic	r0, r1
	strh	r0, [r2]
	ldr	r0, =ewram_4c2c
	ldrh	r0, [r0]
	strh	r0, [r3]
	bx	lr
.func_end Func_6a78

.thumb_func_start Func_6abc
	ldrb	r0, [r0]
	bx	lr
.func_end Func_6abc

.thumb_func_start Func_6ac0
	mov	r2, r0
	ldr	r1, =ewram_4c1c
	add	r0, r2, #1
	str	r0, [r1]
	ldr	r3, =Func_6abc
	mov	r0, #1
	eor	r3, r0
	ldr	r0, =Func_6ac0
	ldr	r1, =Func_6abc
	sub	r0, r1
	lsl	r0, #15
	b	.L6af0

	.pool_aligned

.L6ae4:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #1
	lsl	r0, #16
.L6af0:
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L6ae4
	bx	lr
.func_end Func_6ac0

.thumb_func_start Func_6af8
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r4, r0
	mov	r5, r1
	lsl	r4, #24
	lsr	r4, #24
	lsl	r2, #24
	lsr	r6, r2, #24
	mov	r0, #0
	mov	r8, r0
	mov	r0, r4
	bl	Func_6a00
	ldr	r7, =ewram_4c1c
	mov	r0, #0xc0
	lsl	r0, #8
	orr	r4, r0
	lsl	r4, #16
	b	.L6b48

	.pool_aligned

.L6b24:
.L6b24:
	ldr	r0, =ewram_4c08
	ldr	r1, [r0]
	ldr	r0, =0x1cc2
	ldrh	r1, [r1, #0x14]
	cmp	r1, r0
	bne	.L6b36
	ldr	r1, =0xe005555
	mov	r0, #0xf0
	strb	r0, [r1]
.L6b36:
	lsr	r4, #16
	mov	r8, r4
	b	.L6b70

	.pool_aligned

.L6b48:
	ldr	r1, [r7]
	mov	r0, r5
	bl	_call_via_r1
	lsl	r0, #24
	lsr	r0, #24
	cmp	r0, r6
	beq	.L6b70
	ldr	r0, =ewram_4c24
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L6b48
	ldr	r1, [r7]
	mov	r0, r5
	bl	_call_via_r1
	lsl	r0, #24
	lsr	r0, #24
	cmp	r0, r6
	bne	.L6b24
.L6b70:
	bl	Func_6a78
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_6af8

.thumb_func_start Func_6b84
	push	{r4, lr}
	mov	r4, r0
	sub	r3, r2, #1
	cmp	r2, #0
	beq	.L6ba0
	mov	r2, #1
	neg	r2, r2
.L6b92:
	ldrb	r0, [r4]
	strb	r0, [r1]
	add	r4, #1
	add	r1, #1
	sub	r3, #1
	cmp	r3, r2
	bne	.L6b92
.L6ba0:
	pop	{r4}
	pop	{r0}
	bx	r0
.func_end Func_6b84

.thumb_func_start Func_6ba8
	push	{r4, r5, r6, r7, lr}
	sub	sp, #0x80
	mov	r5, r1
	mov	r6, r2
	mov	r7, r3
	lsl	r0, #16
	lsr	r4, r0, #16
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	ldr	r3, =Func_6b84
	mov	r0, #1
	eor	r3, r0
	mov	r2, sp
	ldr	r0, =Func_6ba8
	ldr	r1, =Func_6b84
	sub	r0, r1
	lsl	r0, #15
	b	.L6bf4

	.pool_aligned

.L6be8:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #1
	lsl	r0, #16
.L6bf4:
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L6be8
	mov	r3, sp
	add	r3, #1
	ldr	r0, =.L7abc
	ldrb	r0, [r0, #0x1c]
	lsl	r4, r0
	mov	r0, r4
	mov	r2, #0xe0
	lsl	r2, #20
	add	r1, r5, r2
	add	r0, r1
	mov	r1, r6
	mov	r2, r7
	bl	_call_via_r3
	add	sp, #0x80
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_6ba8

.thumb_func_start Func_6c24
	push	{r4, r5, lr}
	mov	r4, r0
	mov	r3, r1
	lsl	r2, #16
	ldr	r0, =0xffff0000
	add	r2, r0
	lsr	r2, #16
	ldr	r0, =0xffff
	cmp	r2, r0
	beq	.L6c5e
	mov	r5, r0
.L6c3a:
	ldrb	r1, [r3]
	ldrb	r0, [r4]
	add	r4, #1
	add	r3, #1
	cmp	r1, r0
	beq	.L6c54
	sub	r0, r3, #1
	b	.L6c60

	.pool_aligned

.L6c54:
	sub	r0, r2, #1
	lsl	r0, #16
	lsr	r2, r0, #16
	cmp	r2, r5
	bne	.L6c3a
.L6c5e:
	mov	r0, #0
.L6c60:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end Func_6c24

.thumb_func_start Func_6c68
	push	{r4, r5, lr}
	sub	sp, #0x100
	mov	r5, r1
	lsl	r0, #16
	lsr	r4, r0, #16
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	ldr	r3, =Func_6c24
	mov	r0, #1
	eor	r3, r0
	mov	r2, sp
	ldr	r0, =Func_6c68
	ldr	r1, =Func_6c24
	sub	r0, r1
	lsl	r0, #15
	b	.L6cb0

	.pool_aligned

.L6ca4:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #1
	lsl	r0, #16
.L6cb0:
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L6ca4
	mov	r3, sp
	add	r3, #1
	ldr	r0, =.L7abc
	ldrb	r1, [r0, #0x1c]
	lsl	r4, r1
	mov	r1, r4
	mov	r2, #0xe0
	lsl	r2, #20
	add	r1, r2
	ldrh	r2, [r0, #0x18]
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x100
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end Func_6c68

.thumb_func_start Func_6cdc
	push	{r4, r5, r6, lr}
	sub	sp, #0x40
	ldr	r5, =REG_WAITCNT
	ldrh	r1, [r5]
	ldr	r6, =0xfffc
	and	r1, r6
	ldr	r0, =ewram_4c08
	ldr	r0, [r0]
	ldrh	r0, [r0, #0x10]
	orr	r0, r1
	strh	r0, [r5]
	ldr	r1, =0xe005555
	mov	r4, #0xaa
	strb	r4, [r1]
	ldr	r3, =0xe002aaa
	mov	r2, #0x55
	strb	r2, [r3]
	mov	r0, #0x80
	strb	r0, [r1]
	strb	r4, [r1]
	strb	r2, [r3]
	mov	r0, #0x10
	strb	r0, [r1]
	mov	r0, sp
	bl	Func_6ac0
	ldr	r0, =ewram_4c00
	mov	r1, #0xe0
	lsl	r1, #20
	ldr	r3, [r0]
	mov	r0, #3
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	ldrh	r1, [r5]
	and	r1, r6
	mov	r2, #3
	orr	r1, r2
	strh	r1, [r5]
	add	sp, #0x40
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_6cdc

.thumb_func_start Func_6d50
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0x40
	lsl	r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0xf
	bhi	.L6dd8
	ldr	r6, =REG_WAITCNT
	ldrh	r1, [r6]
	ldr	r0, =0xfffc
	mov	r8, r0
	and	r1, r0
	ldr	r0, =ewram_4c08
	ldr	r2, [r0]
	ldrh	r0, [r2, #0x10]
	orr	r0, r1
	strh	r0, [r6]
	ldrb	r4, [r2, #8]
	lsl	r3, r4
	mov	r4, r3
	mov	r2, #0xe0
	lsl	r2, #20
	add	r4, r2
	ldr	r1, =0xe005555
	mov	r5, #0xaa
	strb	r5, [r1]
	ldr	r3, =0xe002aaa
	mov	r2, #0x55
	strb	r2, [r3]
	mov	r0, #0x80
	strb	r0, [r1]
	strb	r5, [r1]
	strb	r2, [r3]
	mov	r0, #0x30
	strb	r0, [r4]
	mov	r0, sp
	bl	Func_6ac0
	ldr	r0, =ewram_4c00
	ldr	r3, [r0]
	mov	r0, #2
	mov	r1, r4
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	ldrh	r1, [r6]
	mov	r2, r8
	and	r1, r2
	mov	r2, #3
	orr	r1, r2
	strh	r1, [r6]
	b	.L6dda

	.pool_aligned

.L6dd8:
	ldr	r0, =0x80ff
.L6dda:
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_6d50

.thumb_func_start Func_6dec
	push	{r4, lr}
	ldr	r4, =0xe005555
	mov	r2, #0xaa
	strb	r2, [r4]
	ldr	r3, =0xe002aaa
	mov	r2, #0x55
	strb	r2, [r3]
	mov	r2, #0xa0
	strb	r2, [r4]
	ldrb	r2, [r0]
	strb	r2, [r1]
	ldr	r3, =ewram_4c00
	ldrb	r2, [r0]
	ldr	r3, [r3]
	mov	r0, #1
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	pop	{r4}
	pop	{r1}
	bx	r1
.func_end Func_6dec

.thumb_func_start Func_6e24
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x60
	mov	r9, r1
	lsl	r0, #16
	lsr	r0, #16
	mov	r8, r0
	cmp	r0, #0xf
	bls	.L6e44
	ldr	r0, =0x80ff
	b	.L6f32

	.pool_aligned

.L6e44:
	ldr	r0, =ewram_4c08
	ldr	r0, [r0]
	ldrb	r0, [r0, #8]
	mov	r7, r8
	lsl	r7, r0
	mov	r0, #0xe0
	lsl	r0, #20
	add	r7, r0
	ldr	r1, =Func_6f48
	mov	r0, #1
	mov	r3, r1
	eor	r3, r0
	mov	r2, sp
	ldr	r0, =Func_6f6c
	sub	r0, r1
	b	.L6e7a

	.pool_aligned

.L6e70:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, #2
	add	r2, #2
	sub	r0, r1, #2
.L6e7a:
	lsl	r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L6e70
	mov	r4, #0
	b	.L6e90
.L6e86:
	add	r0, r4, #1
	lsl	r0, #24
	lsr	r4, r0, #24
	cmp	r4, #0x51
	beq	.L6f30
.L6e90:
	mov	r0, r8
	bl	Func_6d50
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L6e86
	mov	r0, r7
	mov	r1, sp
	add	r1, #1
	bl	Func_6f6c
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L6e86
	mov	r6, #1
	cmp	r4, #0
	beq	.L6eb8
	mov	r6, #6
.L6eb8:
	mov	r4, #1
	cmp	r4, r6
	bhi	.L6ece
.L6ebe:
	mov	r0, r8
	bl	Func_6d50
	add	r0, r4, #1
	lsl	r0, #24
	lsr	r4, r0, #24
	cmp	r4, r6
	bls	.L6ebe
.L6ece:
	mov	r0, sp
	bl	Func_6ac0
	ldr	r3, =REG_WAITCNT
	ldrh	r1, [r3]
	ldr	r0, =0xfffc
	and	r1, r0
	ldr	r0, =ewram_4c08
	ldr	r2, [r0]
	ldrh	r0, [r2, #0x10]
	orr	r0, r1
	strh	r0, [r3]
	ldr	r1, =ewram_4c0c
	ldr	r0, [r2, #4]
	strh	r0, [r1]
	mov	r4, r1
	b	.L6f0c

	.pool_aligned

.L6f00:
	ldrh	r0, [r4]
	sub	r0, #1
	strh	r0, [r4]
	mov	r0, #1
	add	r9, r0
	add	r7, #1
.L6f0c:
	ldrh	r0, [r4]
	cmp	r0, #0
	beq	.L6f22
	mov	r0, r9
	mov	r1, r7
	bl	Func_6dec
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L6f00
.L6f22:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
.L6f30:
	mov	r0, r5
.L6f32:
	add	sp, #0x60
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_6e24

.thumb_func_start Func_6f48
	mov	r2, r0
	ldr	r0, =ewram_4c08
	ldr	r0, [r0]
	ldr	r1, [r0, #4]
	b	.L6f5a

	.pool_aligned

.L6f58:
	sub	r1, #1
.L6f5a:
	cmp	r1, #0
	beq	.L6f66
	ldrb	r0, [r2]
	add	r2, #1
	cmp	r0, #0xff
	beq	.L6f58
.L6f66:
	mov	r0, r1
	bx	lr
.func_end Func_6f48

.thumb_func_start Func_6f6c
	push	{lr}
	bl	_call_via_r1
	cmp	r0, #0
	bne	.L6f7a
	mov	r0, #0
	b	.L6f7c
.L6f7a:
	ldr	r0, =0x8004
.L6f7c:
	pop	{r1}
	bx	r1
.func_end Func_6f6c

.thumb_func_start Func_6f84
	push	{r4, r5, r6, r7, lr}
	sub	sp, #0x40
	mov	r7, r1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L6f9c
	ldr	r0, =0x80ff
	b	.L7018

	.pool_aligned

.L6f9c:
	mov	r0, r4
	bl	Func_6d50
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L7016
	mov	r0, sp
	bl	Func_6ac0
	ldr	r3, =REG_WAITCNT
	ldrh	r1, [r3]
	ldr	r0, =0xfffc
	and	r1, r0
	ldr	r0, =ewram_4c08
	ldr	r2, [r0]
	ldrh	r0, [r2, #0x10]
	orr	r0, r1
	strh	r0, [r3]
	ldr	r1, =ewram_4c0c
	ldr	r0, [r2, #4]
	strh	r0, [r1]
	ldrb	r0, [r2, #8]
	lsl	r4, r0
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	mov	r6, r1
	b	.L6ff2

	.pool_aligned

.L6fe8:
	ldrh	r0, [r6]
	sub	r0, #1
	strh	r0, [r6]
	add	r7, #1
	add	r4, #1
.L6ff2:
	ldrh	r0, [r6]
	cmp	r0, #0
	beq	.L7008
	mov	r0, r7
	mov	r1, r4
	bl	Func_6dec
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L6fe8
.L7008:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
.L7016:
	mov	r0, r5
.L7018:
	add	sp, #0x40
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_6f84

.thumb_func_start Func_7028
	push	{r4, r5, r6, lr}
	sub	sp, #0x40
	mov	r0, sp
	bl	Func_6ac0
	ldr	r5, =REG_WAITCNT
	ldrh	r0, [r5]
	ldr	r6, =0xfffc
	and	r0, r6
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r5]
	ldr	r1, =0xe005555
	mov	r4, #0xaa
	strb	r4, [r1]
	ldr	r3, =0xe002aaa
	mov	r2, #0x55
	strb	r2, [r3]
	mov	r0, #0x80
	strb	r0, [r1]
	strb	r4, [r1]
	strb	r2, [r3]
	mov	r0, #0x10
	strb	r0, [r1]
	ldr	r0, =ewram_4c00
	mov	r1, #0xe0
	lsl	r1, #20
	ldr	r3, [r0]
	mov	r0, #3
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	ldrh	r1, [r5]
	and	r1, r6
	mov	r2, #3
	orr	r1, r2
	strh	r1, [r5]
	add	sp, #0x40
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_7028

.thumb_func_start Func_7098
	push	{r4, r5, lr}
	lsl	r0, #16
	ldr	r3, =.L7c10
	lsr	r0, #16
	mov	r4, r0
	ldrb	r1, [r3, #0x1c]
	lsl	r4, r1
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	ldr	r1, =REG_IME
	ldrh	r0, [r1]
	mov	r5, r0
	mov	r0, #0
	strh	r0, [r1]
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xa0
	strb	r0, [r2]
	ldr	r0, [r3, #0x18]
	cmp	r0, #0
	beq	.L70d8
	mov	r1, #0xff
.L70ce:
	strb	r1, [r4]
	add	r4, #1
	sub	r0, #1
	cmp	r0, #0
	bne	.L70ce
.L70d8:
	sub	r4, #1
	ldr	r0, =REG_IME
	strh	r5, [r0]
	ldr	r0, =ewram_4c00
	ldr	r3, [r0]
	mov	r0, #1
	mov	r1, r4
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L70fe
	mov	r0, #0xff
	lsl	r0, #8
	and	r1, r0
	mov	r0, #2
	orr	r1, r0
.L70fe:
	mov	r0, r1
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end Func_7098

.thumb_func_start Func_711c
	push	{r4, r5, r6, lr}
	sub	sp, #0x40
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L7130
	ldr	r0, =0x80ff
	b	.L7198

	.pool_aligned

.L7130:
	mov	r0, sp
	bl	Func_6ac0
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r2]
	lsl	r0, r4, #21
	lsr	r5, r0, #16
	mov	r6, #0
.L714c:
	mov	r4, #2
	b	.L7166

	.pool_aligned

.L715c:
	sub	r0, r4, #1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L7174
.L7166:
	mov	r0, r5
	bl	Func_7098
	lsl	r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	bne	.L715c
.L7174:
	add	r0, r5, #1
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r3, #0
	bne	.L7188
	add	r0, r6, #1
	lsl	r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0x1f
	bls	.L714c
.L7188:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	mov	r0, r3
.L7198:
	add	sp, #0x40
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_711c

.thumb_func_start Func_71a8
	push	{r4, r5, r6, lr}
	mov	r5, r1
	lsl	r0, #16
	ldr	r3, =.L7c10
	lsr	r0, #16
	mov	r4, r0
	ldrb	r1, [r3, #0x1c]
	lsl	r4, r1
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	ldr	r1, =REG_IME
	ldrh	r0, [r1]
	mov	r6, r0
	mov	r0, #0
	strh	r0, [r1]
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xa0
	strb	r0, [r2]
	ldr	r1, [r3, #0x18]
	cmp	r1, #0
	beq	.L71ec
.L71de:
	ldrb	r0, [r5]
	strb	r0, [r4]
	add	r5, #1
	add	r4, #1
	sub	r1, #1
	cmp	r1, #0
	bne	.L71de
.L71ec:
	sub	r4, #1
	sub	r5, #1
	ldr	r0, =REG_IME
	strh	r6, [r0]
	ldr	r0, =ewram_4c00
	ldrb	r2, [r5]
	ldr	r3, [r0]
	mov	r0, #1
	mov	r1, r4
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_71a8

.thumb_func_start Func_7220
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r7, r1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L723c
	ldr	r0, =0x80ff
	b	.L72ce

	.pool_aligned

.L723c:
	mov	r0, sp
	bl	Func_6ac0
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r2]
	lsl	r0, r4, #21
	lsr	r5, r0, #16
	ldr	r1, =ewram_4c0c
	ldr	r0, =.L7be4
	ldr	r0, [r0, #0x18]
	strh	r0, [r1]
	mov	r0, r1
	mov	r8, r0
	b	.L728e

	.pool_aligned

.L7278:
	ldr	r0, =.L7c10
	ldr	r1, [r0, #0x18]
	mov	r2, r8
	ldrh	r2, [r2]
	sub	r0, r2, r1
	mov	r3, r8
	strh	r0, [r3]
	add	r7, r1
	add	r0, r5, #1
	lsl	r0, #16
	lsr	r5, r0, #16
.L728e:
	mov	r1, r8
	ldrh	r0, [r1]
	cmp	r0, #0
	beq	.L72be
	mov	r4, #2
	b	.L72aa

	.pool_aligned

.L72a0:
	sub	r0, r4, #1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L72ba
.L72aa:
	mov	r0, r5
	mov	r1, r7
	bl	Func_71a8
	lsl	r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L72a0
.L72ba:
	cmp	r6, #0
	beq	.L7278
.L72be:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	mov	r0, r6
.L72ce:
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7220

	.section .rodata

.L7a0c:
	.incrom 0x7a0c, 0x7abc
.L7abc:
	.incrom 0x7abc, 0x7be4
.L7be4:
	.incrom 0x7be4, 0x7c10
.L7c10:
	.incrom 0x7c10, 0x7c64
