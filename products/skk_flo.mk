# Inherit AOSP device configuration for flo.
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/simplekitkat/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := skk_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT="google/razor/flo:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="razor-user 4.4.2 KOT49H 937116 release-keys"

