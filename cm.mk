# Release name
PRODUCT_RELEASE_NAME := ls02

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/ls02/full_ls02.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls02
PRODUCT_NAME := cm_ls02
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-V700
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ls02xx TARGET_DEVICE=ls02 BUILD_FINGERPRINT="samsung/ls02xx/ls02:4.2.2/JDQ39/V700XXUBNA3:user/release-keys" PRIVATE_BUILD_DESC="ls02xx-user 4.2.2 JDQ39 V700XXUBNA3 release-keys"
