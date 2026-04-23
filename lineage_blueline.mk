#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

include device/google/crosshatch/blueline/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
PRODUCT_NAME := lineage_blueline

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Lunch banner maintainer variable
RISING_MAINTAINER=khaliq

RISING_PACKAGE_TYPE := Gapps

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# whether to ship aperture camera, default is false
PRODUCT_NO_CAMERA := true

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := false

# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="blueline-user 12 SP1A.210812.016.C2 8618562 release-keys" \
    BuildFingerprint=google/blueline/blueline:12/SP1A.210812.016.C2/8618562:user/release-keys \
    DeviceProduct=blueline \
    RisingChipset="Snapdragon 845" \
    RisingMaintainer=khaliq

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)
