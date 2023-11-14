	.include "macros.inc"

.thumb_func_start OvlFunc_1158
	push	{r4, r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	sub	sp, #8
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	bl	OvlFunc_142c
	cmp	r0, #0
	beq	.L1178
.L1174:
	mov	r0, r10
	b	.L1396
.L1178:
	mov	r0, r9
	bl	OvlFunc_142c
	cmp	r0, #0
	bne	.L11ec
	mov	r0, r10
	bl	OvlFunc_143c
	cmp	r0, #0
	beq	.L11a8
	mov	r0, r9
	bl	OvlFunc_143c
	cmp	r0, #0
	beq	.L1174
	mov	r0, r10
	mov	r1, r9
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	beq	.L1174
	bl	OvlFunc_1424
	b	.L1396
.L11a8:
	mov	r0, r9
	bl	OvlFunc_143c
	cmp	r0, #0
	bne	.L11ec
	mov	r0, r9
	bl	OvlFunc_144c
	cmp	r0, #0
	beq	.L11e2
	mov	r0, r10
	bl	OvlFunc_144c
	cmp	r0, #0
	beq	.L1174
	mov	r2, r8
	mov	r3, r10
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r4}
	stmia	r2!, {r0, r4}
	mov	r1, r10
	mov	r4, r9
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	mov	r0, r8
	and	r3, r2
	str	r3, [r0, #4]
	b	.L1396
.L11e2:
	mov	r0, r10
	bl	OvlFunc_144c
	cmp	r0, #0
	beq	.L11f0
.L11ec:
	mov	r0, r9
	b	.L1396
.L11f0:
	mov	r1, r10
	ldr	r1, [r1, #8]
	mov	r2, r9
	ldr	r2, [r2, #8]
	mov	r14, r1
	mov	r1, r9
	mov	r3, r10
	ldr	r0, [r1, #0xc]
	ldr	r1, [r1, #0x10]
	mov	r4, r14
	ldr	r6, [r3, #0xc]
	ldr	r7, [r3, #0x10]
	sub	r3, r4, r2
	mov	r12, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r3, #0
	bge	.L1216
	neg	r3, r3
.L1216:
	cmp	r3, #0x3f
	bgt	.L1286
	cmp	r14, r12
	ble	.L125c
	mov	r2, r12
	mov	r1, r14
	mov	r0, #1
	sub	r1, r2
	mov	r11, r0
	mov	r12, r1
.L122a:
	mov	r3, #1
	ldr	r0, [sp, #4]
	neg	r3, r3
	add	r12, r3
	ldr	r3, [sp]
	lsl	r5, r0, #31
	ldr	r1, [sp]
	lsr	r0, r3, #1
	mov	r3, r5
	mov	r4, r11
	orr	r3, r0
	ldr	r0, [sp, #4]
	and	r1, r4
	lsr	r4, r0, #1
	mov	r0, r1
	orr	r0, r3
	mov	r2, #0
	str	r0, [sp]
	mov	r0, r2
	orr	r0, r4
	mov	r1, r12
	str	r0, [sp, #4]
	cmp	r1, #0
	bne	.L122a
	mov	r12, r14
.L125c:
	cmp	r12, r14
	ble	.L129a
	mov	r2, #1
	mov	r11, r2
.L1264:
	mov	r3, #1
	lsl	r5, r7, #31
	mov	r1, r11
	lsr	r0, r6, #1
	add	r14, r3
	and	r1, r6
	mov	r2, #0
	mov	r3, r5
	lsr	r4, r7, #1
	orr	r3, r0
	mov	r6, r1
	mov	r7, r2
	orr	r6, r3
	orr	r7, r4
	cmp	r12, r14
	bgt	.L1264
	b	.L129a
.L1286:
	cmp	r14, r12
	ble	.L1294
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp]
	str	r1, [sp, #4]
	b	.L129a
.L1294:
	mov	r14, r12
	mov	r6, #0
	mov	r7, #0
.L129a:
	mov	r1, r10
	mov	r2, r9
	ldr	r0, [r1, #4]
	ldr	r3, [r2, #4]
	cmp	r0, r3
	beq	.L1348
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	sub	r1, r6
	sbc	r2, r7
	cmp	r0, #0
	bne	.L12be
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	mov	r2, r7
	mov	r1, r6
	sub	r1, r3
	sbc	r2, r4
.L12be:
	cmp	r2, #0
	blt	.L12d4
	mov	r3, #0
	mov	r4, r8
	str	r3, [r4, #4]
	mov	r0, r14
	mov	r3, r8
	str	r0, [r4, #8]
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x10]
	b	.L12ea
.L12d4:
	mov	r4, r8
	mov	r3, #1
	mov	r0, r14
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	mov	r4, #0
	neg	r3, r1
	sbc	r4, r2
	mov	r1, r8
	str	r3, [r1, #0xc]
	str	r4, [r1, #0x10]
.L12ea:
	mov	r2, r8
	ldr	r4, [r2, #0xc]
	ldr	r5, [r2, #0x10]
	ldr	r1, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r4
	adc	r3, r5
	cmp	r3, r1
	bhi	.L135e
	cmp	r3, r1
	bne	.L130c
	mov	r0, #2
	neg	r0, r0
	cmp	r2, r0
	bhi	.L135e
.L130c:
	lsr	r2, r4, #31
	lsl	r3, r5, #1
	mov	r1, r2
	mov	r2, r8
	orr	r1, r3
	ldr	r3, [r2, #8]
	lsl	r0, r4, #1
	sub	r3, #1
	str	r0, [r2, #0xc]
	str	r1, [r2, #0x10]
	str	r3, [r2, #8]
	ldr	r6, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r0
	adc	r3, r1
	cmp	r3, r6
	bhi	.L135e
	mov	r5, r1
	mov	r4, r0
	cmp	r3, r6
	bne	.L130c
	mov	r4, #2
	neg	r4, r4
	cmp	r2, r4
	bhi	.L135e
	mov	r5, r1
	mov	r4, r0
	b	.L130c
.L1348:
	mov	r1, r8
	mov	r2, r14
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	add	r6, r3
	adc	r7, r4
	mov	r4, r8
	str	r6, [r4, #0xc]
	str	r7, [r4, #0x10]
.L135e:
	mov	r3, #3
	mov	r0, r8
	str	r3, [r0]
	ldr	r1, =0x1fffffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r1
	bls	.L1394
	ldr	r5, [r0, #0xc]
	ldr	r6, [r0, #0x10]
	mov	r2, #1
	mov	r3, r5
	and	r3, r2
	lsl	r2, r6, #31
	mov	r12, r2
	lsr	r0, r5, #1
	mov	r1, r12
	orr	r1, r0
	mov	r4, #0
	lsr	r2, r6, #1
	mov	r0, r8
	orr	r3, r1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	add	r3, #1
	str	r3, [r0, #8]
.L1394:
	mov	r0, r8
.L1396:
	add	sp, #8
	pop	{r3, r4, r5, r6}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	mov	r11, r6
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_1158

.thumb_func_start OvlFunc_13ac
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_1770
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_1770
	mov	r1, r4
	add	r2, sp, #0x10
	mov	r0, r6
	bl	OvlFunc_1158
	bl	OvlFunc_15a4
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_13ac

.thumb_func_start OvlFunc_13e4
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_1770
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_1770
	ldr	r3, [r4, #4]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r4, #4]
	add	r2, sp, #0x10
	mov	r1, r4
	mov	r0, r6
	bl	OvlFunc_1158
	bl	OvlFunc_15a4
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_13e4

.thumb_func_start OvlFunc_1424
	ldr	r0, =.L1888
	bx	lr
.func_end OvlFunc_1424

.thumb_func_start OvlFunc_142c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L1438
	mov	r2, #1
.L1438:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_142c

.thumb_func_start OvlFunc_143c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L1448
	mov	r2, #1
.L1448:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_143c

.thumb_func_start OvlFunc_144c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L1458
	mov	r2, #1
.L1458:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_144c

.thumb_func_start OvlFunc_145c
	push	{r4, r5, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r3, #3
	lsr	r2, r0, #31
	str	r3, [r5]
	str	r2, [r5, #4]
	cmp	r0, #0
	bne	.L1474
	mov	r3, #2
	str	r3, [r5]
	b	.L14c2
.L1474:
	mov	r3, #0x3c
	str	r3, [r5, #8]
	cmp	r2, #0
	beq	.L1490
	mov	r3, #0x80
	lsl	r3, #24
	cmp	r0, r3
	bne	.L148a
	ldr	r1, =0
	ldr	r0, .L14cc	@ 0xc1e00000
	b	.L14c8
.L148a:
	neg	r3, r0
	asr	r4, r3, #31
	b	.L1494
.L1490:
	mov	r3, r0
	asr	r4, r0, #31
.L1494:
	str	r3, [r5, #0xc]
	str	r4, [r5, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfffffff
	cmp	r3, r2
	bhi	.L14c2
	mov	r0, r5
	mov	r12, r2
.L14a4:
	ldr	r3, [r0, #0xc]
	ldr	r4, [r0, #0x10]
	lsr	r1, r3, #31
	lsl	r2, r4, #1
	mov	r4, r1
	lsl	r3, #1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	sub	r3, #1
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	cmp	r3, r12
	bls	.L14a4
.L14c2:
	mov	r0, r5
	bl	OvlFunc_15a4
.L14c8:
	add	sp, #0x14
	pop	{r4, r5, pc}

	.align	2, 0
.L14cc:
	.word	0xc1e00000
	.pool
.func_end OvlFunc_145c

.thumb_func_start OvlFunc_14d8
	push	{r4, lr}
	sub	sp, #0x1c
	mov	r3, sp
	add	r4, sp, #8
	str	r0, [r3]
	str	r1, [r3, #4]
	mov	r0, r3
	mov	r1, r4
	bl	OvlFunc_1770
	mov	r0, r4
	bl	OvlFunc_1564
	cmp	r0, #0
	bne	.L1500
	mov	r0, r4
	bl	OvlFunc_1544
	cmp	r0, #0
	beq	.L1504
.L1500:
	mov	r0, #0
	b	.L153c
.L1504:
	mov	r0, r4
	bl	OvlFunc_1554
	cmp	r0, #0
	bne	.L151a
	ldr	r3, [r4, #8]
	mov	r0, #0
	cmp	r3, #0
	blt	.L153c
	cmp	r3, #0x1e
	ble	.L1528
.L151a:
	ldr	r3, [r4, #4]
	neg	r0, r3
	orr	r0, r3
	ldr	r3, =0x7fffffff
	lsr	r0, #31
	add	r0, r3
	b	.L153c
.L1528:
	mov	r2, #0x3c
	sub	r2, r3
	ldr	r0, [r4, #0xc]
	ldr	r1, [r4, #0x10]
	bl	OvlFunc_1574
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L153c
	neg	r0, r0
.L153c:
	add	sp, #0x1c
	pop	{r4, pc}
.func_end OvlFunc_14d8

.thumb_func_start OvlFunc_1544
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L1550
	mov	r2, #1
.L1550:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1544

.thumb_func_start OvlFunc_1554
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L1560
	mov	r2, #1
.L1560:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1554

.thumb_func_start OvlFunc_1564
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L1570
	mov	r2, #1
.L1570:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1564

.thumb_func_start OvlFunc_1574
	push	{r4, r5, r6, lr}
	mov	r6, r2
	cmp	r6, #0
	beq	.L15a2
	mov	r3, #0x20
	sub	r3, r6
	cmp	r3, #0
	bgt	.L158e
	neg	r3, r3
	mov	r4, r1
	mov	r5, #0
	lsr	r4, r3
	b	.L159e
.L158e:
	mov	r2, r1
	lsl	r2, r3
	mov	r3, r0
	lsr	r3, r6
	mov	r5, r1
	mov	r4, r3
	lsr	r5, r6
	orr	r4, r2
.L159e:
	mov	r1, r5
	mov	r0, r4
.L15a2:
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_1574

.thumb_func_start OvlFunc_15a4
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	ldr	r3, [r4, #4]
	sub	sp, #8
	ldr	r5, [r4, #0xc]
	ldr	r6, [r4, #0x10]
	mov	r10, r3
	mov	r7, #0
	bl	OvlFunc_1740
	cmp	r0, #0
	beq	.L15d0
	ldr	r2, =0x80000
	ldr	r1, .L16a4	@ 0
	mov	r4, r6
	mov	r3, r5
	orr	r4, r2
	ldr	r7, =0x7ff
	b	.L16e4
.L15d0:
	mov	r0, r4
	bl	OvlFunc_1750
	cmp	r0, #0
	bne	.L1672
	mov	r0, r4
	bl	OvlFunc_1760
	cmp	r0, #0
	beq	.L15ea
	mov	r5, #0
	mov	r6, #0
	b	.L16e8
.L15ea:
	mov	r3, r6
	orr	r3, r5
	cmp	r3, #0
	beq	.L16e8
	ldr	r0, [r4, #8]
	ldr	r2, =0xfffffc02
	cmp	r0, r2
	bge	.L166a
	sub	r2, r0
	cmp	r2, #0x38
	ble	.L1606
	mov	r5, #0
	mov	r6, #0
	b	.L1634
.L1606:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #1
	lsl	r3, r2
	sub	r3, #1
	asr	r4, r3, #31
	and	r4, r6
	and	r3, r5
	orr	r3, r4
	cmp	r3, #0
	beq	.L1620
	mov	r3, #1
	mov	r8, r3
.L1620:
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_1574
	mov	r4, #0
	mov	r3, r8
	mov	r5, r0
	mov	r6, r1
	orr	r5, r3
	orr	r6, r4
.L1634:
	mov	r3, #0xff
	mov	r1, r5
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L1658
	cmp	r2, #0
	bne	.L1658
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L1660
	mov	r3, #0x80
	mov	r4, #0
	b	.L165c
.L1658:
	mov	r3, #0x7f
	mov	r4, #0
.L165c:
	add	r5, r3
	adc	r6, r4
.L1660:
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bls	.L16da
	mov	r7, #1
	b	.L16da
.L166a:
	mov	r3, #0x80
	lsl	r3, #3
	cmp	r0, r3
	blt	.L167a
.L1672:
	ldr	r7, =0x7ff
	mov	r5, #0
	mov	r6, #0
	b	.L16e8
.L167a:
	ldr	r3, =0x3ff
	mov	r1, r5
	add	r7, r0, r3
	mov	r3, #0xff
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L16bc
	cmp	r2, #0
	bne	.L16bc
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L16c4
	mov	r3, #0x80
	mov	r4, #0
	b	.L16c0

	.align	2, 0
.L16a4:
	.word	0
	.pool

.L16bc:
	mov	r3, #0x7f
	mov	r4, #0
.L16c0:
	add	r5, r3
	adc	r6, r4
.L16c4:
	ldr	r3, =0x1fffffff
	cmp	r6, r3
	bls	.L16da
	lsl	r1, r6, #31
	lsr	r2, r5, #1
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #1
	mov	r6, r4
	mov	r5, r3
	add	r7, #1
.L16da:
	lsl	r1, r6, #24
	lsr	r2, r5, #8
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #8
.L16e4:
	mov	r6, r4
	mov	r5, r3
.L16e8:
	mov	r0, sp
	ldr	r3, [r0, #4]
	ldr	r2, =0xfff00000
	ldr	r1, =0xfffff
	and	r3, r2
	and	r1, r6
	orr	r3, r1
	str	r3, [r0, #4]
	ldr	r3, .L1724	@ 0x7ff
	ldrh	r2, [r0, #6]
	and	r7, r3
	ldr	r3, =0xffff800f
	lsl	r1, r7, #4
	and	r3, r2
	orr	r3, r1
	strh	r3, [r0, #6]
	mov	r3, r10
	ldrb	r2, [r0, #7]
	lsl	r1, r3, #7
	mov	r3, #0x7f
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [r0, #4]
	str	r5, [r0, #4]
	str	r3, [r0]
	ldr	r1, [r0, #4]
	ldr	r0, [r0]
	add	sp, #8
	b	.L1738

	.align	2, 0
.L1724:
	.word	0x7ff
	.pool

.L1738:
	pop	{r3, r4}
	mov	r8, r3
	mov	r10, r4
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_15a4

.thumb_func_start OvlFunc_1740
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L174c
	mov	r2, #1
.L174c:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1740

.thumb_func_start OvlFunc_1750
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L175c
	mov	r2, #1
.L175c:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1750

.thumb_func_start OvlFunc_1760
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L176c
	mov	r2, #1
.L176c:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_1760

.thumb_func_start OvlFunc_1770
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0, #4]
	sub	sp, #8
	mov	r2, sp
	str	r4, [r2]
	ldr	r3, [r0]
	str	r3, [r2, #4]
	lsl	r3, #12
	lsr	r6, r3, #12
	ldrh	r3, [r2, #6]
	lsl	r3, #17
	mov	r7, r1
	lsr	r1, r3, #21
	ldrb	r3, [r2, #7]
	lsr	r3, #7
	mov	r5, r4
	str	r3, [r7, #4]
	cmp	r1, #0
	bne	.L17dc
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L17a4
	mov	r3, #2
	str	r3, [r7]
	b	.L1828
.L17a4:
	ldr	r3, =0xfffffc02
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	str	r3, [r7, #8]
	orr	r4, r2
	lsl	r3, r5, #8
	mov	r6, r4
	mov	r5, r3
	mov	r3, #3
	str	r3, [r7]
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bhi	.L1804
	mov	r12, r3
.L17c2:
	lsr	r1, r5, #31
	lsl	r2, r6, #1
	mov	r4, r1
	lsl	r3, r5, #1
	orr	r4, r2
	mov	r6, r4
	mov	r5, r3
	ldr	r3, [r7, #8]
	sub	r3, #1
	str	r3, [r7, #8]
	cmp	r6, r12
	bls	.L17c2
	b	.L1804
.L17dc:
	ldr	r2, =0x7ff
	cmp	r1, r2
	bne	.L180a
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L17f0
	mov	r3, #4
	str	r3, [r7]
	b	.L1828
.L17f0:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r4, r6
	mov	r3, #0
	and	r4, r2
	orr	r3, r4
	cmp	r3, #0
	beq	.L1802
	mov	r3, #1
.L1802:
	str	r3, [r7]
.L1804:
	str	r5, [r7, #0xc]
	str	r6, [r7, #0x10]
	b	.L1828
.L180a:
	ldr	r2, =0xfffffc01
	add	r3, r1, r2
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	orr	r4, r2
	ldr	r1, =0
	ldr	r2, =0x10000000
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7]
	orr	r4, r2
	lsl	r3, r5, #8
	str	r3, [r7, #0xc]
	str	r4, [r7, #0x10]
.L1828:
	add	sp, #8
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_1770

	.section .data

.L1888:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1888, (0x189c-0x1888)
