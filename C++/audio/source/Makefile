include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/audio.o \
       $(OBJ_DIR)/main.o

# define the targets to build
LIB = ../../lib/libaudio-$(ARCH).a
EXE = ../../bin/Audio-$(ARCH).exe

# module-specific options
INC_DIRS  += -I ../../common/include
COMMON_LIB = -L ../../lib -lcommon-$(ARCH)

# targets
all: $(OBJS) $(LIB) $(EXE)

$(LIB): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(AR) $(ARFLAGS) $(LIB) $(OBJ_DIR)/audio.o 
	@$(ECHO) "\nWill store \"$(abspath $(LIB))\""
	@$(ECHO) "================================================================================\n"

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CXX) $(LFLAGS) $(OBJS) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================\n"

include ../../../standard_rules.mak
