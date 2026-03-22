clean:
	@find $(TARGET_DIR) -name "*.o" -delete
_cdir:
	@mkdir -p $(LIB_OBJ_DIR)
	@echo "$(LIB_OBJ_DIR) created."
