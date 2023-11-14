	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_ca57c
	push	{lr}
	mov	r1, #6
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca57c

.thumb_func_start Func_ca588
	push	{lr}
	mov	r1, #3
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca588

.thumb_func_start Func_ca594
	push	{lr}
	mov	r1, #1
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca594

.thumb_func_start Func_ca5a0
	push	{lr}
	mov	r1, #0xa
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5a0

.thumb_func_start Func_ca5ac
	push	{lr}
	mov	r1, #5
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5ac

.thumb_func_start Func_ca5b8
	push	{lr}
	mov	r1, #9
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5b8

.thumb_func_start Func_ca5c4
	push	{lr}
	mov	r1, #4
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5c4

.thumb_func_start Func_ca5d0
	push	{lr}
	mov	r1, #0
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5d0

.thumb_func_start Func_ca5dc
	push	{lr}
	mov	r1, #8
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5dc

.thumb_func_start Func_ca5e8
	push	{lr}
	mov	r1, #7
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5e8

.thumb_func_start Func_ca5f4
	push	{lr}
	mov	r1, #2
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca5f4

.thumb_func_start Func_ca600
	push	{lr}
	mov	r1, #0xb
	bl	Func_ca60c
	pop	{r0}
	bx	r0
.func_end Func_ca600

