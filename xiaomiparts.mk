VENDOR_PATH := vendor/xiaomi/XiaomiParts

# XiaomiParts
PRODUCT_SOONG_NAMESPACES += \
   vendor/xiaomi/XiaomiParts

PRODUCT_PACKAGES += \
    XiaomiParts \
    XiaomiDoze

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay
