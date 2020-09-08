.cpu cortex-m0
.text
.align 2                               
.global _start

_start:
	push {LR}
	add r0, r0, #5
	add r1, r1, #6
	add r2, r1, r0
	pop {PC}