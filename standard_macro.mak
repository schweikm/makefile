###############################
#### INITIAL CONFIGURATION ####
###############################

#### System variables ####
SYSTEM = $(shell uname)
PROC   = $(shell uname -p)

#### Set ARCH ####
ARCH = undef

ifeq ($(SYSTEM),Linux)
    ifeq ($(PROC),i686)
        ARCH = l32
    endif

    ifeq ($(PROC),x86_64)
        ARCH = l64
    endif
endif


#######################
#### SYSTEM MACROS ####
#######################

ifeq ($(SYSTEM),Linux)
    CC    = /usr/bin/gcc
    CXX   = /usr/bin/g++
    AR    = /usr/bin/ar
    RM    = /bin/rm -f
    RMDIR = /bin/rm -fR
    MKDIR = /bin/mkdir -p
    MAKE  = /usr/bin/make
    ECHO  = /bin/echo -e
endif


#######################
#### COMMON MACROS ####
#######################

#GCC_VER = $(shell $(CC)  --version | head -1 | cut -d ' ' -f 3)
#G++_VER = $(shell $(CXX) --version | head -1 | cut -d ' ' -f 3)

OBJ_DIR = obj_$(ARCH)
INC_DIRS = -I ../include


########################
#### COMPILER FLAGS ####
########################

#### GCC Generic flags ####
GENERIC_CFLAGS  = -c

#### Language-specific flags ####
C_LANG_CFLAGS   =
C++_LANG_CFLAGS =

#### Warning flags ####
C_WARN_CFLAGS   = -Wall -Wextra
C++_WARN_CFLAGS = -Wall -Wextra

#### Build the combined flags ####
CFLAGS     = $(GENERIC_CFLAGS) $(C_LANG_CFLAGS) $(C_WARN_CFLAGS)
C++FLAGS   = $(GENERIC_CFLAGS) $(C++_LANG_CFLAGS) $(C++_WARN_CFLAGS)


#######################
#### ARCHIVE FLAGS ####
#######################

ARFLAGS = crv


######################
#### LINKER FLAGS ####
######################

GENERIC_LFLAGS = -Wall -Wextra

#### Build the combined flags ####
LFLAGS = $(GENERIC_LFLAGS)

