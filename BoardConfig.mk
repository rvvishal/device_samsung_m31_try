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

DEVICE_PATH := device/samsung/$(DEVICE)

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := $(DEVICE)nsxx,$(DEVICE)xx,$(DEVICE)

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_BOOT_HEADER_NAME := SRPSL10A002KU
TARGET_KERNEL_SOURCE := kernel/samsung/$(DEVICE)
KERNEL_CONFIG ?= $(TARGET_KERNEL_CONFIG)
BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/$(DEVICE).cfg
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

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 61865984
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71106560
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_DTBOIMG_PARTITION_SIZE       := 8388608
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1258291200
endif

BOARD_SUPER_PARTITION_SIZE := 6539968512
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6529968512

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := system/product

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.exynos9611

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Inherit common board flags
include device/samsung/universal9611-common/BoardConfigCommon.mk
