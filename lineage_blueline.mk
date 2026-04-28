#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
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

TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_VIPERFX := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_NO_CAMERA := true
TARGET_BUILD_NO_BCR := true

AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7

AXION_CPU_BG := 0-2
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-1
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-4
AXION_CPU_DISPLAY := 4-7
AXION_CPU_AUDIO := 0-2

# Define rear camera specs (Single 12.2MP sensor)
AXION_CAMERA_REAR_INFO := 12.2

# Define front camera specs (Dual 8MP sensors)
AXION_CAMERA_FRONT_INFO := 8,8

# Maintainer name
AXION_MAINTAINER := khaliq

# Processor name
AXION_PROCESSOR := Snapdragon_845

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="blueline-user 12 SP1A.210812.016.C2 8618562 release-keys" \
    BuildFingerprint=google/blueline/blueline:12/SP1A.210812.016.C2/8618562:user/release-keys \
    DeviceProduct=blueline

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)
