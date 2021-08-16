#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/samsung/m21

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := m21nsxx,m21xx,m21

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_BOOT_HEADER_NAME := SRPSL10A002KU
TARGET_KERNEL_SOURCE := kernel/samsung/m21
KERNEL_CONFIG ?= $(TARGET_KERNEL_CONFIG)
BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/m21.cfg
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos9611 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_NAME := SRPSL10A002KU
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_HEADER_SIZE := 1660
BOARD_DTB_SIZE := 135500
BOARD_DTB_OFFSET := 0x00000000


# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos9610

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Inherit common board flags
include device/samsung/universal9611-common/BoardConfigCommon.mk
