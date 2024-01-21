#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/mist/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/husky/device-lineage.mk

# Xtras
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true

# Debugging
TARGET_INCLUDE_MATLOG := true
TARGET_DEFAULT_ADB_ENABLED := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := OscarOP11

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := mist_husky

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.240105.004 11206848 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.240105.004/11206848:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
