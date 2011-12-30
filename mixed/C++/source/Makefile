include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/CppProgram.o \

# define the targets to build
EXE = ../../bin/Mixed-$(ARCH).exe

# module-specific options
INC_DIRS  += -I ../../C/include
C_LIB = -L ../../lib -lCLibrary-$(ARCH)

# targets
all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO)
	@$(ECHO) "================================================================================"
	$(CXX) $(L++FLAGS) $(OBJS) $(C_LIB) -o $(EXE)
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================"
	@$(ECHO)

include ../../../standard_rules.mak
