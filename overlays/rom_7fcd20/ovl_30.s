	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L13c8
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L13f8
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L13fc
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_19a54
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	mov	r3, #0x22
	bl	__Func_17658
	b	.L68
.L62:
	mov	r0, #1
	bl	__Func_30f8
.L68:
	bl	__Func_17364
	cmp	r0, #0
	beq	.L62
	mov	r0, #1
	bl	__Func_30f8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_7c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	mov	r6, r0
	mov	r8, r1
	mov	r0, #0x7d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_19da8
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r8
	bge	.L10a
	ldr	r5, =iwram_1ae8
.Laa:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_19908
	mov	r0, #0x8d
	mov	r1, #2
	bl	__Func_19908
	ldr	r0, =0x1e240
	mov	r1, #5
	bl	__Func_19908
	mov	r0, r6
	bl	OvlFunc_4c
	b	.Ld6
.Lca:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L104
	mov	r0, #1
	bl	__Func_30f8
.Ld6:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L10a
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf4
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf8
.Lf4:
	add	r6, #1
	b	.L104
.Lf8:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lca
	sub	r6, #1
.L104:
	add	r7, #1
	cmp	r7, r8
	blt	.Laa
.L10a:
	bl	__Func_19a54
	mov	r0, r10
	mov	r1, #2
	bl	__Func_16418
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_130
	push	{lr}
	ldr	r0, =0xc9b
	ldr	r1, =0xcc6
	sub	r1, r0
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_130

.thumb_func_start OvlFunc_148
	push	{lr}
	ldr	r0, =0xcc6
	ldr	r1, =0xc9b
	sub	r1, r0, r1
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_148

.thumb_func_start OvlFunc_160
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xcf1
	sub	r1, r3
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_160

.thumb_func_start OvlFunc_180
	push	{lr}
	ldr	r0, =0xd21
	ldr	r1, =0xd4c
	sub	r1, r0
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_180

.thumb_func_start OvlFunc_198
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd4c
	sub	r1, r3
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_198

.thumb_func_start OvlFunc_1b8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd77
	sub	r1, r3
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b8

.thumb_func_start OvlFunc_1d8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xda2
	sub	r1, r3
	bl	OvlFunc_7c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d8

.thumb_func_start OvlFunc_1f8
	push	{lr}
	mov	r0, #1
	bl	__Func_b0444
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f8

.thumb_func_start OvlFunc_204
	bx	lr
.func_end OvlFunc_204

.thumb_func_start OvlFunc_208
	push	{lr}
	sub	sp, #8
	mov	r1, sp
	add	r0, sp, #4
	bl	__Func_b3444
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_208

.thumb_func_start OvlFunc_21c
	push	{lr}
	mov	r0, #0
	bl	__Func_20bd8
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c

.thumb_func_start OvlFunc_228
	bx	lr
.func_end OvlFunc_228

.thumb_func_start OvlFunc_22c
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x35
	strb	r2, [r3]
	bx	lr
.func_end OvlFunc_22c

.thumb_func_start OvlFunc_23c
	ldr	r0, =.L1564
	bx	lr
.func_end OvlFunc_23c

.thumb_func_start OvlFunc_244
	push	{r5, lr}
	ldr	r0, =0xc1a
	mov	r1, #1
	bl	__Func_1776c
	ldr	r5, =.L1684
	mov	r0, #0
	ldr	r1, [r5]
	bl	__Func_792fc
	ldr	r1, [r5]
	mov	r0, #1
	bl	__Func_792fc
	ldr	r1, [r5]
	mov	r0, #3
	bl	__Func_792fc
	ldr	r1, [r5]
	mov	r0, #2
	bl	__Func_792fc
	ldr	r3, [r5]
	add	r3, #0xa
	str	r3, [r5]
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_244

.thumb_func_start OvlFunc_29c
	push	{lr}
	ldr	r0, =0xc1e
	mov	r1, #1
	bl	__Func_1776c
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb4
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb5
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb6
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb7
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xba
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbb
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	b	.L6a0

	.pool_aligned

.L6a0:
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xec
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xbf
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc0
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc1
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc2
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc3
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc4
	mov	r0, #3
	bl	__Func_78588
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	pop	{r0}
	bx	r0
.func_end OvlFunc_29c

