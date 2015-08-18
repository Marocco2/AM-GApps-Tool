TITLE Configuring Gapps
@Echo off
cls
Color 9f
Echo --------------------
Echo Killing ADB Server
adb kill-server
Echo --------------------
Echo[
Echo Launching wconnect on %n%
wconnect %n%
Echo[
Echo --------------------
Echo Listing ADB Devices
adb devices
Echo --------------------
Echo[
Echo Configuring gapps on system

adb shell busybox chmod 0755 /system/xbin/busybox
adb shell busybox mount -o rw,remount -t rootfs /
adb shell busybox chmod 0777 /system/app/com.google.android.gms.apk
adb shell busybox chmod 0777 /system/app/com.google.android.gsf.login.apk
adb shell busybox chmod 0777 /system/app/Cob1.apk
adb shell busybox chmod 0777 /system/app/Cob2.apk
Echo[
Echo Done
Echo[
Echo Wait 5 seconds
Ping 127.0.0.1 -n 5 >nul
pause

cls
TITLE Reboot!
color 9e
Echo Reboot your phone, see the PART 4 and then you are done!
pause
exit