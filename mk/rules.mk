$(TARGET): $(TARGET_LIB) $(OBJS)
	$(CXX) $(CXX_FLAGS) $(OBJS) $(BUILD_DIR)/$(TARGET_LIB) -o $(BUILD_DIR)/$@
	$(call log_success,$@ was built.)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@
	$(call log_success,$@ object was created.)
$(TARGET_LIB): $(LIB_OBJS)
	ar rcs $(BUILD_DIR)/$@ $<
	$(call log_success,$@ was created.)
$(LIB_OBJ_DIR)/%.o: $(LIB_DIR)/%.cpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@
	$(call log_success,$@ object was created.)
