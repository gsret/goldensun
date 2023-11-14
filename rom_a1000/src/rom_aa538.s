	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_aa538
	push	{lr}
	add	r0, r1
	bl	Func_b1c_from_thumb
	pop	{r1}
	bx	r1
.func_end Func_aa538

.thumb_func_start Func_aa544
	push	{lr}
	ldr	r3, =iwram_1f2c
	mov	r2, #0x9a
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r0, #0x3d
	mov	r1, #0x20
	mov	r2, #3
.Laa556:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #0x10]
	add	r1, #0x38
	add	r3, #2
	cmp	r2, #0
	bge	.Laa556
	pop	{r1}
	bx	r1
.func_end Func_aa544

.thumb_func_start Func_aa56c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	Func_48b0
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	ldrb	r2, [r3]
	mov	r9, r2
	mov	r2, #2
	strb	r2, [r3]
	ldr	r3, =iwram_1e68
	mov	r2, #1
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, r10
	mov	r1, #0
	strh	r2, [r3, #4]
	mov	r7, r0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_Func_170f8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	bl	Func_a1090
	ldr	r0, =0x2130
	bl	Func_4970
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	ldr	r6, =0x212c
	ldr	r3, =0x2128
	mov	r8, r0
	mov	r5, #0
	add	r3, r8
	add	r6, r8
	mov	r0, #0xb7
	str	r5, [r3]
	str	r5, [r6]
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Laa62c
	ldr	r0, =0x16f
	bl	_Func_79338
	cmp	r0, #0
	bne	.Laa5fe
	ldr	r0, =0x171
	bl	_Func_79338
	cmp	r0, #0
	bne	.Laa5fa
	mov	r3, r10
	b	.Laa62a
.Laa5fa:
	mov	r3, #0xe
	b	.Laa62a
.Laa5fe:
	ldr	r0, =0x171
	bl	_Func_79338
	cmp	r0, #0
	bne	.Laa628
	mov	r3, #0x1b
	b	.Laa62a

	.pool_aligned

.Laa628:
	mov	r3, #0x1c
.Laa62a:
	str	r3, [r6]
.Laa62c:
	bl	Func_a1070
	mov	r0, #1
	bl	_Func_1e3c8
	ldr	r0, =0x6002500
	bl	_Func_219c8
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r7, r2
	bl	_Func_796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	bl	Func_ae88c
	mov	r1, #3
	mov	r2, #0
	mov	r3, #7
	mov	r0, #0
	bl	Func_a3354
	mov	r0, #0
	bl	Func_aa544
	mov	r0, #0xe
	bl	Func_a2144
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_Func_162d4
	mov	r2, #0xbc
	lsl	r2, #1
	mov	r3, #0x86
	add	r1, r7, r2
	lsl	r3, #1
	ldr	r2, .Laa6c0	@ 0
	add	r4, r7, r3
	mov	r3, #0xff
	str	r0, [r4]
	strh	r3, [r1]
	strb	r2, [r7, #0x1c]
	strb	r2, [r7, #0x1d]
	mov	r2, #0xba
	lsl	r2, #1
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r1, #0
	ldr	r0, [r4]
	bl	Func_ad508
	bl	Func_aa768
	bl	Func_ad658
	bl	Func_ae8dc
	mov	r0, #1
	bl	Func_30f8
	bl	Func_a34c0
	b	.Laa6cc

	.align	2, 0
.Laa6c0:
	.word	0
	.pool

.Laa6cc:
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0
	mov	r3, #0x14
	bl	_Func_170f8
	ldr	r3, =iwram_1e68
	ldr	r3, [r3]
	strh	r5, [r3, #4]
	bl	_Func_1e318
	mov	r0, #0
	bl	_Func_1e3c8
	mov	r1, r8
	mov	r2, #0x80
	ldr	r5, =Func_1af8
	add	r1, #0xa8
	lsl	r2, #6
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r1, =0x20a8
	mov	r2, #0x80
	add	r1, r8
	ldr	r0, =0x5000080
	bl	_call_via_r5
	mov	r0, #1
	bl	Func_30f8
	bl	Func_a1050
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_Func_16178
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	Func_2df0
	mov	r0, #0x37
	bl	Func_2dd8
	bl	_Func_91858
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, r9
	mov	r0, #1
	strb	r2, [r3]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aa56c

.thumb_func_start Func_aa768
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r4, #0
	ldr	r2, [r7, #0x14]
	mov	r10, r4
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, r10
	sub	sp, #8
	mov	r1, #0
	strh	r3, [r2, #0xc]
	str	r4, [sp]
	mov	r8, r1
	bl	Func_aad10
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, [sp]
	mov	r5, #2
.Laa798:
	cmp	r5, #0xf
	bls	.Laa79e
	b	.Laac52
.Laa79e:
	ldr	r2, =.Laa7a8
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa7a8:
	.word	.Laa7e8
	.word	.Laac56
	.word	.Laa7fa
	.word	.Laa8b0
	.word	.Laabc0
	.word	.Laabec
	.word	.Laaaa4
	.word	.Laa9be
	.word	.Laa880
	.word	.Laaaec
	.word	.Laa83c
	.word	.Laac06
	.word	.Laaac0
	.word	.Laa9da
	.word	.Laab08
	.word	.Laa86a
.Laa7e8:
	cmp	r4, #0
	blt	.Laa7ee
	b	.Laabbc
.Laa7ee:
	mov	r1, #1
	neg	r1, r1
	mov	r2, #1
	mov	r10, r1
	mov	r8, r2
	b	.Laabbc
.Laa7fa:
	mov	r0, #0
	bl	Func_aa544
	mov	r1, #0
	mov	r2, #0xc8
	mov	r3, #0
	mov	r0, #1
	bl	Func_ad5b4
	mov	r0, #0
	bl	Func_ab5e4
	mov	r4, r0
	mov	r5, #0xf
	cmp	r4, #0xa
	bne	.Laa81c
	b	.Laac56
.Laa81c:
	mov	r5, #0
	cmp	r4, #0
	bge	.Laa824
	b	.Laac56
.Laa824:
	mov	r1, #0xbb
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	lsl	r1, #1
	add	r2, r7, r1
	strh	r3, [r2]
	mov	r5, #0xa
	cmp	r4, #7
	bne	.Laa838
	b	.Laac56
.Laa838:
	mov	r5, #3
	b	.Laac56
.Laa83c:
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r7, r3]
	ldr	r1, =0x21a
	str	r2, [r7, #8]
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
	bl	Func_ae2f4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	beq	.Laa864
	b	.Laabbc
.Laa864:
	mov	r3, #1
	mov	r8, r3
	b	.Laabbc
.Laa86a:
	bl	Func_ab314
	mov	r1, #2
	mov	r4, r0
	neg	r1, r1
	cmp	r4, r1
	beq	.Laa87a
	b	.Laabbc
.Laa87a:
	mov	r2, #1
	mov	r8, r2
	b	.Laabbc
.Laa880:
	mov	r1, #0x86
	lsl	r1, #2
	add	r3, r7, r1
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r3, #0
	bne	.Laa890
	b	.Laac56
.Laa890:
	mov	r0, #1
	bl	Func_ab5e4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laa8a4
	mov	r3, #1
	mov	r8, r3
.Laa8a4:
	mov	r5, #4
	cmp	r4, #0
	bge	.Laa8ac
	b	.Laac56
.Laa8ac:
	mov	r5, #9
	b	.Laac56
.Laa8b0:
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_aafb8
	mov	r0, #8
	neg	r0, r0
	bl	Func_aa544
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r7, r3]
	ldr	r1, =0x21a
	str	r2, [r7, #8]
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #3
	add	r1, #0x30
	mov	r2, #0x36
	mov	r3, #0
	mov	r0, #0
	bl	Func_ad5b4
	mov	r0, #1
	bl	Func_ab5e4
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r1, #0
	mov	r4, r0
	cmp	r1, r3
	bge	.Laa91a
	add	r0, r7, r2
	sub	r2, #0xd5
.Laa90a:
	ldrh	r3, [r2, r7]
	add	r3, #8
	strh	r3, [r2, r7]
	ldrb	r3, [r0]
	add	r1, #1
	add	r2, #2
	cmp	r1, r3
	blt	.Laa90a
.Laa91a:
	mov	r3, #2
	neg	r3, r3
	cmp	r4, r3
	bne	.Laa926
	mov	r1, #1
	mov	r8, r1
.Laa926:
	cmp	r4, #0
	bge	.Laa92c
	b	.Laabbc
.Laa92c:
	sub	r3, r4, #3
	cmp	r3, #1
	bls	.Laa93a
	cmp	r4, #8
	beq	.Laa93a
	cmp	r4, #9
	bne	.Laa94e
.Laa93a:
	mov	r3, #0x1d
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldr	r1, =0x21b
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
.Laa94e:
	cmp	r4, #0
	bge	.Laa954
	b	.Laabbc
.Laa954:
	cmp	r4, #1
	bne	.Laa95c
	mov	r5, #5
	b	.Laac56
.Laa95c:
	cmp	r4, #2
	bne	.Laa964
	mov	r5, #6
	b	.Laac56
.Laa964:
	cmp	r4, #3
	bne	.Laa976
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #7
	b	.Laac56
.Laa976:
	cmp	r4, #4
	bne	.Laa988
	mov	r1, #0x88
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #9
	b	.Laac56
.Laa988:
	cmp	r4, #5
	bne	.Laa990
	mov	r5, #0xb
	b	.Laac56
.Laa990:
	cmp	r4, #6
	bne	.Laa998
	mov	r5, #0xc
	b	.Laac56
.Laa998:
	cmp	r4, #8
	bne	.Laa9aa
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #0xd
	b	.Laac56
.Laa9aa:
	cmp	r4, #9
	beq	.Laa9b0
	b	.Laac56
.Laa9b0:
	mov	r1, #0x88
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #0xe
	b	.Laac56
.Laa9be:
	mov	r0, #1
	bl	Func_ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laa9d2
	mov	r3, #1
	mov	r8, r3
.Laa9d2:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laa9da
	b	.Laac56
.Laa9da:
	mov	r0, #0x7e
	bl	_Func_f9080
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldr	r3, =0x21b
	add	r5, r7, r3
	ldrb	r3, [r5]
	ldrb	r0, [r6]
	bl	_Func_7a498
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_Func_77428
	ldrb	r0, [r5]
	bl	_Func_77428
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [r7, #0x30]
	bl	_Func_164ac
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_aaf58
	mov	r2, #0xbb
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r0, [r3]
	mov	r1, #0xa
	bl	Func_b50_from_thumb
	mov	r1, #0xbc
	mov	r3, #0
	lsl	r1, #1
	mov	r12, r3
	add	r3, r7, r1
	lsl	r0, #16
	ldrb	r6, [r3]
	lsr	r0, #16
	mov	r1, #0
	mov	r5, r0
	add	r5, #0xa0
	ldr	r4, [sp]
	b	.Laaa4e
.Laaa4c:
	add	r1, #1
.Laaa4e:
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	bge	.Laaa6e
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	add	r3, r1
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	cmp	r6, r3
	bne	.Laaa4c
	mov	r12, r1
.Laaa6e:
	mov	r1, r12
	lsl	r3, r1, #2
	add	r3, r12
	mov	r1, #0xba
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r0, r3
	add	r2, r7, r1
	strh	r3, [r2]
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r5, #0
	b	.Laac56

	.pool_aligned

.Laaaa4:
	mov	r0, #2
	bl	Func_ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laaab8
	mov	r3, #1
	mov	r8, r3
.Laaab8:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laaac0
	b	.Laac56
.Laaac0:
	mov	r0, #0xaf
	bl	_Func_f9080
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	add	r5, r7, r2
	ldrb	r1, [r3]
	ldrb	r2, [r5]
	ldrb	r0, [r6]
	str	r3, [sp, #4]
	bl	_Func_7a350
	ldr	r3, [sp, #4]
	ldrb	r2, [r5]
	ldrb	r1, [r3]
	ldrb	r0, [r6]
	bl	_Func_7a458
	b	.Laac30
.Laaaec:
	mov	r0, #0
	bl	Func_ad6d4
	mov	r3, #2
	mov	r4, r0
	neg	r3, r3
	cmp	r4, r3
	bne	.Laab00
	mov	r1, #1
	mov	r8, r1
.Laab00:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laab08
	b	.Laac56
.Laab08:
	mov	r0, #0x7e
	bl	_Func_f9080
	ldr	r2, =0x21a
	ldr	r1, =0x256
	add	r6, r7, r2
	add	r3, r7, r1
	add	r2, #0x3a
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldr	r3, =0x21b
	add	r5, r7, r3
	ldrb	r3, [r5]
	ldrb	r0, [r6]
	bl	_Func_7a498
	ldr	r1, =0x257
	ldr	r2, =0x255
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldrb	r0, [r5]
	ldrb	r3, [r6]
	bl	_Func_7a498
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_Func_77428
	ldrb	r0, [r5]
	bl	_Func_77428
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_aaf58
	mov	r2, #0xbb
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r0, [r3]
	mov	r1, #0xa
	bl	Func_b50_from_thumb
	mov	r1, #0xbc
	mov	r3, #0
	lsl	r1, #1
	mov	r12, r3
	add	r3, r7, r1
	lsl	r0, #16
	ldrb	r6, [r3]
	lsr	r0, #16
	mov	r1, #0
	mov	r5, r0
	add	r5, #0xa0
	ldr	r4, [sp]
	b	.Laab84
.Laab82:
	add	r1, #1
.Laab84:
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	bge	.Laaba4
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	add	r3, r1
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	cmp	r6, r3
	bne	.Laab82
	mov	r12, r1
.Laaba4:
	mov	r1, r12
	lsl	r3, r1, #2
	add	r3, r12
	mov	r1, #0xba
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r0, r3
	add	r2, r7, r1
	strh	r3, [r2]
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
.Laabbc:
	mov	r5, #2
	b	.Laac56
.Laabc0:
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	bne	.Laabcc
	mov	r10, r4
	b	.Laabbc
.Laabcc:
	mov	r1, #0x88
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Laabe0
	mov	r5, #8
	b	.Laac56
.Laabe0:
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Laac56
	mov	r5, #7
	b	.Laac56
.Laabec:
	mov	r0, #3
	bl	Func_ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laac00
	mov	r3, #1
	mov	r8, r3
.Laac00:
	mov	r5, #3
	cmp	r4, #0
	blt	.Laac56
.Laac06:
	mov	r0, #0x8b
	bl	_Func_f9080
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	add	r5, r7, r2
	ldrb	r1, [r3]
	ldrb	r2, [r5]
	ldrb	r0, [r6]
	str	r3, [sp, #4]
	bl	_Func_7a2e4
	ldr	r3, [sp, #4]
	ldrb	r2, [r5]
	ldrb	r1, [r3]
	ldrb	r0, [r6]
	bl	_Func_7a3a8
.Laac30:
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_Func_77428
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [r7, #0x30]
	bl	_Func_164ac
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r5, #2
	ldr	r4, [sp]
	b	.Laac56
.Laac52:
	mov	r3, #1
	mov	r8, r3
.Laac56:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laac5e
	b	.Laa798
.Laac5e:
	mov	r0, r10
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aa768

.thumb_func_start Func_aac84
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r12, r1
	mov	r7, #0x1f
.Laac90:
	lsl	r3, #4
	mov	r6, #0
	mov	r14, r3
.Laac96:
	mov	r2, r14
	add	r3, r2, r6
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r0, r3, #1
	add	r3, r0, r1
	ldrh	r3, [r3]
	lsr	r4, r3, #10
	and	r4, r7
	lsr	r2, r3, #5
	mov	r1, r7
	and	r2, r7
	and	r1, r3
	add	r4, r5
	add	r2, r5
	add	r1, r5
	cmp	r4, #0x1f
	ble	.Laacbc
	mov	r4, #0x1f
.Laacbc:
	cmp	r2, #0x1f
	ble	.Laacc2
	mov	r2, #0x1f
.Laacc2:
	cmp	r1, #0x1f
	ble	.Laacc8
	mov	r1, #0x1f
.Laacc8:
	cmp	r4, #0
	bge	.Laacce
	mov	r4, #0
.Laacce:
	cmp	r2, #0
	bge	.Laacd4
	mov	r2, #0
.Laacd4:
	cmp	r1, #0
	bge	.Laacda
	mov	r1, #0
.Laacda:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Laac96
	mov	r2, r12
	mov	r3, #5
	cmp	r2, #0
	beq	.Laacfc
	mov	r5, #0xc
	mov	r3, #7
	neg	r5, r5
.Laacfc:
	mov	r1, #1
	add	r12, r1
	mov	r2, r12
	cmp	r2, #2
	ble	.Laac90
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_aac84

.thumb_func_start Func_aad10
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xc2
	ldr	r0, [r3]
	lsl	r2, #1
	add	r3, r0, r2
	ldr	r3, [r3]
	sub	sp, #8
	mov	r8, r3
	mov	r3, #0xf
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r3, #0x1e
	mov	r2, #5
	add	r0, #0x30
	bl	Func_a10d0
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r8
	mov	r2, #0x80
	ldr	r6, =Func_1af8
	ldr	r1, =0x6004000
	lsl	r2, #6
	add	r0, #0xa8
	bl	_call_via_r6
	ldr	r0, =0x20a8
	ldr	r1, =0x5000080
	add	r0, r8
	mov	r2, #0x80
	bl	_call_via_r6
	mov	r1, #0x80
	ldr	r5, =Func_8d8
	lsl	r1, #6
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r2, =0x55555555
	ldr	r0, =0x5000080
	bl	_call_via_r5
	ldr	r0, =0x6005000
	bl	_Func_21a18
	ldr	r1, =Data_af26c
	mov	r2, #0x20
	ldr	r0, =0x60052c0
	bl	_call_via_r6
	bl	Func_45e8
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =0x50001e8
	ldr	r2, =0x50000bc
	ldrh	r3, [r5]
	ldr	r0, =0x50001e0
	strh	r3, [r2]
	add	r1, #0x40
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #8
	bl	Func_aac84
	ldrh	r3, [r5]
	ldr	r2, =0x50000e8
	strh	r3, [r2]
	ldrh	r3, [r5]
	sub	r2, #0x20
	strh	r3, [r2]
	mov	r0, r8
	bl	Func_aafb8
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_aad10

.thumb_func_start Func_aae14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r2, r8
	ldrh	r3, [r2]
	mov	r12, r0
	mov	r10, r1
	mov	r11, r1
	cmp	r3, #0
	beq	.Laaeac
	ldr	r3, =0x3fff
	ldr	r5, [sp, #8]
	mov	r14, r3
	mov	r0, r8
	sub	r5, #2
.Laae46:
	ldrh	r2, [r0]
	mov	r3, r14
	and	r3, r2
	strh	r3, [r5, #2]
	mov	r1, #1
	add	r10, r1
	mov	r1, r12
	ldrh	r2, [r1]
	ldrh	r3, [r0]
	eor	r3, r2
	mov	r2, r14
	and	r3, r2
	add	r5, #2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laae7e
	ldr	r7, .Laae90	@ 0x3fff
	mov	r6, r0
.Laae6a:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laae7e
	add	r1, #4
	ldrh	r3, [r6]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r7
	cmp	r3, #0
	bne	.Laae6a
.Laae7e:
	cmp	r4, #0x20
	bne	.Laae9c
	mov	r3, #1
	add	r11, r3
	ldr	r2, .Laae94	@ 0x8000
	ldrh	r3, [r5]
	orr	r3, r2
	strh	r3, [r5]
	b	.Laae9c

	.align	2, 0
.Laae90:
	.word	0x3fff
.Laae94:
	.word	0x8000
	.pool

.Laae9c:
	mov	r3, r8
	add	r0, #4
	add	r3, #0x7c
	cmp	r0, r3
	bgt	.Laaeac
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.Laae46
.Laaeac:
	mov	r2, r12
	ldrh	r3, [r2]
	mov	r1, #0
	mov	r9, r1
	cmp	r3, #0
	beq	.Laaf38
	mov	r1, r10
	ldr	r2, [sp, #8]
	lsl	r3, r1, #1
	mov	r14, r12
	add	r0, r3, r2
	mov	r7, #0
.Laaec4:
	mov	r1, r12
	ldrh	r3, [r7, r1]
	mov	r1, r8
	ldrh	r2, [r1]
	eor	r3, r2
	ldr	r2, =0x3fff
	and	r3, r2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laaef0
	ldr	r6, .Laaf04	@ 0x3fff
	mov	r5, r14
.Laaedc:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laaef0
	add	r1, #4
	ldrh	r3, [r5]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r6
	cmp	r3, #0
	bne	.Laaedc
.Laaef0:
	cmp	r4, #0x20
	bne	.Laaf1a
	ldr	r3, [sp]
	add	r3, #1
	str	r3, [sp]
	mov	r1, r12
	ldrh	r3, [r7, r1]
	ldr	r2, =0x3fff
	b	.Laaf0c

	.align	2, 0
.Laaf04:
	.word	0x3fff
	.pool

.Laaf0c:
	and	r2, r3
	ldr	r3, =0x4000
	orr	r2, r3
	strh	r2, [r0]
	mov	r2, #1
	add	r0, #2
	add	r10, r2
.Laaf1a:
	mov	r1, #1
	add	r9, r1
	mov	r3, #4
	mov	r2, r9
	add	r7, #4
	add	r14, r3
	cmp	r2, #0x1f
	bgt	.Laaf38
	mov	r1, r12
	ldrh	r3, [r7, r1]
	cmp	r3, #0
	bne	.Laaec4
	b	.Laaf38

	.pool_aligned

.Laaf38:
	ldr	r3, [sp, #4]
	mov	r2, r11
	str	r2, [r3]
	ldr	r1, [sp]
	ldr	r3, [sp, #0x2c]	@ 0x2c
	mov	r0, r10
	str	r1, [r3]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aae14

.thumb_func_start Func_aaf58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r4, #0
	sub	sp, #4
	cmp	r4, r3
	bge	.Laafa2
	mov	r6, #0x82
	mov	r7, r0
	lsl	r6, #2
	add	r7, #0xa0
	add	r6, r8
	mov	r5, r0
.Laaf7e:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	str	r4, [sp]
	bl	Func_ac8fc
	ldr	r3, =0x219
	ldr	r4, [sp]
	add	r3, r8
	ldrb	r3, [r3]
	add	r4, #1
	strb	r0, [r7]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r4, r3
	blt	.Laaf7e
.Laafa2:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aaf58

.thumb_func_start Func_aafb8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	str	r0, [sp, #0x30]
	ldr	r3, =iwram_1f2c
	ldr	r0, [r3]
	sub	r3, #0xa0
	ldr	r3, [r3]
	ldr	r1, =0xea6
	str	r3, [sp, #0x20]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, #0
	ldr	r3, =0x219
	mov	r9, r0
	str	r2, [sp, #0x2c]
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lab01e
	ldr	r7, [sp, #0x30]
	mov	r6, #0x82
	lsl	r6, #2
	ldr	r5, [sp, #0x30]
	add	r7, #0xa0
	add	r6, r9
.Laaff8:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	bl	Func_ac8fc
	strb	r0, [r7]
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x2c]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r0, r3
	blt	.Laaff8
.Lab01e:
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_16498
	mov	r2, r9
	ldr	r0, =0xbad
	ldr	r1, [r2, #0x30]
	mov	r3, #0x50
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r3, #0
	str	r3, [sp, #0x28]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	blt	.Lab046
	b	.Lab1a2
.Lab046:
	ldr	r3, [sp, #0x30]
	mov	r2, #0
	mov	r1, #0xa0
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
.Lab054:
	mov	r0, #0
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x24]
.Lab05a:
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x10]
	ldr	r0, [sp, #0x30]
	ldrsb	r3, [r2, r0]
	cmp	r1, r3
	blt	.Lab06a
	b	.Lab16a
.Lab06a:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x1c]
	ldr	r2, [sp, #8]
	str	r3, [sp, #0x14]
	lsl	r3, r0, #3
	mov	r1, #0xe0
	add	r3, #0x10
	str	r2, [sp, #0x18]
	ldr	r5, [sp, #4]
	mov	r11, r1
	mov	r10, r3
.Lab080:
	ldrh	r4, [r5]
	mov	r3, r11
	and	r3, r4
	ldr	r1, [sp, #0x24]
	lsr	r3, #5
	cmp	r1, r3
	bne	.Lab156
	ldr	r3, .Lab0a0	@ 0x8000
	and	r3, r4
	cmp	r3, #0
	bne	.Lab0b4
	mov	r0, #2
	bl	_Func_1e71c
	ldrh	r4, [r5]
	b	.Lab0b4

	.align	2, 0
.Lab0a0:
	.word	0x8000
	.pool

.Lab0b4:
	mov	r7, #0xf0
	lsl	r7, #4
	mov	r2, #0
	mov	r0, r7
	mov	r1, r11
	mov	r6, #0x1f
	mov	r8, r2
	and	r0, r4
	and	r1, r4
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r4
	bl	_Func_7a1f8
	cmp	r0, #0
	bne	.Lab0f0
	ldrh	r3, [r5]
	mov	r0, r7
	mov	r1, r11
	and	r0, r3
	and	r1, r3
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r3
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Lab0f4
.Lab0f0:
	mov	r3, #1
	mov	r8, r3
.Lab0f4:
	mov	r0, r8
	cmp	r0, #0
	bne	.Lab100
	mov	r0, #4
	bl	_Func_1e71c
.Lab100:
	ldrh	r3, [r5]
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	mov	r1, r11
	and	r1, r3
	ldr	r2, =0x5001
	lsr	r1, #5
	add	r1, r2
	mov	r2, #0
	ldr	r3, [sp, #0x1c]
	str	r2, [sp]
	ldr	r2, [sp, #0x18]
	add	r3, #2
	add	r2, #1
	bl	_Func_19000
	ldrh	r2, [r5]
	mov	r3, r11
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x45f
	ldr	r2, [sp, #0x14]
	add	r0, r3
	mov	r3, r9
	ldr	r1, [r3, #0x30]
	add	r2, #0x10
	mov	r3, r10
	bl	_Func_1e7c0
	ldr	r1, [sp, #0x1c]
	mov	r0, #8
	add	r10, r0
	add	r1, #1
	mov	r0, #0xf
	str	r1, [sp, #0x1c]
	bl	_Func_1e71c
.Lab156:
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	str	r2, [sp, #0x2c]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x30]
	ldrsb	r3, [r0, r1]
	add	r5, #2
	cmp	r2, r3
	bge	.Lab16a
	b	.Lab080
.Lab16a:
	ldr	r2, [sp, #0x24]
	add	r2, #1
	str	r2, [sp, #0x24]
	cmp	r2, #3
	bgt	.Lab176
	b	.Lab05a
.Lab176:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	ldr	r3, [sp, #0x28]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	add	r3, #1
	str	r3, [sp, #0x28]
	add	r0, #0x38
	add	r1, #7
	add	r2, #0x14
	ldr	r3, =0x219
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Lab1a2
	b	.Lab054
.Lab1a2:
	mov	r1, r9
	mov	r3, #0xa
	ldr	r0, [r1, #0x30]
	mov	r2, #0xa
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x1c
	bl	_Func_1e41c
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r0, [sp, #0x20]
	ldr	r2, =0xea6
	mov	r1, #0
	add	r3, r0, r2
	strb	r1, [r3]
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_aafb8

.thumb_func_start Func_ab1f4
	push	{r5, r6, lr}
	mov	r4, r0
	ldrh	r0, [r4, #0xc]
	add	r0, r1
	ldrh	r1, [r4, #0xe]
	sub	sp, #4
	ldr	r5, [sp, #0x14]
	mov	r6, r3
	add	r1, r2
	add	r0, #1
	ldr	r3, [sp, #0x10]
	add	r1, #1
	mov	r2, r6
	str	r5, [sp]
	bl	_Func_22768
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_ab1f4

.thumb_func_start Func_ab21c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r3
	ldr	r3, =iwram_1e8c
	mov	r4, r0
	mov	r0, r1
	ldr	r1, [sp, #0x24]
	ldr	r3, [r3]
	mov	r10, r1
	mov	r9, r3
	mov	r3, r10
	lsl	r3, #12
	mov	r7, r2
	mov	r10, r3
	cmp	r4, #0
	bge	.Lab24c
	add	r7, r4
	mov	r4, #0
.Lab24c:
	add	r3, r4, r7
	cmp	r3, #0x1d
	ble	.Lab256
	mov	r3, #0x1e
	sub	r7, r3, r4
.Lab256:
	cmp	r0, #0
	bge	.Lab25e
	add	r5, r0
	mov	r0, #0
.Lab25e:
	add	r3, r0, r5
	cmp	r3, #0x1d
	ble	.Lab268
	mov	r3, #0x14
	sub	r5, r3, r0
.Lab268:
	cmp	r7, #0
	ble	.Lab2ce
	cmp	r5, #0
	ble	.Lab2ce
	ldr	r6, =0xea3
	lsl	r2, r0, #6
	lsl	r3, r4, #1
	add	r2, r3
	add	r6, r9
	mov	r1, #2
	str	r2, [sp]
	mov	r8, r6
	mov	r11, r1
.Lab282:
	ldr	r4, [sp]
	mov	r1, r7
	add	r4, r9
	cmp	r1, #0
	beq	.Lab2b2
	ldr	r6, =0xffff0fff
	mov	r3, #0xf
	mov	r14, r3
	mov	r12, r6
.Lab294:
	ldrh	r2, [r4]
	mov	r6, r14
	lsr	r3, r2, #12
	and	r3, r6
	cmp	r3, #0xf
	bne	.Lab2aa
	mov	r3, r12
	and	r2, r3
	mov	r6, r10
	orr	r2, r6
	strh	r2, [r4]
.Lab2aa:
	sub	r1, #1
	add	r4, #2
	cmp	r1, #0
	bne	.Lab294
.Lab2b2:
	lsr	r3, r0, #2
	mov	r1, r8
	mov	r2, r11
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
	sub	r5, #1
	ldr	r3, [sp]
	add	r3, #0x40
	str	r3, [sp]
	add	r0, #1
	cmp	r5, #0
	bne	.Lab282
.Lab2ce:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ab21c

.thumb_func_start Func_ab2ec
	push	{r5, r6, lr}
	mov	r4, r0
	ldrh	r0, [r4, #0xc]
	add	r0, r1
	ldrh	r1, [r4, #0xe]
	sub	sp, #4
	ldr	r5, [sp, #0x14]
	mov	r6, r3
	add	r1, r2
	ldr	r3, [sp, #0x10]
	add	r0, #1
	add	r1, #1
	mov	r2, r6
	str	r5, [sp]
	bl	Func_ab21c
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_ab2ec

.thumb_func_start Func_ab314
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r1, [r3]
	sub	sp, #0x20
	str	r1, [sp, #0x14]
	sub	r3, #0xa0
	ldr	r3, [r3]
	mov	r2, #0
	str	r3, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r0, [r1, #0x30]
	bl	_Func_164ac
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0x86
	ldr	r3, [sp, #0x14]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r0, [r6]
	bl	_Func_16478
	ldr	r5, =0xc30
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_1e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r5, #6
	mov	r0, #1
	mov	r1, #1
	mov	r2, #0xb
	mov	r3, #3
	str	r5, [sp]
	bl	Func_ab21c
	ldr	r2, [sp, #0x14]
	mov	r3, #0xa
	ldr	r0, [r2, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0
	mov	r3, #0x1c
	str	r5, [sp, #4]
	bl	Func_ab2ec
	mov	r1, #9
	mov	r2, #8
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_162d4
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0x16
	mov	r3, #7
	mov	r6, r0
	mov	r0, #8
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #3
	str	r0, [sp, #0x1c]
	mov	r1, #9
	mov	r2, #0x16
	mov	r0, #8
	str	r5, [sp]
	bl	_Func_162d4
	str	r0, [sp, #0x18]
	bl	_Func_1e318
	ldr	r3, =0xc32
	mov	r7, #0
	mov	r5, #0
	mov	r8, r3
.Lab3ce:
	mov	r1, r8
	add	r0, r5, r1
	lsl	r3, r5, #3
	mov	r1, r6
	mov	r2, #0
	add	r5, #1
	bl	_Func_1e7c0
	cmp	r5, #6
	ble	.Lab3ce
	ldr	r3, =iwram_1b04
	mov	r2, #1
	mov	r1, #0
	mov	r11, r2
	mov	r9, r3
	mov	r8, r1
.Lab3ee:
	ldr	r0, [sp, #0x18]
	bl	_Func_16478
	ldr	r0, =0xc32
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	add	r0, r7, r0
	bl	_Func_1e74c
	ldr	r1, =0xc39
	ldr	r0, [sp, #0x1c]
	add	r1, r7, r1
	bl	_Func_175c0
	mov	r2, r11
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r2, [sp, #8]
	mov	r1, #0
	mov	r3, #6
	mov	r10, r0
	mov	r0, r6
	bl	Func_ab1f4
	mov	r3, r11
	str	r3, [sp]
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #6
	bl	Func_ab1f4
	str	r7, [sp, #8]
	b	.Lab4b8
.Lab43a:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #0x60
	and	r2, r3
	cmp	r2, #0
	beq	.Lab45a
	sub	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_aa538
	mov	r7, r0
	mov	r0, #0x6f
	bl	_Func_f9080
	b	.Lab4ec
.Lab45a:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.Lab474
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r2, #2
	neg	r2, r2
	str	r2, [sp, #0xc]
	b	.Lab4ec
.Lab474:
	ldr	r2, [r1]
	mov	r3, #6
	and	r2, r3
	cmp	r2, #0
	beq	.Lab48c
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0xc]
	b	.Lab4ec
.Lab48c:
	ldr	r3, [r1]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.Lab4b8
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lab4b2
	add	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_aa538
	mov	r7, r0
	mov	r0, #0x70
	bl	_Func_f9080
	b	.Lab4ec
.Lab4b2:
	mov	r0, #0x6f
	bl	_Func_f9080
.Lab4b8:
	ldrh	r1, [r6, #0xe]
	add	r1, r7
	lsl	r1, #3
	mov	r0, #0xc
	add	r1, #8
	neg	r0, r0
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x90
	and	r2, r3
	cmp	r2, #0
	beq	.Lab43a
	add	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_aa538
	mov	r7, r0
	mov	r0, #0x6f
	bl	_Func_f9080
.Lab4ec:
	ldr	r1, [sp, #0x10]
	ldr	r2, =0x12b6
	add	r5, r1, r2
	ldrh	r3, [r5]
	cmp	r3, #0x63
	beq	.Lab502
	mov	r0, r3
	bl	Func_3f3c
	mov	r3, #0x63
	strh	r3, [r5]
.Lab502:
	ldr	r5, =iwram_1e8c
	ldr	r1, =0x12f8
	ldr	r3, [r5]
	mov	r2, r8
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, [sp, #0x1c]
	bl	_Func_16478
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, r8
	mov	r1, r8
	strh	r1, [r3, #0x1a]
	strh	r2, [r3, #0x18]
	strh	r2, [r3, #0x14]
	mov	r1, r10
	mov	r3, r8
	str	r3, [r1]
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.Lab530
	b	.Lab3ee
.Lab530:
	ldr	r1, =0xea6
	ldr	r3, [r5]
	mov	r2, #1
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, [sp, #0x18]
	bl	_Func_164ac
	ldr	r0, [sp, #0x1c]
	bl	_Func_164ac
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	ldr	r0, [sp, #0x18]
	bl	_Func_16418
	mov	r0, r6
	mov	r1, #1
	bl	_Func_16418
	mov	r1, #1
	ldr	r0, [sp, #0x1c]
	bl	_Func_16418
	bl	_Func_1e318
	mov	r3, #2
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	cmp	r2, r3
	bne	.Lab59a
	ldr	r1, [sp, #0x14]
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r0, [r3]
	bl	_Func_16478
	ldr	r3, [sp, #0x14]
	ldr	r0, [r3, #0x30]
	bl	_Func_16478
	ldr	r1, [sp, #0x14]
	ldr	r0, [r1, #0x10]
	bl	_Func_16478
	ldr	r2, =0xea6
	ldr	r3, [r5]
	add	r3, r2
	mov	r2, #0
	strb	r2, [r3]
.Lab59a:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	ldr	r0, [sp, #0xc]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ab314

.thumb_func_start Func_ab5e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	str	r0, [sp, #0x50]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r0, #0xc2
	str	r3, [sp, #0x4c]
	ldr	r2, [sp, #0x50]
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r1, #1
	mov	r5, #0xba
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x34]
	ldr	r7, [sp, #0x4c]
	lsl	r5, #1
	mov	r9, r3
	add	r3, r2, r5
	ldrh	r5, [r7, r3]
	mov	r1, #0xa
	mov	r0, r5
	bl	Func_b50_from_thumb
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [sp, #0x38]
	mov	r1, #0xa
	mov	r0, r5
	bl	Func_b60_from_thumb
	mov	r2, sp
	add	r2, #0x64
	lsl	r0, #16
	lsr	r0, #16
	str	r2, [sp, #0x1c]
	mov	r1, #1
	str	r0, [sp, #0x30]
	neg	r1, r1
	mov	r0, #0
	ldr	r5, [sp, #0x1c]
	mov	r3, sp
	str	r0, [sp, #0x2c]
	str	r0, [sp, #0x28]
	str	r0, [sp, #0x24]
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x3c]
	mov	r2, #0
	add	r3, #0x6b
	mov	r12, r5
.Lab656:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.Lab656
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	bne	.Lab6d8
	mov	r0, r9
	bl	Func_aafb8
	ldr	r3, =0x219
	mov	r0, #0
	ldr	r1, [sp, #0x4c]
	str	r0, [sp, #0x44]
	add	r2, r1, r3
	ldrb	r3, [r2]
	cmp	r7, r3
	bge	.Lab69e
	mov	r0, r2
	ldr	r1, [sp, #0x1c]
	mov	r2, r9
	mov	r4, #4
	add	r2, #0xa0
.Lab684:
	ldrb	r3, [r2]
	lsl	r3, #24
	add	r2, #1
	cmp	r3, #0
	bne	.Lab690
	strb	r4, [r1]
.Lab690:
	ldr	r5, [sp, #0x44]
	add	r5, #1
	str	r5, [sp, #0x44]
	ldrb	r3, [r0]
	add	r1, #1
	cmp	r5, r3
	blt	.Lab684
.Lab69e:
	ldr	r7, [sp, #0x30]
	mov	r0, #0
	ldr	r1, [sp, #0x4c]
	ldr	r2, =0x219
	str	r7, [sp, #0x2c]
	str	r0, [sp, #0x44]
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r0, r3
	bge	.Lab746
	add	r5, r1, r2
.Lab6b4:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lab6ca
	add	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_aa538
	str	r0, [sp, #0x38]
.Lab6ca:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lab6b4
	b	.Lab746
.Lab6d8:
	ldr	r2, [sp, #0x4c]
	add	r5, sp, #0x54
	mov	r1, #0x1c
	ldrsb	r1, [r2, r1]
	mov	r0, r5
	bl	Func_ae714
	mov	r3, #0
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x219
	str	r3, [sp, #0x44]
	add	r2, r7, r0
	ldrb	r3, [r2]
	mov	r1, #0
	cmp	r1, r3
	bge	.Lab746
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	mov	r4, r2
	add	r1, #0xa0
	mov	r2, r0
	mov	r6, #7
.Lab704:
	ldr	r7, [sp, #0x4c]
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	ldr	r7, [sp, #0x44]
	cmp	r7, r3
	bne	.Lab714
	strb	r6, [r2]
	b	.Lab732
.Lab714:
	ldr	r7, [sp, #0x44]
	ldrb	r3, [r5, r7]
	cmp	r3, #0
	beq	.Lab722
	mov	r3, #0
	strb	r3, [r2]
	b	.Lab732
.Lab722:
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lab732
	mov	r3, #7
	strb	r3, [r0]
.Lab732:
	ldr	r3, [sp, #0x44]
	add	r3, #1
	str	r3, [sp, #0x44]
	ldr	r7, [sp, #0x44]
	ldrb	r3, [r4]
	add	r0, #1
	add	r1, #1
	add	r2, #1
	cmp	r7, r3
	blt	.Lab704
.Lab746:
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	bne	.Lab818
	ldr	r1, [sp, #0x4c]
	mov	r2, #0xba
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r6, [r3]
	mov	r1, #0xa
	mov	r0, r6
	bl	Func_b50_from_thumb
	mov	r1, #0xa
	mov	r5, r0
	mov	r0, r6
	bl	Func_b60_from_thumb
	lsl	r5, #16
	lsr	r5, #16
	ldr	r3, [sp, #0x4c]
	mov	r2, r0
	lsl	r6, r5, #3
	sub	r6, r5
	lsl	r2, #16
	ldr	r0, [r3, #0x30]
	ldr	r5, [sp, #0x50]
	add	r6, #1
	mov	r3, #0xe
	lsr	r2, #16
	str	r3, [sp, #4]
	add	r2, #2
	mov	r1, r6
	mov	r3, #6
	str	r5, [sp]
	bl	Func_ab1f4
	ldr	r7, [sp, #0x4c]
	mov	r3, #7
	ldr	r0, [r7, #0x30]
	mov	r1, r6
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #6
	str	r3, [sp, #4]
	bl	Func_ab2ec
	ldr	r0, =0x219
	add	r3, r7, r0
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bge	.Lab818
	mov	r6, #8
.Lab7b0:
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x1c
	ldrsb	r3, [r1, r3]
	cmp	r5, r3
	bne	.Lab7d2
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	ldr	r2, .Lab7e4	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.Lab7ce
	ldr	r0, =0xbb0
	b	.Lab7fe
.Lab7ce:
	ldr	r0, =0xbaf
	b	.Lab7fe
.Lab7d2:
	ldr	r3, [sp, #0x1c]
	ldrb	r2, [r3, r5]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lab7fc
	ldr	r0, =0xbae
	b	.Lab7fe

	.align	2, 0
.Lab7e4:
	.word	0x8000
	.pool

.Lab7fc:
	ldr	r0, =0xbb1
.Lab7fe:
	ldr	r7, [sp, #0x4c]
	mov	r2, r6
	mov	r3, #8
	ldr	r1, [r7, #0x30]
	bl	_Func_1e7c0
	ldr	r0, =0x219
	add	r3, r7, r0
	ldrb	r3, [r3]
	add	r5, #1
	add	r6, #0x38
	cmp	r5, r3
	blt	.Lab7b0
.Lab818:
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r0, [r3]
	bl	_Func_16498
	ldr	r3, [sp, #0x4c]
	ldr	r2, [r3, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r5, [sp, #0x38]
	lsl	r5, #3
	str	r5, [sp, #0x18]
.Lab834:
	ldr	r7, [sp, #0x48]
	cmp	r7, #0
	bne	.Lab83c
	b	.Labc9a
.Lab83c:
	mov	r1, #1
	mov	r0, #0
	neg	r1, r1
	ldr	r3, [sp, #0x1c]
	str	r0, [sp, #0x48]
	str	r1, [sp, #0x3c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #1
	and	r3, r2
	mov	r10, r7
	cmp	r3, #0
	bne	.Lab85a
	ldr	r7, [sp, #0x30]
	str	r7, [sp, #0x3c]
.Lab85a:
	ldr	r1, [sp, #0x38]
	mov	r2, #0x82
	ldr	r0, [sp, #0x4c]
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	ldr	r6, [r0, #0x10]
	ldrh	r0, [r0, r3]
	bl	_Func_77394
	ldr	r7, =0x129
	mov	r5, r0
	mov	r0, r6
	bl	_Func_16498
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e8b0
	add	r3, r5, r7
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r1, r6
	add	r0, r3
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
	ldr	r0, =.Laf28c
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0
	bl	_Func_1e8b0
	ldr	r1, [sp, #0x48]
	ldrb	r0, [r5, #0xf]
	mov	r2, r6
	str	r1, [sp]
	mov	r3, #0x48
	mov	r1, #2
	bl	_Func_1ea08
	ldr	r2, [sp, #0x50]
	cmp	r2, #0
	bne	.Lab8c4
	ldr	r0, =0xba9
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
.Lab8c4:
	mov	r7, #1
	ldr	r3, [sp, #0x3c]
	neg	r7, r7
	cmp	r3, r7
	beq	.Lab8e2
	ldr	r5, [sp, #0x38]
	lsl	r3, r5, #2
	add	r3, r5
	ldr	r0, [sp, #0x3c]
	lsl	r3, #1
	add	r3, r0
	lsl	r3, #1
	mov	r1, r9
	ldrh	r3, [r1, r3]
	str	r3, [sp, #0x28]
.Lab8e2:
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x86
	lsl	r3, #1
	add	r2, r3
	ldr	r0, [r2]
	mov	r8, r2
	bl	_Func_16498
	ldr	r5, [sp, #0x50]
	cmp	r5, #1
	bne	.Lab980
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x21a
	add	r3, r0, r1
	ldrb	r0, [r3]
	mov	r1, #1
	bl	_Func_19908
	ldr	r4, =0xbb2
	mov	r2, r8
	mov	r0, r4
	ldr	r1, [r2]
	mov	r3, #0
	mov	r2, #0
	str	r4, [sp, #8]
	bl	_Func_1e7c0
	mov	r5, #0xbc
	ldr	r3, [sp, #0x4c]
	lsl	r5, #1
	add	r6, r3, r5
	ldrh	r2, [r6]
	mov	r5, #0xe0
	mov	r3, r5
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	lsl	r0, #2
	mov	r1, #0x96
	add	r0, r3
	lsl	r1, #1
	add	r0, r1
	mov	r1, #4
	bl	_Func_19908
	ldrh	r3, [r6]
	and	r5, r3
	ldr	r3, =0x5001
	ldr	r1, [sp, #0x48]
	lsr	r5, #5
	mov	r2, r8
	add	r5, r3
	ldr	r0, [r2]
	mov	r3, #0
	str	r1, [sp]
	mov	r2, #6
	mov	r1, r5
	bl	_Func_19000
	ldr	r4, [sp, #8]
	mov	r2, r8
	add	r0, r4, #1
	ldr	r1, [r2]
	mov	r3, #0
	mov	r2, #0x38
	bl	_Func_1e7c0
	ldr	r4, [sp, #8]
	mov	r3, r8
	add	r4, #2
	ldr	r1, [r3]
	mov	r0, r4
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
.Lab980:
	ldr	r5, [sp, #0x3c]
	cmp	r5, r7
	bne	.Lab994
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	mov	r2, #0xc8
	mov	r3, #0
	bl	Func_ad5b4
	b	.Labc14
.Lab994:
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	beq	.Lab99c
	b	.Labb7c
.Lab99c:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	beq	.Laba6a
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	bne	.Lab9b8
	mov	r2, r8
	ldr	r1, [r2]
	ldr	r0, =0xb98
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	b	.Lab9c6
.Lab9b8:
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r0, =0xb99
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lab9c6:
	ldr	r5, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r6, r3, #8
	ldr	r0, [sp, #0x28]
	mov	r3, #0xe0
	and	r3, r5
	mov	r7, #0x1f
	and	r7, r0
	lsr	r5, r3, #5
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a1f8
	cmp	r0, #0
	bne	.Lab9f8
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Laba32
.Lab9f8:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a1f8
	cmp	r0, #0
	beq	.Laba12
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #1
	bl	Func_ad608
	b	.Laba1c
.Laba12:
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #2
	bl	Func_ad608
.Laba1c:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #0
	bl	Func_ad5b4
	b	.Laba64
.Laba32:
	ldr	r7, [sp, #0x4c]
	mov	r1, #0x86
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r1, [r3]
	ldr	r0, =0xb9e
	mov	r3, #0x10
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r1, r5
	mov	r2, #1
	ldr	r0, [sp, #0x50]
	bl	Func_ad608
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #1
	bl	Func_ad5b4
.Laba64:
	mov	r5, r10
	lsr	r3, r5, #1
	b	.Labb3a
.Laba6a:
	ldr	r4, =0xb9a
	mov	r7, r8
	mov	r0, r4
	ldr	r1, [r7]
	mov	r2, #0
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_Func_1e7c0
	mov	r3, #0xf0
	ldr	r0, [sp, #0x28]
	lsl	r3, #4
	and	r3, r0
	lsr	r5, r3, #8
	mov	r3, #0xe0
	and	r3, r0
	mov	r6, #0x1f
	lsr	r7, r3, #5
	and	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, r6
	bl	_Func_7a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Labab0
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	bl	_Func_7a2bc
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labb0a
.Labab0:
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	str	r4, [sp, #8]
	bl	_Func_7a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labadc
	mov	r2, r8
	ldr	r1, [r2]
	add	r0, r4, #3
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r0, #0
	mov	r1, r7
	mov	r2, #1
	bl	Func_ad608
	b	.Labaf4
.Labadc:
	mov	r3, r8
	ldr	r1, [r3]
	add	r0, r4, #2
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r0, #0
	mov	r1, r7
	mov	r2, #2
	bl	Func_ad608
.Labaf4:
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x38]
	sub	r1, r5, r7
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #0
	bl	Func_ad5b4
	b	.Labb36
.Labb0a:
	mov	r2, r8
	add	r0, r4, #4
	ldr	r1, [r2]
	mov	r3, #0x10
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r1, r7
	mov	r2, #1
	mov	r0, #0
	bl	Func_ad608
	ldr	r3, [sp, #0x18]
	ldr	r5, [sp, #0x38]
	sub	r1, r3, r5
	lsl	r1, #3
	add	r1, #0x30
	mov	r0, #0
	mov	r2, #0x3e
	mov	r3, #1
	bl	Func_ad5b4
.Labb36:
	mov	r7, r10
	lsr	r3, r7, #1
.Labb3a:
	cmp	r3, #0
	beq	.Labc14
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	bl	Func_ad5f4
	b	.Labc14

	.pool_aligned

.Labb7c:
	ldr	r0, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r0
	lsr	r6, r3, #8
	mov	r3, #0xe0
	and	r3, r0
	mov	r7, #0x1f
	and	r7, r0
	lsr	r5, r3, #5
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a1f8
	cmp	r0, #0
	bne	.Labbac
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Labbe6
.Labbac:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_7a1f8
	cmp	r0, #0
	beq	.Labbc6
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #1
	bl	Func_ad608
	b	.Labbd0
.Labbc6:
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #2
	bl	Func_ad608
.Labbd0:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x36
	mov	r3, #0
	bl	Func_ad5b4
	b	.Labc04
.Labbe6:
	mov	r1, r5
	mov	r2, #1
	ldr	r0, [sp, #0x50]
	bl	Func_ad608
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x38]
	sub	r1, r5, r7
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x36
	mov	r3, #1
	bl	Func_ad5b4
.Labc04:
	mov	r0, r10
	lsr	r3, r0, #1
	cmp	r3, #0
	beq	.Labc14
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	bl	Func_ad5f4
.Labc14:
	ldr	r1, [sp, #0x4c]
	ldr	r0, [r1, #0x30]
	bl	_Func_164ac
	mov	r3, #1
	ldr	r2, [sp, #0x3c]
	neg	r3, r3
	cmp	r2, r3
	beq	.Labc66
	ldr	r5, [sp, #0x4c]
	ldr	r0, =0xbad
	ldr	r1, [r5, #0x30]
	mov	r2, #0
	mov	r3, #0x50
	bl	_Func_1e7c0
	mov	r3, #0x68
	ldr	r0, [r5, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x60
	mov	r3, #0xe0
	bl	_Func_164d4
	ldr	r7, [sp, #0x28]
	mov	r3, #0xe0
	and	r3, r7
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r7
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x666
	ldr	r1, [r5, #0x30]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_1e7c0
.Labc66:
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x38]
	mov	r5, #1
	ldrb	r2, [r0, r1]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Labc90
	ldr	r2, [sp, #0x4c]
	ldr	r3, [sp, #0x18]
	ldr	r0, [r2, #0x30]
	ldr	r2, [sp, #0x30]
	sub	r1, r3, r1
	mov	r3, #0xe
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	str	r5, [sp]
	bl	Func_ab1f4
.Labc90:
	ldr	r3, =iwram_1e8c
	ldr	r7, =0xea3
	ldr	r3, [r3]
	add	r3, r7
	strb	r5, [r3]
.Labc9a:
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x38]
	ldrb	r2, [r0, r1]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Labcb8
	ldr	r2, [sp, #0x18]
	sub	r0, r2, r1
	lsl	r0, #3
	sub	r0, #8
	mov	r1, #0x34
	bl	Func_a1a40
	b	.Labccc
.Labcb8:
	ldr	r3, [sp, #0x18]
	ldr	r5, [sp, #0x38]
	ldr	r7, [sp, #0x30]
	sub	r0, r3, r5
	lsl	r0, #3
	lsl	r1, r7, #3
	sub	r0, #8
	add	r1, #0x3c
	bl	Func_a1a40
.Labccc:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Labcea
	ldr	r3, =iwram_1af8
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Labcfa
.Labcea:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	beq	.Labcf4
	mov	r1, #1
	str	r1, [sp, #0x48]
.Labcf4:
	mov	r2, #0
	str	r2, [sp, #0x24]
	str	r2, [sp, #0x20]
.Labcfa:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, =iwram_1c94
	ldr	r4, [r3]
	ldr	r3, =0x212c
	add	r3, r9
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.Labd10
	b	.Lac1b8
.Labd10:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	mov	r4, #0
	str	r3, [r2]
	sub	r3, r1, #1
	mov	r11, r4
	cmp	r3, #0x1b
	bls	.Labd26
	b	.Lac1b8
.Labd26:
	ldr	r2, =.Labd30
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Labd30:
	.word	.Labe82
	.word	.Labede
	.word	.Labefc
	.word	.Labede
	.word	.Lac1b8
	.word	.Labf1c
	.word	.Labf1c
	.word	.Labede
	.word	.Labede
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Labf78
	.word	.Labf9a
	.word	.Labff8
	.word	.Labf9a
	.word	.Labf9a
	.word	.Lac160
	.word	.Lac1b8
	.word	.Lac160
	.word	.Lac17e
	.word	.Labede
	.word	.Lac1b8
	.word	.Lac19c
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Labdcc
	.word	.Labda0
.Labda0:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Labdc6
	mov	r6, r1
	mov	r5, #1
.Labdb0:
	mov	r0, #0x96
	mov	r1, #0x1a
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.Labdb0
.Labdc6:
	mov	r4, #2
	mov	r11, r4
	b	.Lac1b8
.Labdcc:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labdd8
	b	.Lac1b8
.Labdd8:
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc4c
	mov	r1, #9
	bl	_Func_17658
	ldr	r2, =ewram_240
	mov	r3, #0x83
	lsl	r3, #2
	add	r2, r3
	mov	r5, r0
	mov	r3, #1
	strb	r3, [r2]
	b	.Labdfa
.Labdf4:
	mov	r0, #1
	bl	Func_30f8
.Labdfa:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Labdf4
	mov	r1, #1
	mov	r0, r5
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc4d
	mov	r1, #9
	bl	_Func_17658
	mov	r7, #0x83
	ldr	r2, =ewram_240
	lsl	r7, #2
	add	r2, r7
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labe38
.Labe32:
	mov	r0, #1
	bl	Func_30f8
.Labe38:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Labe32
	mov	r1, #1
	mov	r0, r5
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	bl	_Func_bf5a8
	bl	_Func_bf5a8
	bl	_Func_bf5a8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	_Func_7a350
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	_Func_7a458
	mov	r0, #0
	bl	_Func_77428
	mov	r0, #2
	mov	r11, r0
	b	.Lac1b6
.Labe82:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labe8e
	b	.Lac1b8
.Labe8e:
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc40
	str	r4, [sp, #8]
	bl	_Func_17658
	ldr	r2, =ewram_240
	mov	r1, #0x83
	lsl	r1, #2
	add	r2, r1
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labeb4
.Labeac:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
.Labeb4:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_17364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labeac
	mov	r0, r5
	mov	r1, #1
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #2
	b	.Lac158
.Labede:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	beq	.Labeea
	b	.Lac1b8
.Labeea:
	mov	r3, #1
	mov	r11, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	b	.Lac178
.Labefc:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	beq	.Labf08
	b	.Lac1b8
.Labf08:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r5, #0x10
	add	r2, r9
	mov	r3, #4
	mov	r11, r5
	mov	r4, #0x10
	str	r3, [r2]
	b	.Lac1b8
.Labf1c:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labf28
	b	.Lac1b8
.Labf28:
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc41
	str	r4, [sp, #8]
	bl	_Func_17658
	mov	r7, #0x83
	ldr	r2, =ewram_240
	lsl	r7, #2
	add	r2, r7
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labf4e
.Labf46:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
.Labf4e:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_17364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labf46
	mov	r0, r5
	mov	r1, #1
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #8
	b	.Lac158
.Labf78:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x28
	beq	.Labf84
	b	.Lac1b8
.Labf84:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	mov	r0, #2
	add	r3, #1
	mov	r11, r0
	mov	r4, #2
	str	r3, [r2]
	b	.Lac1b8
.Labf9a:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x28
	beq	.Labfa6
	b	.Lac1b8
.Labfa6:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lac1b8

	.pool_aligned

.Labff8:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Lac004
	b	.Lac1b8
.Lac004:
	ldr	r3, =ewram_240
	mov	r1, #0x83
	lsl	r1, #2
	add	r3, r1
	mov	r2, #1
	strb	r2, [r3]
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc44
	str	r4, [sp, #8]
	bl	_Func_17658
	mov	r1, #0x92
	mov	r5, r0
	mov	r0, #2
	bl	Func_a1ac0
	b	.Lac032
.Lac02a:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
.Lac032:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_17364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac02a
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac06a
	mov	r7, r1
	mov	r6, #1
.Lac050:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac050
.Lac06a:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc45
	bl	_Func_17658
	mov	r5, r0
	b	.Lac098
.Lac090:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
.Lac098:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_17364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac090
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac0d0
	mov	r7, r1
	mov	r6, #1
.Lac0b6:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac0b6
.Lac0d0:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc46
	bl	_Func_17658
	mov	r5, r0
	b	.Lac0fe
.Lac0f6:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
.Lac0fe:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_17364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac0f6
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac136
	mov	r7, r1
	mov	r6, #1
.Lac11c:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac11c
.Lac136:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_Func_16418
	mov	r0, r9
	bl	Func_aafb8
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x10
.Lac158:
	add	r2, r9
	str	r3, [r2]
	ldr	r4, [sp, #8]
	b	.Lac1b8
.Lac160:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	bne	.Lac1b8
	mov	r3, #1
	mov	r11, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x15
	add	r2, r9
.Lac178:
	mov	r4, #1
	str	r3, [r2]
	b	.Lac1b8
.Lac17e:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	bne	.Lac1b8
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r5, #0x20
	add	r2, r9
	mov	r3, #0x16
	mov	r11, r5
	mov	r4, #0x20
	str	r3, [r2]
	b	.Lac1b8
.Lac19c:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x3c
	bne	.Lac1b8
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x19
	add	r2, r9
	mov	r7, #2
	str	r3, [r2]
	mov	r11, r7
.Lac1b6:
	mov	r4, #2
.Lac1b8:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	beq	.Lac1c0
	b	.Lac304
.Lac1c0:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac1cc
	b	.Lac2ea
.Lac1cc:
	mov	r2, #1
	ldr	r1, [sp, #0x3c]
	neg	r2, r2
	cmp	r1, r2
	bne	.Lac1d8
	b	.Lac33c
.Lac1d8:
	mov	r3, #0
	ldr	r5, [sp, #0x28]
	str	r3, [sp, #0x44]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	ldr	r0, [sp, #0x28]
	lsr	r7, r3, #8
	mov	r3, #0xe0
	and	r3, r5
	mov	r6, #0x1f
	lsr	r5, r3, #5
	and	r6, r0
	mov	r1, r5
	mov	r0, r7
	mov	r2, r6
	str	r4, [sp, #8]
	bl	_Func_7a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Lac214
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	_Func_7a2bc
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac218
.Lac214:
	mov	r1, #1
	str	r1, [sp, #0x44]
.Lac218:
	mov	r2, #1
	str	r2, [sp, #0x24]
	ldr	r2, =iwram_1af8
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	bne	.Lac25a
	mov	r0, #0x72
	bl	_Func_f9080
	ldr	r5, [sp, #0x4c]
	ldr	r0, [r5, #0x30]
	bl	_Func_164ac
	mov	r3, #0x68
	ldr	r0, [r5, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x50
	mov	r3, #0xd8
	bl	_Func_164d4
	ldr	r0, =0xbbe
	ldr	r1, [r5, #0x30]
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_1e74c
	mov	r7, #1
	str	r7, [sp, #0x48]
	bl	.Lab834
.Lac25a:
	ldr	r0, [sp, #0x28]
	lsr	r3, r0, #15
	cmp	r3, #0
	beq	.Lac298
	mov	r0, #0xaf
	str	r4, [sp, #8]
	bl	_Func_f9080
	mov	r5, #0xf0
	ldr	r1, [sp, #0x28]
	lsl	r5, #4
	mov	r6, #0xe0
	and	r5, r1
	and	r6, r1
	mov	r3, #0x1f
	and	r3, r1
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_7a350
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_7a458
	b	.Lac2cc
.Lac298:
	mov	r0, #0x8b
	str	r4, [sp, #8]
	bl	_Func_f9080
	mov	r5, #0xf0
	ldr	r2, [sp, #0x28]
	lsl	r5, #4
	mov	r6, #0xe0
	and	r5, r2
	and	r6, r2
	mov	r3, #0x1f
	and	r3, r2
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_7a2e4
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_7a3a8
.Lac2cc:
	ldr	r4, [sp, #8]
	ldr	r3, [sp, #0x28]
	mov	r0, #0xf0
	lsl	r0, #4
	and	r0, r3
	lsr	r0, #8
	str	r4, [sp, #8]
	bl	_Func_77428
	mov	r0, r9
	bl	Func_aafb8
	mov	r5, #1
	str	r5, [sp, #0x48]
	ldr	r4, [sp, #8]
.Lac2ea:
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	bne	.Lac304
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.Lac304
	mov	r0, #0x70
	mov	r5, #7
	bl	_Func_f9080
	b	.Lac86a
.Lac304:
	mov	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac320
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	beq	.Lac314
	b	.Lac41e
.Lac314:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac320
	b	.Lac41e
.Lac320:
	mov	r1, #1
	ldr	r3, [sp, #0x1c]
	str	r1, [sp, #0x44]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lac3a4
	mov	r0, #1
	ldr	r7, [sp, #0x3c]
	neg	r0, r0
	cmp	r7, r0
	bne	.Lac36c
.Lac33c:
	mov	r0, #0x72
	bl	_Func_f9080
	bl	.Lab834

	.pool_aligned

.Lac36c:
	ldr	r2, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r2
	lsr	r7, r3, #8
	mov	r3, #0xe0
	and	r3, r2
	mov	r5, #0x1f
	mov	r1, #0
	lsr	r6, r3, #5
	and	r5, r2
	str	r1, [sp, #0x44]
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_7a1f8
	cmp	r0, #0
	bne	.Lac3a0
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Lac3a4
.Lac3a0:
	mov	r3, #1
	str	r3, [sp, #0x44]
.Lac3a4:
	ldr	r5, [sp, #0x44]
	cmp	r5, #0
	bne	.Lac3d8
	mov	r0, #0x72
	bl	_Func_f9080
	ldr	r7, [sp, #0x4c]
	ldr	r0, [r7, #0x30]
	bl	_Func_164ac
	mov	r3, #0x68
	ldr	r0, [r7, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x50
	mov	r3, #0xd8
	bl	_Func_164d4
	ldr	r0, =0xbbe
	ldr	r1, [r7, #0x30]
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_1e74c
	bl	.Lab834
.Lac3d8:
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	bne	.Lac414
	ldr	r3, [sp, #0x38]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, r0
	and	r3, r2
	mov	r5, #4
	cmp	r3, #0
	beq	.Lac416
	ldr	r5, [sp, #0x4c]
	ldr	r7, [sp, #0x38]
	mov	r3, #0x1c
	ldrsb	r3, [r5, r3]
	cmp	r7, r3
	bne	.Lac410
	mov	r0, #0xbc
	lsl	r0, #1
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r2
	mov	r5, #2
	cmp	r3, #0
	bne	.Lac416
	b	.Lac414
.Lac410:
	mov	r5, #3
	b	.Lac416
.Lac414:
	mov	r5, #1
.Lac416:
	mov	r0, #0x70
	bl	_Func_f9080
	b	.Lac86a
.Lac41e:
	mov	r3, #8
	and	r3, r4
	cmp	r3, #0
	beq	.Lac42c
	mov	r0, #0x71
	mov	r5, #2
	b	.Lac438
.Lac42c:
	mov	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.Lac440
	mov	r0, #0x71
	mov	r5, #1
.Lac438:
	bl	_Func_f9080
	neg	r5, r5
	b	.Lac86a
.Lac440:
	ldr	r1, [sp, #0x50]
	cmp	r1, #0
	beq	.Lac448
	b	.Lac5d2
.Lac448:
	mov	r3, #4
	and	r3, r4
	cmp	r3, #0
	bne	.Lac452
	b	.Lac5d2
.Lac452:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0
	bne	.Lac45a
	b	.Lac5aa
.Lac45a:
	ldr	r5, [sp, #0x20]
	mov	r3, #1
	eor	r5, r3
	str	r5, [sp, #0x20]
	cmp	r5, #0
	beq	.Lac46e
	mov	r0, #0x8b
	bl	_Func_f9080
	b	.Lac474
.Lac46e:
	mov	r0, #0xaf
	bl	_Func_f9080
.Lac474:
	mov	r7, #0
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x219
	str	r7, [sp, #0x44]
	add	r3, r0, r1
	ldrb	r3, [r3]
	cmp	r7, r3
	blt	.Lac486
	b	.Lac59e
.Lac486:
	mov	r2, #0xa0
	mov	r3, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
.Lac48e:
	mov	r5, #0
	str	r5, [sp, #0x40]
	ldr	r7, [sp, #0x14]
	mov	r0, r9
	ldrsb	r3, [r7, r0]
	cmp	r5, r3
	bge	.Lac57e
	ldr	r1, [sp, #0x10]
	lsl	r3, r1, #1
	add	r3, r9
	mov	r10, r3
.Lac4a4:
	mov	r2, r10
	ldrh	r7, [r2]
	mov	r3, #2
	mov	r0, #0xf0
	lsl	r0, #4
	add	r10, r3
	mov	r3, r7
	and	r3, r0
	lsr	r4, r3, #8
	mov	r5, #0
	mov	r1, #0xe0
	mov	r3, r7
	and	r3, r1
	mov	r2, #0x1f
	mov	r8, r5
	mov	r5, r7
	lsr	r6, r3, #5
	and	r5, r2
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	str	r4, [sp, #8]
	bl	_Func_7a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Lac4e8
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Lac4ec
.Lac4e8:
	mov	r3, #1
	mov	r8, r3
.Lac4ec:
	mov	r5, r8
	cmp	r5, #0
	beq	.Lac56e
	ldr	r0, [sp, #0x20]
	cmp	r0, #0
	beq	.Lac534
	lsr	r3, r7, #15
	cmp	r3, #0
	bne	.Lac56e
	mov	r1, #0xf0
	lsl	r1, #4
	mov	r2, #0xe0
	mov	r5, r7
	mov	r6, r7
	and	r5, r1
	and	r6, r2
	mov	r3, #0x1f
	and	r3, r7
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_7a2e4
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_7a3a8
	mov	r0, r5
	bl	_Func_77428
	b	.Lac56e
.Lac534:
	lsr	r3, r7, #15
	cmp	r3, #0
	beq	.Lac56e
	mov	r3, #0xf0
	lsl	r3, #4
	mov	r0, #0xe0
	mov	r5, r7
	mov	r6, r7
	and	r5, r3
	and	r6, r0
	mov	r3, #0x1f
	and	r3, r7
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_7a350
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_7a458
	mov	r0, r5
	bl	_Func_77428
.Lac56e:
	ldr	r1, [sp, #0x40]
	add	r1, #1
	str	r1, [sp, #0x40]
	ldr	r2, [sp, #0x14]
	mov	r5, r9
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	blt	.Lac4a4
.Lac57e:
	ldr	r7, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x44]
	add	r7, #1
	add	r0, #0xa
	add	r1, #1
	ldr	r2, [sp, #0x4c]
	ldr	r5, =0x219
	str	r7, [sp, #0x14]
	str	r0, [sp, #0x10]
	str	r1, [sp, #0x44]
	add	r3, r2, r5
	ldrb	r3, [r3]
	cmp	r1, r3
	bge	.Lac59e
	b	.Lac48e
.Lac59e:
	mov	r0, r9
	bl	Func_aafb8
	mov	r7, #1
	str	r7, [sp, #0x48]
	b	.Lac5d2
.Lac5aa:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_ab1f4
	mov	r0, #0x70
	mov	r5, #0xa
	bl	_Func_f9080
	b	.Lac86a
.Lac5d2:
	mov	r3, #0x40
	mov	r5, r11
	and	r3, r5
	cmp	r3, #0
	beq	.Lac682
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	mov	r5, #4
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac5f6
	bl	.Lab834
.Lac5f6:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #0xf
	add	r2, #2
	str	r3, [sp, #4]
	add	r1, #1
	mov	r3, #6
	mov	r6, #1
	str	r6, [sp]
	bl	Func_ab1f4
	ldr	r0, [sp, #0x38]
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac624
	bl	.Lab834
.Lac624:
	mov	r3, r6
	and	r3, r2
	mov	r1, #1
	cmp	r3, #0
	beq	.Lac63c
	mov	r3, #2
	neg	r3, r3
	and	r3, r2
	mov	r1, #0
	strb	r3, [r7, r0]
	str	r1, [sp, #0x30]
	b	.Lac65c
.Lac63c:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0
	bne	.Lac65c
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lac65c
	mov	r3, r2
	ldr	r5, [sp, #0x1c]
	ldr	r7, [sp, #0x38]
	orr	r3, r1
	mov	r0, #2
	strb	r3, [r5, r7]
	str	r0, [sp, #0x48]
	bl	.Lab834
.Lac65c:
	ldr	r1, [sp, #0x30]
	ldr	r3, [sp, #0x38]
	sub	r1, #1
	str	r1, [sp, #0x30]
	add	r3, #0xa0
	mov	r2, r9
	ldrsb	r1, [r2, r3]
	cmp	r1, #0
	bne	.Lac670
	mov	r1, #1
.Lac670:
	ldr	r0, [sp, #0x30]
	bl	Func_aa538
	mov	r3, #2
	str	r0, [sp, #0x30]
	str	r0, [sp, #0x2c]
	str	r3, [sp, #0x48]
	bl	.Lab834
.Lac682:
	mov	r3, #0x80
	mov	r5, r11
	and	r3, r5
	cmp	r3, #0
	beq	.Lac738
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	mov	r5, #4
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac6a6
	bl	.Lab834
.Lac6a6:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp, #4]
	add	r2, #2
	mov	r3, #6
	mov	r6, #1
	str	r6, [sp]
	bl	Func_ab1f4
	ldr	r7, [sp, #0x30]
	ldr	r3, [sp, #0x38]
	add	r7, #1
	str	r7, [sp, #0x30]
	add	r3, #0xa0
	mov	r0, r9
	ldrsb	r1, [r0, r3]
	cmp	r1, #0
	bne	.Lac6d8
	mov	r1, #1
.Lac6d8:
	ldr	r0, [sp, #0x30]
	bl	Func_aa538
	ldr	r3, [sp, #0x38]
	str	r0, [sp, #0x30]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, r6
	and	r3, r2
	cmp	r3, #0
	beq	.Lac710
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lac710
	mov	r3, #2
	neg	r3, r3
	ldr	r5, [sp, #0x38]
	and	r3, r2
	mov	r7, #0
	strb	r3, [r1, r5]
	str	r7, [sp, #0x30]
	b	.Lac72c

	.pool_aligned

.Lac710:
	ldr	r0, [sp, #0x30]
	cmp	r0, #0
	bne	.Lac72c
	ldr	r3, [sp, #0x38]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lac72c
	mov	r3, #1
	ldr	r5, [sp, #0x38]
	orr	r3, r2
	strb	r3, [r1, r5]
.Lac72c:
	ldr	r7, [sp, #0x30]
	mov	r0, #2
	str	r7, [sp, #0x2c]
	str	r0, [sp, #0x48]
	bl	.Lab834
.Lac738:
	mov	r3, #0x20
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.Lac7bc
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r3, [sp, #0x1c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	bne	.Lac772
	ldr	r2, [sp, #0x18]
	ldr	r7, [sp, #0x4c]
	sub	r1, r2, r5
	mov	r3, #1
	ldr	r2, [sp, #0x30]
	ldr	r0, [r7, #0x30]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_ab1f4
.Lac772:
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x4c]
	sub	r3, #1
	ldr	r0, =0x219
	str	r3, [sp, #0x38]
	add	r5, r7, r0
	ldrb	r1, [r5]
	mov	r0, r3
	bl	Func_aa538
	ldr	r1, [sp, #0x50]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	bne	.Lac842
	mov	r2, #0
	str	r2, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	bge	.Lac842
.Lac798:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lac7ae
	sub	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_aa538
	str	r0, [sp, #0x38]
.Lac7ae:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lac798
	b	.Lac842
.Lac7bc:
	mov	r3, #0x10
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	bne	.Lac7ca
	bl	.Lab834
.Lac7ca:
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r3, [sp, #0x1c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	bne	.Lac7fa
	ldr	r2, [sp, #0x18]
	ldr	r7, [sp, #0x4c]
	sub	r1, r2, r5
	mov	r3, #1
	ldr	r2, [sp, #0x30]
	ldr	r0, [r7, #0x30]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_ab1f4
.Lac7fa:
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x4c]
	add	r3, #1
	ldr	r0, =0x219
	str	r3, [sp, #0x38]
	add	r5, r7, r0
	ldrb	r1, [r5]
	mov	r0, r3
	bl	Func_aa538
	ldr	r1, [sp, #0x50]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	bne	.Lac842
	mov	r2, #0
	str	r2, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	bge	.Lac842
.Lac820:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lac836
	add	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_aa538
	str	r0, [sp, #0x38]
.Lac836:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lac820
.Lac842:
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x38]
	str	r2, [sp, #0x30]
	add	r3, #0xa0
	mov	r5, r9
	ldrsb	r1, [r5, r3]
	cmp	r1, #0
	bne	.Lac854
	mov	r1, #1
.Lac854:
	ldr	r0, [sp, #0x30]
	bl	Func_aa538
	str	r0, [sp, #0x30]
	ldr	r0, [sp, #0x38]
	mov	r7, #2
	lsl	r0, #3
	str	r7, [sp, #0x48]
	str	r0, [sp, #0x18]
	bl	.Lab834
.Lac86a:
	ldr	r3, [sp, #0x50]
	add	r1, sp, #0x38
	ldrb	r2, [r1]
	ldr	r1, [sp, #0x4c]
	add	r3, #0x1c
	strb	r2, [r1, r3]
	ldr	r2, [sp, #0x3c]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	beq	.Lac8cc
	ldr	r2, [sp, #0x38]
	ldr	r7, [sp, #0x34]
	mov	r0, #0xbc
	lsl	r0, #1
	lsl	r3, r2, #2
	add	r1, r7, r0
	add	r3, r2
	ldr	r7, [sp, #0x3c]
	lsl	r3, #1
	add	r3, r7
	lsl	r3, #1
	mov	r0, r9
	ldrh	r2, [r0, r3]
	ldr	r3, [sp, #0x4c]
	strh	r2, [r3, r1]
	ldr	r7, [sp, #0x50]
	mov	r1, #0x95
	lsl	r1, #2
	add	r0, r7, r1
	mov	r3, #0x1f
	ldr	r7, [sp, #0x4c]
	and	r3, r2
	strb	r3, [r7, r0]
	mov	r3, #0xe0
	mov	r1, r7
	and	r3, r2
	add	r1, #2
	lsr	r3, #5
	strb	r3, [r1, r0]
	ldr	r0, [sp, #0x50]
	mov	r3, #0x96
	lsl	r3, #2
	add	r1, r0, r3
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r2
	lsr	r3, #8
	strb	r3, [r7, r1]
.Lac8cc:
	ldr	r1, [sp, #0x30]
	ldr	r7, [sp, #0x34]
	mov	r0, #0xba
	lsl	r0, #1
	lsl	r3, r1, #2
	add	r2, r7, r0
	add	r3, r1
	ldr	r7, [sp, #0x38]
	ldr	r0, [sp, #0x4c]
	lsl	r3, #1
	add	r3, r7, r3
	strh	r3, [r0, r2]
	add	sp, #0x6c
	mov	r0, r5
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ab5e4

.thumb_func_start Func_ac8fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r11, r0
	mov	r0, r5
	sub	sp, #4
	mov	r6, r2
	bl	_Func_77394
	mov	r10, r0
	mov	r0, #1
	neg	r0, r0
	mov	r7, #0
	cmp	r6, r0
	bne	.Lac994
	lsl	r5, #8
	mov	r6, #0x84
	mov	r1, #0
	lsl	r6, #1
	str	r5, [sp]
	mov	r8, r1
	add	r6, r10
	mov	r9, r1
.Lac934:
	mov	r3, r8
	ldr	r2, [r6]
	lsl	r1, r3, #5
	mov	r0, r11
	lsl	r3, r7, #1
	mov	r5, #0
	mov	r14, r9
	mov	r12, r2
	add	r4, r3, r0
.Lac946:
	mov	r2, #1
	lsl	r2, r5
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	beq	.Lac960
	mov	r3, r1
	ldr	r2, =0xffff8000
	ldr	r0, [sp]
	orr	r3, r5
	orr	r3, r2
	orr	r3, r0
	b	.Lac976
.Lac960:
	mov	r3, r14
	add	r3, #0xf8
	mov	r0, r10
	ldr	r3, [r0, r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Lac97c
	ldr	r2, [sp]
	mov	r3, r1
	orr	r3, r5
	orr	r3, r2
.Lac976:
	strh	r3, [r4]
	add	r7, #1
	add	r4, #2
.Lac97c:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac946
	mov	r0, #1
	add	r8, r0
	mov	r3, #4
	mov	r1, r8
	add	r6, #4
	add	r9, r3
	cmp	r1, #3
	ble	.Lac934
	b	.Lac9ea
.Lac994:
	mov	r0, #0x84
	lsl	r3, r6, #2
	lsl	r0, #1
	add	r2, r3, r0
	mov	r1, r10
	ldr	r2, [r1, r2]
	lsl	r4, r6, #5
	mov	r12, r2
	mov	r6, r11
	lsl	r2, r7, #1
	add	r0, r2, r6
	ldr	r2, =0xffff8000
	mov	r1, #1
	add	r3, #0xf8
	mov	r5, #0
	mov	r14, r1
	mov	r9, r2
	mov	r8, r3
.Lac9b8:
	mov	r1, r14
	lsl	r1, r5
	mov	r3, r12
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9ce
	mov	r3, r4
	orr	r3, r5
	mov	r6, r9
	orr	r3, r6
	b	.Lac9de
.Lac9ce:
	mov	r2, r10
	mov	r6, r8
	ldr	r3, [r2, r6]
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9e4
	mov	r3, r4
	orr	r3, r5
.Lac9de:
	strh	r3, [r0]
	add	r7, #1
	add	r0, #2
.Lac9e4:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac9b8
.Lac9ea:
	mov	r0, r7
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ac8fc

.thumb_func_start Func_aca04
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r4, r0
	sub	sp, #0x18
	mov	r8, r1
	ldr	r7, [r3]
	cmp	r4, #0
	bne	.Laca5a
	ldr	r2, =0x259
	add	r3, r7, r2
	ldrb	r3, [r3]
	ldr	r0, [r7, #0x34]
	mov	r5, #1
	mov	r6, #2
	str	r1, [sp, #0xc]
	mov	r2, #0
	mov	r1, #0
	str	r4, [sp, #4]
	str	r4, [sp, #0x14]
	str	r5, [sp]
	str	r6, [sp, #8]
	str	r5, [sp, #0x10]
	bl	Func_acab8
	mov	r2, #0x96
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r4, [sp, #0x14]
	mov	r2, r8
	ldr	r0, [r7, #0x24]
	ldrb	r3, [r3]
	mov	r1, #0
	str	r2, [sp, #0xc]
	mov	r2, #0
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r4, [sp, #0x10]
	bl	Func_acab8
	b	.Laca98
.Laca5a:
	ldr	r2, =0x21b
	add	r3, r7, r2
	mov	r2, #2
	ldrb	r3, [r3]
	ldr	r0, [r7, #0x34]
	str	r2, [sp, #8]
	mov	r2, r8
	mov	r5, #0
	mov	r6, #1
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #0x10]
	bl	Func_acab8
	ldr	r2, =0x21a
	add	r3, r7, r2
	mov	r2, r8
	ldr	r0, [r7, #0x24]
	ldrb	r3, [r3]
	mov	r1, #0
	str	r2, [sp, #0xc]
	mov	r2, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0x10]
	bl	Func_acab8
.Laca98:
	mov	r0, #1
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aca04

.thumb_func_start Func_acab8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xac
	mov	r9, r0
	mov	r0, r3
	ldr	r5, [sp, #0xcc]
	ldr	r6, [sp, #0xd0]
	str	r1, [sp, #0x40]
	str	r2, [sp, #0x3c]
	str	r3, [sp, #0x38]
	bl	_Func_77394
	ldr	r3, =iwram_1f2c
	str	r0, [sp, #0x34]
	mov	r1, #0x95
	ldr	r4, [r3]
	lsl	r1, #2
	add	r0, r4, #2
	add	r3, r5, r1
	ldrb	r2, [r0, r3]
	str	r2, [sp, #0x2c]
	ldrb	r3, [r4, r3]
	str	r3, [sp, #0x28]
	mov	r3, #0xbc
	lsl	r3, #1
	mov	r12, r3
	lsl	r5, #1
	add	r5, r12
	mov	r2, #0x80
	mov	r14, r0
	lsl	r2, #8
	ldrh	r0, [r4, r5]
	mov	r3, r2
	and	r3, r0
	lsl	r3, #16
	lsr	r3, #16
	str	r3, [sp, #0x24]
	add	r1, r6, r1
	mov	r0, r14
	ldrb	r0, [r0, r1]
	str	r0, [sp, #0x20]
	ldrb	r1, [r4, r1]
	lsl	r6, #1
	str	r1, [sp, #0x1c]
	add	r6, r12
	ldrh	r3, [r4, r6]
	mov	r5, #0xa6
	and	r2, r3
	lsl	r5, #1
	lsl	r2, #16
	lsr	r2, #16
	mov	r0, r5
	str	r2, [sp, #0x18]
	bl	Func_4938
	ldr	r3, =Func_1af8
	ldr	r1, [sp, #0x34]
	str	r0, [sp, #0x30]
	mov	r2, r5
	bl	_call_via_r3
	ldr	r1, [sp, #0xd8]
	cmp	r1, #0
	beq	.Lacb44
	b	.Lacc66
.Lacb44:
	ldr	r2, [sp, #0xd4]
	cmp	r2, #3
	bne	.Lacbd2
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x40]
	mov	r3, #0x34
	ldrsh	r0, [r1, r3]
	lsl	r2, #3
	ldr	r3, [sp, #0x3c]
	mov	r11, r2
	lsl	r7, r3, #3
	mov	r5, r11
	mov	r1, #0x38
	add	r5, #0x50
	add	r1, r7
	str	r1, [sp]
	mov	r10, r1
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_1ea08
	mov	r1, #0x40
	ldr	r3, [sp, #0x34]
	add	r1, r7
	mov	r2, #0x36
	ldrsh	r0, [r3, r2]
	mov	r8, r1
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	sub	r5, #0x20
	mov	r1, r10
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	mov	r1, r8
	mov	r2, #0x3a
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r3, r5
	mov	r1, #3
	mov	r2, r9
	bl	_Func_1ea08
	mov	r6, r11
	ldr	r5, =.Laf290
	add	r6, #0x48
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r10
	bl	_Func_1e8b0
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r8
	bl	_Func_1e8b0
	b	.Lacc0c
.Lacbd2:
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x40]
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	ldr	r2, [sp, #0x3c]
	lsl	r1, #3
	lsl	r7, r2, #3
	mov	r11, r1
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x38
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r5
	mov	r2, r9
	bl	_Func_1ea08
	ldr	r1, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r0, [r1, r3]
	mov	r3, r7
	add	r3, #0x40
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_1ea08
.Lacc0c:
	ldr	r2, [sp, #0x34]
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x48
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r9
	mov	r3, r5
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	ldrh	r0, [r3, #0x3e]
	mov	r3, r7
	add	r3, #0x50
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	add	r3, #0x40
	ldrh	r0, [r3]
	mov	r3, r7
	add	r3, #0x58
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	mov	r2, r7
	add	r3, #0x42
	ldrb	r0, [r3]
	add	r2, #0x60
	mov	r3, r11
	str	r2, [sp]
	add	r3, #0x38
	mov	r1, #2
	mov	r2, r9
	bl	_Func_1ea08
.Lacc66:
	ldr	r0, [sp, #0xd4]
	cmp	r0, #1
	beq	.Lacc9e
	cmp	r0, #1
	bgt	.Lacc76
	cmp	r0, #0
	beq	.Lacc82
	b	.Lacd0a
.Lacc76:
	ldr	r1, [sp, #0xd4]
	cmp	r1, #2
	beq	.Laccb2
	cmp	r1, #4
	beq	.Laccea
	b	.Lacd0a
.Lacc82:
	ldr	r2, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r2
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	bl	_Func_7a1b4
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_Func_7a2e4
	b	.Lacd0a
.Lacc9e:
	ldr	r0, [sp, #0x28]
	mov	r3, #0x1f
	and	r0, r3
	str	r0, [sp, #0x28]
	ldr	r1, [sp, #0x2c]
	ldr	r0, [sp, #0x38]
	ldr	r2, [sp, #0x28]
	bl	_Func_7a350
	b	.Lacd0a
.Laccb2:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0
	beq	.Laccc8
	ldr	r2, [sp, #0x28]
	mov	r3, #0x1f
	and	r2, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x2c]
	str	r2, [sp, #0x28]
	bl	_Func_7a350
.Laccc8:
	ldr	r3, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_Func_7a1b4
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_Func_7a2e4
	b	.Lacd0a
.Laccea:
	ldr	r1, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r1
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_Func_7a1b4
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_Func_7a2e4
.Lacd0a:
	ldr	r0, [sp, #0x38]
	bl	_Func_77428
	ldr	r0, [sp, #0x38]
	bl	_Func_77394
	ldr	r3, [sp, #0xd8]
	str	r0, [sp, #0x34]
	cmp	r3, #0
	bne	.Lacdca
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x3c]
	lsl	r0, #3
	mov	r11, r0
	lsl	r7, r1, #3
	mov	r6, r11
	add	r6, #0x28
	mov	r5, r7
	ldr	r0, [sp, #0x34]
	add	r5, #0x10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	bl	_Func_1e8b0
	mov	r3, r5
	ldr	r0, =.Laf28c
	mov	r1, r9
	mov	r2, r6
	bl	_Func_1e8b0
	ldr	r2, [sp, #0x34]
	mov	r3, r11
	ldrb	r0, [r2, #0xf]
	add	r3, #0x58
	mov	r1, #2
	mov	r2, r9
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r5, =0x8ae
	mov	r3, r7
	mov	r0, r5
	add	r3, #0x38
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	mov	r3, r7
	add	r0, r5, #1
	add	r3, #0x40
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	mov	r3, r7
	add	r0, r5, #2
	add	r3, #0x48
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	mov	r3, r7
	add	r0, r5, #3
	add	r3, #0x50
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	mov	r3, r7
	add	r0, r5, #4
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	add	r5, #5
	mov	r3, r7
	add	r3, #0x60
	mov	r0, r5
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	ldr	r1, =0x129
	ldr	r0, [sp, #0x30]
	add	r3, r0, r1
	ldrb	r0, [r3]
	ldr	r3, =0x741
	add	r0, r3
	mov	r3, r7
	add	r3, #0x20
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
.Lacdca:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	beq	.Lacdd2
	b	.Lad062
.Lacdd2:
	ldr	r3, =0x129
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x34]
	add	r6, r0, r3
	add	r5, r1, r3
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	mov	r12, r1
	cmp	r12, r3
	beq	.Lace38
	ldr	r1, [sp, #0x3c]
	ldr	r3, =0x741
	ldrb	r0, [r5]
	ldr	r2, [sp, #0x40]
	add	r0, r3
	lsl	r3, r1, #3
	lsl	r2, #3
	add	r3, #0x30
	mov	r1, r9
	mov	r11, r2
	bl	_Func_1e7c0
	ldr	r3, [sp, #0xd8]
	ldr	r2, [sp, #0x40]
	ldr	r1, =0xf296
	str	r3, [sp]
	add	r2, #2
	mov	r3, #5
	mov	r0, r9
	bl	_Func_19000
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	b	.Lace3e

	.pool_aligned

.Lace38:
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r11, r0
.Lace3e:
	mov	r12, r1
	ldr	r2, [sp, #0x40]
	cmp	r12, r3
	beq	.Lace48
	add	r2, #5
.Lace48:
	ldr	r1, [sp, #0x3c]
	ldr	r3, [sp, #0x34]
	mov	r0, #0x8e
	mov	r4, #0
	add	r1, #5
	lsl	r0, #1
	mov	r8, r1
	mov	r10, r4
	add	r7, r2, #1
	add	r6, r3, r0
	mov	r5, r2
.Lace5e:
	ldr	r2, =0x5001
	mov	r3, r10
	add	r1, r4, r2
	str	r3, [sp]
	mov	r2, r5
	mov	r0, r9
	mov	r3, r8
	str	r4, [sp, #8]
	bl	_Func_19000
	ldrb	r1, [r6]
	ldr	r0, =0xf030
	mov	r2, r10
	add	r1, r0
	str	r2, [sp]
	mov	r0, r9
	mov	r2, r7
	mov	r3, r8
	bl	_Func_19000
	ldr	r4, [sp, #8]
	add	r4, #1
	add	r6, #1
	add	r7, #2
	add	r5, #2
	cmp	r4, #3
	ble	.Lace5e
	ldr	r2, [sp, #0x34]
	mov	r3, #0x46
	mov	r1, #0x38
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	add	r3, r11
	mov	r8, r3
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Laceea
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x38
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x38
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacede
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_ae9f0
	b	.Laceea
.Lacede:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_ae9f0
.Laceea:
	ldr	r2, [sp, #0x34]
	mov	r1, #0x3a
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Lacf3a
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x40
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacf2e
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_ae9f0
	b	.Lacf3a
.Lacf2e:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_ae9f0
.Lacf3a:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	beq	.Lacf84
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x48
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	bls	.Lacf78
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_ae9f0
	b	.Lacf84
.Lacf78:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_ae9f0
.Lacf84:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	beq	.Lacfce
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x50
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	bls	.Lacfc2
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_ae9f0
	b	.Lacfce
.Lacfc2:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_ae9f0
.Lacfce:
	ldr	r5, [sp, #0x34]
	ldr	r7, [sp, #0x30]
	add	r5, #0x40
	add	r7, #0x40
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	beq	.Lad018
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r6, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r6, #0x58
	mov	r1, #4
	str	r6, [sp]
	bl	_Func_1ea08
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	bls	.Lad00c
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #0
	bl	Func_ae9f0
	b	.Lad018
.Lad00c:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	bl	Func_ae9f0
.Lad018:
	ldr	r7, [sp, #0x34]
	ldr	r6, [sp, #0x30]
	add	r7, #0x42
	add	r6, #0x42
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	beq	.Lad062
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x58
	mov	r2, r9
	add	r5, #0x60
	mov	r1, #2
	str	r5, [sp]
	bl	_Func_1ea08
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	bls	.Lad056
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_ae9f0
	b	.Lad062
.Lad056:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_ae9f0
.Lad062:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	bgt	.Lad06a
	b	.Lad212
.Lad06a:
	ldr	r3, [sp, #0xd4]
	mov	r2, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r10, r3
	mov	r0, r10
	mov	r3, #6
	sub	r0, r3, r0
	ldr	r3, [sp, #0xd8]
	mov	r10, r0
	sub	r3, #1
	mov	r1, r10
	mul	r1, r3
	ldr	r0, [sp, #0x30]
	mov	r8, r1
	ldr	r1, [sp, #0x34]
	add	r2, sp, #0x44
	add	r5, sp, #0x4c
	add	r1, #0x58
	add	r3, sp, #0x48
	str	r2, [sp]
	add	r0, #0x58
	mov	r2, r5
	bl	Func_aae14
	lsl	r0, #24
	str	r0, [sp, #0x10]
	asr	r3, r0, #24
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r2, #0
	mov	r1, #0
	mov	r11, r0
	cmp	r8, r3
	bge	.Lad182
	cmp	r1, r10
	bge	.Lad17c
	mov	r3, #0
	str	r0, [sp, #0x14]
	mov	r0, r8
	str	r3, [sp, #0xc]
	lsl	r3, r0, #1
	add	r7, r3, r5
.Lad0c4:
	ldr	r1, [sp, #0x3c]
	lsl	r6, r2, #24
	asr	r2, r6, #23
	add	r2, r1, r2
	ldrh	r3, [r7]
	ldr	r0, =0x3fff
	lsl	r2, #3
	and	r3, r0
	add	r2, #4
	mov	r0, r9
	mov	r1, r11
	bl	Func_ae958
	ldrh	r2, [r7]
	ldr	r3, .Lad100	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad0f0
	mov	r0, #4
	bl	_Func_1e71c
	b	.Lad11a
.Lad0f0:
	ldr	r3, .Lad104	@ 0x4000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad114
	mov	r0, #2
	bl	_Func_1e71c
	b	.Lad11a

	.align	2, 0
.Lad100:
	.word	0x8000
.Lad104:
	.word	0x4000
	.pool

.Lad114:
	mov	r0, #0xf
	bl	_Func_1e71c
.Lad11a:
	ldr	r1, [sp, #0x3c]
	asr	r6, #24
	ldrh	r3, [r7]
	lsl	r5, r6, #1
	ldr	r0, =0x3fff
	add	r5, r1, r5
	ldr	r2, [sp, #0x14]
	and	r0, r3
	lsl	r5, #3
	ldr	r3, =0x333
	add	r5, #8
	add	r0, r3
	mov	r1, r9
	add	r2, #0x10
	mov	r3, r5
	bl	_Func_1e7c0
	ldrh	r0, [r7]
	bl	_Func_78b9c
	ldr	r3, [sp, #0x14]
	ldrb	r0, [r0, #9]
	mov	r1, #2
	mov	r2, r9
	add	r3, #0x58
	str	r5, [sp]
	bl	_Func_1e9d4
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #17
	add	r3, r0, r1
	ldr	r0, [sp, #0x10]
	add	r6, #1
	lsr	r1, r3, #24
	mov	r3, #1
	lsl	r6, #24
	add	r8, r3
	asr	r3, r0, #24
	lsr	r2, r6, #24
	add	r7, #2
	cmp	r8, r3
	bge	.Lad182
	lsl	r3, r1, #24
	str	r3, [sp, #0xc]
	asr	r3, #24
	cmp	r3, r10
	blt	.Lad0c4
	b	.Lad182
.Lad17c:
	ldr	r1, [sp, #0x40]
	lsl	r1, #3
	mov	r11, r1
.Lad182:
	mov	r0, #0xf
	bl	_Func_1e71c
	ldr	r3, [sp, #0x3c]
	mov	r2, r11
	lsl	r6, r3, #3
	ldr	r0, =0xaed
	add	r2, #0x58
	mov	r1, r9
	mov	r3, r6
	bl	_Func_1e7c0
	ldr	r0, [sp, #0xd4]
	cmp	r0, #3
	beq	.Lad206
	ldr	r3, [sp, #0x48]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lad1be
	mov	r0, #4
	bl	_Func_1e71c
	mov	r3, r6
	ldr	r0, =0xba2
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	mov	r5, #1
.Lad1be:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.Lad1de
	mov	r0, #2
	bl	_Func_1e71c
	ldr	r1, [sp, #0x3c]
	add	r3, r1, r5
	lsl	r3, #3
	ldr	r0, =0xba3
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
	add	r5, #1
.Lad1de:
	cmp	r5, #0
	bne	.Lad1f0
	mov	r3, r6
	ldr	r0, =0xba8
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_1e7c0
.Lad1f0:
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, r9
	mov	r1, #0
	mov	r2, #0xb
	mov	r3, #0xd
	bl	_Func_1e41c
.Lad206:
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
.Lad212:
	ldr	r3, [sp, #0xd8]
	cmp	r3, #0
	bne	.Lad228
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x38]
	mov	r1, #0
	ldr	r2, [sp, #0xdc]
	mov	r3, r9
	bl	_Func_1ec6c
.Lad228:
	mov	r2, #0xa6
	ldr	r1, [sp, #0x30]
	ldr	r3, =Func_1af8
	ldr	r0, [sp, #0x34]
	lsl	r2, #1
	bl	_call_via_r3
	ldr	r0, [sp, #0x30]
	bl	Func_2df0
	mov	r0, #1
	add	sp, #0xac
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_acab8

	.section .rodata

.Laf28c:
	.incrom 0xaf28c, 0xaf290
.Laf290:
	.incrom 0xaf290, 0xaf294
