#include <CppProgram.h>

extern "C" {
    #include <C_stdio.h>
    #include <C_string.h>
}

#include <iostream>

using std::cout;
using std::endl;

int main() {
    printCHelloWorld();
    printCppHelloWorld();

    char str[] = "Hello, world!";
    cout << endl << "Length of \"" << str << "\" is " << getCStringLen(str) << endl;
}

void printCppHelloWorld() {
    cout << "C++:  Hello, world!" << endl;
}

