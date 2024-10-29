.global _start
_start:
	
	// negative and overflow
	// NZCV: 1001
	mov r0, #2147483647
	mov r1, #1
	adds r2, r0, r1
	
	// carry and overflow
	// NZCV: 0011
	ldr r2, =var
	ldr r0, [ r2 ]
	mov r1, #2952790016
	adds r2, r0, r1
	
	// negative and carry
	// NZCV: 1010
	mov r0, #3221225472
	mov r1, #3221225472
	adds r2, r0, r1

	// zero and carry
	// NZCV: 0110
	mov r0, #4294967295
	mov r1, #1
	adds r2, r0, r1
	
.data
	var: .word 2703443303
