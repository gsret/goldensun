	.include "macros.inc"

.thumb_func_start OvlFunc_30
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r1, #0xc
	orr	r3, r1
	strb	r3, [r2, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	orr	r3, r1
	strb	r3, [r2, #0x15]
	mov	r0, #0
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_54
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_54

.thumb_func_start OvlFunc_7c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.L94
	ldr	r0, =.L1844
	b	.L96
.L94:
	ldr	r0, =.L17b4
.L96:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_ac
	mov	r0, #0
	bx	lr
.func_end OvlFunc_ac

.thumb_func_start OvlFunc_b0
	ldr	r0, =.L18ec
	bx	lr
.func_end OvlFunc_b0

.thumb_func_start OvlFunc_b8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Ld0
	ldr	r0, =.L1a38
	b	.Ld2
.Ld0:
	ldr	r0, =.L1918
.Ld2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_b8

.thumb_func_start OvlFunc_e8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1958
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L118
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	b	.L130
.L118:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93054
.L130:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_e8

.thumb_func_start OvlFunc_140
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x195d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_140

.thumb_func_start OvlFunc_160
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1961
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_160

.thumb_func_start OvlFunc_180
	push	{lr}
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0x43
	mov	r2, #6
	ldr	r0, =.L1788
	bl	__Func_10560
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_180

.thumb_func_start OvlFunc_1ec
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0x88
	mov	r2, #0xa8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0xc8
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #3
	mov	r2, #0
	bl	__Func_92adc
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x19e9
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L400
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L464

	.pool_aligned

.L400:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L464:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x1e
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0xbc
	bl	__Func_f9080
	ldr	r0, =.L1788
	mov	r1, #0x43
	mov	r2, #6
	bl	__Func_10560
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0x88
	mov	r2, #0x88
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r2, #6
	mov	r1, #0x43
	ldr	r0, =.L179e
	bl	__Func_10560
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #2
	mov	r1, #0x80
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r0, #2
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec

.thumb_func_start OvlFunc_84c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1956
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_84c

.thumb_func_start OvlFunc_870
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	bl	__Func_10704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r1, #0xac
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_870

.thumb_func_start OvlFunc_8a8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x15
	mov	r1, #0x49
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a8

.thumb_func_start OvlFunc_8e0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L900
	mov	r0, #0xf
	bl	__Func_b29a8
	b	.L90e
.L900:
	ldr	r0, =0x1a1e
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
.L90e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8e0

.thumb_func_start OvlFunc_924
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L932
	b	.La9e
.L932:
	bl	__Func_916b0
	mov	r1, #0x86
	mov	r2, #0xd8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0xa
	bl	__Func_923e4
	ldr	r0, =0x18b5
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =OvlFunc_54
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bne	.L986
	mov	r1, #0xdc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_921c4
.L986:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0xa
	lsl	r1, #10
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #0xcc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	ldr	r1, =.L162c
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_920e8
	bl	__Func_93530
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	ldr	r1, =.L16b8
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0
	bl	__Func_920e8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0
	str	r5, [r0, #0x6c]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x78
	bl	__Func_92adc
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
.La9e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924

.thumb_func_start OvlFunc_ac0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x18b9
	bl	__Func_92b94
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.Lafa
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lafa:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_ac0

.thumb_func_start OvlFunc_b2c
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x19cf
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	bl	__Func_91750
	ldr	r0, =0x8b1
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_b2c

.thumb_func_start OvlFunc_c30
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x19da
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92560
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x8a
	mov	r0, #8
	mov	r1, #0xb2
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x8e
	mov	r1, #0xac
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_93040
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x3333
	mov	r0, #8
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r2, =0x1999
	mov	r0, #0xa
	ldr	r1, =0x3333
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_93040
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x94
	mov	r0, #0xa
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	ldr	r0, =0x8b2
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r0, #6
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c30

.thumb_func_start OvlFunc_fcc
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1a12
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_fcc

.thumb_func_start OvlFunc_ff0
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__Func_10424
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #5
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_9163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_ff0

.thumb_func_start OvlFunc_1028
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__Func_10424
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #6
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_9163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1028

.thumb_func_start OvlFunc_1060
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r5, #0xc]
	ldr	r2, [r0, #0xc]
	cmp	r2, r3
	ble	.L107e
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	b	.L1088
.L107e:
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
.L1088:
	strb	r3, [r1]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1060

.thumb_func_start OvlFunc_1090
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r2, [r5, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	bgt	.L10b0
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_92b08
.L10b0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1090

.thumb_func_start OvlFunc_10b8
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfd
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, =OvlFunc_1060
	str	r3, [r0, #0x6c]
	mov	r3, #0x38
	str	r3, [sp]
	mov	r5, #0x12
	mov	r0, #0x37
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x14
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x10
	mov	r0, #0x37
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_92b08
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10b8

.thumb_func_start OvlFunc_1144
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #6
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0xe
	bl	__Func_10704
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1144

.thumb_func_start OvlFunc_1180
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.L1198
	ldr	r0, =.L1c9c
	b	.L119a
.L1198:
	ldr	r0, =.L1b10
.L119a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1180

.thumb_func_start OvlFunc_11b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r5, =ewram_240
	ldrsh	r2, [r5, r2]
	ldr	r3, =0x58
	sub	sp, #8
	cmp	r2, r3
	bne	.L1252
	mov	r0, #0xa9
	bl	__Func_91ff0
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #0x15
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	OvlFunc_870
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1224
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L1224:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L123a
	ldr	r0, =0x12f
	bl	__Func_79374
	b	.L1456
.L123a:
	cmp	r3, #3
	beq	.L1240
	b	.L1456
.L1240:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L124c
	b	.L1456
.L124c:
	bl	OvlFunc_1ec
	b	.L1456
.L1252:
	ldr	r3, =0x4a
	cmp	r2, r3
	beq	.L125a
	b	.L1456
.L125a:
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L128e
	mov	r0, #0xe
	mov	r1, #5
	bl	__Func_924d4
	bl	OvlFunc_10b8
.L128e:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12a4
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_924d4
	bl	OvlFunc_1144
.L12a4:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #4
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L12be
	ldr	r0, =0x12f
	bl	__Func_79374
.L12be:
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12e6
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12e6
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12e6
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L12e6:
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L132a
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.L132a
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L132a
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	ldr	r0, =0x8b2
	bl	__Func_79358
	ldr	r0, =0x8b3
	bl	__Func_79358
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L132a:
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L137e
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, #1
	mov	r0, #0x36
	mov	r1, #0x15
	mov	r2, #0x35
	mov	r3, #0x15
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #0x12
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_10704
	mov	r0, #0x2c
	mov	r1, #0x12
	mov	r2, #0x2b
	mov	r3, #0x11
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_10704
.L137e:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13fa
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13fa
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0x84
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0x8c
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xb8
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r1, =.L1730
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
.L13fa:
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1424
	mov	r1, #0xa4
	mov	r2, #0x8c
	lsl	r2, #17
	mov	r0, #9
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r1, =.L1730
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
.L1424:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L1456
	ldr	r0, =0x8b1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1456
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1456
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1456
	bl	OvlFunc_b2c
.L1456:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_11b0

	.section .data

	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1620, (0x162c-0x1620)
.L162c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x162c, (0x16b8-0x162c)
.L16b8:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x16b8, (0x1730-0x16b8)
.L1730:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1730, (0x1788-0x1730)
.L1788:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1788, (0x179e-0x1788)
.L179e:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x179e, (0x17b4-0x179e)
.L17b4:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x17b4, (0x1844-0x17b4)
.L1844:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1844, (0x18ec-0x1844)
.L18ec:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x18ec, (0x1918-0x18ec)
.L1918:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1918, (0x1a38-0x1918)
.L1a38:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1a38, (0x1b10-0x1a38)
.L1b10:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1b10, (0x1c9c-0x1b10)
.L1c9c:
	.incbin "overlays/rom_7b7f1c/orig.bin", 0x1c9c
