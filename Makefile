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

