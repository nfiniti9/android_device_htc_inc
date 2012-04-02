# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/inc/full_inc.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_inc
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Droid Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.3.4/GRJ22/185897.2:user/release-keys PRIVATE_BUILD_DESC="4.08.605.2 CL185897 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := CM9
PRODUCT_VERSION_DEVICE_SPECIFIC := a2

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThis CM9 build is pre-alpha!\nThe device tree comes from Evervolv. Thanks!\nVisit the CyanogenMod team at cyanogenmod.com.\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Hot reboot (Comes from ev, ignore for now)
#PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

