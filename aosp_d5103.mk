# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_yukon_seagull_defconfig

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/sony/yukon/platform.mk)
$(call inherit-product, vendor/sony/seagull/seagull-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/seagull/overlay

# Device etc
PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/seagull/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/seagull/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/seagull/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/seagull/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# IDC
PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/system/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc

PRODUCT_PACKAGES += \
    keystore.msm8226

# Device Init
PRODUCT_PACKAGES += \
    fstab.yukon \
    init.recovery.seagull \
    init.seagull \
    ueventd.seagull

# Lights
PRODUCT_PACKAGES += \
    lights.seagull

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.seagull

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

PRODUCT_NAME := aosp_d5103
PRODUCT_DEVICE := seagull
PRODUCT_MODEL := Xperia T3 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.usb.pid_suffix=1AD
