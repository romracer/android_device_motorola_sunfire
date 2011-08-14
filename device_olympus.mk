## (1) First, the most specific values, i.e. the aspects that are specific to GSM

## (3) Finally, the least specific parts, i.e. the non-GSM-specific aspects

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/olympus/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/motorola/olympus/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1
PRODUCT_NAME := full_olympus
PRODUCT_DEVICE := olympus
