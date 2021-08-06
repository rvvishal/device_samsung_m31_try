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
    $(LOCAL_DIR)/lineage.mk \
 
 #  $(LOCAL_DIR)/aicp.mk \
 #  $(LOCAL_DIR)/aim.mk \
 #  $(LOCAL_DIR)/aokp.mk \
 #  $(LOCAL_DIR)/aosip.mk \
 #  $(LOCAL_DIR)/aosp.mk \
 #  $(LOCAL_DIR)/bootleg.mk \
 #  $(LOCAL_DIR)/derp.mk \
 #  $(LOCAL_DIR)/du.mk \
 #  $(LOCAL_DIR)/evolution.mk \
 #  $(LOCAL_DIR)/havoc.mk \
 #  $(LOCAL_DIR)/lineage.mk \
 #  $(LOCAL_DIR)/rr.mk \
 #  $(LOCAL_DIR)/superior.mk \
 #  $(LOCAL_DIR)/xtended.mk

# COMMON_LUNCH_CHOICES := \
#   aicp_$(DEVICE)-user \
#   aicp_$(DEVICE)-userdebug \
#   aicp_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   aim_$(DEVICE)-user \
#   aim_$(DEVICE)-userdebug \
#   aim_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   aokp_$(DEVICE)-user \
#   aokp_$(DEVICE)-userdebug \
#   aokp_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   aosip_$(DEVICE)-user \
#   aosip_$(DEVICE)-userdebug \
#   aosip_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   aosp_$(DEVICE)-user \
#   aosp_$(DEVICE)-userdebug \
#   aosp_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   bootleg_$(DEVICE)-user \
#   bootleg_$(DEVICE)-userdebug \
#   bootleg_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   derp_$(DEVICE)-user \
#   derp_$(DEVICE)-userdebug \
#   derp_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   du_$(DEVICE)-user \
#   du_$(DEVICE)-userdebug \
#   du_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   evolution_$(DEVICE)-user \
#   evolution_$(DEVICE)-userdebug \
#   evolution_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   havoc_$(DEVICE)-user \
#   havoc_$(DEVICE)-userdebug \
#   havoc_$(DEVICE)-eng

COMMON_LUNCH_CHOICES := \
    lineage_$(DEVICE)-user \
    lineage_$(DEVICE)-userdebug \
    lineage_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   rr_$(DEVICE)-user \
#   rr_$(DEVICE)-userdebug \
#   rr_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   superior_$(DEVICE)-user \
#   superior_$(DEVICE)-userdebug \
#   superior_$(DEVICE)-eng

# COMMON_LUNCH_CHOICES := \
#   xtended_$(DEVICE)-user \
#   xtended_$(DEVICE)-userdebug \
#   xtended_$(DEVICE)-eng


     
     
     
