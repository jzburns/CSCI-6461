// compile this code using 
// gcc example1.C
// run the code using ./a.out
#include <stdio.h>
#include <stdint.h>

int main (int argc, char** argv) {
	uint32_t x = 1;
	int32_t y = -1;

	// how do we fix this?
	if (x > y) {
		printf("correct!\n");
	} else {
		printf("something is wrong!\n");
	}
	return 0;
}
