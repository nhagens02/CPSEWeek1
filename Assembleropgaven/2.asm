.cpu cortex-m0

.text

.align 2                               

.global _start



_start:

	push {LR}
	ldr r0, =2
	ldr r1, =4
	mul r0, r1, r0

	pop {PC}