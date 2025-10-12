TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/rising.mk)

PRODUCT_NAME := rising_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Rising Revived Treble

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

RISING_MAINTAINER := Doze-off
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer=Doze-off

TARGET_ENABLE_BLUR := true


TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

TARGET_DEFAULT_PIXEL_LAUNCHER = false
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.default_launcher=0 \
    persist.sys.quickswitch_pixel_shipped=1


WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# WITH_GMS := false
# WITH_MICROG := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

