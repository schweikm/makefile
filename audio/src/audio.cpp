#include <audio.h>
#include <math_util.h>

#include <iostream>

using std::cout;
using std::endl;

int makeNoise(int hertz) {
    int myHertz = addInts(hertz, 100);
    cout << "Making noise with frequency of " << myHertz << " Hz" << endl;
    return myHertz;
}
