# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from F10 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := gionee
PRODUCT_DEVICE := F10
PRODUCT_MANUFACTURER := gionee
PRODUCT_NAME := lineage_F10
PRODUCT_MODEL := GIONEE F10

PRODUCT_GMS_CLIENTID_BASE := android-gionee
TARGET_VENDOR := gionee
TARGET_VENDOR_PRODUCT_NAME := F10
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="F10-user 9 PPR1.180610.011 94 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := GIONEE/F10/F10:9/PPR1.180610.011/94:user/release-keys
