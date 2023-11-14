	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_c9048
	push	{lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc9080	@ 0
	strh	r3, [r2]
	ldr	r3, .Lc9084	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, .Lc9088	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lc908c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lc9090	@ 0x3537
	ldr	r1, =ewram_2090
	strh	r3, [r2]
	ldr	r3, .Lc9094	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	b	.Lc90ac

	.align	2, 0
.Lc9080:
	.word	0
.Lc9084:
	.word	0x100e
.Lc9088:
	.word	0xf0
.Lc908c:
	.word	0x1088
.Lc9090:
	.word	0x3537
.Lc9094:
	.word	0x3f21
	.pool

.Lc90ac:
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc90d4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc90d4:
	strh	r4, [r0]
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_c9048

.thumb_func_start Func_c90e4
	push	{r5, lr}
	ldr	r3, =iwram_1eec
	ldr	r1, =0x7790
	ldr	r4, [r3]
	add	r5, r4, r1
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	add	r1, #4
	add	r2, r4, r1
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.Lc911c
	ldr	r2, =0x7798
	ldr	r1, =iwram_1ad0
	add	r3, r4, r2
	ldr	r2, [r3]
	ldrh	r3, [r1, #4]
	add	r3, r2
	ldr	r2, =0x779c
	strh	r3, [r1, #4]
	add	r3, r4, r2
	ldr	r2, [r3]
	ldrh	r3, [r1, #6]
	mov	r0, #0
	add	r3, r2
	strh	r3, [r1, #6]
	str	r0, [r5]
.Lc911c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_c90e4

.thumb_func_start Func_c9138
	push	{r5, lr}
	ldr	r3, =iwram_1eec
	ldr	r1, =0x7790
	ldr	r4, [r3]
	add	r5, r4, r1
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	add	r1, #4
	add	r2, r4, r1
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.Lc9182
	ldr	r3, =0x77d0
	add	r1, r4, r3
	ldr	r3, [r1]
	ldr	r2, =REG_BG2X
	str	r3, [r2]
	ldr	r3, =0x77d4
	add	r0, r4, r3
	ldr	r3, [r0]
	add	r2, #4
	str	r3, [r2]
	ldr	r3, =0x7798
	add	r2, r4, r3
	ldr	r2, [r2]
	ldr	r3, [r1]
	add	r3, r2
	str	r3, [r1]
	ldr	r1, =0x779c
	add	r2, r4, r1
	ldr	r3, [r0]
	ldr	r2, [r2]
	add	r3, r2
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r5]
.Lc9182:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_c9138

.thumb_func_start Func_c91a4
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r0, =ewram_10000
	ldrh	r2, [r3, #0xa]
	ldr	r1, =REG_WIN0H
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_c91a4
