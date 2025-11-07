$(call inherit-product, vendor/euclid/config/common.mk)
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)
$(call inherit-product, vendor/euclid/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/euclid/config/BoardConfigEuclid.mk)
$(call inherit-product, device/euclid/sepolicy/common/sepolicy.mk)
-include vendor/euclid/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true


override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true



PERF_ANIM_OVERRIDE := true

TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Maintainer
EUCLID_BUILD_TYPE := UNOFFICIAL
EUCLID_MAINTAINER := Doze-off

#Gapps
EUCLID_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_PIXEL_LAUNCHER := false

#UDFPS
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

#Misc.
TARGET_SUPPORTS_TOUCHGESTURES := true

