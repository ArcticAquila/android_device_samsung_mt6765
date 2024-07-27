ifneq ($(filter a03s a04 a04e, $(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
