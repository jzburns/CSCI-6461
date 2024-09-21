.global _start
_start:	
	mov r2, #0x80000000
	mov r3, #0x00000001
	mov r7, #0
	mov r8, #-5
	mov r9, #7
	mov r11, #2
	mov r12, #0
	
	// this operation will change the status flags
 	// what is NZCV after this operation?
 	cmp r2, r3
	
	// which of these operations will execute?
	addeq r4, r5, #78
	andhs r7, r8, r9
	orrmi r10, r11, r12
	eorlt r12, r7, r10