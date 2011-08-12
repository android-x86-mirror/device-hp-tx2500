PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_KEYMAPS := $(wildcard $(LOCAL_PATH)/keymaps/*.kcm)

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := tx2500
PRODUCT_DEVICE := tx2500
PRODUCT_MANUFACTURER := HP

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.sh:system/etc/init.sh
