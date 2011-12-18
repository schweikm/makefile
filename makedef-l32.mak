# executables
CXX    = /usr/bin/g++
AR     = /usr/bin/ar crv
RM     = /bin/rm -f
RMDIR  = /bin/rm -fR
MKDIR  = /bin/mkdir -p
MAKE   = /usr/bin/make
ECHO   = /bin/echo -e

# compiler flags
CFLAGS = -Wall -Werror -pedantic -pedantic-errors -m32 -c -ansi
LFLAGS = -Wall -m32 -melf_i386 -ansi

# define common directories
export ODIR = obj_$(ARCH)
