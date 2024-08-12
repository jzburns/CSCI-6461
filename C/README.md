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
mov r1, #-1
cmp r0. r1
bls else

else:
```


