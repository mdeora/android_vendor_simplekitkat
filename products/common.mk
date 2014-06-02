# Generic product
PRODUCT_NAME := simplekitkat
PRODUCT_BRAND := simplekitkat
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    ro.ril.def.preferred.network=9 \
    ro.ril.hsxpa=5 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=24 \
    ro.ril.hsupa.category=8 \
    dalvik.vm.dexopt-flags=m=y

# Needed packages
PRODUCT_PACKAGES += \
    Stk \
	libsepol \
	busybox

# Common overlays
PRODUCT_PACKAGE_OVERLAYS :=  vendor/simplekitkat/overlay $(PRODUCT_PACKAGE_OVERLAYS)

# Use custom apns-conf.xml
PRODUCT_COPY_FILES += \
    vendor/simplekitkat/proprietary/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation enhancements
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# init.d support
PRODUCT_COPY_FILES += \
    vendor/simplekitkat/proprietary/system/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/simplekitkat/proprietary/system/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/simplekitkat/proprietary/system/etc/init.d/00banner:system/etc/init.d/00banner
	
# Simplekitkat specific init file
PRODUCT_COPY_FILES += \
    vendor/simplekitkat/proprietary/system/etc/init.simplekitkat.rc:root/init.simplekitkat.rc

# Inherit kitkat audio package.
$(call inherit-product, vendor/simplekitkat/products/kitkataudio.mk)
