LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := com.android.runtime
LOCAL_SRC_FILES := com.android.runtime.apex
LOCAL_MODULE_CLASS := APEX
LOCAL_MODULE_PATH := $(TARGET_OUT)/apex
LOCAL_PREBUILT_MODULE_FILE := $(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)
