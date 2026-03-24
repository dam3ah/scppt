clean:
	@find $(TARGET_DIR) \( -name "*.o" -o -name "*.log" \) -delete
	$(call log_note,$(TARGET_DIR) objects and logs were deleted.)
_cdir:
	@mkdir -p $(LIB_OBJ_DIR)
	$(call log_note,Directory $(LIB_OBJ_DIR) was created.)

.ONESHELL:
define build_type
	$(call log_job,Compiling for $(1)...)
	export BUILD_DIR=$(2)
	export CXX_FLAGS="$(CXX_FLAGS) $(3)"
	$(MAKE) -s -S _cdir
	$(MAKE) -s -S $(TARGET) 2>$$BUILD_DIR/$(TIME).error.log
	if [ -s $$BUILD_DIR/$(TIME).error.log ]; then
		ERROR=$$(cat $$BUILD_DIR/$(TIME).error.log)
		$(call log_error,$$ERROR)
		$(call log_note,Error Log $$BUILD_DIR/$(TIME).error.log)
		exit 1
	else
		rm $$BUILD_DIR/$(TIME).error.log
	fi
endef
