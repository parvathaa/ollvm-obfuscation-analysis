#include <stdio.h>

int add(void) {
    int a = 5;
    int b = 3;
    return a + b;
}

int main(void) {
    printf("Result: %d\n", add());
    return 0;
}
