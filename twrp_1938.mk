#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2023 The OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later

DEVICE_PATH := device/vivo/1938
PRODUCT_RELEASE_NAME := 1938

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from 1938 device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_1938.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from vivo 1938 device
$(call inherit-product, device/vivo/1938/device.mk)

PRODUCT_DEVICE := 1938
PRODUCT_NAME := twrp_1938
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1938
PRODUCT_MANUFACTURER := vivo
