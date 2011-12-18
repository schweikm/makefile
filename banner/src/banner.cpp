#include <banner.h>
#include <gen_util.h>
#include <audio.h>

#include <string>
#include <iostream>

using std::string;
using std::cout;
using std::endl;

void display() {
    string a("Hello, ");
    string b("Banner!");

    string concat = concatStrings(a, b);
    cout << concat << endl;
}

void beAnnoying() {
    makeNoise(340);
}

