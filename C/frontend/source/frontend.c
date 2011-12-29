#include <frontend.h>
#include <gen_util.h>
#include <math_util.h>

#include <stdio.h>

void prettyGUI(char *title, char *message, int messageLen) {
    printHelloWorld();
    printf("Title:%s; message:%s\n", title, message);
    messageLen += 2;
}

int mashButtons(int a, float b, double c) {
    int resa = addInts(a, 2);
    float resb = addFloats(b, 1.245f);
    double resc = addFloats((float)c, 5.432f);

    int array[5];
    array[0] = resa;
    array[1] = (int)resb;
    array[2] = (int) resc;
    array[3] = 10;
    array[4] = 15;

    printIntArray(array, 5);
    return 0;
}

