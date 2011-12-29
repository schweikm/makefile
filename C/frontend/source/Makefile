include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/frontend.o \
       $(OBJ_DIR)/main.o

# define the targets to build
EXE = ../../bin/Frontend-$(ARCH).exe

# module-specific options
INC_DIRS  += -I ../../common/include
COMMON_LIB = -L ../../lib -lcommon-$(ARCH)

# targets
all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CC) $(LFLAGS) $(OBJS) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================\n"

include ../../../standard_rules.mak
