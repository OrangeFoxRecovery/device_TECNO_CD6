#
# Copyright (C) 2021 The OrangeFox Recovery Project
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

DEVICE_PATH := device/TECNO/CD6

# Release name
PRODUCT_RELEASE_NAME := TECNO-CD6

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/TECNO/CD6/recovery/root,recovery/root) \
    device/TECNO/CD6/prebuilt/dtb:dtb.img

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CD6
PRODUCT_NAME := omni_CD6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Camon 15 Air
PRODUCT_MANUFACTURER := TECNO

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=CD6-OP \
    PRODUCT_DEVICE=TECNO-CD6
