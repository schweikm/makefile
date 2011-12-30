include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/backend.o \
       $(OBJ_DIR)/main.o

# define the targets to build
EXE = ../../bin/Backend-$(ARCH).exe

# module-specific options
INC_DIRS  += -I ../../common/include
COMMON_LIB = -L ../../lib -lcommon-$(ARCH)

# targets
all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO)
	@$(ECHO) ================================================================================
	$(CC) $(LFLAGS) $(OBJS) $(COMMON_LIB) -o $(EXE)
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $(EXE))\""
	@$(ECHO) ================================================================================
	@$(ECHO)

include ../../../standard_rules.mak
