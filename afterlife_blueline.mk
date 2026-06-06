#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

include device/google/crosshatch/blueline/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
PRODUCT_NAME := afterlife_blueline

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# AfterLife stuff
AFTERLIFE_GAPPS := true
AFTERLIFE_MAINTAINER := khaliq
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
USE_PIXEL_CHARGING := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)
