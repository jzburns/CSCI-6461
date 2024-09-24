.global _start
_start:

step0:
	mov r0, #2
	mov r1, #10
	
step1:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step2:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step3:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step4:	
	cmp r0, r1
	beq step10
	add r0, #2

step5:	
	cmp r0, r1
	beq step10
	add r0, #2
	
step10:
	svc 2
