# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Maintainer identifier
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=iceandfire

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := xenonhd_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
