#!/sbin/sh
#
# ADDOND_VERSION=2
#
# addon.d file
#
. /tmp/backuptool.functions

if [ -z $backuptool_ab ]; then
  SYS=/system
  TMP=/tmp
else
  SYS=/postinstall/system
  TMP=/postinstall/tmp
fi

list_files() {
cat << EOF
app/FaceLock/FaceLock.apk
app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk
app/GoogleExtShared/GoogleExtShared.apk
app/MarkupGoogle/MarkupGoogle.apk
priv-app/AndroidPlatformServices/AndroidPlatformServices.apk
priv-app/CarrierSetup/CarrierSetup.apk
priv-app/ConfigUpdater/ConfigUpdater.apk
priv-app/GmsCoreSetupPrebuilt/GmsCoreSetupPrebuilt.apk
priv-app/GoogleBackupTransport/GoogleBackupTransport.apk
priv-app/GoogleExtServices/GoogleExtServices.apk
priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
priv-app/Phonesky/Phonesky.apk
priv-app/PrebuiltGmsCorePi/PrebuiltGmsCorePi.apk
etc/default-permissions/default-permissions.xml
etc/default-permissions/opengapps-permissions.xml
etc/permissions/com.google.android.dialer.support.xml
etc/permissions/com.google.android.maps.xml
etc/permissions/com.google.android.media.effects.xml
etc/permissions/privapp-permissions-google.xml
etc/preferred-apps/google.xml
etc/sysconfig/dialer_experience.xml
etc/sysconfig/google.xml
etc/sysconfig/google_build.xml
etc/sysconfig/google_exclusives_enable.xml
etc/sysconfig/google-hiddenapi-package-whitelist.xml
etc/g.prop
framework/com.google.android.dialer.support.jar
framework/com.google.android.maps.jar
framework/com.google.android.media.effects.jar
lib/libfilterpack_facedetect.so
lib/libfrsdk.so
lib64/libbarhopper.so
lib64/libfacenet.so
lib64/libfilterpack_facedetect.so
lib64/libfrsdk.so
lib64/libjni_latinimegoogle.so
lib64/libsketchology_native.so
xbin/pm.sh
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
    chmod 0755 /system/app/FaceLock
    chmod 0644 /system/app/FaceLock/FaceLock.apk
    chmod 0755 /system/app/GoogleContactsSyncAdapter
    chmod 0644 /system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk
    chmod 0755 /system/app/GoogleExtShared
    chmod 0644 /system/app/GoogleExtShared/GoogleExtShared.apk
    chmod 0755 /system/app/MarkupGoogle
    chmod 0644 /system/app/MarkupGoogle/MarkupGoogle.apk
    chmod 0644 /system/etc/default-permissions/default-permissions.xml
    chmod 0644 /system/etc/default-permissions/opengapps-permissions.xml
    chmod 0644 /system/etc/permissions/com.google.android.dialer.support.xml
    chmod 0644 /system/etc/permissions/com.google.android.maps.xml
    chmod 0644 /system/etc/permissions/com.google.android.media.effects.xml
    chmod 0644 /system/etc/permissions/privapp-permissions-google.xml
    chmod 0644 /system/etc/preferred-apps/google.xml
    chmod 0644 /system/etc/sysconfig/dialer_experience.xml
    chmod 0644 /system/etc/sysconfig/google.xml
    chmod 0644 /system/etc/sysconfig/google_build.xml
    chmod 0644 /system/etc/sysconfig/google_exclusives_enable.xml
    chmod 0644 /system/etc/sysconfig/google-hiddenapi-package-whitelist.xml
    chmod 0644 /system/etc/g.prop
    chmod 0644 /system/framework/com.google.android.dialer.support.jar
    chmod 0644 /system/framework/com.google.android.maps.jar
    chmod 0644 /system/framework/com.google.android.media.effects.jar
    chmod 0644 /system/lib/libfilterpack_facedetect.so
    chmod 0644 /system/lib/libfrsdk.so
    chmod 0644 /system/lib64/libbarhopper.so
    chmod 0644 /system/lib64/libfacenet.so
    chmod 0644 /system/lib64/libfilterpack_facedetect.so
    chmod 0644 /system/lib64/libfrsdk.so
    chmod 0644 /system/lib64/libjni_latinimegoogle.so
    chmod 0644 /system/lib64/libsketchology_native.so
    chmod 0755 /system/priv-app/AndroidPlatformServices
    chmod 0644 /system/priv-app/AndroidPlatformServices/AndroidPlatformServices.apk
    chmod 0755 /system/priv-app/CarrierSetup
    chmod 0644 /system/priv-app/CarrierSetup/CarrierSetup.apk
    chmod 0755 /system/priv-app/ConfigUpdater
    chmod 0644 /system/priv-app/ConfigUpdater/ConfigUpdater.apk
    chmod 0755 /system/priv-app/GmsCoreSetupPrebuilt
    chmod 0644 /system/priv-app/GmsCoreSetupPrebuilt/GmsCoreSetupPrebuilt.apk
    chmod 0755 /system/priv-app/GoogleBackupTransport
    chmod 0644 /system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk
    chmod 0755 /system/priv-app/GoogleExtServices
    chmod 0644 /system/priv-app/GoogleExtServices/GoogleExtServices.apk
    chmod 0755 /system/priv-app/GoogleServicesFramework
    chmod 0644 /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
    chmod 0755 /system/priv-app/Phonesky
    chmod 0644 /system/priv-app/Phonesky/Phonesky.apk
    chmod 0755 /system/priv-app/PrebuiltGmsCorePi
    chmod 0644 /system/priv-app/PrebuiltGmsCorePi/PrebuiltGmsCorePi.apk
    chmod 0755 /system/addon.d/90bit_gapps.sh
    chmod 0755 /system/xbin/pm.sh
  ;;
esac
