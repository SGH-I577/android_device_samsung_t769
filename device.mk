#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/t769/t769-vendor.mk)

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=v,o=y

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/t769/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/t769/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/t769/ramdisk/initlogo.rle:root/initlogo.rle \

# BT firmware
PRODUCT_COPY_FILES += \
    device/samsung/t769/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)

$(call inherit-product-if-exists, vendor/samsung/t769/t769-vendor.mk)

# NFC
BOARD_HAVE_NFC := true
