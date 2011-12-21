include ../../standard_macro.mak

INCS = -I ../include

OBJS    = $(OBJ_DIR)/gen_util.o \
          $(OBJ_DIR)/math_util.o

LIB     = ../../lib/libcommon.a

all: $(OBJS) $(LIB)

$(LIB): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(AR) $(LIB) $(OBJS)
	@$(ECHO) "\nWill store $(abspath $(LIB))"
	@$(ECHO) "================================================================================\n"

clean:
	@$(RMDIR) $(OBJ_DIR)
	@$(RM) $(LIB)

include ../../standard_rules.mak
