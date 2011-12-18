include ../../makedef-$(ARCH).mak

INCS = -I ../include

OBJS    = $(ODIR)/gen_util.o \
          $(ODIR)/math_util.o

LIB     = ../../lib/libcommon.a

all: $(OBJS) $(LIB)

$(LIB): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(AR) $(LIB) $(OBJS)
	@$(ECHO) "\nWill store $(abspath $(LIB))"
	@$(ECHO) "================================================================================\n"

clean:
	@$(RMDIR) $(ODIR)
	@$(RM) $(LIB)

include ../../standard_rules.mak
