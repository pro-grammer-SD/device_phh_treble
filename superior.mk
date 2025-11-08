$(call inherit-product, vendor/superior/config/common.mk)
$(call inherit-product, vendor/superior/config/common_full_phone.mk)
$(call inherit-product, vendor/superior/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/superior/config/BoardConfigSuperior.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/superior/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true


override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true



PERF_ANIM_OVERRIDE := true

TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# GMS
WITH_GMS := true

TARGET_DISABLE_EPPE := true

