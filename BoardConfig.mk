#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/montana

# Assert
TARGET_OTA_ASSERT_DEVICE := montana

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
BOARD_DTBTOOL_ARGS := --force-v3 --motorola 1
TARGET_KERNEL_CONFIG := montana_defconfig

# NFC
NXP_CHIP_TYPE := pn554
ODM_MANIFEST_SKUS += n
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/odm_manifest_n.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272

# Security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Inherit from the proprietary version
include vendor/motorola/montana/BoardConfigVendor.mk
