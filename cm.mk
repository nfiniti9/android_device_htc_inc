# Release name
PRODUCT_RELEASE_NAME := INCREDIBLE

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/inc/inc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := HTC Droid Incredible

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRJ22 PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.3.4/GRJ22/185897.2:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="4.08.605.2 CL185897 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC

# Set up the product codename & build version
PRODUCT_CODENAME := CM9
PRODUCT_VERSION_DEVICE_SPECIFIC := a9

PRODUCT_PACKAGES += \
    Camera
