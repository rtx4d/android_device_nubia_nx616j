#
# Copyright (C) 2018-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nx616j device
$(call inherit-product, device/nubia/nx616j/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_nx616j
PRODUCT_DEVICE := nx616j
PRODUCT_MANUFACTURER := Nubia
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := X

PRODUCT_GMS_CLIENTID_BASE := android-nubia

TARGET_VENDOR_PRODUCT_NAME := NX616J
TARGET_VENDOR_DEVICE_NAME := NX616J

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="NX616J-user 9 PKQ1.180929.001 eng.nubia.20220304.212707 release-keys" \
    BuildFingerprint=nubia/NX616J/NX616J:9/PKQ1.180929.001/eng.nubia.20220304.212707:user/release-keys
