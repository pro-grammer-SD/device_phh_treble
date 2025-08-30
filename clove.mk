$(call inherit-product, vendor/clover/config/common.mk)
$(call inherit-product, vendor/clover/config/common_full_phone.mk)
$(call inherit-product, vendor/clover/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/clover/config/BoardConfigClover.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/clover/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true

override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_BOOT_ANIMATION_RES := 720

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_USE_SCUDO := true

# Other flags
TARGET_INCLUDE_MATLOG := true
TARGET_PREBUILT_BCR := true
