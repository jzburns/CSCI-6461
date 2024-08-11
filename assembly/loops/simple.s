.global _start
_start:
	ldr r0, =array1 // array base pointer
	mov r1, #0 // offset
	mov r2, #0 // loop counter
	
loop:
	cmp r2, #6
	bge end
	ldr r3, [r0, r1] // read base + offset to reg
	add r3, r3, #10 // add 10 to the value
	str r3, [r0, r1] // write reg to base + offset
	add r2, r2, #1 // inc loop
	lsl r1, r2, #2 // calc offset
	b loop
end:
	svc #0
	
.data

array1: .word 2,3,11,4,55,6	
