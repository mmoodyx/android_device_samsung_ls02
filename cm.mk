## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ls02xx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/ls02xx/device_ls02xx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls02xx
PRODUCT_NAME := cm_ls02xx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := ls02xx
PRODUCT_MANUFACTURER := samsung
