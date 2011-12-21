include ../../standard_macro.mak

INCS = -I ../include -I ../../common/include -I ../../audio/include
COMMON_LIB = -L ../../lib -lcommon
AUDIO_LIB  = -L ../../lib -laudio

OBJS    = $(OBJ_DIR)/launcher.o \
          $(OBJ_DIR)/main.o

EXE     = ../../bin/Launcher.exe

all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CXX) $(LFLAGS) $(OBJS) $(AUDIO_LIB) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store $(abspath $(EXE))"
	@$(ECHO) "================================================================================\n"

clean:
	@$(RMDIR) $(OBJ_DIR)
	@$(RM) $(EXE)

include ../../standard_rules.mak
