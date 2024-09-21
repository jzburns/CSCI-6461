.global _start
_start:
	mov r0, #5
	mov r1, #8
	
	cmp r1, r0
	blt negative
	mov r1, #8
	add r2, r1, r0
	b finalize
 
negative:
	mov r5, #1
	svc 2
	
finalize:
	svc 2
