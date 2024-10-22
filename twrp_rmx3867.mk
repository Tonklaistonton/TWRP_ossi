#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from rmx3867 device
$(call inherit-product, device/oplus/rmx3867/device.mk)

PRODUCT_DEVICE := rmx3867
PRODUCT_NAME := twrp_rmx3867
PRODUCT_BRAND := oplus
PRODUCT_MODEL := rmx3867
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1708764238964 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1708764238964:user/release-keys