.thumb_func_start OvlFunc_8c4
	push	{lr}
	ldr	r0, =0xc1d
	mov	r1, #1
	sub	sp, #0x100
	bl	__Func_1776c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #2
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #3
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #4
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #5
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #6
	mov	r0, #0
	bl	__Func_7a1b4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #2
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #3
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #4
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #5
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #0
	mov	r2, #6
	mov	r0, #0
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #1
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #2
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #3
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #4
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #5
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #6
	mov	r0, #1
	bl	__Func_7a1b4
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #1
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #2
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #3
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #4
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #5
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #2
	mov	r2, #6
	mov	r0, #1
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #1
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #2
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #3
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #4
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #5
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #6
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #1
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #2
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #3
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #4
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #5
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #1
	mov	r2, #6
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #0
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #1
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #2
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #3
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #4
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #5
	mov	r0, #2
	bl	__Func_7a1b4
	mov	r1, #3
	mov	r2, #0
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #1
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #2
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #3
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #4
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r1, #3
	mov	r2, #5
	mov	r0, #2
	bl	__Func_7a2e4
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	add	sp, #0x100
	pop	{r0}
	bx	r0
.func_end OvlFunc_8c4

.thumb_func_start OvlFunc_b10
	push	{r5, r6, lr}
	ldr	r0, =0xc1b
	mov	r1, #1
	bl	__Func_1776c
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #0
	bl	__Func_783a4
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #1
	bl	__Func_783a4
	mov	r1, #0x21
	neg	r1, r1
	mov	r0, #2
	bl	__Func_783a4
	mov	r1, #0x64
	neg	r1, r1
	mov	r0, #3
	bl	__Func_783a4
	mov	r1, #0x32
	neg	r1, r1
	mov	r0, #0
	bl	__Func_783dc
	mov	r1, #0x28
	neg	r1, r1
	mov	r0, #1
	bl	__Func_783dc
	mov	r1, #0x23
	neg	r1, r1
	mov	r0, #2
	bl	__Func_783dc
	mov	r1, #0x14
	neg	r1, r1
	mov	r0, #3
	bl	__Func_783dc
	mov	r0, #0
	bl	__Func_77394
	ldr	r6, =0x131
	mov	r2, #0xa0
	mov	r5, #1
	lsl	r2, #1
	strb	r5, [r0, r6]
	add	r0, r2
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_77394
	mov	r2, #0x98
	lsl	r2, #1
	add	r3, r0, r2
	strb	r5, [r3]
	mov	r3, #2
	strb	r3, [r0, r6]
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b10

.thumb_func_start OvlFunc_bb8
	push	{lr}
	ldr	r0, =0xc1f
	mov	r1, #1
	bl	__Func_1776c
	mov	r1, #0x55
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x54
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x7c
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x7b
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #9
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x1b
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x1a
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0x26
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x25
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x32
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x31
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x53
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x52
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x86
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x85
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x98
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0x40
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x41
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x62
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x61
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x7c
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x83
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x8d
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xa3
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x3d
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x3f
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x60
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x5f
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x71
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x70
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x82
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0x8e
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xab
	mov	r0, #3
	bl	__Func_78588
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	pop	{r0}
	bx	r0
.func_end OvlFunc_bb8

.thumb_func_start OvlFunc_cf4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x70
	sub	sp, #4
	bl	__Func_f9080
	mov	r5, #2
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #7
	mov	r0, #0
	str	r5, [sp]
	bl	__Func_162d4
	mov	r1, #8
	mov	r7, r0
	mov	r2, #0xd
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	__Func_162d4
	mov	r6, #1
	mov	r10, r0
	mov	r8, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	__Func_30f8
.Ld46:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lde0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	lsl	r1, #1
	bl	_Func_b1c
	mov	r6, r0
	mov	r0, r7
	bl	__Func_16498
	mov	r0, r7
	bl	__Func_164ac
	ldr	r0, =.L1390
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__Func_1e940
	mov	r3, r8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_1e9d4
	bl	__Func_78500
	cmp	r0, #0
	beq	.Ldd4
	ldr	r5, =0x1ff
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	and	r5, r6
	ldr	r0, =.L139c
	bl	__Func_1e940
	mov	r0, r5
	bl	__Func_78414
	ldr	r0, =0x182
	mov	r1, r7
	add	r0, r5, r0
	mov	r2, #0x78
	mov	r3, #0
	bl	__Func_1e7c0
	ldr	r3, =0x75
	add	r5, r3
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	__Func_1e74c
	mov	r0, r10
	bl	__Func_16498
	mov	r0, r10
	mov	r1, r6
	bl	__Func_a4924
	b	.Lde0
