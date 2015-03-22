LOCAL_PATH := $(call my-dir)

ifneq ($(filter dalikt e120k hercules skyrocket t769,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
