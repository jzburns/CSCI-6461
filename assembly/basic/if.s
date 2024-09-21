.global _start
_start:
	mov r0, #5
	mov r1, #8
	
	cmp r1, r0
	blt negative
	b finalize

carry_on:
	mov r1, #8
 
negative:
	mov r5, #1
	svc 2
	
finalize:
	svc 2
