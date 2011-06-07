LOCAL_PATH := $(call my-dir)

#LOCAL_FIRMWARES_DIR := $(LOCAL_PATH)/firmware
LOCAL_FIRMWARES := radeon/R600_rlc.bin #radeon/RS780_me.bin radeon/RS780_pfp.bin

TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/tx2500_info
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/tx2500_minimal

include $(GENERIC_X86_ANDROID_MK)
