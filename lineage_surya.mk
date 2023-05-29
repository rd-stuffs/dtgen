#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

PRODUCT_DEVICE := surya
PRODUCT_NAME := lineage_surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="surya_global-user 11 RKQ1.200826.002 V12.5.7.0.RJGMIXM release-keys"

BUILD_FINGERPRINT := POCO/surya_global/surya:11/RKQ1.200826.002/V12.5.7.0.RJGMIXM:user/release-keys
