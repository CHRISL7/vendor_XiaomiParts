VENDOR_PATH := vendor/XiaomiParts

# Files Dirac
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/etc/permissions/audiosphere.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/audiosphere.xml \
    $(VENDOR_PATH)/framework/audiosphere.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/audiosphere.jar \
    $(VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin \
    $(VENDOR_PATH)/vendor/etc/audio.scd:$(TARGET_COPY_OUT_VENDOR)/etc/audio.scd \
    $(VENDOR_PATH)/vendor/proprietary/vendor/etc/drc/drc_cfg_5.1.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_5.1.txt \
    $(VENDOR_PATH)/vendor/proprietary/vendor/etc/drc/drc_cfg_AZ.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_AZ.txt \
    $(VENDOR_PATH)/vendor/proprietary/vendor/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(VENDOR_PATH)/vendor/proprietary/vendor/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

# XiaomiParts
PRODUCT_SOONG_NAMESPACES += \
   vendor/XiaomiParts

PRODUCT_PACKAGES += \
    XiaomiParts \
    XiaomiDoze \
    Dirac \
    libaudioparsers

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay

# Sepolicy
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Vendor properties
-include $(VENDOR_PATH)/vendor_prop.mk
