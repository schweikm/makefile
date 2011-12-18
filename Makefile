# platform-specific variables
include makedef-$(ARCH).mak

# directories to be built
SUBDIRS = common audio banner launcher

# make targets
all:
	@for dir in $(SUBDIRS); do \
		$(ECHO) "\n"; \
		$(MAKE) -C $$dir/src all; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		$(ECHO) "\n"; \
		$(MAKE) -C $$dir/src clean; \
	done

