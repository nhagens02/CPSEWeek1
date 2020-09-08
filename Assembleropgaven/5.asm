.cpu cortex-m0
.text
.align 2                               
.global _start

counterLoop:
	

_start:
	push {LR}
	add r0, r0, #4
	add r1, r1, #6
	sub r1, r1, #1
	bl counterLoop
	pop {PC}