############################
#### C LANGUAGE TARGETS ####
############################


$(OBJ_DIR)/%.o: %.c ../include/%.h
	@$(ECHO)
	@$(ECHO) "================================================================================"
	@$(MKDIR) $(OBJ_DIR)
	$(CC) $(CFLAGS) $(INC_DIRS) -o $@ $<
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $@)\""
	@$(ECHO) "================================================================================"
	@$(ECHO)

$(OBJ_DIR)/%.o: %.c
	@$(ECHO)
	@$(ECHO) "================================================================================"
	@$(MKDIR) $(OBJ_DIR)
	$(CC) $(CFLAGS) $(INC_DIRS) -o $@ $<
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $@)\""
	@$(ECHO) "================================================================================"
	@$(ECHO)


##############################
#### C++ LANGUAGE TARGETS ####
##############################


$(OBJ_DIR)/%.o: %.cpp ../include/%.h
	@$(ECHO)
	@$(ECHO) "================================================================================"
	@$(MKDIR) $(OBJ_DIR)
	$(CXX) $(C++FLAGS) $(INC_DIRS) -o $@ $<
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $@)\""
	@$(ECHO) "================================================================================"
	@$(ECHO)
	
$(OBJ_DIR)/%.o: %.cpp
	@$(ECHO)
	@$(ECHO) "================================================================================"
	@$(MKDIR) $(OBJ_DIR)
	$(CXX) $(C++FLAGS) $(INC_DIRS) -o $@ $<
	@$(ECHO)
	@$(ECHO) "Will store \"$(abspath $@)\""
	@$(ECHO) "================================================================================"
	@$(ECHO)


#########################
#### GENERIC TARGETS ####
#########################


clean:
	@$(RMDIR) $(OBJ_DIR)
	@$(RM) $(LIB)
	@$(RM) $(EXE)

