.text
.align 2
.thumb
.thumb_func
.global EmeraldTimerPrngSeedAtMenu

main:
	push {lr}
	ldr r1, .SEED_RNG_FROM_T1
	bl bx_r1
	movs r0, #0
	ldr r1, .MENU_CB_THING
	bl bx_r1
	pop {r0}
	bx r0

bx_r1:
	bx r1

.align 2
.SEED_RNG_FROM_T1:
	.word 0x08000560|1
.MENU_CB_THING:
	.word 0x0802F6F4|1
