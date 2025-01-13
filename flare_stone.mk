#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/flare/config/common_full_phone.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

PREBUILT_KERNEL := true

PRODUCT_NAME := flare_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

BuildFingerprint=POCO/moonstone_p_global/moonstone:14/UKQ1.231003.002/V816.0.13.0.UMPMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Flare flags..
FLARE_BUILD_TYPE := OFFICIAL
FLARE_MAINTAINER := Nomi..shaw
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true
