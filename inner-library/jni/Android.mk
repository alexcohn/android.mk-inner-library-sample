LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := InnerLibrary
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../src

LOCAL_SRC_FILES := \
../src/inner-library.c

include $(BUILD_STATIC_LIBRARY)
