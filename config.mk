$(call inherit-product, vendor/pixelstyle/common-blobs.mk)

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstyle/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/pixelstyle/overlay/common/

# Prebuilt Packages
PRODUCT_PACKAGES += \
    SoundPickerPrebuilt \
    WallpaperPickerGooglePrebuilt \
    WellbeingPrebuilt 

PRODUCT_PACKAGES += \
    MatchmakerPrebuilt
	
PRODUCT_PACKAGES += \
    NexusWallpapersStubPrebuilt2018

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true
	
TARGET_MINIMAL_APPS ?= false