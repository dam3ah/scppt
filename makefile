TIME:=$(shell date -u +"%s")
include mk/log.mk
dev:
	$(call build_type,DEV,$(DEV_DIR),$(DEV_FLAGS))	
all: dev debug release
debug:
	$(call build_type,DBG,$(DBG_DIR),$(DBG_FLAGS))
release:
	$(call build_type,RELEASE,$(REL_DIR),$(REL_FLAGS))

include mk/config.mk
include mk/utils.mk
include mk/rules.mk
