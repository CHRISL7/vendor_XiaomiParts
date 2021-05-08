#
# Copyright (C) 2019-2020 Asus-SDM660
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_SOONG_NAMESPACES += \
    packages/apps/ZenParts

# ZenParts
PRODUCT_PACKAGES += \
    ZenParts

PRODUCT_COPY_FILES += \
    packages/apps/ZenParts/init/init.zenparts.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.zenparts.rc \
    packages/apps/ZenParts/init/init.zenparts.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.zenparts.sh \
    packages/apps/ZenParts/init/init.spectrum.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.spectrum.rc \
    packages/apps/ZenParts/init/init.spectrum.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.spectrum.sh

# Dirac Blobs
PRODUCT_COPY_FILES += \
    packages/apps/ZenParts/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    packages/apps/ZenParts/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    packages/apps/ZenParts/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    packages/apps/ZenParts/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin \
    packages/apps/ZenParts/vendor/etc/audio.scd:$(TARGET_COPY_OUT_VENDOR)/etc/audio.scd \
    packages/apps/ZenParts/vendor/proprietary/vendor/etc/drc/drc_cfg_5.1.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_5.1.txt \
    packages/apps/ZenParts/vendor/proprietary/vendor/etc/drc/drc_cfg_AZ.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_AZ.txt \
    packages/apps/ZenParts/vendor/proprietary/vendor/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    packages/apps/ZenParts/vendor/proprietary/vendor/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

# Priv-App Permisison
PRODUCT_COPY_FILES += \
    packages/apps/ZenParts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-parts.xml
