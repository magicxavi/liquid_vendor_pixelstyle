$(call inherit-product, vendor/gapps/common-blobs.mk)

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstyle/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/pixelstyle/overlay/common/

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
    CarrierSetup \
	SetupWizard \
	GoogleOneTimeInitializer

PRODUCT_PACKAGES += \
    MatchmakerPrebuilt
	
PRODUCT_PACKAGES += \
    NexusWallpapersStubPrebuilt2018

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true