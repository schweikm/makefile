include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/gen_util.o \
       $(OBJ_DIR)/math_util.o

# define the targets to build
LIB = ../../lib/libcommon-$(ARCH).a

# targets
all: $(OBJS) $(LIB)

$(LIB): $(OBJS)
	@$(ECHO)
	@$(ECHO) "================================================================================"
	$(AR) $(ARFLAGS) $(LIB) $(OBJS)
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $(LIB))\""
	@$(ECHO) "================================================================================"
	@$(ECHO)

include ../../../standard_rules.mak
