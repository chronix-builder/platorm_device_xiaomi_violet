#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit MemeCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Custom MistOS about phone properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/mist_vio.prop

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

#MistOS
MISTOS_MAINTAINER := Chronix
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := false
TARGET_ENABLE_BLUR := true
BYPASS_CHARGE_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
