include ../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/banner.o \
       $(OBJ_DIR)/main.o

# define the targets to build
EXE = ../../bin/Banner-$(ARCH).exe

# module-specific options
INC_DIRS  += -I ../../common/include -I ../../audio/include
COMMON_LIB = -L ../../lib -lcommon-$(ARCH)
AUDIO_LIB  = -L ../../lib -laudio-$(ARCH)

# targets
all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CXX) $(LFLAGS) $(OBJS) $(AUDIO_LIB) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store \"$(abspath $(EXE))\""
	@$(ECHO) "================================================================================\n"

include ../../standard_rules.mak
