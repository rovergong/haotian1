#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from haotian device
$(call inherit-product, device/xiaomi/haotian/device.mk)

PRODUCT_DEVICE := haotian
PRODUCT_NAME := omni_haotian
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2410DPN6CC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_haotian-user 15 AQ3A.240812.002 OS2.0.17.2.VOBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/haotian/haotian:15/AQ3A.240812.002/OS2.0.17.2.VOBCNXM:user/release-keys
