TITLE Configuring Gapps
@Echo off
cls
Color 9f
Echo -
Echo Killing ADB Server
adb kill-server
Echo -
Echo Launching wconnect as usb
wconnect usb
Echo -
Echo Listing ADB Devices
adb devices
Echo -
Echo Configuring gapps on system

adb shell busybox chmod 0755 /system/xbin/busybox
adb shell busybox mount -o rw,remount -t rootfs /
adb shell busybox chmod 0777 /system/app/GoogleContactsSyncAdapter.apk
adb shell busybox chmod 0777 /system/app/GoogleCalendarSyncAdapter.apk
adb shell busybox chmod 0777 /system/etc/permissions/features.xml
adb shell busybox chmod 0777 /system/etc/permissions/com.google.widevine.software.drm.xml
adb shell busybox chmod 0777 /system/etc/permissions/com.google.android.media.effects.xml
adb shell busybox chmod 0777 /system/etc/permissions/com.google.android.maps.xml
adb shell busybox chmod 0777 /system/etc/permissions/com.google.android.camera2.xml
adb shell busybox chmod 0777 /system/etc/permissions/com.google.android.ble.xml
adb shell busybox chmod 0777 /system/framework/com.google.widevine.software.drm.jar
adb shell busybox chmod 0777 /system/framework/com.google.android.media.effects.jar
adb shell busybox chmod 0777 /system/framework/com.google.android.camera2.jar
adb shell busybox chmod 0777 /system/framework/com.google.android.ble.jar
adb shell busybox chmod 0777 /system/lib/libWhisper.so
adb shell busybox chmod 0777 /system/lib/libwearable-selector.so
adb shell busybox chmod 0777 /system/lib/libsslwrapper_jni.so
adb shell busybox chmod 0777 /system/lib/libNearbyApp.so
adb shell busybox chmod 0777 /system/lib/libjgcastservice.so
adb shell busybox chmod 0777 /system/lib/libgmscore.so
adb shell busybox chmod 0777 /system/lib/libgms-ocrclient.so
adb shell busybox chmod 0777 /system/lib/libgcastv2_support.so
adb shell busybox chmod 0777 /system/lib/libgcastv2_base.so
adb shell busybox chmod 0777 /system/lib/libdirect-audio.so
adb shell busybox chmod 0777 /system/lib/libconscrypt_gmscore_jni.so
adb shell busybox chmod 0777 /system/lib/libAppDataSearch.so
adb shell busybox chmod 0777 /system/app/SetupWizard.apk
adb shell busybox chmod 0777 /system/app/PrebuiltGmsCore.apk
adb shell busybox chmod 0777 /system/app/phonesky.apk
adb shell busybox chmod 0777 /system/app/GoogleServicesFramework.apk
adb shell busybox chmod 0777 /system/app/GooglePartnerSetup.apk
adb shell busybox chmod 0777 /system/app/GoogleOneTimeInitializer.apk
adb shell busybox chmod 0777 /system/app/GoogleLoginService.apk
adb shell busybox chmod 0777 /system/app/GoogleBackupTransport.apk
Echo Wait 5 seconds
Ping 127.0.0.1 -n 5 >nul
pause

cls
TITLE Finished! Reboot your phone.
color 9e
Echo Reboot your phone.
Echo[
Echo After reboot, I'll install for you play store!
pause
Echo[
adb install Files\Gapps\app\phonesky.apk
Echo[
Echo Done!
pause