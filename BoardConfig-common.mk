# Platform
TARGET_BOARD_PLATFORM := mt6765
BOARD_HAS_MTK_HARDWARE := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Kernel
BOARD_KERNEL_CMDLINE := \
    bootopt=64S3,32N2,64N2 \
    loop.max_part=7 \
    androidboot.init_fatal_reboot_target=recovery \
    androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_SECOND_OFFSET := 0xbff88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_DTB_OFFSET := 0x07808000
BOARD_DTB_SIZE := 123009

BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_CONFIG := aqua_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/mt6765
TARGET_KERNEL_CLANG_VERSION := r416183b
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-$(TARGET_KERNEL_CLANG_VERSION)

BOARD_MKBOOTIMG_ARGS += \
    --base $(BOARD_KERNEL_BASE) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--second_offset $(BOARD_KERNEL_SECOND_OFFSET) \
	--header_version $(BOARD_BOOTIMG_HEADER_VERSION) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--board "" \
	--dtb_offset $(BOARD_DTB_OFFSET)

# Partition
BOARD_USES_METADATA_PARTITION := true

# Recovery 
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.mt6765
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3

# product.img
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2684354560

# system.img
BOARD_SYSTEMIMAGE_PARTITION_TYPE := f2fs
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2877136896

# userdata.img
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# vendor.img
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912

# odm.img
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_ODMIMAGE_PARTITION_SIZE := 4349952

# cache.img
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

# boot.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072

# recovery.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 38797312

# dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Display
TARGET_SCREEN_DENSITY := 300

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 6106906624
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    product \
    odm \
    vendor

#BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6102712320

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a03s
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_ODM := odm

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# VINTF
DEVICE_MANIFEST_FILE := \
	$(LOCAL_PATH)/configs/hidl/manifest.xml \
	android.hardware.dumpstate@1.1-service-lazy.xml \
	android.hardware.health@2.1-samsung.xml \
	android.hardware.usb@1.3-service.coral.xml \
	android.hardware.wifi.hostapd.xml \
	android.hardware.wifi.supplicant.xml \
	android.hardware.wifi@1.0-service.xml \
	engmode_manifest.xml \
	hyper-default-sec.xml \
	lights-default-sec.xml \
	manifest_android.hardware.drm@1.4-service.clearkey.xml \
	manifest_android.hardware.drm@1.4-service.widevine.xml \
	manifest_hwcomposer.xml \
	power-default.xml \
	sec_c2_manifest_default0_1_2.xml \
	vaultkeeper_manifest.xml \
	vendor.samsung.hardware.radio.exclude.mediatek.xml \
	vendor.samsung.hardware.radio_manifest_2_30.xml \
	vendor.samsung.hardware.security.widevine.keyprov-service.xml \
	vendor.samsung.hardware.sehradio_manifest_2_30.xml \
	vendor.samsung.hardware.tlc.kg@1.1-manifest.xml \
	vendor.samsung.hardware.vibrator-default.xml \
	vendor.samsung.hardware.wifi.hostapd.xml \
	vendor.samsung.hardware.wifi@2.0-service.xml

DEVICE_MATRIX_FILE := $(LOCAL_PATH)/vintf/compatibility_matrix.xml
#DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(LOCAL_PATH)/vintf/framework_compatibility_matrix.xml \
    vendor/aosp/config/device_framework_matrix.xml

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# VNDK
BOARD_VNDK_VERSION := current

TARGET_RECOVERY_INITRC := \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6765.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.samsung.rc

-include vendor/samsung/mt6765/BoardConfigVendor.mk

# Sepolicy
-include device/mediatek/sepolicy_vndr/SEPolicy.mk

# Team Win Recovery Project
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
