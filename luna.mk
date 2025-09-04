$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigLineage.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/lineage/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true


override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.paranoid.maintainer=Doze-off

WITH_BCR := true
WITH_GMS := true
TARGET_USES_OMNI_GAPPS := true
# WITH_GMS := false

PRODUCT_USE_SCUDO := true

PERF_ANIM_OVERRIDE := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false


PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true




