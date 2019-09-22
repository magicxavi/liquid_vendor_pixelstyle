PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/pixelstyle/lib,system/lib)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/pixelstyle/lib64,system/lib64)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/pixelstyle/framework,system/framework)
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/default-permissions/default-permissions.xml:system/etc/default-permissions/default-permissions.xml \
    vendor/pixelstyle/etc/default-permissions/opengapps-permissions.xml:system/etc/default-permissions/opengapps-permissions.xml \
    vendor/pixelstyle/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/pixelstyle/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/pixelstyle/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pixelstyle/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml \
	vendor/pixelstyle/etc/permissions/org.pixelexperience.screenshot.xml:system/etc/permissions/org.pixelexperience.screenshot.xml \
    vendor/pixelstyle/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml \
    vendor/pixelstyle/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/pixelstyle/etc/sysconfig/google_exclusives_enable.xml:system/etc/sysconfig/google_exclusives_enable.xml \
    vendor/pixelstyle/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/pixelstyle/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
	vendor/pixelstyle/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml \
    vendor/pixelstyle/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \

# Fonts
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/pixelstyle/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/pixelstyle/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf
ADDITIONAL_FONTS_FILE := vendor/pixelstyle/fonts/google-sans.xml

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/addon.d/90bit_gapps.sh:system/addon.d/90bit_gapps.sh