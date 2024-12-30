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

# Inherit from the pixelage configuration.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_HEIGHT := 3088
TARGET_SCREEN_WIDTH := 1440

# Pixelage
TARGET_FACE_UNLOCK_SUPPORTED := true

# Official
#PIXELAGE_BUILD := "dm3q"

PRODUCT_NAME := pixelage_dm3q
PRODUCT_DEVICE := dm3q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S918B
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "dm3qxxx-user 14 UP1A.231005.007 S918BXXU7CXK4 release-keys")

BUILD_FINGERPRINT := samsung/dm3qxxx/dm3q:14/UP1A.231005.007/S918BXXU7CXK4:user/release-keys
