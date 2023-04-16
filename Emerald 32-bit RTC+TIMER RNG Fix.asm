.text
.align 2
.thumb
.thumb_func
.global EmeraldTimerAndRTCPrngSeedAtMenu

main:
	push {lr}
	
	@ disable the timer immediately so the value remains static
	mov r0, #0x00
	ldr r1, .TIMER_REGISTER_BASE
	strh r0, [r1, #0x06] @ TM1CNT
	
	@ get the "RTC seed" into r1
	ldr r1, .GET_RTC_MINUTES
	bl x_r1
	lsr r1, r0, #16
	@ no need to chop off the upper 16-bits of r0 like the original, it's done for us later
	eor r1, r0
	
	@ get the "timer seed" into r0
	ldr r0, .TIMER_REGISTER_BASE
	ldrh r0, [r0, #0x04] @ TM1D
	
	@ make full seed in r0 (RTC seed as upper 16-bits)
	lsl r1, #16
	orr r0, r1
	
	@ manually store seed into the rng state and init values because
	@ the built-in seed function does not read a full 32-bits
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
.GET_RTC_MINUTES:
	.word 0x0802F664|1
.MENU_INIT_CB:
	.word 0x0802F6F4|1