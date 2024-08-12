# Discussion of C code examples

## Example 1, ``example1.C``

In this code, we notice an unusual result of an ``if`` test. It 
appears that 1 is not greater than -1:

```
        uint32_t x = 1;
        int32_t y = -1;

        // how do we fix this?
        if (x > y) {
                printf("correct!\n");
        } else {
                printf("something is wrong!\n");
        }
```
The problem can be undersood clearly if we think about the assembly code produced:

```
mov r0, #1
mov r1, #-5 ; this will be disassembled as mvn r1, #4
cmp r0. r1; Compare (immediate) subtracts RHS from LHS.
          ; It updates the condition flags based on the result, and discards the result.
bls else ; branch on unsigned less than or same
         ; The processor doesn't read data declarations, so it doesn't see the minus sign. 

else:
```


