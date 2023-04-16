.text
.align 2
.thumb
.thumb_func
.global EmeraldTimerPrngSeedAtMenu

main:
	push {lr}
	
	@ disable the timers immediately so the values remain static
	mov r0, #0x00
	ldr r1, .TIMER_REGISTER_BASE
	strh r0, [r1, #0x06] @ TM1CNT
	strh r0, [r1, #0x0A] @ TM2CNT
	
	@ manually store seed into the rng state and init values because
	@ the built-in seed function does not read a full 32-bits
	ldrh r0, [r1, #0x04] @ TM1D
	ldrh r1, [r1, #0x08] @ TM2D
	lsl r1, #16          @ shift TM2D to be the upper 16-bits of the seed
	orr r0, r1           @ combine TM1D and the shifted TM2D into a full 32-bits
	ldr r1, .RNG_STATE
	str r0, [r1]
	ldr r1, .TIMER_RESULT
	str r0, [r1]
	
	@@ OPTIONAL: reset rng frame counter to 0
	@@           This value isn't ever read by the game, so it's not really
	@@           necessary to reset it unless you know what you're doing.
	@@ NOTE: the built-in rng seed function seems to think
	@@       this value is at 0x020249BC, whereas the rng
	@@       advancement routine says it's at 0x020249C0. lolwut
	@ mov r0, #0
	@ ldr r1, .RNG_FRAME_COUNTER
	@ str r0, [r1]
	
	@ if "mov r0, #0" is uncommented above here, comment the one below
	mov r0, #0
	ldr r1, .MENU_INIT_CB
	bl x_r1
	pop {r0}
	bx r0

x_r1:
	bx r1

.align 2
.TIMER_REGISTER_BASE:
	.word 0x04000100
.RNG_STATE:
	.word 0x03005D80
@@.RNG_FRAME_COUNTER:
@@	.word 0x020249C0
.TIMER_RESULT:
	.word 0x02020000
.MENU_INIT_CB:
	.word 0x0802F6F4|1
