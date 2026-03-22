$(TARGET): $(TARGET_LIB) $(OBJS)
	$(CXX) $(CXX_FLAGS) $(OBJS) $(BUILD_DIR)/$(TARGET_LIB) -o $(BUILD_DIR)/$@
	@echo "$@ was built."
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@
	@echo "$< Compiled."
$(TARGET_LIB): $(LIB_OBJS)
	ar rcs $(BUILD_DIR)/$@ $<
	@echo "$(TARGET_LIB) created."
$(LIB_OBJ_DIR)/%.o: $(LIB_DIR)/%.cpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@
	@echo "$< Compiled."
