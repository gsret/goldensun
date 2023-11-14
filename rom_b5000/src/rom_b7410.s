	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b7410
	ldr	r4, =.Lc2a62
	lsl	r0, #1
	ldrsb	r3, [r4, r0]
	add	r0, #1
	str	r3, [r1]
	ldrsb	r3, [r4, r0]
	str	r3, [r2]
	bx	lr
.func_end Func_b7410

.thumb_func_start Func_b7424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r11, r2
	mov	r9, r1
	str	r3, [sp]
	mov	r2, #0x1e
	cmp	r1, #4
	ble	.Lb7442
	mov	r2, #0x1b
.Lb7442:
	mov	r3, r9
	sub	r3, #1
	mul	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0
	mov	r2, r9
	asr	r7, r3, #1
	mov	r10, r1
	cmp	r2, #0
	beq	.Lb74fe
	mov	r6, r0
	mov	r8, r1
.Lb745c:
	mov	r3, #0x50
	neg	r3, r3
	mov	r0, r8
	mov	r1, r11
	str	r3, [r0, r1]
	mov	r3, r10
	mov	r2, #0
	cmp	r3, #0
	beq	.Lb74b6
	ldrh	r3, [r6]
	ldr	r0, =0xff02
	mov	r1, #0x80
	add	r3, r0
	lsl	r3, #16
	lsl	r1, #9
	mov	r2, #0x19
	cmp	r3, r1
	bls	.Lb74b6
	ldrh	r0, [r6]
	bl	_Func_77394
	mov	r2, #0x94
	lsl	r2, #1
	mov	r5, r0
	add	r3, r5, r2
	ldrb	r0, [r3]
	bl	Func_c23c0
	mov	r2, #0x1b
	cmp	r0, #0
	bne	.Lb749c
	mov	r2, #0x26
.Lb749c:
	mov	r0, #0x94
	lsl	r0, #1
	add	r3, r5, r0
	ldrb	r0, [r3]
	cmp	r0, #0x94
	beq	.Lb74ac
	cmp	r0, #0x79
	bne	.Lb74b6
.Lb74ac:
	mov	r3, #0x32
	neg	r3, r3
	mov	r1, r8
	mov	r0, r11
	str	r3, [r1, r0]
.Lb74b6:
	lsr	r3, r2, #1
	sub	r7, r3
	ldr	r2, [sp]
	ldrh	r3, [r6]
	ldr	r0, =0xff02
	mov	r1, r8
	str	r7, [r1, r2]
	add	r3, r0
	mov	r1, #0x80
	lsl	r3, #16
	lsl	r1, #9
	mov	r2, #0x19
	cmp	r3, r1
	bls	.Lb74ec
	ldrh	r0, [r6]
	bl	_Func_77394
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	Func_c23c0
	mov	r2, #0x1b
	cmp	r0, #0
	bne	.Lb74ec
	mov	r2, #0x26
.Lb74ec:
	lsr	r3, r2, #1
	mov	r0, #1
	sub	r7, r3
	add	r10, r0
	mov	r3, #4
	add	r6, #2
	add	r8, r3
	cmp	r10, r9
	bne	.Lb745c
.Lb74fe:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b7424

.thumb_func_start Func_b7514
	push	{r5, r6, lr}
	mov	r5, #0
	b	.Lb751c
.Lb751a:
	add	r5, #1
.Lb751c:
	cmp	r5, #5
	bgt	.Lb7536
	mov	r6, r5
	add	r6, #0x80
	mov	r0, r6
	bl	_Func_77394
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb751a
.Lb7536:
	cmp	r5, #6
	bne	.Lb7540
	mov	r0, #1
	neg	r0, r0
	b	.Lb7542
.Lb7540:
	mov	r0, r6
.Lb7542:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b7514

.thumb_func_start Func_b7548
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e74
	ldr	r2, [r3]
	mov	r3, #0x64
	add	r2, #2
	ldrsh	r3, [r2, r3]
	sub	sp, #0x4c
	mov	r6, #0
	mov	r9, r2
	cmp	r3, #0xff
	beq	.Lb7586
	add	r0, sp, #0x30
	mov	r5, r0
	mov	r4, #0
	mov	r2, #0x64
	mov	r1, r9
.Lb7570:
	ldrh	r3, [r1, r2]
	add	r6, #1
	strh	r3, [r4, r5]
	add	r2, #2
	add	r4, #2
	cmp	r6, #5
	bgt	.Lb7588
	ldrsh	r3, [r1, r2]
	cmp	r3, #0xff
	bne	.Lb7570
	b	.Lb7588
.Lb7586:
	add	r0, sp, #0x30
