-include device/samsung/mt6765/BoardConfig-common.mk

TARGET_BOOTLOADER_BOARD_NAME := a03s
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_BOARD_INFO_FILE := device/samsung/mt6765/a03s/board-info.txt

# Kernel - prebuilt
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := device/samsung/mt6765/a03s/prebuilts/Image.gz

TARGET_PREBUILT_DTB := device/samsung/mt6765/a03s/prebuilts/dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG :=
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

BOARD_PREBUILT_DTBOIMAGE := device/samsung/mt6765/a03s/prebuilts/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO :=
endif
