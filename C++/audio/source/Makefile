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
	@$(ECHO)
	@$(ECHO) "================================================================================"
	$(AR) $(ARFLAGS) $(LIB) $(OBJ_DIR)/audio.o 
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $(LIB))\""
	@$(ECHO) "================================================================================"
	@$(ECHO)

$(EXE): $(OBJS)
	@$(ECHO)
	@$(ECHO) "================================================================================"
	$(CXX) $(L++FLAGS) $(OBJS) $(COMMON_LIB) -o $(EXE)
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================"
	@$(ECHO)

include ../../../standard_rules.mak
