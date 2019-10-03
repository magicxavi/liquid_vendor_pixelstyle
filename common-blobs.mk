PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/pixelstyle/lib,system/lib)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/pixelstyle/lib64,system/lib64)
PRODUCT_COPY_FILES += \
	vendor/pixelstyle/etc/permissions/org.pixelexperience.screenshot.xml:system/etc/permissions/org.pixelexperience.screenshot.xml \
	vendor/pixelstyle/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Fonts
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/pixelstyle/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/pixelstyle/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/pixelstyle/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf
ADDITIONAL_FONTS_FILE := vendor/pixelstyle/fonts/google-sans.xml