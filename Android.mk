LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),lavender))
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
