# 
# Copyright (C) 2018 The Mokee Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from nitrogen device
$(call inherit-product, device/xiaomi/nitrogen/device.mk)

# Inherit MiuiCamera repo
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

PRODUCT_NAME := aosip_nitrogen
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := nitrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI MAX 3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="nitrogen" \
    PRODUCT_NAME="nitrogen" \
    PRIVATE_BUILD_DESC="nitrogen-user 9 PKQ1.180904.001 V10.3.1.0.PEICNXM release-keys"
    
    BUILD_FINGERPRINT := "xiaomi/nitrogen/nitrogen:9/PKQ1.180904.001/V10.3.1.0.PEICNXM:user/release-keys"

TARGET_VENDOR := Xiaomi
