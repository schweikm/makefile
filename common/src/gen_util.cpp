#include <gen_util.h>
#include <string>
#include <sstream>

using std::string;
using std::stringstream;

string concatStrings(const string &a, const string &b) {
    return a + b;
}

string getString(int a) {
    string s;
    stringstream out;
    out << a;
    return out.str();
}

