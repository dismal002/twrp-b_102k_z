#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) Dismal
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from B-102K-Z device - Path can have hyphens, but variables shouldn't
$(call inherit-product, device/kjm-bnd/B_102K_Z/device.mk)

PRODUCT_DEVICE := B_102K_Z
PRODUCT_NAME := omni_B_102K_Z
PRODUCT_BRAND := Denver
PRODUCT_MODEL := B-102K-Z
PRODUCT_MANUFACTURER := kjm-bnd

PRODUCT_GMS_CLIENTID_BASE := android-kjm-bnd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk312x-user 6.0.1 MXC89K user.zcx.20230808.160144 release-keys"

BUILD_FINGERPRINT := rockchip/rk312x/rk312x:6.0.1/MXC89K/user.zcx.20230808.160144:user/release-keys

