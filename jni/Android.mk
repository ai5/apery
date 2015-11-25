# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := apery
LOCAL_SRC_FILES := ../src/main.cpp ../src/bitboard.cpp ../src/init.cpp ../src/mt64bit.cpp ../src/position.cpp ../src/evalList.cpp \
					../src/move.cpp ../src/movePicker.cpp ../src/square.cpp ../src/usi.cpp ../src/generateMoves.cpp ../src/evaluate.cpp \
					../src/search.cpp ../src/hand.cpp ../src/tt.cpp ../src/timeManager.cpp ../src/book.cpp ../src/benchmark.cpp \
					../src/thread.cpp ../src/common.cpp ../src/pieceScore.cpp

LOCAL_CXXFLAGS  := -std=c++11 -fno-exceptions -fno-rtti  -Wextra -Ofast -MMD -MP -DNDEBUG -D__STDC_CONSTANT_MACROS -pthread
LOCAL_CXXFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

#LOCAL_STATIC_LIBRARIES    := -lpthread
include $(BUILD_EXECUTABLE)
