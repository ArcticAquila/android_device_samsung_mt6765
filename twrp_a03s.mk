-include $(LOCAL_PATH)/twrp-common.mk

# Product information
PRODUCT_NAME := twrp_a03s
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a03s
PRODUCT_MANUFACTURER := samsung

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720

$(call inherit-product, $(LOCAL_PATH)/device-a03s.mk)
