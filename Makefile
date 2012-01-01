include standard_macro.mak

# directories to be built
SUB_DIRS = C C++ mixed

# targets
all:
	@for dir in $(SUB_DIRS); do \
		$(ECHO) ; \
		$(MAKE) -C $$dir all; \
	done

clean:
	@for dir in $(SUB_DIRS); do \
		$(ECHO) ; \
		$(MAKE) -C $$dir clean; \
	done

# special targets that only exist here
check_gcc:
ifneq ($(OLD_GCC),$(GCC_VER))
	@$(ECHO)
	@$(ECHO) "!!!!!!!!!!!!!!!!!!!!!"
	@$(ECHO) "!!!! GCC UPDATED !!!!"
	@$(ECHO) "!!!!!!!!!!!!!!!!!!!!!"
	@$(ECHO)
	@$(ECHO) "  $(OLD_GCC)  ==>  $(GCC_VER)"
	@$(ECHO)
else
	@$(ECHO)
	@$(ECHO) "GCC version matches reference ($(OLD_GCC))"
	@$(ECHO)
endif

