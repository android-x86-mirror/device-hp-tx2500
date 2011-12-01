PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := tx2500
PRODUCT_DEVICE := tx2500
PRODUCT_MANUFACTURER := HP

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.sh:system/etc/init.sh \
	$(LOCAL_PATH)/input/AT_Translated_Set_2_keyboard.kl:system/usr/keylayout/AT_Translated_Set_2_keyboard.kl \
	$(LOCAL_PATH)/input/Wacom_ISDv4_93_Pen.idc:system/usr/idc/Wacom_ISDv4_93_Pen.idc \
	$(LOCAL_PATH)/input/Wacom_ISDv4_93_Finger.idc:system/usr/idc/Wacom_ISDv4_93_Finger.idc \
	$(LOCAL_PATH)/input/SynPS_2_Synaptics_TouchPad.idc:system/usr/idc/SynPS_2_Synaptics_TouchPad.idc

