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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common celox
-include device/samsung/celox-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/dalikt/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := SHV-E120K,dalikt,dali

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom kgsl.mmutype=gpummu usb_id_pin_rework=true no_console_suspend=true zcache msm_watchdog.appsbark=0 msm_watchdog.enable=1 loglevel=4 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x48000000
TARGET_KERNEL_CONFIG := cyanogenmod_e120k_lollipop_defconfig
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
TARGET_KERNEL_SOURCE := kernel/samsung/msm8660-common
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/"

# Assert minimum baseband version
TARGET_BOARD_INFO_FILE ?= device/samsung/dalikt/board-info.txt

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_SCREEN_BLANK := true
TARGET_RECOVERY_FSTAB := device/samsung/dalikt/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/dalikt/bluetooth
