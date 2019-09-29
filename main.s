	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L4
	push	{r4, lr}
	ldr	r0, .L4+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.word	seed
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	ldr	r0, .L8+4
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L8+8
	ldr	r2, .L8+12
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	fillScreen
	.word	32736
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L17
	ldr	r3, [r4]
	ldr	r2, .L17+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L17+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L17+12
	ldrh	r0, [r3]
	ands	r5, r0, #8
	beq	.L16
.L10:
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	ldr	r0, [r4]
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	mov	r0, r5
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L17+24
	ldr	r3, .L17+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	fillScreen
	.word	state
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L21
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L21+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L22:
	.align	2
.L21:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L24
	ldr	r2, .L37+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L34
.L24:
	ldr	r2, .L37+20
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L35
	tst	r3, #2
	beq	.L23
	ldr	r3, .L37+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L36
.L23:
	pop	{r4, lr}
	bx	lr
.L35:
	ldr	r3, .L37+24
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L37+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L34:
	ldr	r3, .L37+24
	ldr	r0, .L37+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L37+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L36:
	ldr	r3, .L37+24
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L37+28
	str	r2, [r3]
	b	.L23
.L38:
	.align	2
.L37:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	ballsRemaining
	.word	fillScreen
	.word	state
	.word	15855
	.size	game, .-game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L41
	ldr	r0, .L41+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L41+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	fillScreen
	.word	15855
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L55
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L44
	ldr	r2, .L55+8
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L53
.L44:
	tst	r3, #4
	beq	.L43
	ldr	r3, .L55+8
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L54
.L43:
	pop	{r4, lr}
	bx	lr
.L53:
	ldr	r3, .L55+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L55+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	ldr	r3, .L55+12
	ldr	r0, .L55+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L55+16
	ldr	r3, .L55+24
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.word	32736
	.word	seed
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L59
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L59+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L60:
	.align	2
.L59:
	.word	fillScreen
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L61
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L67
.L61:
	pop	{r4, lr}
	bx	lr
.L67:
	ldr	r3, .L68+12
	ldr	r0, .L68+16
	mov	lr, pc
	bx	r3
	ldr	r2, .L68+20
	ldr	r3, .L68+24
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
	.word	seed
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L81
	push	{r4, r7, fp, lr}
	ldr	r0, .L81+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L81+12
	ldr	r6, .L81+16
	str	r2, [r3]
	str	r2, [r6]
	ldr	fp, .L81+20
	ldr	r5, .L81+24
	ldr	r10, .L81+28
	ldr	r9, .L81+32
	ldr	r8, .L81+36
	ldr	r7, .L81+40
	ldr	r4, .L81+44
.L71:
	ldrh	r3, [fp]
.L72:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L72
.L74:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L73
	.word	.L73
.L73:
	mov	lr, pc
	bx	r7
.L78:
	ldr	r2, [r6]
	b	.L71
.L75:
	mov	lr, pc
	bx	r8
	b	.L78
.L76:
	mov	lr, pc
	bx	r9
	b	.L78
.L77:
	mov	lr, pc
	bx	r10
	b	.L78
.L82:
	.align	2
.L81:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	seed
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L85
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L85+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	fillScreen
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
