# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    AmbientPlayProvider \
    SoundPickerPrebuilt \
    WallpaperPickerGooglePrebuilt \
    WellbeingPrebuilt \
	GContacts \
    GCalculator \
    GDeskClock \
    GDialer \
    GMessaging \
    GCalendar \
	GBoard \
	FaceLock \
    GoogleContactsSyncAdapter \
    GoogleExtShared \
	AndroidPlatformServices \
    ConfigUpdater \
    GmsCoreSetupPrebuilt \
    GoogleBackupTransport \
	GoogleExtServices \
    GoogleRestore \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCorePi \
    CarrierSetup

ifeq ($(TARGET_GAPPS_ARCH),arm64)
PRODUCT_PACKAGES += \
    MatchmakerPrebuilt
endif

TARGET_MINIMAL_APPS ?= false

ifeq ($(TARGET_MINIMAL_APPS), false)
PRODUCT_PACKAGES += \
    NexusWallpapersStubPrebuilt2018
endif

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# Fonts
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/pixelstyle/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/pixelstyle/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf

ADDITIONAL_FONTS_FILE := vendor/pixelstyle/fonts/google-sans.xml

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstyle/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/pixelstyle/overlay/common/

# Weather
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/permissions/org.pixelexperience.ambient.play.xml:system/etc/permissions/org.pixelexperience.ambient.play.xml \
    vendor/pixelstyle/etc/default-permissions/org.pixelexperience.ambient.play.provider.xml:system/etc/default-permissions/org.pixelexperience.ambient.play.provider.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/default-permissions/default-permissions.xml:system/etc/default-permissions/default-permissions.xml \
    vendor/pixelstyle/etc/default-permissions/opengapps-permissions.xml:system/etc/default-permissions/opengapps-permissions.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/pixelstyle/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/pixelstyle/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pixelstyle/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml \
    vendor/pixelstyle/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/pixelstyle/etc/sysconfig/google_exclusives_enable.xml:system/etc/sysconfig/google_exclusives_enable.xml \
    vendor/pixelstyle/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/pixelstyle/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/framework/com.google.android.dialer.support.jar:system/framework/com.google.android.dialer.support.jar \
    vendor/pixelstyle/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/pixelstyle/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/pixelstyle/lib/libfrsdk.so:system/lib/libfrsdk.so \

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/lib64/libbarhopper.so:system/lib64/libbarhopper.so \
	vendor/pixelstyle/lib64/libfacenet.so:system/lib64/libfacenet.so \
    vendor/pixelstyle/lib64/libfilterpack_facedetect.so:system/lib64/libfilterpack_facedetect.so \
    vendor/pixelstyle/lib64/libfrsdk.so:system/lib64/libfrsdk.so \
    vendor/pixelstyle/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so \
    vendor/pixelstyle/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so
	
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/addon.d/90bit_gapps.sh:system/addon.d/90bit_gapps.sh