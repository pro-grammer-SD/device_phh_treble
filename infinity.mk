$(call inherit-product, vendor/infinity/config/common.mk)
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
$(call inherit-product, vendor/infinity/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/infinity/config/BoardConfigLineage.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/infinity/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true


override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_BLUR := false
USE_MOTO_CALCULATOR := false
TARGET_SHIPS_FULL_GAPPS := false

INFINITY_MAINTAINER := Doze-off
INFINITY_BUILD_TYPE := OFFICIAL

