	.include "macros.inc"

.thumb_func_start Func_ea54
	push	{lr}
	cmp	r0, #0
	beq	.Lea5c
	str	r1, [r0, #0x6c]
.Lea5c:
	pop	{r0}
	bx	r0
.func_end Func_ea54

.thumb_func_start Func_ea60
	push	{r5, r6, r7, lr}
	ldr	r7, =0x3fff
	ldr	r3, =iwram_1ebc
	lsr	r6, r0, #14
	and	r7, r0
	ldr	r0, =0x107
	ldr	r5, [r3]
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lea82
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.Lead8
.Lea82:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Leac2
	ldr	r1, =iwram_1c94
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Leaaa
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	ldr	r3, =0xfc88
	strh	r3, [r2]
	b	.Lead8
.Leaaa:
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lead8
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	ldr	r3, =0xfc87
	strh	r3, [r2]
	b	.Lead8
.Leac2:
	cmp	r6, #0
	beq	.Leacc
	cmp	r6, #1
	beq	.Lead0
	b	.Lead8
.Leacc:
	mov	r2, #0xbf
	b	.Lead2
.Lead0:
	mov	r2, #0xc0
.Lead2:
	lsl	r2, #1
	add	r3, r5, r2
	strh	r7, [r3]
.Lead8:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ea60

.thumb_func_start Func_eaf8
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r5, #0
	mov	r0, #0
	cmp	r1, #0
	beq	.Leb80
	ldr	r4, =ewram_240
	mov	r2, #0x85
	lsl	r2, #2
	ldr	r0, =iwram_1c94
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb1e
	mov	r3, #0xb9
	b	.Leb42
.Leb1e:
	mov	r2, #0x84
	lsl	r2, #2
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb32
	mov	r3, #0xba
	b	.Leb42
.Leb32:
	ldr	r2, =0x216
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb4e
	mov	r3, #0xbb
.Leb42:
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r5, #1
	b	.Leb7e
.Leb4e:
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb64
	mov	r2, #0x88
	lsl	r2, #2
	b	.Leb74
.Leb64:
	ldr	r2, =0x21a
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb7e
	ldr	r2, =0x222
.Leb74:
	add	r3, r4, r2
	ldrh	r0, [r3]
	bl	Func_ea60
	mov	r5, r0
.Leb7e:
	mov	r0, r5
.Leb80:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_eaf8

.thumb_func_start Func_eba0
	push	{r5, r6, lr}
	ldmia	r0!, {r4}
	ldmia	r2!, {r5}
	sub	r4, r5
	asr	r6, r4, #16
	ldmia	r2!, {r5}
	ldmia	r0!, {r4}
	ldr	r2, [r2]
	ldr	r0, [r0]
	add	r1, r3
	mov	r3, #0x80
	sub	r4, r5
	sub	r0, r2
	lsl	r3, #15
	asr	r4, #16
	asr	r0, #16
	cmp	r6, r3
	bgt	.Lebe2
	cmp	r0, r3
	bgt	.Lebe2
	mov	r2, r4
	mul	r2, r4
	mov	r3, r6
	mul	r3, r6
	add	r3, r2
	mov	r2, r0
	mul	r2, r0
	add	r3, r2
	mov	r2, r1
	mul	r2, r1
	mov	r0, #0
	cmp	r3, r2
	blt	.Lebe6
.Lebe2:
	mov	r0, #1
	neg	r0, r0
.Lebe6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_eba0
