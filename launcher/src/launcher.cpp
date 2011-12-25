#include <gen_util.h>
#include <math_util.h>
#include <audio.h>

#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

int login(const string &username, const string &password) {
    string concat;
    concat = concatStrings("[", username);
    concat = concatStrings(concat, ", ");
    concat = concatStrings(concat, password);
    concat = concatStrings(concat, "]");

    cout << "Logging in with " << concat << endl << endl;
    return 0;
}

void annoyOperator(long numAlerts) {
    int alerts = addInts(numAlerts, 2);

    for(int i = 0; i < alerts; i++) {
        cout << "ALARM!!" << endl;
        makeNoise((i * 25) + 100);
        cout << endl;
    }
}

void logout() {
    cout << "Seeya!" << endl;
}

