.text
.align 2
.thumb
.thumb_func
.global TimersEnable

main:
	push {lr}
	ldr r1, .TIMER_REGISTER_BASE
	mov r0, #0x80
	strh r0, [r1, #0x06] @ TM1CNT
	mov r0, #0x84	     @ set timer2 to increment when timer1 overflows ("count-up timing")
	strh r0, [r1, #0x0A] @ TM2CNT
	pop {pc}

.align 2
.TIMER_REGISTER_BASE:
	.word 0x04000100