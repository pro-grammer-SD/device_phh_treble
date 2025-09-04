$(call inherit-product, vendor/potato/config/common.mk)
$(call inherit-product, vendor/potato/config/common_full_phone.mk)
$(call inherit-product, vendor/potato/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/potato/config/BoardConfigPotato.mk)
$(call inherit-product, device/potato/sepolicy/common/sepolicy.mk)
-include vendor/potato/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true


override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_BOOT_ANIMATION_RES := 720

TARGET_BUILD_GAPPS := false


PERF_ANIM_OVERRIDE := true

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true




