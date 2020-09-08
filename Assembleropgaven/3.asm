.cpu cortex-m0

.text

.align 2                               

.global _start



_start:

	push {LR}

	ldr r0, =3

	mul r0, r0, r0

	add r0, #7

	pop {PC}