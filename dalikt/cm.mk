$(call inherit-product, device/samsung/dalikt/full_dalikt.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120K TARGET_DEVICE=SHV-E120K BUILD_FINGERPRINT="samsung/SHV-E120K/SHV-E120K:4.4.1/KOT49E/KKMK1:user/release-keys" PRIVATE_BUILD_DESC="SHV-E120K-user 4.4.1 KOT49E KKMK1 release-keys"

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_NAME := cm_dalikt
PRODUCT_DEVICE := dalikt

