# XiaomiParts
PRODUCT_SOONG_NAMESPACES += \
    packages/apps/XiaomiParts

PRODUCT_PACKAGES += \
    XiaomiParts \
    XiaomiDoze

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(LOCAL_PATH)/overlay
