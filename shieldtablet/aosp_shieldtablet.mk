# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit device configuration for shieldtablet.
$(call inherit-product, device/nvidia/shieldtablet/full_shieldtablet.mk)

# Inherit some common lineage stuff.
ifeq ($(ALTERNATE_BUILD),true)
$(call inherit-product, vendor/aosp/config/common_full_tv.mk)
else
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)
endif

PRODUCT_NAME := aosp_shieldtablet
PRODUCT_DEVICE := shieldtablet