.Lb7588:
	add	r1, sp, #0x18
	mov	r10, r1
	mov	r8, sp
	mov	r1, r6
	mov	r2, r10
	mov	r3, r8
	bl	Func_b7424
	cmp	r6, #0
	ble	.Lb75c6
	mov	r5, #0
	mov	r7, #0x64
.Lb75a0:
	mov	r2, r9
	ldrsh	r0, [r2, r7]
	cmp	r0, #0xfe
	beq	.Lb75bc
	bl	Func_b7dd0
	mov	r1, r10
	ldr	r3, [r5, r1]
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r2, r8
	ldr	r3, [r5, r2]
	lsl	r3, #16
	str	r3, [r0, #0x10]
.Lb75bc:
	sub	r6, #1
	add	r5, #4
	add	r7, #2
	cmp	r6, #0
	bne	.Lb75a0
.Lb75c6:
	add	sp, #0x4c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b7548

.thumb_func_start Func_b75dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x50
	ldr	r3, =iwram_1e74
	mov	r2, sp
	ldr	r3, [r3]
	add	r2, #0x34
	mov	r1, #0
	mov	r0, r2
	mov	r10, r3
	str	r2, [sp]
	mov	r9, r1
	bl	Func_b6a60
	ldr	r3, =0x2e9
	mov	r5, r0
	mov	r2, #0xff
	mov	r7, #0xd
	add	r3, r10
.Lb760c:
	sub	r7, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r7, #0
	bge	.Lb760c
	ldr	r3, =0x2e9
	mov	r1, #5
	add	r3, r10
	mov	r2, #0xd
.Lb761e:
	sub	r1, #1
	strb	r2, [r3]
	sub	r3, #1
	sub	r2, #1
	cmp	r1, #0
	bge	.Lb761e
	cmp	r5, #0
	ble	.Lb7672
	ldr	r3, =.Lc2a62
	ldr	r1, [sp]
	mov	r2, r9
	mov	r11, r3
	mov	r8, r1
	lsl	r6, r2, #1
	mov	r7, r5
.Lb763c:
	mov	r3, r8
	ldrh	r5, [r3]
	mov	r2, #0xb7
	mov	r1, #2
	lsl	r2, #2
	add	r3, r5, r2
	add	r8, r1
	mov	r2, r9
	mov	r1, r10
	strb	r2, [r1, r3]
	mov	r0, r5
	bl	Func_b7dd0
	mov	r3, r11
	ldrsb	r2, [r6, r3]
	mov	r1, r11
	add	r3, r6, #1
	ldrsb	r3, [r3, r1]
	mov	r1, r5
	bl	Func_b6f44
	sub	r7, #1
	mov	r2, #1
	add	r6, #2
	add	r9, r2
	cmp	r7, #0
	bne	.Lb763c
.Lb7672:
	mov	r5, #2
	add	r5, r10
	mov	r3, #0x64
	ldrsh	r3, [r5, r3]
	mov	r7, #0
	mov	r11, r5
	cmp	r3, #0xff
	beq	.Lb769e
	ldr	r4, [sp]
	mov	r0, #0
	mov	r2, #0x64
	mov	r1, r11
.Lb768a:
	ldrh	r3, [r1, r2]
	add	r7, #1
	strh	r3, [r0, r4]
	add	r2, #2
	add	r0, #2
	cmp	r7, #5
	bgt	.Lb769e
	ldrsh	r3, [r1, r2]
	cmp	r3, #0xff
	bne	.Lb768a
.Lb769e:
	mov	r1, #0x1c
	mov	r2, #4
	add	r1, sp
	add	r2, sp
	mov	r5, r7
	mov	r9, r1
	mov	r10, r2
	ldr	r0, [sp]
	mov	r1, r5
	mov	r2, r9
	mov	r3, r10
	bl	Func_b7424
	cmp	r5, #0
	ble	.Lb76ee
	mov	r3, #0
	lsl	r6, r3, #2
	mov	r3, #0x64
	mov	r8, r3
.Lb76c4:
	mov	r1, r11
	mov	r3, r8
	ldrsh	r5, [r1, r3]
	cmp	r5, #0xfe
	beq	.Lb76e2
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r9
	ldr	r2, [r6, r1]
	mov	r1, r10
	ldr	r3, [r6, r1]
	mov	r1, r5
	bl	Func_b6f44
.Lb76e2:
	mov	r2, #2
	sub	r7, #1
	add	r8, r2
	add	r6, #4
	cmp	r7, #0
	bne	.Lb76c4
.Lb76ee:
	add	sp, #0x50
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b75dc

.thumb_func_start Func_b770c
	push	{lr}
	cmp	r1, #7
	ble	.Lb7714
	add	r1, #0x78
.Lb7714:
	mov	r2, #0
.Lb7716:
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	lsl	r3, #16
	lsr	r3, #16
	add	r0, #2
	cmp	r3, #0xff
	beq	.Lb7732
	cmp	r3, r1
	bne	.Lb772c
	mov	r0, #1
	b	.Lb7734
.Lb772c:
	add	r2, #1
	cmp	r2, #0xd
	bls	.Lb7716
.Lb7732:
	mov	r0, #0
.Lb7734:
	pop	{r1}
	bx	r1
.func_end Func_b770c

.thumb_func_start Func_b7738
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	add	r1, sp, #0x10
	mov	r10, r1
	mov	r0, #3
	bl	Func_b6c08
	mov	r7, #0
	mov	r2, r10
	ldrh	r3, [r2, r7]
	cmp	r3, #0xff
	beq	.Lb77b2
	mov	r2, #0
.Lb775e:
	mov	r3, r10
	ldrh	r0, [r3, r2]
	bl	Func_b7dd0
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb77a0
	ldr	r5, [r6]
	bl	Func_b7994
	ldr	r3, [r6, #0x24]
	cmp	r3, #0
	beq	.Lb77a0
	mov	r0, r5
	mov	r1, #0
	bl	Func_b7f70
	cmp	r0, #0
	beq	.Lb77a0
	ldr	r3, [r5, #0xc]
	mov	r1, #0
	cmp	r3, #0
	beq	.Lb778e
	mov	r1, #9
.Lb778e:
	ldr	r2, [r6, #0x24]
	ldrb	r3, [r2, #6]
	cmp	r3, r1
	beq	.Lb77a0
	strb	r1, [r2, #6]
	mov	r2, r0
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.Lb77a0:
	add	r7, #1
	cmp	r7, #0xd
	bgt	.Lb77b2
	lsl	r3, r7, #1
	mov	r2, r3
	mov	r1, r10
	ldrh	r3, [r1, r2]
	cmp	r3, #0xff
	bne	.Lb775e
.Lb77b2:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r2, #0x36
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	blt	.Lb77c8
	mov	r3, #1
	mov	r1, #2
	str	r3, [sp, #8]
	str	r1, [sp, #0xc]
	b	.Lb77d0
.Lb77c8:
	mov	r2, #2
	mov	r3, #1
	str	r2, [sp, #8]
	str	r3, [sp, #0xc]
.Lb77d0:
	mov	r0, #1
	mov	r1, r10
	bl	Func_b6c08
	mov	r7, #0
	mov	r9, r0
	cmp	r7, r9
	bge	.Lb784e
	ldr	r1, [sp, #8]
	mov	r3, #3
	and	r3, r1
	lsl	r2, r3, #2
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r8, r10
.Lb77ee:
	mov	r3, r8
	mov	r1, #2
	ldrh	r0, [r3]
	add	r8, r1
	bl	Func_b7dd0
	cmp	r0, #0
	beq	.Lb7848
	ldr	r5, [r0]
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lb7814
	cmp	r2, #2
	beq	.Lb7826
	b	.Lb7848
.Lb7814:
	ldr	r0, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r0, #9]
	ldr	r1, [sp, #4]
	neg	r2, r2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #9]
	b	.Lb7848
.Lb7826:
	mov	r2, r11
	mov	r6, #0xd
	ldr	r1, [r5, #0x50]
	neg	r6, r6
	lsl	r5, r2, #2
	mov	r4, #3
.Lb7832:
	ldmia	r1!, {r0}
	cmp	r0, #0
	beq	.Lb7842
	ldrb	r2, [r0, #9]
	mov	r3, r6
	and	r3, r2
	orr	r3, r5
	strb	r3, [r0, #9]
.Lb7842:
	sub	r4, #1
	cmp	r4, #0
	bge	.Lb7832
.Lb7848:
	add	r7, #1
	cmp	r7, r9
	blt	.Lb77ee
.Lb784e:
	mov	r0, #2
	mov	r1, r10
	bl	Func_b6c08
	mov	r7, #0
	mov	r9, r0
	cmp	r7, r9
	bge	.Lb78cc
	ldr	r1, [sp, #0xc]
	mov	r3, #3
	and	r3, r1
	lsl	r2, r3, #2
	str	r2, [sp]
	mov	r11, r3
	mov	r8, r10
.Lb786c:
	mov	r3, r8
	mov	r1, #2
	ldrh	r0, [r3]
	add	r8, r1
	bl	Func_b7dd0
	cmp	r0, #0
	beq	.Lb78c6
	ldr	r5, [r0]
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lb7892
	cmp	r2, #2
	beq	.Lb78a4
	b	.Lb78c6
.Lb7892:
	ldr	r0, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r0, #9]
	ldr	r1, [sp]
	neg	r2, r2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #9]
	b	.Lb78c6
.Lb78a4:
	mov	r2, r11
	mov	r6, #0xd
	ldr	r1, [r5, #0x50]
	neg	r6, r6
	lsl	r5, r2, #2
	mov	r4, #3
.Lb78b0:
	ldmia	r1!, {r0}
	cmp	r0, #0
	beq	.Lb78c0
	ldrb	r2, [r0, #9]
	mov	r3, r6
	and	r3, r2
	orr	r3, r5
	strb	r3, [r0, #9]
.Lb78c0:
	sub	r4, #1
	cmp	r4, #0
	bge	.Lb78b0
.Lb78c6:
	add	r7, #1
	cmp	r7, r9
	blt	.Lb786c
.Lb78cc:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b7738

.thumb_func_start Func_b78e4
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_77394
	mov	r2, r0
	ldr	r0, =0x131
	add	r3, r2, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r1, #0
	cmp	r3, #1
	bne	.Lb7900
	mov	r1, #1
.Lb7900:
	cmp	r3, #2
	bne	.Lb7906
	orr	r1, r3
.Lb7906:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7916
	mov	r3, #0x20
	orr	r1, r3
.Lb7916:
	ldr	r0, =0x13b
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7938
	mov	r3, #4
	sub	r0, #0x13
	orr	r1, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0x79
	beq	.Lb7932
	cmp	r3, #0x94
	bne	.Lb7938
.Lb7932:
	mov	r3, #5
	neg	r3, r3
	and	r1, r3
.Lb7938:
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7946
	mov	r3, #8
	orr	r1, r3
.Lb7946:
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7956
	mov	r3, #0x40
	orr	r1, r3
.Lb7956:
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7966
	mov	r3, #0x10
	orr	r1, r3
.Lb7966:
	ldr	r3, =0x141
	add	r2, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lb797a
	mov	r2, r3
	add	r2, #6
	mov	r3, #1
	lsl	r3, r2
	orr	r1, r3
.Lb797a:
	strh	r1, [r5, #0x1c]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b78e4

.thumb_func_start Func_b7994
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r3, #0x1f
	ldrsb	r3, [r5, r3]
	mov	r2, #0
	mov	r8, r2
	ldrb	r2, [r5, #0x1f]
	cmp	r3, #0
	blt	.Lb79ae
	sub	r3, r2, #1
	strb	r3, [r5, #0x1f]
.Lb79ae:
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	bne	.Lb79c0
	mov	r2, #0x1c
	ldrsh	r3, [r5, r2]
	ldrh	r1, [r5, #0x1c]
	cmp	r3, #0
	bne	.Lb79da
	b	.Lb79d2
.Lb79c0:
	mov	r2, #0x1c
	ldrsh	r3, [r5, r2]
	ldrb	r2, [r5, #0x1e]
	asr	r3, r2
	mov	r2, #1
	and	r3, r2
	ldrh	r1, [r5, #0x1c]
	cmp	r3, #0
	beq	.Lb79da
.Lb79d2:
	mov	r3, #0x1f
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	bne	.Lb7a9c
.Lb79da:
	lsl	r3, r1, #16
	mov	r6, #1
	asr	r3, #16
	neg	r6, r6
	ldr	r0, [r5]
	cmp	r3, #0
	beq	.Lb7a18
	ldrb	r2, [r5, #0x1e]
	mov	r12, r3
	add	r6, r2, #1
	mov	r1, #1
	b	.Lb79f4
.Lb79f2:
	add	r6, #1
.Lb79f4:
	cmp	r6, #0xd
	ble	.Lb79fa
	mov	r6, #0
.Lb79fa:
	mov	r3, r12
	asr	r3, r6
	and	r3, r1
	cmp	r3, #0
	beq	.Lb79f2
	cmp	r2, r6
	bne	.Lb7a0c
	cmp	r4, #0
	bne	.Lb7a12
.Lb7a0c:
	mov	r3, #1
	strb	r6, [r5, #0x1e]
	mov	r8, r3
.Lb7a12:
	mov	r3, #0x50
	strb	r3, [r5, #0x1f]
	b	.Lb7a1c
.Lb7a18:
	mov	r2, #1
	mov	r8, r2
.Lb7a1c:
	mov	r1, #0
	bl	Func_b7f70
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb7a9c
	cmp	r6, #0
	blt	.Lb7a42
	mov	r3, r7
	add	r3, #0x20
	ldrb	r3, [r3]
	cmp	r3, #0x20
	bne	.Lb7a3e
	mov	r3, #0xaa
	lsl	r3, #1
	add	r6, r3
	b	.Lb7a42
.Lb7a3e:
	ldr	r2, =0x163
	add	r6, r2
.Lb7a42:
	ldr	r1, [r5, #0x20]
	cmp	r1, #0
	beq	.Lb7a58
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb7a58
	mov	r0, r7
	bl	_Func_b93c
	mov	r3, #0
	str	r3, [r5, #0x20]
.Lb7a58:
	cmp	r6, #0
	blt	.Lb7a88
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb7a88
	mov	r0, r7
	mov	r1, r6
	bl	_Func_b8ac
	mov	r3, #1
	neg	r3, r3
	str	r0, [r5, #0x20]
	cmp	r0, r3
	bne	.Lb7a78
	mov	r3, #0
	str	r3, [r5, #0x20]
.Lb7a78:
	ldr	r0, [r5, #0x20]
	cmp	r0, #0
	beq	.Lb7a88
	mov	r3, #3
	strb	r3, [r0, #6]
	mov	r1, #0
	bl	_Func_b9f4
.Lb7a88:
	mov	r2, r7
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
	cmp	r6, #0
	blt	.Lb7a98
	strh	r6, [r5, #8]
	b	.Lb7a9c
.Lb7a98:
	mov	r3, #0
	strh	r3, [r5, #8]
.Lb7a9c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b7994

.thumb_func_start Func_b7aac
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	mov	r2, r0
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	mov	r5, #1
	cmp	r3, #0
	beq	.Lb7af6
	mov	r1, #0x9e
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7ae0
	sub	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7ae0
	add	r1, #0xa
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7b0a
.Lb7ae0:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r5, r2, #31
	lsl	r5, #2
	b	.Lb7b0a
.Lb7af6:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	eor	r3, r5
	neg	r2, r3
	orr	r2, r3
	lsr	r5, r2, #31
	mov	r3, #5
	sub	r5, r3, r5
.Lb7b0a:
	mov	r0, r6
	bl	Func_b7dd0
	mov	r1, r5
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r0, r6
	bl	Func_b7dd0
	mov	r1, #3
	and	r1, r6
	ldr	r0, [r0]
	add	r1, #0xe
	bl	_Func_c344
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b7aac

.thumb_func_start Func_b7b30
	push	{r5, r6, lr}
	bl	Func_b7dd0
	cmp	r0, #0
	beq	.Lb7b64
	ldr	r5, [r0]
	cmp	r5, #0
	beq	.Lb7b64
	mov	r3, #0
	mov	r6, #0
	str	r3, [r0, #0x20]
	str	r3, [r0, #0x24]
	b	.Lb7b50
.Lb7b4a:
	bl	_Func_bdd4
	add	r6, #1
.Lb7b50:
	mov	r0, r5
	mov	r1, r6
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lb7b4a
	mov	r3, r5
	add	r3, #0x54
	strb	r0, [r3]
	str	r0, [r5, #0x50]
.Lb7b64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b7b30

.thumb_func_start Func_b7b6c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x14]
	str	r0, [sp, #0x18]
	mov	r1, #0
	mov	r11, r1
.Lb7b84:
	ldr	r0, [sp, #0x18]
	mov	r1, r11
	bl	Func_b770c
	cmp	r0, #0
	bne	.Lb7ba0
	mov	r0, r11
	mov	r2, r11
	add	r0, #0x78
	cmp	r2, #7
	bgt	.Lb7b9c
	mov	r0, r11
.Lb7b9c:
	bl	Func_b7b30
.Lb7ba0:
	mov	r3, #1
	add	r11, r3
	mov	r1, r11
	cmp	r1, #0xd
	ble	.Lb7b84
	ldr	r3, =iwram_1a10
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7bb8
	mov	r0, #1
	bl	Func_30f8
.Lb7bb8:
	ldr	r3, [sp, #0x18]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0
	mov	r11, r2
	str	r3, [sp, #0x10]
	cmp	r3, #0xff
	bne	.Lb7bca
	b	.Lb7d62
.Lb7bca:
	ldr	r1, [sp, #0x18]
	str	r1, [sp, #8]
.Lb7bce:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0xfe
	bne	.Lb7bd6
	b	.Lb7d46
.Lb7bd6:
	mov	r0, r2
	bl	Func_b7dd0
	mov	r7, r0
	cmp	r7, #0
	bne	.Lb7be4
	b	.Lb7d46
.Lb7be4:
	ldr	r0, [sp, #0x10]
	mov	r1, r7
	bl	Func_b78e4
	ldr	r3, [r7]
	mov	r8, r3
	cmp	r3, #0
	bne	.Lb7bf6
	b	.Lb7d46
.Lb7bf6:
	mov	r1, r8
	add	r1, #0x54
	ldrb	r2, [r1]
	str	r2, [sp, #0xc]
	cmp	r2, #0
	beq	.Lb7c04
	b	.Lb7d46
.Lb7c04:
	ldrh	r2, [r7, #4]
	ldr	r3, .Lb7c38	@ 0xfff
	and	r3, r2
	mov	r2, #0xee
	lsl	r2, #1
	cmp	r3, r2
	beq	.Lb7c18
	add	r2, #7
	cmp	r3, r2
	bne	.Lb7cb4
.Lb7c18:
	ldr	r3, =iwram_1e68
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	lsl	r3, #2
	add	r2, r3
	mov	r9, r2
	mov	r3, #8
	add	r3, r9
	mov	r10, r3
	mov	r3, #2
	strb	r3, [r1]
	mov	r2, r8
	ldrh	r5, [r7, #4]
	mov	r1, r10
	b	.Lb7c44

	.align	2, 0
.Lb7c38:
	.word	0xfff
	.pool

.Lb7c44:
	str	r1, [r2, #0x50]
	ldr	r3, =Func_8d4
	mov	r1, #0x10
	mov	r0, r10
	bl	_call_via_r3
	mov	r0, r5
	bl	_Func_bc70
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb7c82
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_888
	.call_via r3
	str	r0, [r6, #0x18]
	mov	r0, r5
	bl	_Func_185008
	ldrb	r3, [r0, #9]
	mov	r1, r8
	lsr	r3, #1
	mov	r2, r10
	strh	r3, [r1, #0x20]
	mov	r3, #0xc
	add	r3, r9
	str	r6, [r2]
	mov	r10, r3
.Lb7c82:
	add	r1, sp, #0xc
	mov	r3, r6
	ldrb	r1, [r1]
	ldr	r2, =0x2001
	add	r3, #0x26
	strb	r1, [r3]
	add	r0, r5, r2
	bl	_Func_bc70
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb7caa
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_888
	.call_via r3
	mov	r1, r10
	str	r0, [r6, #0x18]
	str	r6, [r1]
.Lb7caa:
	add	r2, sp, #0xc
	mov	r3, r6
	ldrb	r2, [r2]
	add	r3, #0x26
	b	.Lb7d3e
.Lb7cb4:
	ldrh	r0, [r7, #4]
	str	r1, [sp, #4]
	bl	_Func_bc70
	mov	r6, r0
	ldr	r1, [sp, #4]
	cmp	r6, #0
	beq	.Lb7d40
	mov	r4, #1
	strb	r4, [r1]
	mov	r3, r8
	str	r6, [r3, #0x50]
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_888
	.call_via r3
	str	r0, [r6, #0x18]
	ldr	r5, [r6, #0x28]
	ldr	r3, [r7, #0x14]
	strb	r4, [r5, #6]
	strb	r3, [r5, #5]
	ldrh	r5, [r7, #6]
	cmp	r5, #0
	beq	.Lb7cf8
	mov	r1, r5
	mov	r0, r6
	str	r4, [sp]
	bl	_Func_b8ac
	ldr	r4, [sp]
	mov	r5, r0
	strb	r4, [r5, #6]
.Lb7cf8:
	ldrh	r5, [r7, #8]
	cmp	r5, #0
	beq	.Lb7d14
	mov	r1, r5
	mov	r0, r6
	bl	_Func_b8ac
	mov	r5, r0
	str	r5, [r7, #0x20]
	mov	r1, #0
	bl	_Func_b9f4
	mov	r3, #3
	strb	r3, [r5, #6]
.Lb7d14:
	ldrh	r5, [r7, #0xa]
	cmp	r5, #0
	beq	.Lb7d40
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	cmp	r3, #0x20
	bne	.Lb7d26
	ldr	r5, =0x1ff
.Lb7d26:
	mov	r1, r5
	mov	r0, r6
	bl	_Func_b8ac
	add	r1, sp, #0xc
	ldrb	r1, [r1]
	mov	r3, r6
	mov	r5, r0
	add	r3, #0x26
	mov	r2, r1
	str	r5, [r7, #0x24]
	strb	r1, [r5, #6]
.Lb7d3e:
	strb	r2, [r3]
.Lb7d40:
	ldr	r0, [sp, #0x10]
	bl	Func_b7aac
.Lb7d46:
	ldr	r3, [sp, #8]
	mov	r1, #1
	add	r11, r1
	add	r3, #2
	mov	r2, r11
	str	r3, [sp, #8]
	cmp	r2, #0xd
	bgt	.Lb7d62
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	str	r3, [sp, #0x10]
	cmp	r3, #0xff
	beq	.Lb7d62
	b	.Lb7bce
.Lb7d62:
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Lb7dae
	ldr	r2, [sp, #0x18]
	mov	r1, #0
	ldrsh	r5, [r2, r1]
	mov	r3, #0
	mov	r11, r3
	cmp	r5, #0xff
	beq	.Lb7dae
.Lb7d76:
	ldr	r1, [sp, #0x18]
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xfe
	beq	.Lb7d9a
	mov	r0, r5
	bl	Func_b7dd0
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb7d9a
	ldr	r7, [r7]
	mov	r8, r7
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb7d9a
	mov	r0, r5
	bl	Func_b7aac
.Lb7d9a:
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0xd
	bgt	.Lb7dae
	ldr	r1, [sp, #0x18]
	lsl	r3, r2, #1
	ldrsh	r5, [r3, r1]
	cmp	r5, #0xff
	bne	.Lb7d76
.Lb7dae:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b7b6c

.thumb_func_start Func_b7dd0
	push	{lr}
	ldr	r3, =iwram_1e74
	ldr	r2, [r3]
	mov	r1, r2
	add	r1, #0x74
	cmp	r0, #7
	ble	.Lb7de0
	sub	r0, #0x78
.Lb7de0:
	mov	r3, #0xb7
	lsl	r3, #2
	add	r0, r3
	ldrb	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lb7df0
	mov	r0, #0
	b	.Lb7dfa
.Lb7df0:
	ldrb	r2, [r2, r0]
	mov	r3, #0x2c
	mov	r0, r2
	mul	r0, r3
	add	r0, r1, r0
.Lb7dfa:
	pop	{r1}
	bx	r1
.func_end Func_b7dd0

.thumb_func_start Func_b7e04
	push	{lr}
	cmp	r0, #0
	beq	.Lb7e1e
	mov	r1, #0
	add	r0, #0x28
	mov	r2, #3
.Lb7e10:
	ldmia	r0!, {r3}
	cmp	r3, #0
	beq	.Lb7e18
	str	r1, [r3, #0x10]
.Lb7e18:
	sub	r2, #1
	cmp	r2, #0
	bge	.Lb7e10
.Lb7e1e:
	pop	{r0}
	bx	r0
.func_end Func_b7e04

.thumb_func_start Func_b7e24
	push	{r5, r6, lr}
	cmp	r0, #0
	beq	.Lb7e5a
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lb7e3e
	cmp	r2, #2
	beq	.Lb7e46
	b	.Lb7e5a
.Lb7e3e:
	ldr	r0, [r0, #0x50]
	bl	Func_b7e04
	b	.Lb7e5a
.Lb7e46:
	ldr	r5, [r0, #0x50]
	mov	r6, #3
.Lb7e4a:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lb7e54
	bl	Func_b7e04
.Lb7e54:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lb7e4a
.Lb7e5a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b7e24

.thumb_func_start Func_b7e60
	push	{r5, lr}
	mov	r5, r0
	bl	Func_b6e30
	mov	r0, r5
	bl	Func_b7dd0
	mov	r3, #1
	strh	r3, [r0, #0x28]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b7e60

.thumb_func_start Func_b7e7c
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0
.Lb7e82:
	mov	r0, r6
	add	r0, #0x78
	cmp	r6, #7
	bgt	.Lb7e8c
	mov	r0, r6
.Lb7e8c:
	bl	Func_b7dd0
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb7ea8
	mov	r2, #0x28
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lb7ea8
	ldr	r0, [r5]
	bl	_Func_c0f4
	str	r7, [r5]
	strh	r7, [r5, #0x28]
.Lb7ea8:
	add	r6, #1
	cmp	r6, #0xd
	ble	.Lb7e82
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b7e7c

.thumb_func_start Func_b7eb4
	ldr	r3, =iwram_1e74
	ldr	r4, [r3]
	mov	r3, #0x2c
	mov	r2, r0
	mul	r2, r3
	mov	r3, r2
	add	r3, #0x80
	ldr	r3, [r4, r3]
	str	r3, [r1]
	mov	r3, #0
	str	r3, [r1, #4]
	add	r2, #0x84
	ldr	r3, [r4, r2]
	mov	r0, #0
	str	r3, [r1, #8]
	bx	lr
.func_end Func_b7eb4

.thumb_func_start Func_b7ed8
	push	{r5, lr}
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	bl	Func_49ac
	ldr	r0, =0x16b
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb7f00
	ldr	r0, =.Lc2a7c
	ldr	r3, =Func_a30
	bl	_call_via_r3
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51e8
	b	.Lb7f0a
.Lb7f00:
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
.Lb7f0a:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b7ed8

.thumb_func_start Func_b7f20
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0xc
	mov	r8, r1
	bl	Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_b7f70
	mov	r6, r0
	bl	Func_b7ed8
	ldr	r3, [r5, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r5, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, r8
	str	r3, [r0, #8]
	bl	Func_5268
	ldr	r3, =Func_888
	ldr	r1, [r6, #0x18]
	.call_via r3
	add	sp, #0xc
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b7f20

.thumb_func_start Func_b7f70
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r4, #0xf
	and	r4, r3
	cmp	r4, #1
	bne	.Lb7f88
	cmp	r1, #0
	bne	.Lb7f94
	ldr	r0, [r0, #0x50]
	b	.Lb7f96
.Lb7f88:
	cmp	r4, #2
	bne	.Lb7f94
	ldr	r3, [r0, #0x50]
	lsl	r2, r1, #2
	ldr	r0, [r2, r3]
	b	.Lb7f96
.Lb7f94:
	mov	r0, #0
.Lb7f96:
	pop	{r1}
	bx	r1
.func_end Func_b7f70

.thumb_func_start Func_b7f9c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r5, #0x36]
	mov	r3, #0xfe
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	mov	r6, #0
	lsl	r3, #17
	str	r3, [r5, #0x20]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	sub	sp, #0xc
	bl	Func_49ac
	mov	r0, r5
	add	r0, #0xc
	bl	Func_4cb4
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	Func_4c1c
	mov	r3, #0x34
	ldrsh	r0, [r5, r3]
	bl	Func_4bd4
	mov	r0, sp
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b7f9c

.thumb_func_start Func_b8000
	push	{r5, r6, lr}
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	ldr	r3, =0xab85
	str	r3, [r5, #0x48]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5a
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x44]
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0x58
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	bl	_Func_c4ac
	mov	r0, r5
	ldr	r1, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Func_d14c
	ldr	r0, [r6, #0x10]
	cmp	r0, #0
	bge	.Lb8048
	add	r0, #7
.Lb8048:
	ldr	r1, [r6, #0xc]
	asr	r0, #3
	bl	Func_44d0
	mov	r3, #0x80
	lsl	r3, #8
	add	r0, r3
	strh	r0, [r5, #6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b8000

.thumb_func_start Func_b8064
	push	{r5, r6, lr}
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0x7851
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_c4ac
	ldr	r3, [r6, #0xc]
	lsl	r1, r3, #1
	add	r1, r3
	mov	r0, r5
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Func_d14c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b8064

.thumb_func_start Func_b80b8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r5, [r0]
	ldr	r6, [r1]
	mov	r10, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r5, #8]
	sub	r3, r2
	mov	r0, r10
	mul	r0, r3
	mov	r1, #0x64
	mov	r8, r2
	bl	Func_af0_from_thumb
	ldr	r3, [r6, #0x10]
	ldr	r6, [r5, #0x10]
	sub	r3, r6
	add	r8, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb812c	@ 0
	strh	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	mov	r2, r5
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	add	r6, r0
	add	r2, #0x5a
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Func_d14c
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	b	.Lb8138

	.align	2, 0
.Lb812c:
	.word	0
	.pool

.Lb8138:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b80b8

.thumb_func_start Func_b8144
	push	{lr}
	mov	r2, r0
	ldr	r0, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x30]
	ldr	r3, =0xab85
	mov	r1, r0
	str	r3, [r0, #0x48]
	add	r1, #0x5a
	mov	r3, #0
	str	r3, [r0, #0x44]
	strb	r3, [r1]
	ldr	r1, [r2, #0xc]
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	_Func_d14c
	pop	{r0}
	bx	r0
.func_end Func_b8144

.thumb_func_start Func_b8178
	push	{r5, r6, lr}
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_c4ac
	ldr	r3, [r6, #0xc]
	lsl	r1, r3, #1
	add	r1, r3
	lsr	r3, r1, #31
	add	r1, r3
	asr	r1, #1
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_d14c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b8178

.thumb_func_start Func_b81c8
	push	{r5, r6, lr}
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_c4ac
	ldr	r3, =Func_888
	ldr	r0, [r6, #0xc]
	ldr	r1, =0x14ccc
	.call_via r3
	mov	r1, r0
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_d14c
	mov	r0, r5
	mov	r1, #5
	bl	_Func_c300
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b81c8

	.section .rodata

.Lc2a62:
	.incrom 0xc2a62, 0xc2a7c
.Lc2a7c:
	.incrom 0xc2a7c, 0xc2ab8
