#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_shiba.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/shiba/device-lineage.mk

# Xtras
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := derp_shiba

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/AP1A.240305.019.A1/11445699:user/release-keys

$(call inherit-product, vendor/google/shiba/shiba-vendor.mk)
