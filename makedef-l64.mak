# executables
CXX    = /usr/bin/g++
AR     = /usr/bin/ar crv
RM     = /bin/rm -f
RMDIR  = /bin/rm -fR
MKDIR  = /bin/mkdir -p
MAKE   = /usr/bin/make
ECHO   = /bin/echo -e

# compiler flags
CFLAGS = -Wall -Werror -pedantic -pedantic-errors -m64 -c -ansi
LFLAGS = -Wall -m64 -melf_x86_64 -ansi

# define common directories
export ODIR = obj_$(ARCH)