.thumb_func_start Func_ca60c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x9c
	ldr	r2, =iwram_1eec
	str	r1, [sp, #0x60]
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	str	r3, [sp, #0x5c]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x50]
	sub	r2, #0x6c
	ldr	r3, =0x7828
	mov	r11, r1
	ldr	r2, [r2]
	add	r3, r11
	str	r2, [sp, #0x4c]
	str	r0, [r3]
	ldr	r5, [sp, #0x60]
	cmp	r5, #8
	bne	.Lca650
	mov	r0, #0
	bl	Func_cd594
	b	.Lca656

	.pool_aligned

.Lca650:
	mov	r0, #1
	bl	Func_cd594
.Lca656:
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lca694	@ 0x1010
	strh	r3, [r2]
	ldr	r1, [sp, #0x50]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0xce
	mov	r1, r11
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, [sp, #0x60]
	ldr	r1, [sp, #0x60]
	lsl	r0, #3
	ldr	r2, =.Ledf04
	str	r0, [sp, #0x48]
	sub	r3, r0, r1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lca6b4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =0xc5
	add	r1, r11
	mov	r2, #0
	b	.Lca6ac

	.align	2, 0
.Lca694:
	.word	0x1010
	.pool

.Lca6ac:
	mov	r3, #0
	bl	Func_e0524
	b	.Lca6c4
.Lca6b4:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =0xc6
	add	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
.Lca6c4:
	ldr	r5, [sp, #0x48]
	ldr	r0, [sp, #0x60]
	ldr	r2, =.Ledf04
	sub	r3, r5, r0
	add	r3, #3
	ldrb	r3, [r2, r3]
	cmp	r3, #5
	bhi	.Lca708
	ldr	r2, =.Lca6dc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lca6dc:
	.word	.Lca6f4
	.word	.Lca6f8
	.word	.Lca6fc
	.word	.Lca700
	.word	.Lca704
	.word	.Lca708
.Lca6f4:
	ldr	r0, =0xcc
	b	.Lca70a
.Lca6f8:
	ldr	r0, =0xa0
	b	.Lca70a
.Lca6fc:
	ldr	r0, =0xa1
	b	.Lca70a
.Lca700:
	ldr	r0, =0xb4
	b	.Lca70a
.Lca704:
	ldr	r0, =0x8d
	b	.Lca70a
.Lca708:
	ldr	r0, =0xc4
.Lca70a:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r1, #0xc8
	lsl	r1, #6
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =0x9e
	bl	Func_e0524
	mov	r2, sp
	mov	r1, #0
	add	r2, #0x90
	mov	r3, #0x24
	str	r1, [sp, #0x54]
	str	r2, [sp, #0x44]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
.Lca73c:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r5, [sp, #0xc]
	ldr	r3, [r3]
	ldrsh	r0, [r3, r5]
	bl	_Func_b7dd0
	mov	r5, #0xe1
	ldr	r0, [r0]
	mov	r2, #0
	lsl	r5, #7
	mov	r10, r0
	mov	r8, r2
	add	r5, r11
.Lca758:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r1, [sp, #0xc]
	ldr	r3, [r3]
	ldrsh	r0, [r3, r1]
	ldr	r1, [sp, #0x44]
	bl	Func_e3980
	ldr	r0, [sp, #0x44]
	ldr	r3, [r0]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #15
	mov	r1, #0
	str	r3, [r5, #4]
	str	r1, [r5, #8]
	bl	Func_4458
	mov	r2, #0xff
	and	r0, r2
	sub	r0, #0x80
	lsl	r0, #9
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0xff
	and	r0, r3
	sub	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	mov	r3, #1
	add	r8, r1
	str	r0, [r5, #0x10]
	neg	r3, r3
	mov	r0, #0
	mov	r2, r8
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Lca758
	mov	r8, r0
	ldr	r3, [sp, #0x10]
	ldr	r0, =ewram_10000
	mov	r6, #0xff
	add	r5, r3, r0
.Lca7bc:
	mov	r1, r10
	ldr	r3, [r1, #8]
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #4]
	ldr	r3, [r1, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #1
	and	r0, r6
	mov	r2, #1
	neg	r3, r3
	sub	r0, #0x80
	add	r8, r2
	str	r3, [r5, #0x18]
	lsl	r0, #11
	mov	r3, r8
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r3, #0x80
	bne	.Lca7bc
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x60]
	sub	r0, r1
	str	r0, [sp, #0x40]
	ldr	r2, =0x1ff
	add	r0, #2
	mov	r5, #0
	str	r0, [sp, #0x3c]
	ldr	r6, =ewram_13800
	mov	r8, r5
	mov	r7, #0xff
	mov	r9, r2
.Lca81a:
	mov	r5, r10
	ldr	r3, [r5, #8]
	str	r3, [r6]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	ldr	r0, =.Ledf04
	ldr	r1, [sp, #0x40]
	ldrb	r3, [r0, r1]
	cmp	r3, #1
	bne	.Lca85a
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r6, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r6, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r6, #0x14]
	b	.Lca8be
.Lca85a:
	ldr	r3, =.Ledf04
	ldr	r5, [sp, #0x3c]
	ldrb	r2, [r3, r5]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lca890
	bl	Func_4458
	mov	r1, r9
	and	r0, r1
	lsl	r0, #11
	str	r0, [r6, #0xc]
	bl	Func_4458
	ldr	r5, =0xffffff00
	mov	r2, r9
	and	r0, r2
	add	r0, r5
	lsl	r0, #11
	str	r0, [r6, #0x10]
	bl	Func_4458
	mov	r3, r9
	and	r0, r3
	add	r0, r5
	b	.Lca8ae
.Lca890:
	bl	Func_4458
	and	r0, r7
	lsl	r0, #11
	str	r0, [r6, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r6, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
.Lca8ae:
	lsl	r0, #11
	str	r0, [r6, #0x14]
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.Lca8be
	ldr	r3, [r6, #0xc]
	neg	r3, r3
	str	r3, [r6, #0xc]
.Lca8be:
	mov	r3, #1
	mov	r5, #1
	mov	r0, #0x80
	neg	r3, r3
	add	r8, r5
	lsl	r0, #2
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r8, r0
	bne	.Lca81a
	ldr	r1, [sp, #0x10]
	ldr	r3, [sp, #0xc]
	ldr	r5, [sp, #0x54]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r1, r2
	add	r3, #2
	add	r5, #1
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
	str	r5, [sp, #0x54]
	cmp	r5, #1
	beq	.Lca8ee
	b	.Lca73c
.Lca8ee:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x84
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x38]
	bl	Func_e396c
	ldr	r3, [r5]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	add	r5, sp, #0x78
	mov	r1, r5
	bl	Func_e3980
	ldr	r0, [sp, #0x38]
	ldr	r3, [r5, #4]
	ldr	r1, [r0, #4]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #4]
	ldr	r3, [sp, #0x60]
	ldr	r2, [sp, #0x48]
	mov	r1, #0
	ldr	r7, =.Ledf04
	str	r1, [sp, #0x58]
	sub	r1, r2, r3
	add	r3, r1, #6
	mov	r5, r7
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	bne	.Lca95a
	bl	.Lcb17a
.Lca95a:
	ldr	r0, [sp, #0x4c]
	ldr	r5, =0x7828
	add	r0, #0xc
	str	r0, [sp, #0x14]
	mov	r3, sp
	mov	r0, r1
	add	r3, #0x64
	add	r5, r11
	str	r1, [sp, #0x2c]
	add	r0, #4
	add	r1, #2
	str	r3, [sp, #0x18]
	str	r5, [sp, #0x30]
	str	r0, [sp, #0x28]
	str	r1, [sp, #0x24]
.Lca978:
	ldr	r3, [sp, #0x60]
	ldr	r5, =.Ledf04
	sub	r2, r3
	add	r3, r2, #1
	ldrb	r1, [r5, r3]
	add	r3, r2, #4
	ldrb	r4, [r5, r3]
	mul	r1, r4
	mov	r3, #0
	str	r3, [sp, #0x34]
	ldrb	r3, [r5, r2]
	lsl	r0, r1, #2
	cmp	r3, #0
	beq	.Lca996
	b	.Lcabe4
.Lca996:
	lsl	r3, r1, #1
	add	r3, r1
	ldr	r5, [sp, #0x58]
	lsl	r3, #1
	cmp	r5, r3
	blt	.Lca9a4
	b	.Lcabd4
.Lca9a4:
	mov	r1, r4
	mov	r0, r5
	bl	Func_af0_from_thumb
	mov	r1, #6
	bl	Func_b1c_from_thumb
	mov	r6, r0
	ldr	r0, [sp, #0x30]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lcaa64
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r2, =.Ledf64
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x84]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, =.Ledf70
	ldrb	r3, [r3, r6]
	asr	r2, #1
	lsr	r3, #1
	sub	r2, r3
	ldr	r3, =.Ledf58
	ldrb	r5, [r3, r6]
	ldr	r3, =.Ledf5e
	ldrb	r4, [r3, r6]
	sub	r2, r5
	str	r5, [sp]
	ldr	r3, [sp, #0x88]
	str	r4, [sp, #4]
	ldr	r5, =iwram_1f08
	lsr	r0, r4, #1
	sub	r3, r0
	add	r1, r11
	add	r2, #8
	ldr	r4, [r5]
	ldr	r0, [sp, #0x5c]
	bl	_call_via_r4
	b	.Lcaaaa

	.pool_aligned

.Lcaa64:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r2, =.Ledf64
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x84]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, =.Ledf70
	ldrb	r3, [r3, r6]
	asr	r2, #1
	lsr	r3, #1
	add	r2, r3
	ldr	r3, =.Ledf5e
	ldrb	r4, [r3, r6]
	ldr	r3, [sp, #0x88]
	lsr	r0, r4, #1
	sub	r3, r0
	ldr	r0, =.Ledf58
	ldrb	r0, [r0, r6]
	str	r4, [sp, #4]
	str	r0, [sp]
	ldr	r0, =iwram_1f08
	add	r1, r11
	ldr	r4, [r0]
	sub	r2, #8
	ldr	r0, [sp, #0x5c]
	bl	_call_via_r4
.Lcaaaa:
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r7, =.Ledf04
	ldr	r1, [sp, #0x28]
	ldrb	r5, [r7, r1]
	lsl	r1, r5, #1
	add	r1, r5
	lsl	r1, #1
	ldr	r0, [sp, #0x58]
	bl	Func_b1c_from_thumb
	lsl	r5, #2
	cmp	r0, r5
	beq	.Lcaaca
	b	.Lcabd4
.Lcaaca:
	ldr	r2, [sp, #0x60]
	cmp	r2, #8
	bne	.Lcaad8
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Lcaae4
.Lcaad8:
	mov	r0, #0x85
	bl	_Func_f9080
	mov	r0, #0x85
	bl	_Func_bd7dc
.Lcaae4:
	ldr	r3, =.Ledf04
	ldr	r5, [sp, #0x24]
	ldrb	r2, [r3, r5]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lcab40
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r11
	str	r3, [r2]
	ldr	r0, [sp, #0x30]
	ldr	r3, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0xc
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
	ldr	r2, [sp, #0x30]
	ldr	r3, [r2]
	mov	r1, #4
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b8228
	ldr	r5, =ewram_13818
	mov	r0, #0
	mov	r8, r0
	mov	r6, #0xf
.Lcab26:
	bl	Func_4458
	mov	r1, #1
	and	r0, r6
	mov	r2, #0x80
	add	r0, #0xf
	add	r8, r1
	lsl	r2, #2
	str	r0, [r5]
	add	r5, #0x1c
	cmp	r8, r2
	bne	.Lcab26
	b	.Lcab9a
.Lcab40:
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, #0
	bl	Func_d6888
	ldr	r6, [sp, #0x2c]
	mov	r2, #0
	ldr	r7, =.Ledf04
	mov	r8, r2
	add	r6, #4
.Lcab68:
	ldrb	r3, [r7, r6]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #1
	ldr	r0, [sp, #0x58]
	bl	Func_af0_from_thumb
	lsl	r0, #5
	add	r0, r8
	lsl	r5, r0, #3
	ldr	r3, =ewram_13800
	sub	r5, r0
	lsl	r5, #2
	add	r5, r3
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #7
	str	r3, [r5, #0x18]
	mov	r5, #1
	add	r8, r5
	mov	r0, r8
	cmp	r0, #0x20
	bne	.Lcab68
.Lcab9a:
	ldr	r3, =.Ledf04
	ldr	r5, [sp, #0x28]
	ldrb	r2, [r3, r5]
	lsl	r3, r2, #1
	mov	r1, #0
	add	r3, r2
	mov	r8, r1
	lsl	r5, r3, #1
.Lcabaa:
	ldr	r0, [sp, #0x58]
	mov	r1, r5
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r8
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #2
	mov	r0, #0xe1
	add	r3, r11
	lsl	r0, #7
	mov	r1, #1
	mov	r2, #0
	add	r3, r0
	add	r8, r1
	str	r2, [r3, #0x18]
	mov	r2, r8
	cmp	r2, #8
	bne	.Lcabaa
	ldr	r7, =.Ledf04
.Lcabd4:
	ldr	r3, [sp, #0x58]
	sub	r3, #0xc
	cmp	r3, #0x13
	bls	.Lcabde
	b	.Lcadd8
.Lcabde:
	mov	r3, #1
	str	r3, [sp, #0x34]
	b	.Lcadd8
.Lcabe4:
	ldr	r5, [sp, #0x58]
	add	r3, r0, #4
	cmp	r5, r3
	blt	.Lcabee
	b	.Lcadd8
.Lcabee:
	cmp	r5, r0
	bge	.Lcac0c
	mov	r0, r5
	mov	r1, r4
	bl	Func_af0_from_thumb
	cmp	r0, #4
	ble	.Lcac04
.Lcabfe:
	sub	r0, #4
	cmp	r0, #4
	bgt	.Lcabfe
.Lcac04:
	ldr	r3, =.Ledf76
	ldrb	r3, [r3, r0]
	str	r3, [sp, #0x20]
	b	.Lcac10
.Lcac0c:
	mov	r0, #3
	str	r0, [sp, #0x20]
.Lcac10:
	ldr	r2, [sp, #0x60]
	ldr	r1, [sp, #0x48]
	sub	r1, r2
	mov	r9, r1
	ldr	r5, =.Ledf04
	mov	r3, #5
	add	r3, r9
	mov	r10, r3
	ldrb	r3, [r5, r3]
	mov	r1, #7
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r0, [sp, #0x20]
	lsl	r5, r0, #3
	ldr	r2, [sp, #0x84]
	sub	r5, r0
	lsl	r5, #2
	sub	r5, r0
	lsr	r3, r2, #31
	mov	r6, #0x30
	add	r2, r3
	lsl	r5, #5
	mov	r3, #0x12
	mov	r1, #0xc8
	str	r3, [sp]
	str	r6, [sp, #4]
	ldr	r0, =iwram_1f08
	lsl	r1, #4
	add	r5, r11
	add	r5, r1
	asr	r2, #1
	ldr	r4, [r0]
	mov	r1, r5
	ldr	r0, [sp, #0x5c]
	sub	r2, #0x12
	mov	r8, r3
	mov	r3, #0x38
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r1, =.Ledf04
	mov	r2, r10
	ldrb	r3, [r1, r2]
	mov	r0, #0x2e
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	ldr	r2, [sp, #0x84]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r3, r8
	str	r3, [sp]
	str	r6, [sp, #4]
	ldr	r0, =iwram_1f08
	mov	r1, r5
	ldr	r4, [r0]
	mov	r3, #0x38
	asr	r2, #1
	ldr	r0, [sp, #0x5c]
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r6, r9
	ldr	r1, =.Ledf04
	add	r6, #4
	ldrb	r5, [r1, r6]
	ldr	r0, [sp, #0x58]
	lsl	r1, r5, #2
	bl	Func_b1c_from_thumb
	lsl	r3, r5, #1
	add	r3, r5
	cmp	r0, r3
	beq	.Lcacbc
	b	.Lcadcc
.Lcacbc:
	ldr	r2, [sp, #0x30]
	ldr	r3, [r2]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r3, #0
	mov	r1, #7
	bl	Func_d6888
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
	mov	r3, r9
	add	r3, #1
	ldrb	r3, [r7, r3]
	ldrb	r2, [r7, r6]
	lsl	r3, #2
	sub	r3, #4
	mul	r3, r2
	ldr	r0, [sp, #0x58]
	cmp	r0, r3
	ble	.Lcad20
	mov	r0, #0x85
	bl	_Func_bd7dc
	b	.Lcad26

	.pool_aligned

.Lcad20:
	mov	r0, #0x85
	bl	_Func_f9080
.Lcad26:
	ldr	r6, [sp, #0x2c]
	mov	r1, #0
	ldr	r7, =.Ledf04
	mov	r8, r1
	add	r6, #4
.Lcad30:
	ldrb	r3, [r7, r6]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #1
	ldr	r0, [sp, #0x58]
	bl	Func_af0_from_thumb
	lsl	r0, #6
	add	r0, r8
	lsl	r5, r0, #3
	sub	r5, r0
	ldr	r2, =ewram_13800
	lsl	r5, #2
	add	r5, r2
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #7
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	cmp	r5, #0x40
	bne	.Lcad30
	ldr	r3, =.Ledf04
	ldr	r1, [sp, #0x28]
	ldrb	r2, [r3, r1]
	lsl	r3, r2, #1
	mov	r0, #0
	add	r3, r2
	mov	r8, r0
	lsl	r5, r3, #1
.Lcad72:
	ldr	r0, [sp, #0x58]
	mov	r1, r5
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r8
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r3, r11
	add	r3, r2
	mov	r2, #0
	str	r2, [r3, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	cmp	r0, #8
	bne	.Lcad72
	ldr	r3, =.Ledf04
	ldr	r1, [sp, #0x28]
	mov	r8, r2
	ldrb	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r5, r3, #1
.Lcada8:
	ldr	r0, [sp, #0x58]
	mov	r1, r5
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r8
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r2, =ewram_10000
	lsl	r3, #2
	add	r3, r2
	mov	r2, #0
	str	r2, [r3, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0x10
	bne	.Lcada8
.Lcadcc:
	ldr	r1, [sp, #0x20]
	cmp	r1, #3
	bne	.Lcadd6
	mov	r2, #1
	str	r2, [sp, #0x34]
.Lcadd6:
	ldr	r7, =.Ledf04
.Lcadd8:
	ldr	r3, [sp, #0x24]
	ldrb	r2, [r7, r3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lcae9c
	ldr	r5, [sp, #0x34]
	cmp	r5, #0
	beq	.Lcae9c
	ldr	r7, [sp, #0x58]
	ldr	r2, [sp, #0x38]
	mov	r1, #3
	mov	r0, #0
	mov	r8, r0
	mov	r9, r1
	and	r7, r1
	mov	r10, r2
.Lcadfa:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r2, r0
	and	r2, r3
	str	r2, [sp, #8]
	bl	Func_4458
	ldr	r2, [sp, #8]
	mov	r5, #0x1f
	and	r5, r0
	mov	r0, r2
	bl	Func_2322
	mov	r3, r10
	ldr	r6, [r3]
	add	r5, #4
	lsr	r3, r6, #31
	add	r6, r3
	mov	r3, r5
	mul	r3, r0
	ldr	r0, =Data_edeca
	asr	r3, #17
	asr	r6, #1
	ldr	r2, [sp, #8]
	add	r6, r3
	ldrb	r3, [r0, r7]
	mov	r0, r2
	lsr	r3, #1
	sub	r6, r3
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	mov	r1, r10
	ldr	r5, [r1, #4]
	ldr	r2, =Data_eded0
	asr	r3, #17
	sub	r5, r3
	ldrb	r3, [r2, r7]
	lsr	r3, #1
	sub	r5, r3
	bl	Func_4458
	ldr	r3, =.Ledf7b
	mov	r1, r9
	and	r0, r1
	ldrb	r2, [r3, r0]
	mov	r3, r9
	str	r1, [sp]
	orr	r3, r2
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r2, =Data_edebe
	lsl	r3, r7, #1
	ldrh	r1, [r2, r3]
	ldr	r2, =Data_edeca
	ldrb	r3, [r2, r7]
	ldr	r0, =Data_eded0
	str	r3, [sp]
	ldrb	r3, [r0, r7]
	ldr	r2, =iwram_1f0c
	str	r3, [sp, #4]
	add	r1, r11
	mov	r3, r5
	ldr	r4, [r2]
	ldr	r0, [sp, #0x5c]
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #1
	add	r8, r3
	mov	r5, r8
	cmp	r5, #3
	bne	.Lcadfa
.Lcae9c:
	bl	Func_49ac
	ldr	r0, [sp, #0x4c]
	ldr	r1, [sp, #0x14]
	bl	Func_51d8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r0, =iwram_1f08
	ldr	r3, [r0]
	mov	r1, #7
	str	r3, [sp, #0x64]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	ldr	r1, =iwram_1f0c
	ldr	r2, [sp, #0x18]
	ldr	r3, [r1]
	str	r3, [r2, #4]
	ldr	r5, [sp, #0x2c]
	mov	r3, #0
	add	r5, #2
	str	r3, [sp, #0x54]
	str	r5, [sp, #0x1c]
.Lcaede:
	ldr	r0, [sp, #0x30]
	ldr	r3, [r0]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r7, =.Ledf04
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r7, r1]
	ldr	r0, [r0]
	mov	r3, #1
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.Lcaf64
	mov	r5, #0xe1
	mov	r2, #0
	lsl	r5, #7
	mov	r8, r2
	add	r5, r11
.Lcaf04:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x17
	bhi	.Lcaf56
	cmp	r3, #0
	bge	.Lcaf10
	add	r3, #3
.Lcaf10:
	asr	r3, #2
	lsl	r1, r3, #3
	add	r1, r3
	lsl	r1, #7
	mov	r2, #0xc8
	mov	r0, r8
	lsl	r2, #6
	mov	r4, #1
	add	r1, r11
	and	r4, r0
	add	r1, r2
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, #0x18
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #2
	sub	r3, #0x18
	ldr	r4, [r4, r0]
	sub	r2, #0xc
	ldr	r0, [sp, #0x5c]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3e
	ldr	r2, =0xfffffc00
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Lcaf56:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Lcaf04
	ldr	r7, =.Ledf04
.Lcaf64:
	ldr	r3, [sp, #0x1c]
	ldrb	r2, [r7, r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lcb066
	ldr	r0, [sp, #0x60]
	mov	r5, #3
	mov	r10, r5
	cmp	r0, #0xb
	bne	.Lcaf7e
	mov	r1, #8
	mov	r10, r1
.Lcaf7e:
	ldr	r2, [sp, #0x58]
	cmp	r2, #0x37
	bne	.Lcaf9a
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Lcaf9a:
	ldr	r0, [sp, #0x58]
	cmp	r0, #0x5a
	bne	.Lcafb6
	ldr	r1, [sp, #0x30]
	ldr	r3, [r1]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Lcafb6:
	mov	r2, #0
	mov	r3, r10
	ldr	r5, =ewram_10000
	mov	r8, r2
	add	r6, sp, #0x6c
	lsl	r7, r3, #1
.Lcafc2:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Lcb058
	mov	r1, r6
	mov	r0, r5
	bl	Func_e3944
	ldr	r2, [r6]
	ldr	r1, =Data_ede48
	asr	r2, #1
	str	r2, [r6]
	sub	r3, r7, #2
	ldrh	r1, [r1, r3]
	ldr	r0, [sp, #0x50]
	add	r1, r0, r1
	mov	r0, r10
	lsr	r3, r0, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x18]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x5c]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e38b8
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0xa
	ble	.Lcb058
	mov	r1, r9
	ldr	r0, [r1, #8]
	ldr	r3, [r5]
	ldr	r1, [r1, #0xc]
	sub	r0, r3
	ldr	r3, [r5, #4]
	mov	r2, #0xa0
	sub	r1, r3
	lsl	r2, #13
	mov	r3, r9
	add	r1, r2
	ldr	r2, [r3, #0x10]
	ldr	r3, [r5, #8]
	sub	r2, r3
	ldr	r3, [r5, #0xc]
	asr	r0, #8
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	asr	r1, #8
	add	r3, r1
	ldr	r1, =0xfff
	str	r3, [r5, #0x10]
	ldr	r3, [r5, #0x14]
	asr	r2, #8
	add	r0, r1
	ldr	r1, =0x1ffe
	add	r3, r2
	str	r3, [r5, #0x14]
	cmp	r0, r1
	bhi	.Lcb058
	ldr	r0, =0xfff
	add	r3, r2, r0
	cmp	r3, r1
	bhi	.Lcb058
	mov	r1, #1
	neg	r1, r1
	str	r1, [r5, #0x18]
.Lcb058:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Lcafc2
	ldr	r7, =.Ledf04
.Lcb066:
	ldr	r5, [sp, #0x1c]
	ldrb	r2, [r7, r5]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lcb114
	ldr	r1, =Data_ede48
	mov	r0, #0
	ldr	r7, =ewram_13800
	mov	r8, r0
	add	r6, sp, #0x6c
	mov	r10, r1
	b	.Lcb0b8

	.pool_aligned

.Lcb0b8:
	ldr	r5, [r7, #0x18]
	cmp	r5, #0
	blt	.Lcb108
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r3, #1
	str	r3, [r6]
	mov	r0, r7
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e38b8
	asr	r5, #3
	add	r5, #1
	lsl	r0, r5, #1
	sub	r3, r0, #2
	mov	r2, r10
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x50]
	add	r1, r3, r1
	lsr	r3, r5, #31
	ldr	r2, [r6]
	add	r3, r5, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r5, [sp]
	sub	r3, r5
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x18]
	ldr	r0, [sp, #0x5c]
	ldr	r4, [r5, #4]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Lcb108:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r7, #0x1c
	cmp	r1, #0x80
	bne	.Lcb0b8
.Lcb114:
	ldr	r2, [sp, #0x54]
	add	r2, #1
	str	r2, [sp, #0x54]
	cmp	r2, #1
	beq	.Lcb120
	b	.Lcaede
.Lcb120:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r3, =.Ledf04
	ldr	r5, [sp, #0x24]
	ldrb	r2, [r3, r5]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lcb144
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	b	.Lcb14c
.Lcb144:
	mov	r0, #2
	mov	r1, #4
	bl	Func_e155c
.Lcb14c:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #0x58]
	ldr	r2, [sp, #0x48]
	ldr	r1, [sp, #0x60]
	add	r0, #1
	ldr	r7, =.Ledf04
	str	r0, [sp, #0x58]
	sub	r3, r2, r1
	add	r3, #6
	mov	r5, r7
	ldrb	r3, [r5, r3]
	cmp	r0, r3
	beq	.Lcb17a
	bl	.Lca978
.Lcb17a:
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x9c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ca60c

	.section .rodata

.Ledf04:
	.incrom 0xedf04, 0xedf58
.Ledf58:
	.incrom 0xedf58, 0xedf5e
.Ledf5e:
	.incrom 0xedf5e, 0xedf64
.Ledf64:
	.incrom 0xedf64, 0xedf70
.Ledf70:
	.incrom 0xedf70, 0xedf76
.Ledf76:
	.incrom 0xedf76, 0xedf7b
.Ledf7b:
	.incrom 0xedf7b, 0xedf7f
