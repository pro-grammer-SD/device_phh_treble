TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/evox.mk)

PRODUCT_NAME := evox_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Evolution-X Treble

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

WITH_ADB_INSECURE := true
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

WITH_SU := false
EVO_BUILD_TYPE := Unofficial
BUILD_BCR := false
TARGET_DISABLE_EPPE := true
TARGET_SUPPORT_BOOT_ANIMATIONS := true

TARGET_HAS_UDFPS := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29
#remove makupgoogle
