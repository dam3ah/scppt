CXX=g++
CXX_STD=11
CXX_FLAGS?=-std=c++$(CXX_STD) -Iinclude
REL_FLAGS=-O2
DEV_FLAGS=-O1
DBG_FLAGS=-g -Wall -O0 -fsanitize=address
TARGET=scppt
TARGET_LIB=lib.a

# DIRECTORIES
SRC_DIR=src
LIB_DIR=$(SRC_DIR)/lib
TARGET_DIR=target
DEV_DIR=$(TARGET_DIR)/dev
REL_DIR=$(TARGET_DIR)/release
DBG_DIR=$(TARGET_DIR)/debug
OBJ_DIR=$(BUILD_DIR)/obj
LIB_OBJ_DIR=$(OBJ_DIR)/lib
SRCS=$(wildcard $(SRC_DIR)/*.cpp)
LIB_SRCS=$(wildcard $(LIB_DIR)/*.cpp)
OBJS=$(SRCS:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
LIB_OBJS=$(LIB_SRCS:$(LIB_DIR)/%.cpp=$(LIB_OBJ_DIR)/%.o)
