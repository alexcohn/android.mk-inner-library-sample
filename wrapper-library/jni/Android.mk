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

# include wrapper library
include $(CLEAR_VARS)
LOCAL_MODULE := InnerLibrary
LOCAL_SRC_FILES := libfoo.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := WrapperLibrary
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../src
LOCAL_C_INCLUDES += ../inner-library/src
LOCAL_SRC_FILES := ../src/wrapper-library.c

# LOCAL_LDLIBS    := -L$(LOCAL_PATH)/../../inner-library/obj/local -lInnerLibrary

include $(BUILD_STATIC_LIBRARY)