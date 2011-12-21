include ../../standard_macro.mak

INCS = -I ../include -I ../../common/include
COMMON_LIB = -L ../../lib -lcommon

OBJS    = $(OBJ_DIR)/audio.o \
          $(OBJ_DIR)/main.o

LIB     = ../../lib/libaudio.a
EXE     = ../../bin/Audio.exe

all: $(OBJS) $(LIB) $(EXE)

$(LIB): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(AR) $(LIB) $(OBJ_DIR)/audio.o 
	@$(ECHO) "\nWill store $(abspath $(LIB))"
	@$(ECHO) "================================================================================\n"

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CXX) $(LFLAGS) $(OBJS) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store $(abspath $(EXE))"
	@$(ECHO) "================================================================================\n"

clean:
	@$(RMDIR) $(OBJ_DIR)
	@$(RM) $(LIB)
	@$(RM) $(EXE)

include ../../standard_rules.mak
