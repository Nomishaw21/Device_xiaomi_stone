#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)


PRODUCT_NAME := yaap_stone
PREBUILT_KERNEL := true
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:14/UKQ1.231003.002/V816.0.8.0.UMPMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BUILD_GAPPS := true
TARGET_DEBLOAT := true
TARGET_ENABLE_BLUR := true
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
YAAP_BUILDTYPE := VOYAGER
