#include <frontend.h>
#include <string.h>

int main(void) {
    char *message = "You messed up!";
    prettyGUI("ERROR", message, (int)strlen(message));
    mashButtons(1, 1.245f, 9.653f);
    return 0;
}

