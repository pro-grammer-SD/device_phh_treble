TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, vendor/microg/microg.mk)

$(call inherit-product, device/phh/treble/wit.mk)

PRODUCT_NAME := witaqua_gsi_microg
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := WitAqua GSI

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/Doze-off/WitAqua_treble/16.0/ota.json

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

WITH_ADB_INSECURE := true
