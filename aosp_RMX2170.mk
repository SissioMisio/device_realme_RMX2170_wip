#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit some common Pixel Extended stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := aosp_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 7 Pro
PRODUCT_MANUFACTURER := Realme

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Pixel Extended Build Flags
PEX_BUILD_TYPE := UNOFFICIAL
PEX_MAINTAINER := Balay Bera
WITH_GAPPS := true
TARGET_CORE_GMS := true
TARGET_EXCLUDES_APERTURE := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PIXEL_CHARGE_ANIM := true
TARGET_SUPPORTS_QUICK_TAP := true
USE_LEGACY_BOOTANIMATION := true

# Build info.
BUILD_FINGERPRINT := "Realme/RMX2170/RMX2170:13/TQ2A.230505.002/1683097090:userdebug/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="RMX2170" \
    TARGET_DEVICE="RMX2170" \
    PRIVATE_BUILD_DESC="atoll-user 11 RKQ1.200903.002/ eng.root.04080114.013112 release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-realme 
