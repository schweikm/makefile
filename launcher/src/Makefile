include ../../makedef-$(ARCH).mak

INCS = -I ../include -I ../../common/include -I ../../audio/include
COMMON_LIB = -L ../../lib -lcommon
AUDIO_LIB  = -L ../../lib -laudio

OBJS    = $(ODIR)/launcher.o \
          $(ODIR)/main.o

EXE     = ../../bin/Launcher.exe

all: $(OBJS) $(EXE)

$(EXE): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(CXX) $(LFLAGS) $(OBJS) $(AUDIO_LIB) $(COMMON_LIB) -o $(EXE)
	@$(ECHO) "\nWill store $(abspath $(EXE))"
	@$(ECHO) "================================================================================\n"

clean:
	@$(RMDIR) $(ODIR)
	@$(RM) $(EXE)

include ../../standard_rules.mak
