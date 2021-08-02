#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := htc
PRODUCT_DEVICE := htc_bymdugl
PRODUCT_MANUFACTURER := $(shell echo $(PRODUCT_BRAND) | tr  '[:lower:]' '[:upper:]')
PRODUCT_NAME := lineage_$(PRODUCT_DEVICE)
PRODUCT_MODEL := Desire 20 Pro

PRODUCT_GMS_CLIENTID_BASE := android-htc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_bymdugl_00709 \
    PRIVATE_BUILD_DESC="htc_bymdugl-user 10 QQ1A.200205.002 1.03.709.2 release-keys" \

BUILD_FINGERPRINT := HTC/htc_bymdugl_00709/htc_bymdugl:10/QQ1A.200205.002/1.03.709.2:user/release-keys
