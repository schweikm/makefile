include ../standard_macro.mak

# directories to be built
SUB_DIRS = common audio banner launcher

# targets
all:
	@for dir in $(SUB_DIRS); do \
		$(ECHO) "\n"; \
		$(MAKE) -C $$dir/source all; \
	done

clean:
	@for dir in $(SUB_DIRS); do \
		$(ECHO) "\n"; \
		$(MAKE) -C $$dir/source clean; \
	done

