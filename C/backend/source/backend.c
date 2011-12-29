#include <backend.h>
#include <math_util.h>

#include <stdio.h>

int startServer(char *serverName, int port) {
    printf("Starting server - host:%s; port:%d\n", serverName, port);
    return 0;
}

int stopServer(float timeout) {
    float time = addFloats(timeout, 1.875f);
    printf("Stopping server with timeout:%5.5f\n", time);
    return 0;
}

