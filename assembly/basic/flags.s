.global _start
_start:
	mov r2, #0x80000000
	mov r3, #0x00000001
	mov r11, #2
	mov r7, #0
	mov r8, #-5
	mov r9, #7
	
	addeq r4, r5, #78
	andhs r7, r8, r9
