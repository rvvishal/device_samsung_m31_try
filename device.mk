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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Inherit common device configuration
$(call inherit-product, device/samsung/universal9611-common/universal9611-common.mk)

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

# Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.exynos9611:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos9611

# Ramdisk
PRODUCT_PACKAGES += \
    mx_log_collection.sh \
    mx_logger.sh \
    mx_logger_dump.sh \
    fstab.exynos9611 \
    ueventd.qcom.rc \

# Screen density
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Shipping API
ifeq ($(ANDROID_VERSION), 10)
PRODUCT_SHIPPING_API_LEVEL := 29
else
PRODUCT_SHIPPING_API_LEVEL := 30
endif

# Skip Mount
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/skip_mount.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/init/config/skip_mount.cfg

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Inherit device vendor
$(call inherit-product-if-exists, vendor/samsung/m21/m21-vendor.mk)

# Face unlock - Thanks to Tenshi2112 for the flag
TARGET_FACE_UNLOCK_SUPPORTED := true
