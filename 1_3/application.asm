.global application
.cpu cortex-m0
.text
.align 2

application:
	PUSH {lr}
	LDR r0, =helloworld
	BL print_asciz
	POP {pc}


.data

helloworld:
	.asciz "Hello world, the ANSWER is 42! @[]`{}~\n"