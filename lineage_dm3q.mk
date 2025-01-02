#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm3q/device.mk)

# Inherit some common TheParasiteProject stuffs.
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
#TARGET_CHARGER_RESOURCE_COPY_OUT := $(TARGET_COPY_OUT_VENDOR)
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_EUICC := true
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_GBOARD_KEY_HEIGHT := 1.1
#TARGET_EEA_V2_DEVICE := true
#TARGET_SUPPORTS_DSE_CHOICE_SCREEN := true
TARGET_COLUMBUS_MODEL := crosshatch
TARGET_BOOT_ANIMATION_RES := 1440
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dm3q
PRODUCT_DEVICE := dm3q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S918B
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "dm3qxxx-user 14 UP1A.231005.007 S918BXXU7CXK4 release-keys")

BUILD_FINGERPRINT := samsung/dm3qxxx/dm3q:14/UP1A.231005.007/S918BXXU7CXK4:user/release-keys