.Ldd4:
	ldr	r0, =.L13b4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	bl	__Func_1e940
.Lde0:
	ldr	r5, =iwram_1c94
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Le00
	mov	r0, r6
	bl	__Func_78618
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Le0a
	mov	r0, #0xaf
	bl	__Func_f9080
.Le00:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Le12
.Le0a:
	mov	r0, #0x71
	bl	__Func_f9080
	b	.Lea4
.Le12:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Le2a
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #1
	mov	r8, r3
	bl	__Func_f9080
.Le2a:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Le40
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #1
	mov	r8, r3
	bl	__Func_f9080
.Le40:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Le56
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #0xa
	mov	r8, r3
	bl	__Func_f9080
.Le56:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Le6c
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #0xa
	mov	r8, r3
	bl	__Func_f9080
.Le6c:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Le84
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #0x1e
	mov	r8, r3
	bl	__Func_f9080
.Le84:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Le9c
	mov	r3, #1
	mov	r0, #0x6f
	sub	r6, #0x1e
	mov	r8, r3
	bl	__Func_f9080
.Le9c:
	mov	r0, #1
	bl	__Func_30f8
	b	.Ld46
.Lea4:
	mov	r0, r7
	bl	__Func_16498
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r7
	mov	r1, #1
	bl	__Func_16418
	mov	r0, r10
	mov	r1, #1
	bl	__Func_16418
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cf4

.thumb_func_start OvlFunc_f08
	push	{lr}
	bl	OvlFunc_cf4
	pop	{r0}
	bx	r0
.func_end OvlFunc_f08

.thumb_func_start OvlFunc_f14
	push	{lr}
	ldr	r0, =0xc1c
	mov	r1, #1
	bl	__Func_1776c
	mov	r1, #0xb8
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xcc
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xdc
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xdd
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xde
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xdf
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xe0
	mov	r0, #0
	bl	__Func_78588
	mov	r1, #0xe2
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe3
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe6
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe4
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe5
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe8
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xe7
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xed
	mov	r0, #1
	bl	__Func_78588
	mov	r1, #0xf2
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_78588
	ldr	r1, =0x10b
	mov	r0, #2
	bl	__Func_78588
	ldr	r1, =0x109
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xfc
	mov	r0, #2
	bl	__Func_78588
	mov	r1, #0xbd
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc8
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xc9
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xca
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xcb
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xcc
	mov	r0, #3
	bl	__Func_78588
	mov	r1, #0xcf
	mov	r0, #3
	bl	__Func_78588
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	pop	{r0}
	bx	r0
.func_end OvlFunc_f14

.thumb_func_start OvlFunc_10a8
	push	{lr}
	mov	r0, #5
	bl	__Func_79664
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r1, #1
	mov	r0, #5
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #5
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #5
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #6
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #6
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #7
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x6a
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x6c
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x6d
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x71
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x7b
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x82
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x8c
	bl	__Func_78ad0
	mov	r1, #1
	mov	r0, #0x97
	bl	__Func_78ad0
	mov	r0, #0
	mov	r1, #0x32
	bl	__Func_792fc
	mov	r0, #1
	mov	r1, #0x1e
	bl	__Func_792fc
	mov	r0, #3
	mov	r1, #0x1e
	bl	__Func_792fc
	mov	r1, #0x1e
	mov	r0, #2
	bl	__Func_792fc
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #1
	bl	__Func_77428
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_10a8

.thumb_func_start OvlFunc_1170
	push	{lr}
	bl	__Func_29554
	pop	{r1}
	bx	r1
.func_end OvlFunc_1170

.thumb_func_start OvlFunc_117c
	push	{lr}
	bl	__Func_b29a8
	pop	{r1}
	bx	r1
.func_end OvlFunc_117c

	.section .data

	.incbin "overlays/rom_7fcd20/orig.bin", 0x12b0, (0x1390-0x12b0)
.L1390:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1390, (0x139c-0x1390)
.L139c:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x139c, (0x13b4-0x139c)
.L13b4:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13b4, (0x13c8-0x13b4)
.L13c8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13c8, (0x13f8-0x13c8)
.L13f8:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13f8, (0x13fc-0x13f8)
.L13fc:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x13fc, (0x1564-0x13fc)
.L1564:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1564, (0x1684-0x1564)
.L1684:
	.incbin "overlays/rom_7fcd20/orig.bin", 0x1684
