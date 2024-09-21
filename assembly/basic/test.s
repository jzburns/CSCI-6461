.global _start
_start:
	mov r0, #5
	mov r1, #8
	ldr r2, =5
	ldr r3, =9
	
	cmp r0, r2
	beq same
	cmp r1, r3
	blt less_than
	
same:
	ldr r2, =9
	ldr r3, =9
 
less_than:
	mov r5, #1
	svc 2
	
finalize:
	svc 2
