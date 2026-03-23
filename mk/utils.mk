clean:
	@find $(TARGET_DIR) -name "*.o" -delete
	$(call note,$(TARGET_DIR) Objects were deleted.)
_cdir:
	@mkdir -p $(LIB_OBJ_DIR)
	$(call note,Directory $(LIB_OBJ_DIR) was created.)
