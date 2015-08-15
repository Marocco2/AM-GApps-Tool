@Echo off
TITLE Send BusyBox and Gapps Minimal
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
Echo Pushing BusyBox and Gapps Minimal...
adb push Files\BusyBox /data/local/tmp/BusyBox
adb push Files\Gapps /data/local/tmp/Gapps
Echo -
Echo Now setting permissions for BusyBox ...
adb shell chmod 0755 /data/local/tmp/BusyBox/busybox
Echo Completed
Echo[
Echo We will configure it later.
Echo[
Echo Press enter pls
pause

cls
TITLE FOLLOW PART 2 OF THE GUIDE
color 9e
Echo !! Now, follow part 2 of the guide !!
Echo !! Now, follow part 2 of the guide !!
start "" Guide.txt
Echo[
Echo[
Echo[
Echo After you finished, reboot your phone.
Echo Press enter if your phone booted completely.
Echo[
Echo[
Echo[
pause
2CONF.bat