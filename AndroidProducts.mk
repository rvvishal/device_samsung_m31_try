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

ANDROID_VERSION ?= $(ANDROID_VERSION)

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/ROM_m31.mk

## LINEGAE OS
COMMON_LUNCH_CHOICES := \
     lineage_m31-userdebug \
     lineage_m31-eng \
     lineage_m31-user

## SAKURA OS
COMMON_LUNCH_CHOICES := \
     sakura_m31-userdebug \
     sakura_m31-eng \
     sakura_m31-user
     
## AOSP EXTENDED 
COMMON_LUNCH_CHOICES := \
     aosp_m31-userdebug \
     aosp_m31-eng \
     aosp_m31-user

     
ifeq ($(COMMON_LUNCH_CHOICES), lineage_m31-userdebug)
ROM=lineage VENDOR_DIR_TYPE=lineage
else ifeq ($(COMMON_LUNCH_CHOICES), sakura_m31-*)
ROM=sakura ROM_TYPE=lineage VENDOR_DIR_TYPE=lineage
else ifeq ($(COMMON_LUNCH_CHOICES), aosp_m31-*)
ROM=aosp ROM_TYPE=aosp VENDOR_DIR_TYPE=aosp
endif
     
     
     
