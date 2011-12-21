###############################
#### INITIAL CONFIGURATION ####
###############################

#### System variables ####
SYSTEM = $(shell uname)
PROC   = $(shell uname -p)

#### Set ARCH ####
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
    AR    = /usr/bin/ar crv
    RM    = /bin/rm -f
    RMDIR = /bin/rm -fR
    MKDIR = /bin/mkdir -p
    MAKE  = /usr/bin/make
    ECHO  = /bin/echo -e
endif


#######################
#### COMMON MACROS ####
#######################

OBJ_DIR = obj_$(ARCH)


########################
#### COMPILER FLAGS ####
########################

#### Platform-specific flags ####
ifeq ($(PROC),i686)
    PLATFORM_CFLAGS = -m32
endif

ifeq ($(PROC),x86_64)
    PLATFORM_CFLAGS = -m64
endif

#### GCC Generic flags ####
GENERIC_CFLAGS  = -c

#### Language-specific flags ####
C_LANG_CFLAGS   =
C++_LANG_CFLAGS =

#### Warning flags ####
C_WARN_CFLAGS   = -Wall
C++_WARN_CFLAGS = -Wall

#### 
CFLAGS     = $(PLATFORM_CFLAGS) $(GENERIC_CFLAGS) $(C_LANG_CFLAGS)   $(C_WARN_CFLAGS)
C++FLAGS   = $(PLATFORM_CFLAGS) $(GENERIC_CFLAGS) $(C++_LANG_CFLAGS) $(C++_WARN_CFLAGS)


######################
#### LINKER FLAGS ####
######################

ifeq ($(PROC),i686)
    PLATFORM_LFLAGS = -m32 -melf_i386
endif

ifeq ($(PROC),x86_64)
    PLATFORM_LFLAGS = -m64 -melf_x86_64
endif

LFLAGS = $(PLATFORM_LFLAGS)

