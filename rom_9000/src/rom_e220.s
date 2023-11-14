	.include "macros.inc"

.thumb_func_start Func_e220
	push	{lr}
	cmp	r1, #0
	bne	.Le22a
	str	r2, [r0]
	b	.Le248
.Le22a:
	cmp	r1, #1
	bne	.Le238
	ldr	r3, [r0]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r0]
	b	.Le248
.Le238:
	ldr	r3, [r0]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le242
	mov	r1, #1
.Le242:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le248:
	pop	{r0}
	bx	r0
.func_end Func_e220

.thumb_func_start Func_e24c
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le258
	strh	r4, [r0, #4]
	b	.Le27a
.Le258:
	cmp	r1, #1
	bne	.Le264
	ldrh	r3, [r0, #4]
	add	r3, r4
	strh	r3, [r0, #4]
	b	.Le27a
.Le264:
	mov	r3, #4
	ldrsh	r2, [r0, r3]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le274
	mov	r1, #1
.Le274:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le27a:
	pop	{r0}
	bx	r0
.func_end Func_e24c

.thumb_func_start Func_e280
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le28c
	strh	r4, [r0, #6]
	b	.Le2ac
.Le28c:
	cmp	r1, #1
	bne	.Le298
	ldrh	r3, [r0, #6]
	add	r3, r4
	strh	r3, [r0, #6]
	b	.Le2ac
.Le298:
	lsl	r3, r4, #16
	ldrh	r2, [r0, #6]
	lsr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le2a6
	mov	r1, #1
.Le2a6:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le2ac:
	pop	{r0}
	bx	r0
.func_end Func_e280

.thumb_func_start Func_e2b0
	push	{lr}
	cmp	r1, #0
	bne	.Le2ba
	str	r2, [r0, #8]
	b	.Le2d6
.Le2ba:
	cmp	r1, #1
	bne	.Le2c6
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
	b	.Le2d6
.Le2c6:
	ldr	r3, [r0, #8]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le2d0
	mov	r1, #1
.Le2d0:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le2d6:
	pop	{r0}
	bx	r0
.func_end Func_e2b0

.thumb_func_start Func_e2dc
	push	{lr}
	cmp	r1, #0
	bne	.Le2e6
	str	r2, [r0, #0xc]
	b	.Le302
.Le2e6:
	cmp	r1, #1
	bne	.Le2f2
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	b	.Le302
.Le2f2:
	ldr	r3, [r0, #0xc]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le2fc
	mov	r1, #1
.Le2fc:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le302:
	pop	{r0}
	bx	r0
.func_end Func_e2dc

.thumb_func_start Func_e308
	push	{lr}
	cmp	r1, #0
	bne	.Le312
	str	r2, [r0, #0x10]
	b	.Le32e
.Le312:
	cmp	r1, #1
	bne	.Le31e
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	b	.Le32e
.Le31e:
	ldr	r3, [r0, #0x10]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le328
	mov	r1, #1
.Le328:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le32e:
	pop	{r0}
	bx	r0
.func_end Func_e308

.thumb_func_start Func_e334
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le340
	strh	r4, [r0, #0x20]
	b	.Le360
.Le340:
	cmp	r1, #1
	bne	.Le34c
	ldrh	r3, [r0, #0x20]
	add	r3, r4
	strh	r3, [r0, #0x20]
	b	.Le360
.Le34c:
	lsl	r3, r4, #16
	ldrh	r2, [r0, #0x20]
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le35a
	mov	r1, #1
.Le35a:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le360:
	pop	{r0}
	bx	r0
.func_end Func_e334

.thumb_func_start Func_e364
	push	{lr}
	cmp	r1, #0
	bne	.Le36e
	str	r2, [r0, #0x18]
	b	.Le38a
.Le36e:
	cmp	r1, #1
	bne	.Le37a
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	b	.Le38a
.Le37a:
	ldr	r3, [r0, #0x18]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le384
	mov	r1, #1
.Le384:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le38a:
	pop	{r0}
	bx	r0
.func_end Func_e364

.thumb_func_start Func_e390
	push	{lr}
	cmp	r1, #0
	bne	.Le39a
	str	r2, [r0, #0x1c]
	b	.Le3b6
.Le39a:
	cmp	r1, #1
	bne	.Le3a6
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Le3b6
.Le3a6:
	ldr	r3, [r0, #0x1c]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le3b0
	mov	r1, #1
.Le3b0:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le3b6:
	pop	{r0}
	bx	r0
.func_end Func_e390

.thumb_func_start Func_e3bc
	push	{lr}
	cmp	r1, #0
	bne	.Le3c6
	str	r2, [r0, #0x24]
	b	.Le3e2
.Le3c6:
	cmp	r1, #1
	bne	.Le3d2
	ldr	r3, [r0, #0x24]
	add	r3, r2
	str	r3, [r0, #0x24]
	b	.Le3e2
.Le3d2:
	ldr	r3, [r0, #0x24]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le3dc
	mov	r1, #1
.Le3dc:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le3e2:
	pop	{r0}
	bx	r0
.func_end Func_e3bc

.thumb_func_start Func_e3e8
	push	{lr}
	cmp	r1, #0
	bne	.Le3f2
	str	r2, [r0, #0x28]
	b	.Le40e
.Le3f2:
	cmp	r1, #1
	bne	.Le3fe
	ldr	r3, [r0, #0x28]
	add	r3, r2
	str	r3, [r0, #0x28]
	b	.Le40e
.Le3fe:
	ldr	r3, [r0, #0x28]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le408
	mov	r1, #1
.Le408:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le40e:
	pop	{r0}
	bx	r0
.func_end Func_e3e8

.thumb_func_start Func_e414
	push	{lr}
	cmp	r1, #0
	bne	.Le41e
	str	r2, [r0, #0x2c]
	b	.Le43a
.Le41e:
	cmp	r1, #1
	bne	.Le42a
	ldr	r3, [r0, #0x2c]
	add	r3, r2
	str	r3, [r0, #0x2c]
	b	.Le43a
.Le42a:
	ldr	r3, [r0, #0x2c]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le434
	mov	r1, #1
.Le434:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le43a:
	pop	{r0}
	bx	r0
.func_end Func_e414

.thumb_func_start Func_e440
	push	{lr}
	cmp	r1, #0
	bne	.Le44a
	str	r2, [r0, #0x30]
	b	.Le466
.Le44a:
	cmp	r1, #1
	bne	.Le456
	ldr	r3, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #0x30]
	b	.Le466
.Le456:
	ldr	r3, [r0, #0x30]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le460
	mov	r1, #1
.Le460:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le466:
	pop	{r0}
	bx	r0
.func_end Func_e440

.thumb_func_start Func_e46c
	push	{lr}
	cmp	r1, #0
	bne	.Le476
	str	r2, [r0, #0x34]
	b	.Le492
.Le476:
	cmp	r1, #1
	bne	.Le482
	ldr	r3, [r0, #0x34]
	add	r3, r2
	str	r3, [r0, #0x34]
	b	.Le492
.Le482:
	ldr	r3, [r0, #0x34]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le48c
	mov	r1, #1
.Le48c:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le492:
	pop	{r0}
	bx	r0
.func_end Func_e46c

.thumb_func_start Func_e498
	push	{lr}
	cmp	r1, #0
	bne	.Le4a2
	str	r2, [r0, #0x38]
	b	.Le4be
.Le4a2:
	cmp	r1, #1
	bne	.Le4ae
	ldr	r3, [r0, #0x38]
	add	r3, r2
	str	r3, [r0, #0x38]
	b	.Le4be
.Le4ae:
	ldr	r3, [r0, #0x38]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le4b8
	mov	r1, #1
.Le4b8:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le4be:
	pop	{r0}
	bx	r0
.func_end Func_e498

.thumb_func_start Func_e4c4
	push	{lr}
	cmp	r1, #0
	bne	.Le4ce
	str	r2, [r0, #0x3c]
	b	.Le4ea
.Le4ce:
	cmp	r1, #1
	bne	.Le4da
	ldr	r3, [r0, #0x3c]
	add	r3, r2
	str	r3, [r0, #0x3c]
	b	.Le4ea
.Le4da:
	ldr	r3, [r0, #0x3c]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le4e4
	mov	r1, #1
.Le4e4:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le4ea:
	pop	{r0}
	bx	r0
.func_end Func_e4c4

.thumb_func_start Func_e4f0
	push	{lr}
	cmp	r1, #0
	bne	.Le4fa
	str	r2, [r0, #0x40]
	b	.Le516
.Le4fa:
	cmp	r1, #1
	bne	.Le506
	ldr	r3, [r0, #0x40]
	add	r3, r2
	str	r3, [r0, #0x40]
	b	.Le516
.Le506:
	ldr	r3, [r0, #0x40]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le510
	mov	r1, #1
.Le510:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le516:
	pop	{r0}
	bx	r0
.func_end Func_e4f0

.thumb_func_start Func_e51c
	push	{lr}
	cmp	r1, #0
	bne	.Le526
	str	r2, [r0, #0x44]
	b	.Le542
.Le526:
	cmp	r1, #1
	bne	.Le532
	ldr	r3, [r0, #0x44]
	add	r3, r2
	str	r3, [r0, #0x44]
	b	.Le542
.Le532:
	ldr	r3, [r0, #0x44]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le53c
	mov	r1, #1
.Le53c:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le542:
	pop	{r0}
	bx	r0
.func_end Func_e51c

.thumb_func_start Func_e548
	push	{lr}
	cmp	r1, #0
	bne	.Le552
	str	r2, [r0, #0x48]
	b	.Le56e
.Le552:
	cmp	r1, #1
	bne	.Le55e
	ldr	r3, [r0, #0x48]
	add	r3, r2
	str	r3, [r0, #0x48]
	b	.Le56e
.Le55e:
	ldr	r3, [r0, #0x48]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le568
	mov	r1, #1
.Le568:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le56e:
	pop	{r0}
	bx	r0
.func_end Func_e548

.thumb_func_start Func_e574
	push	{lr}
	cmp	r1, #0
	bne	.Le57e
	str	r2, [r0, #0x14]
	b	.Le59a
.Le57e:
	cmp	r1, #1
	bne	.Le58a
	ldr	r3, [r0, #0x14]
	add	r3, r2
	str	r3, [r0, #0x14]
	b	.Le59a
.Le58a:
	ldr	r3, [r0, #0x14]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le594
	mov	r1, #1
.Le594:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le59a:
	pop	{r0}
	bx	r0
.func_end Func_e574

.thumb_func_start Func_e5a0
	push	{lr}
	cmp	r1, #0
	bne	.Le5aa
	str	r2, [r0, #0x4c]
	b	.Le5c6
.Le5aa:
	cmp	r1, #1
	bne	.Le5b6
	ldr	r3, [r0, #0x4c]
	add	r3, r2
	str	r3, [r0, #0x4c]
	b	.Le5c6
.Le5b6:
	ldr	r3, [r0, #0x4c]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le5c0
	mov	r1, #1
.Le5c0:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le5c6:
	pop	{r0}
	bx	r0
.func_end Func_e5a0

.thumb_func_start Func_e5cc
	push	{lr}
	cmp	r1, #0
	bne	.Le5d6
	str	r2, [r0, #0x50]
	b	.Le5f4
.Le5d6:
	cmp	r1, #1
	bne	.Le5e4
	ldr	r3, [r0, #0x50]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r0, #0x50]
	b	.Le5f4
.Le5e4:
	ldr	r3, [r0, #0x50]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le5ee
	mov	r1, #1
.Le5ee:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le5f4:
	pop	{r0}
	bx	r0
.func_end Func_e5cc

.thumb_func_start Func_e5f8
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le608
	mov	r3, r0
	add	r3, #0x54
	strb	r4, [r3]
	b	.Le630
.Le608:
	cmp	r1, #1
	bne	.Le618
	mov	r2, r0
	add	r2, #0x54
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le630
.Le618:
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le62a
	mov	r1, #1
.Le62a:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le630:
	pop	{r0}
	bx	r0
.func_end Func_e5f8

.thumb_func_start Func_e634
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le644
	mov	r3, r0
	add	r3, #0x55
	strb	r4, [r3]
	b	.Le66c
.Le644:
	cmp	r1, #1
	bne	.Le654
	mov	r2, r0
	add	r2, #0x55
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le66c
.Le654:
	mov	r3, r0
	add	r3, #0x55
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le666
	mov	r1, #1
.Le666:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le66c:
	pop	{r0}
	bx	r0
.func_end Func_e634

.thumb_func_start Func_e670
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le680
	mov	r3, r0
	add	r3, #0x56
	strb	r4, [r3]
	b	.Le6a8
.Le680:
	cmp	r1, #1
	bne	.Le690
	mov	r2, r0
	add	r2, #0x56
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le6a8
.Le690:
	mov	r3, r0
	add	r3, #0x56
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le6a2
	mov	r1, #1
.Le6a2:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le6a8:
	pop	{r0}
	bx	r0
.func_end Func_e670

.thumb_func_start Func_e6ac
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le6bc
	mov	r3, r0
	add	r3, #0x57
	strb	r4, [r3]
	b	.Le6de
.Le6bc:
	cmp	r1, #1
	bne	.Le6cc
	mov	r2, r0
	add	r2, #0x57
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le6de
.Le6cc:
	add	r0, #0x57
	lsl	r3, r4, #24
	ldrb	r2, [r0]
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le6dc
	mov	r1, #1
.Le6dc:
	strb	r1, [r0]
.Le6de:
	pop	{r0}
	bx	r0
.func_end Func_e6ac

.thumb_func_start Func_e6e4
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le6f4
	mov	r3, r0
	add	r3, #0x58
	strb	r4, [r3]
	b	.Le71c
.Le6f4:
	cmp	r1, #1
	bne	.Le704
	mov	r2, r0
	add	r2, #0x58
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le71c
.Le704:
	mov	r3, r0
	add	r3, #0x58
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le716
	mov	r1, #1
.Le716:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le71c:
	pop	{r0}
	bx	r0
.func_end Func_e6e4

.thumb_func_start Func_e720
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le730
	mov	r3, r0
	add	r3, #0x59
	strb	r4, [r3]
	b	.Le758
.Le730:
	cmp	r1, #1
	bne	.Le740
	mov	r2, r0
	add	r2, #0x59
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le758
.Le740:
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le752
	mov	r1, #1
.Le752:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le758:
	pop	{r0}
	bx	r0
.func_end Func_e720

.thumb_func_start Func_e75c
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le76c
	mov	r3, r0
	add	r3, #0x5a
	strb	r4, [r3]
	b	.Le794
.Le76c:
	cmp	r1, #1
	bne	.Le77c
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le794
.Le77c:
	mov	r3, r0
	add	r3, #0x5a
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le78e
	mov	r1, #1
.Le78e:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le794:
	pop	{r0}
	bx	r0
.func_end Func_e75c

.thumb_func_start Func_e798
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le7a8
	mov	r3, r0
	add	r3, #0x5b
	strb	r4, [r3]
	b	.Le7d0
.Le7a8:
	cmp	r1, #1
	bne	.Le7b8
	mov	r2, r0
	add	r2, #0x5b
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le7d0
.Le7b8:
	mov	r3, r0
	add	r3, #0x5b
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le7ca
	mov	r1, #1
.Le7ca:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le7d0:
	pop	{r0}
	bx	r0
.func_end Func_e798

.thumb_func_start Func_e7d4
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le7e4
	mov	r3, r0
	add	r3, #0x5d
	strb	r4, [r3]
	b	.Le80c
.Le7e4:
	cmp	r1, #1
	bne	.Le7f4
	mov	r2, r0
	add	r2, #0x5d
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le80c
.Le7f4:
	mov	r3, r0
	add	r3, #0x5d
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le806
	mov	r1, #1
.Le806:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le80c:
	pop	{r0}
	bx	r0
.func_end Func_e7d4

.thumb_func_start Func_e810
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le820
	mov	r3, r0
	add	r3, #0x5e
	strh	r4, [r3]
	b	.Le84a
.Le820:
	cmp	r1, #1
	bne	.Le830
	mov	r2, r0
	add	r2, #0x5e
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le84a
.Le830:
	mov	r3, r0
	add	r3, #0x5e
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le844
	mov	r1, #1
.Le844:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le84a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e810

.thumb_func_start Func_e850
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le860
	mov	r3, r0
	add	r3, #0x64
	strh	r4, [r3]
	b	.Le88a
.Le860:
	cmp	r1, #1
	bne	.Le870
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le88a
.Le870:
	mov	r3, r0
	add	r3, #0x64
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le884
	mov	r1, #1
.Le884:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le88a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e850

.thumb_func_start Func_e890
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le8a0
	mov	r3, r0
	add	r3, #0x66
	strh	r4, [r3]
	b	.Le8ca
.Le8a0:
	cmp	r1, #1
	bne	.Le8b0
	mov	r2, r0
	add	r2, #0x66
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le8ca
.Le8b0:
	mov	r3, r0
	add	r3, #0x66
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le8c4
	mov	r1, #1
.Le8c4:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le8ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e890

.thumb_func_start Func_e8d0
	push	{lr}
	cmp	r1, #0
	bne	.Le8da
	str	r2, [r0, #0x68]
	b	.Le8f6
.Le8da:
	cmp	r1, #1
	bne	.Le8e6
	ldr	r3, [r0, #0x68]
	add	r3, r2
	str	r3, [r0, #0x68]
	b	.Le8f6
.Le8e6:
	ldr	r3, [r0, #0x68]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le8f0
	mov	r1, #1
.Le8f0:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le8f6:
	pop	{r0}
	bx	r0
.func_end Func_e8d0

.thumb_func_start Func_e8fc
	push	{lr}
	cmp	r1, #0
	bne	.Le906
	str	r2, [r0, #0x6c]
	b	.Le922
.Le906:
	cmp	r1, #1
	bne	.Le912
	ldr	r3, [r0, #0x6c]
	add	r3, r2
	str	r3, [r0, #0x6c]
	b	.Le922
.Le912:
	ldr	r3, [r0, #0x6c]
	mov	r1, #0
	cmp	r3, r2
	bne	.Le91c
	mov	r1, #1
.Le91c:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le922:
	pop	{r0}
	bx	r0
.func_end Func_e8fc

.thumb_func_start Func_e928
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le938
	mov	r3, r0
	add	r3, #0x62
	strb	r4, [r3]
	b	.Le960
.Le938:
	cmp	r1, #1
	bne	.Le948
	mov	r2, r0
	add	r2, #0x62
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le960
.Le948:
	mov	r3, r0
	add	r3, #0x62
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le95a
	mov	r1, #1
.Le95a:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le960:
	pop	{r0}
	bx	r0
.func_end Func_e928

.thumb_func_start Func_e964
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le974
	mov	r3, r0
	add	r3, #0x63
	strb	r4, [r3]
	b	.Le99c
.Le974:
	cmp	r1, #1
	bne	.Le984
	mov	r2, r0
	add	r2, #0x63
	ldrb	r3, [r2]
	add	r3, r4
	strb	r3, [r2]
	b	.Le99c
.Le984:
	mov	r3, r0
	add	r3, #0x63
	ldrb	r2, [r3]
	lsl	r3, r4, #24
	lsr	r3, #24
	mov	r1, #0
	cmp	r2, r3
	bne	.Le996
	mov	r1, #1
.Le996:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le99c:
	pop	{r0}
	bx	r0
.func_end Func_e964

.thumb_func_start Func_e9a0
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r1, r3, #4
	ldr	r3, [r1]
	ldr	r2, =Data_136e0
	lsl	r3, #2
	ldr	r3, [r2, r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Le9ca
	ldr	r2, [r1, #4]
	mov	r0, r5
	mov	r1, #0
	bl	_call_via_r3
	ldrh	r0, [r5, #4]
.Le9ca:
	add	r3, r0, #3
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_e9a0

.thumb_func_start Func_e9dc
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r1, r3, #4
	ldr	r3, [r1]
	ldr	r2, =Data_136e0
	lsl	r3, #2
	ldr	r3, [r2, r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Lea06
	ldr	r2, [r1, #4]
	mov	r0, r5
	mov	r1, #1
	bl	_call_via_r3
	ldrh	r0, [r5, #4]
.Lea06:
	add	r3, r0, #3
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_e9dc

.thumb_func_start Func_ea18
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r1, r3, #4
	ldr	r3, [r1]
	ldr	r2, =Data_136e0
	lsl	r3, #2
	ldr	r3, [r2, r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Lea42
	ldr	r2, [r1, #4]
	mov	r0, r5
	mov	r1, #2
	bl	_call_via_r3
	ldrh	r0, [r5, #4]
.Lea42:
	add	r3, r0, #3
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_ea18
