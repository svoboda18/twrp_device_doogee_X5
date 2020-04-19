#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6580
TARGET_NO_BOOTLOADER := true
TW_NO_REBOOT_BOOTLOADER := false

# Platform
TARGET_BOARD_PLATFORM := mt6580

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

# Kernel properties
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE = 0x80000000
BOARD_RAMDISK_OFFSET = 0x04000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_TAGS_OFFSET = 0x0e000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

TARGET_PREBUILT_KERNEL := device/doogee/gelicia/prebuilt/kernel

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 32505856
BOARD_FLASH_BLOCK_SIZE := 8192
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file"
ALLOW_MISSING_DEPENDENCIES=true

# Encryptions
TW_INCLUDE_CRYPTO := true

# MTP
TW_MTP_DEVICE := /dev/mtp_usb
TW_HAS_MTP := true

# Misc
TW_DEFAULT_LANGUAGE := en
TW_EXCLUDE_SUPERSU := true
TW_USE_TOOLBOX := true

# Filesystem support
TARGET_USES_EXFAT := true
TARGET_USES_NTFS := true
