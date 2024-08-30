#
# Copyright (C) 2023 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/judypn/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := judypn
PRODUCT_NAME := twrp_judypn
PRODUCT_BRAND := LG
PRODUCT_MODEL := V40 ThinQ
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := LG V40 ThinQ

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=judypn \
    PRODUCT_NAME=judypn_lao_eea \
    PRIVATE_BUILD_DESC="judypn_lao_com-user 10 QKQ1.191222.002 2225217090e9f release-keys"

BUILD_FINGERPRINT := "lge/judypn_lao_com/judypn:10/QKQ1.191222.002/2225217090e9f:user/release-keys"
