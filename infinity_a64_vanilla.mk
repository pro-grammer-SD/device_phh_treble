TARGET_GAPPS_ARCH := arm
include build/make/target/product/aosp_arm.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/infinity.mk)

PRODUCT_NAME := infinity_gsi_vanilla
PRODUCT_DEVICE := tdgsi_a64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Infinity X GSI

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/Doze-off/ProjectInfinity-X_gsi/16/ota.json

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

WITH_ADB_INSECURE := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

WITH_GAPPS := false

