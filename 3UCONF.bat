TITLE Configuring Gapps
@Echo off
cls
Color 9f
Echo -
Echo Killing ADB Server
adb kill-server
Echo -
Echo Launching wconnect as usb
wconnect %n%
Echo -
Echo Listing ADB Devices
adb devices
Echo -
Echo Configuring gapps on system

adb shell busybox chmod 0755 /system/xbin/busybox
adb shell busybox mount -o rw,remount -t rootfs /
adb shell busybox chmod 0777 /system/app/com.google.android.gms.apk
adb shell busybox chmod 0777 /system/app/com.google.android.play.games.apk
adb shell busybox chmod 0777 /system/app/GooglePartnerSetup.apk
adb shell busybox chmod 0777 /system/app/GoogleOneTimeInitializer.apk
adb shell busybox chmod 0777 /system/app/GoogleServicesFramework.apk
adb shell busybox chmod 0777 /system/app/GoogleLoginService.apk
adb shell busybox chmod 0777 /system/app/GoogleBackupTransport.apk
adb shell busybox chmod 0777 /system/app/GoogleContactsSyncAdapter.apk
adb shell busybox chmod 0777 /system/app/GoogleCalendarSyncAdapter.apk
adb shell busybox chmod 0777 /system/app/GoogleFeedback.apk
adb shell busybox chmod 0777 /system/app/com.google.android.gsf.login.apk
adb shell busybox chmod 0777 /system/app/Cob1.apk
adb shell busybox chmod 0777 /system/app/Cob2.apk
Echo Wait 5 seconds
Ping 127.0.0.1 -n 5 >nul
pause

cls
TITLE Reboot!
color 9e
Echo Reboot your phone, see the PART 4 and then you are done!
pause