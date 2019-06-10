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
