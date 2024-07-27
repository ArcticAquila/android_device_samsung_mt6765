$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Product information
PRODUCT_NAME := twrp_a04e
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a04e
PRODUCT_MANUFACTURER := samsung

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720

$(call inherit-product, $(LOCAL_PATH)/device-a04e.mk)
