#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# CAMERA
USE_CAMERA_STUB := false

# Platform
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_ARCH := arm
TARGET_CPU_SMP := true
TARGET_NO_BOOTLOADER := true

ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := vangogh
TARGET_OTA_ASSERT_DEVICE := vangogh,a100
USE_ALL_OPTIMIZED_STRING_FUNCS := true

# kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := vangogh_defconfig
TARGET_PREBUILT_RECOVERY_KERNEL := device/acer/a100/prebuilt/zImage
#TARGET_PREBUILT_RECOVERY_KERNEL := device/acer/a100/prebuilt/zImage_recovery
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# Recovery
TARGET_RECOVERY_FSTAB := device/acer/a100/ramdisk/fstab.vangogh
#TARGET_RECOVERY_FSTAB := device/acer/a100/ramdisk/fstab_twrp.vangogh
RECOVERY_FSTAB_VERSION := 2

TARGET_USERIMAGES_USE_EXT4  := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_SELECT_BUTTON := true

# Display
USE_OPENGL_RENDERER    := true
BOARD_EGL_CFG          := device/acer/a100/prebuilt/etc/egl.cfg
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
SKIP_SET_METADATA := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_USES_HWCOMPOSER := true
BOARD_NEEDS_OLD_HWC_API := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
BOARD_EGL_NEEDS_FNW:= true
ENABLE_WEBGL := true

# Audio
#TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# GPS
BOARD_HAVE_GPS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/a100/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a100/bluetooth/bt_vendor.conf

# USB 
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# Wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/vendor/firmware/bcmdhd.cal iface_name=wlan0"

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE      := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 7000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 618659840
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5779750912
BOARD_FLASH_BLOCK_SIZE              := 4096

#MISC
NEED_WORKAROUND_CORTEX_A9_745320 := true

# SELinux policies
POLICYVERS   := 24

#TWRP
#BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TW_HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard0"
TW_EXTERNAL_STORAGE_PATH := "/mnt/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_POWER_BUTTON := 116
TW_NO_CPU_TEMP := true
TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
TW_NO_EXFAT_FUSE := true
TW_MAX_BRIGHTNESS := 150
TW_DEFAULT_BRIGHTNESS := 100
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_DEFAULT_LANGUAGE := en-US
TW_NO_EXFAT := true
TW_THEME := landscape_mdpi
TW_MTP_DEVICE:="ICONIA_A100"
TW_INCLUDE_CRYPTO := false
