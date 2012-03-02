PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := tx2500
PRODUCT_DEVICE := tx2500
PRODUCT_MANUFACTURER := HP

PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlays
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/tx2500.sh:system/etc/tx2500.sh \
	$(LOCAL_PATH)/input/AT_Translated_Set_2_keyboard.kl:system/usr/keylayout/AT_Translated_Set_2_keyboard.kl \
	$(LOCAL_PATH)/input/HP_WMI_hotkeys.kl:system/usr/keylayout/HP_WMI_hotkeys.kl \
	$(LOCAL_PATH)/input/SynPS_2_Synaptics_TouchPad.idc:system/usr/idc/SynPS_2_Synaptics_TouchPad.idc
