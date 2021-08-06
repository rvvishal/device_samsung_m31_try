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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m21/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ROM stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m21
PRODUCT_NAME := lineage_m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Fingerprint
ifeq ($(ANDROID_VERSION), 10)
BUILD_FINGERPRINT := samsung/m21nsxx/m21:10/QP1A.190711.020/M215FXXU2ATJ5:user/release-keys
else
BUILD_FINGERPRINT := samsung/m21nsxx/m21:11/RP1A.200720.012/M215FXXU2BUD3:user/release-keys
endif

PRIVATE_BUILD_DESC_UNI=
ifeq ($(ANDROID_VERSION), 10)
PRIVATE_BUILD_DESC="m21nsxx-user 10 QP1A.190711.020 M215FXXU2ATJ5 release-keys"
else
PRIVATE_BUILD_DESC="m21nsxx-user 11 RP1A.200720.012 M215FXXU2BUD3 release-keys"
endif 


PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=m21nsxx \
        $(PRIVATE_BUILD_DESC_UNI)
