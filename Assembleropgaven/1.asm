.cpu cortex-m0
.text
.align 2
.global _start

_start:
	push {LR}
	add r0, #3
	pop {PC}