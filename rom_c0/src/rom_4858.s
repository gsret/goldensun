	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_4858
	sub	sp, #4
	ldr	r4, =iwram_1e50
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_2000
	str	r3, [r4, #4]
	ldr	r3, =ewram_30000
	add	sp, #4
	str	r3, [r4]
	bx	lr
.func_end Func_4858

.thumb_func_start Func_488c
	ldr	r3, =iwram_1e50
	ldr	r0, =iwram_7800
	ldr	r3, [r3, #4]
	sub	r0, r3
	bx	lr
.func_end Func_488c

.thumb_func_start Func_48a0
	ldr	r3, =iwram_1e50
	mov	r0, #0x81
	ldr	r3, [r3]
	lsl	r0, #18
	sub	r0, r3
	bx	lr
.func_end Func_48a0

.thumb_func_start Func_48b0
	push	{r5, lr}
	ldr	r4, =iwram_1e50
	lsl	r5, r0, #2
	ldr	r0, [r4, r5]
	cmp	r0, #0
	bne	.L48e6
	add	r3, r1, #3
	lsr	r3, #2
	ldr	r0, [r4, #4]
	lsl	r1, r3, #2
	ldr	r3, =iwram_77ff
	add	r2, r0, r1
	cmp	r2, r3
	bls	.L48e2
	ldr	r0, [r4]
	mov	r3, #0x81
	add	r1, r0, r1
	lsl	r3, #18
	cmp	r1, r3
	bcc	.L48dc
	mov	r0, #0
	b	.L48e6
.L48dc:
	str	r1, [r4]
	str	r0, [r4, r5]
	b	.L48e6
.L48e2:
	str	r2, [r4, #4]
	str	r0, [r4, r5]
.L48e6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_48b0

.thumb_func_start Func_48f4
	push	{r5, lr}
	ldr	r4, =iwram_1e50
	lsl	r5, r0, #2
	ldr	r0, [r4, r5]
	cmp	r0, #0
	bne	.L492a
	add	r3, r1, #3
	lsr	r3, #2
	ldr	r0, [r4]
	lsl	r1, r3, #2
	mov	r3, #0x81
	add	r2, r0, r1
	lsl	r3, #18
	cmp	r2, r3
	bcc	.L4926
	ldr	r0, [r4, #4]
	ldr	r3, =iwram_77ff
	add	r1, r0, r1
	cmp	r1, r3
	bls	.L4920
	mov	r0, #0
	b	.L492a
.L4920:
	str	r1, [r4, #4]
	str	r0, [r4, r5]
	b	.L492a
.L4926:
	str	r2, [r4]
	str	r0, [r4, r5]
.L492a:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_48f4

.thumb_func_start Func_4938
	push	{lr}
	ldr	r1, =iwram_1e50
	add	r3, r0, #3
	lsr	r3, #2
	ldr	r2, [r1, #4]
	lsl	r0, r3, #2
	ldr	r4, =iwram_77ff
	add	r3, r2, r0
	cmp	r3, r4
	bls	.L4960
	ldr	r2, [r1]
	mov	r3, #0x81
	add	r0, r2, r0
	lsl	r3, #18
	cmp	r0, r3
	bcc	.L495c
	mov	r0, #0
	b	.L4964
.L495c:
	str	r0, [r1]
	b	.L4962
.L4960:
	str	r3, [r1, #4]
.L4962:
	mov	r0, r2
.L4964:
	pop	{r1}
	bx	r1
.func_end Func_4938

.thumb_func_start Func_4970
	push	{lr}
	ldr	r1, =iwram_1e50
	add	r3, r0, #3
	lsr	r3, #2
	ldr	r2, [r1]
	lsl	r0, r3, #2
	mov	r4, #0x81
	add	r3, r2, r0
	lsl	r4, #18
	cmp	r3, r4
	bcc	.L4998
	ldr	r2, [r1, #4]
	ldr	r3, =iwram_77ff
	add	r0, r2, r0
	cmp	r0, r3
	bls	.L4994
	mov	r0, #0
	b	.L499c
.L4994:
	str	r0, [r1, #4]
	b	.L499a
.L4998:
	str	r3, [r1]
.L499a:
	mov	r0, r2
.L499c:
	pop	{r1}
	bx	r1
.func_end Func_4970
