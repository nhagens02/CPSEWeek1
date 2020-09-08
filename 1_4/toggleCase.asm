.global toggleCase
.cpu cortex-m0
.text
.align 2

toggleCase:
	push {r0, lr}
	sub r0, r0, #65
	bge possibleLetter
	pop { r0 }
	b done

possibleLetter:
	sub r0, r0, #25
	bgt possibleNoCaps
	pop {r0}
	add r0, r0, #32
	b done

possibleNoCaps:
	sub r0, r0, #6
	bgt noCaps
	pop { r0 }
	b done

noCaps:
	pop {r0}
	sub r0, r0, #32
	b done

done:
	pop { pc }