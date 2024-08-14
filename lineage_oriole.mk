#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

-include vendor/lineage-priv/keys/keys.mk

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_oriole

# GMS
WITH_GMS := true

# Targets
RISING_PACKAGE_TYPE := "GAPPS"
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
