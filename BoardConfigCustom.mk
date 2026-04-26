#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Build
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_COMPILE_WITH_MSM_KERNEL := true

# Proton Clang: The "Pakan Super" for a Gacor Build!
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/proton-clang
TARGET_KERNEL_LLVM_BINUTILS := true

# Unleash the LLVM Power - Making your Pixel 3 go "kicau kicaaau maniaaaaa"
# Removed the obsolete PATH to keep the referees happy and the build smooth.
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    LLVM=1 \
    LLVM_IAS=1 \
    LD=ld.lld \
    AR=llvm-ar \
    NM=llvm-nm \
    OBJCOPY=llvm-objcopy \
    OBJDUMP=llvm-objdump \
    STRIP=llvm-strip

TARGET_KERNEL_CONFIG := b1c1_defconfig
TARGET_KERNEL_SOURCE := kernel/google/msm-4.9
TARGET_NEEDS_DTBOIMAGE := true

# Partitions
AB_OTA_PARTITIONS += \
    vendor
ifneq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
    BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368
endif
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Reserve space for gapps install
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 788398080
BOARD_SYSTEM_EXTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 92160000
endif

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
