LOCAL_PATH := $(call my-dir)

LOCAL_FIRMWARES := $(subst $(LOCAL_PATH)/../../common/firmware/,,$(shell find $(LOCAL_PATH)/../../common/firmware/radeon -type f)) 

TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/tx2500_info
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/tx2500_minimal

include $(GENERIC_X86_ANDROID_MK)

TARGET_GLOBAL_CFLAGS += -march=k8-sse3 -DUSE_SSE2 -mfpmath=sse -mstackrealign -pipe
