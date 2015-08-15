TITLE Preparing Gapps
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
Echo Configuring Gapps from tmp data
adb shell busybox chmod 0755 /system/xbin/busybox
adb shell busybox mount -o rw,remount -t rootfs /
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleContactsSyncAdapter.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleCalendarSyncAdapter.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/features.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/com.google.widevine.software.drm.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/com.google.android.media.effects.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/com.google.android.maps.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/com.google.android.camera2.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/etc/permissions/com.google.android.ble.xml
adb shell busybox chmod 0777 /data/local/tmp/Gapps/framework/com.google.widevine.software.drm.jar
adb shell busybox chmod 0777 /data/local/tmp/Gapps/framework/com.google.android.media.effects.jar
adb shell busybox chmod 0777 /data/local/tmp/Gapps/framework/com.google.android.camera2.jar
adb shell busybox chmod 0777 /data/local/tmp/Gapps/framework/com.google.android.ble.jar
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libWhisper.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libwearable-selector.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libsslwrapper_jni.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libNearbyApp.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libjgcastservice.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libgmscore.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libgms-ocrclient.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libgcastv2_support.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libgcastv2_base.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libdirect-audio.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libconscrypt_gmscore_jni.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/lib/libAppDataSearch.so
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/SetupWizard.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/PrebuiltGmsCore.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/phonesky.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleServicesFramework.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GooglePartnerSetup.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleOneTimeInitializer.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleLoginService.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleBackupTransport.apk

Echo Wait 5 seconds
Ping 127.0.0.1 -n 5 >nul

cls
TITLE FOLLOW PART 3 OF THE GUIDE
color 9e
Echo !! Now, follow part 3 of the guide !!
Echo !! Now, follow part 3 of the guide !!
start "" Guide.txt
Echo[
Echo[
Echo[
Echo After you finished, restart your phone and then press enter!
Echo[
Echo[
Echo[
pause
3UCONF.bat