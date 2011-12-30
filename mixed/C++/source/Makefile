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
	@$(ECHO) "\n================================================================================"
	$(CXX) $(L++FLAGS) $(OBJS) $(C_LIB) -o $(EXE)
	@$(ECHO) "\nWill store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================\n"

include ../../../standard_rules.mak
