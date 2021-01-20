#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device set
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
$(call inherit-product-if-exists, packages/apps/NusantaraParts/nadproject.mk)
NAD_BUILD_TYPE := UNOFFICIAL
USE_PIXEL_CHARGING := TRUE

# GApps
TARGET_GAPPS_ARCH := arm64

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Face Unlock
TARGET_USES_FACE_UNLOCK := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 NFC
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
IS_PHONE := true

PRODUCT_PROPERTY_OVERRIDES += \
   ro.build.fingerprint=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
