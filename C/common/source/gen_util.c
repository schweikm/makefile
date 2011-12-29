#include <gen_util.h>
#include <stdio.h>

void printHelloWorld(void) {
     printf("Hello World\n");
}

void printIntArray(int *array, int size) {
    int i;

    printf("\n[");
    for(i = 0; i < size; i++) {
        printf("%d, ", array[i]);
    }
    printf("\b\b]\n\n");
}

