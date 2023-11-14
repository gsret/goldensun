	.include "macros.inc"

.thumb_func_start Func_b6f44
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r2, [sp, #0x10]
	mov	r6, r0
	lsl	r2, #16
	mov	r0, #0xf0
	str	r3, [sp, #0xc]
	str	r2, [sp, #8]
	lsl	r3, #16
	mov	r9, r1
	lsl	r0, #8
	mov	r1, r2
	mov	r2, #0
	str	r3, [sp, #4]
	bl	_Func_c150
	mov	r8, r0
	mov	r0, r9
	bl	_Func_77394
	mov	r2, #0
	mov	r10, r0
	mov	r0, r9
	mov	r11, r2
	bl	Func_b6d30
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r3, [r3]
	mov	r7, r0
	cmp	r3, #0
	bne	.Lb6fb4
	mov	r5, #0x94
	lsl	r5, #1
	add	r5, r10
	ldrb	r0, [r5]
	bl	Func_c2384
	mov	r1, r0
	cmp	r7, #0
	bne	.Lb6fb0
	ldrb	r0, [r5]
	str	r1, [sp]
	bl	Func_c23a0
	mov	r11, r0
	ldr	r1, [sp]
	b	.Lb6ffe
.Lb6fb0:
	mov	r1, r7
	b	.Lb6ffe
.Lb6fb4:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r10
	ldrb	r3, [r3]
	cmp	r3, #5
	bhi	.Lb6ff0
	ldr	r2, =.Lb6fc8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lb6fc8:
	.word	.Lb6ff0
	.word	.Lb6fe0
	.word	.Lb6fe8
	.word	.Lb6fe4
	.word	.Lb6ff0
	.word	.Lb6fec
.Lb6fe0:
	ldr	r1, =0x12d
	b	.Lb6ff4
.Lb6fe4:
	ldr	r1, =0x12f
	b	.Lb6ff4
.Lb6fe8:
	mov	r1, #0x97
	b	.Lb6ff2
.Lb6fec:
	ldr	r1, =0x131
	b	.Lb6ff4
.Lb6ff0:
	mov	r1, #0x96
.Lb6ff2:
	lsl	r1, #1
.Lb6ff4:
	mov	r3, r9
	cmp	r3, #7
	bls	.Lb6ffe
	mov	r2, #1
	mov	r11, r2
.Lb6ffe:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x18]
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r10
	ldrb	r3, [r3]
	sub	r3, #0x12
	cmp	r3, #0x8b
	bls	.Lb7014
	b	.Lb7350
.Lb7014:
	ldr	r2, =.Lb701c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lb701c:
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb726a
	.word	.Lb734c
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72aa
	.word	.Lb72ae
	.word	.Lb72b2
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7304
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb724c
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72b6
	.word	.Lb72bc
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7250
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb734c
	.word	.Lb7350
	.word	.Lb72ca
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72d0
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb730a
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72d4
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb7270
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb734c
	.word	.Lb7350
	.word	.Lb72c2
	.word	.Lb72c6
	.word	.Lb7254
	.word	.Lb7258
	.word	.Lb72d8
	.word	.Lb72dc
	.word	.Lb72e0
	.word	.Lb72e4
	.word	.Lb72e8
	.word	.Lb72ec
	.word	.Lb725c
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72f0
	.word	.Lb7350
	.word	.Lb7350
	.word	.Lb72f6
	.word	.Lb72fa
	.word	.Lb7300
	.word	.Lb7262
	.word	.Lb7274
	.word	.Lb7266
	.word	.Lb727a
	.word	.Lb7280
	.word	.Lb7286
	.word	.Lb728c
	.word	.Lb7292
	.word	.Lb7298
	.word	.Lb729e
	.word	.Lb72a4
.Lb724c:
	ldr	r3, =0x19999
	b	.Lb734e
.Lb7250:
	ldr	r3, =0x18ccc
	b	.Lb734e
.Lb7254:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb7258:
	ldr	r3, =0x19999
	b	.Lb734e
.Lb725c:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7262:
	ldr	r3, =0x1cccc
	b	.Lb734e
.Lb7266:
	ldr	r3, =0x1cccc
	b	.Lb734e
.Lb726a:
	mov	r3, #0x80
	lsl	r3, #9
	b	.Lb734e
.Lb7270:
	ldr	r3, =0x1b333
	b	.Lb734e
.Lb7274:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb727a:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7280:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7286:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb728c:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7292:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7298:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb729e:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb72a4:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb72aa:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72ae:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72b2:
	ldr	r3, =0x16666
	b	.Lb734e
.Lb72b6:
	mov	r3, #0x80
	lsl	r3, #9
	b	.Lb734e
.Lb72bc:
	mov	r3, #0xa0
	lsl	r3, #9
	b	.Lb734e
.Lb72c2:
	ldr	r3, =0x16666
	b	.Lb734e
.Lb72c6:
	ldr	r3, =0x16666
	b	.Lb734e
.Lb72ca:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb72d0:
	ldr	r3, =0x14ccc
	b	.Lb734e
.Lb72d4:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72d8:
	ldr	r3, =0x10ccc
	b	.Lb734e
.Lb72dc:
	ldr	r3, =0x10ccc
	b	.Lb734e
.Lb72e0:
	ldr	r3, =0x11999
	b	.Lb734e
.Lb72e4:
	ldr	r3, =0x11999
	b	.Lb734e
.Lb72e8:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72ec:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72f0:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb72f6:
	ldr	r3, =0x13333
	b	.Lb734e
.Lb72fa:
	mov	r3, #0xc0
	lsl	r3, #9
	b	.Lb734e
.Lb7300:
	ldr	r3, =0x18ccc
	b	.Lb734e
.Lb7304:
	mov	r3, #0xa0
	lsl	r3, #9
	b	.Lb734e
.Lb730a:
	mov	r3, #0xa0
	lsl	r3, #9
	b	.Lb734e

	.pool_aligned

.Lb734c:
	ldr	r3, =0xe666
.Lb734e:
	str	r3, [r6, #0x18]
.Lb7350:
	ldr	r2, [sp, #8]
	mov	r3, r8
	str	r3, [r6]
	ldr	r3, [sp, #4]
	str	r2, [r6, #0xc]
	mov	r0, r9
	mov	r2, r11
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x14]
	strh	r1, [r6, #4]
	bl	Func_b6eb4
	mov	r5, #0
	strh	r5, [r6, #8]
	str	r5, [r6, #0x20]
	str	r5, [r6, #0x24]
	strh	r5, [r6, #0x28]
	strh	r5, [r6, #0x2a]
	mov	r5, #0x94
	mov	r3, #0xff
	lsl	r5, #1
	lsl	r3, #1
	add	r5, r10
	strh	r3, [r6, #0xa]
	ldrb	r3, [r5]
	strh	r0, [r6, #6]
	cmp	r3, #1
	bhi	.Lb73a8
	mov	r0, r10
	mov	r1, #1
	bl	_Func_78870
	cmp	r0, #0xf
	bne	.Lb73a8
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.Lb739e
	mov	r1, #0xf0
	b	.Lb73a0
.Lb739e:
	mov	r1, #0xf1
.Lb73a0:
	lsl	r1, #1
	strh	r1, [r6, #4]
	mov	r3, #0
	strh	r3, [r6, #6]
.Lb73a8:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	bge	.Lb73b0
	add	r3, #7
.Lb73b0:
	asr	r0, r3, #3
	ldr	r1, [sp, #0x10]
	bl	Func_44d0
	mov	r3, #0x80
	lsl	r3, #8
	add	r0, r3
	mov	r2, r8
	mov	r3, #3
	strh	r0, [r2, #6]
	add	r2, #0x59
	strb	r3, [r2]
	mov	r3, #2
	sub	r2, #4
	strb	r3, [r2]
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb73dc
	ldr	r3, =0x14ccc
	b	.Lb73e0
.Lb73dc:
	mov	r3, #0x80
	lsl	r3, #9
.Lb73e0:
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	ldr	r1, =.Lc5938
	mov	r0, r8
	bl	_Func_c2d8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b6f44

	.section .rodata

.Lc5938:
	.incrom 0xc5938, 0xc593c
