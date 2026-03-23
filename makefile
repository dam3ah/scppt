include mk/log.mk
dev:
	$(call job,Compiling for dev...)
	BUILD_DIR=$(DEV_DIR) CXX_FLAGS="$(CXX_FLAGS) $(DEV_FLAGS)" $(MAKE) -s _cdir $(TARGET)

all: dev debug release

debug:
	$(call job,Compiling for debug...)
	BUILD_DIR=$(DBG_DIR) CXX_FLAGS="$(CXX_FLAGS) $(DBG_FLAGS)" $(MAKE) -s _cdir $(TARGET)

release:
	$(call job,Compiling for release...)
	BUILD_DIR=$(REL_DIR) CXX_FLAGS="$(CXX_FLAGS) $(REL_FLAGS)" $(MAKE) -s _cdir $(TARGET)
include mk/config.mk
include mk/utils.mk
include mk/rules.mk
