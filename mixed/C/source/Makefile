include ../../../standard_macro.mak

# define the objects to build
OBJS = $(OBJ_DIR)/C_stdio.o \
       $(OBJ_DIR)/C_string.o

# define the targets to build
LIB = ../../lib/libCLibrary-$(ARCH).a

# targets
all: $(OBJS) $(LIB)

$(LIB): $(OBJS)
	@$(ECHO) "\n================================================================================"
	$(AR) $(ARFLAGS) $(LIB) $(OBJS)
	@$(ECHO) "\nWill store \"$(abspath $(LIB))\""
	@$(ECHO) "================================================================================\n"

include ../../../standard_rules.mak
