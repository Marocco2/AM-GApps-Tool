@Echo off
TITLE Send BusyBox and Gapps Minimal
Color 9f
cls
Echo -----------------------
Echo Killing ADB Server
adb kill-server
Echo -----------------------
Echo[
Echo Are you using usb or wifi?
Set /p n=(if wifi, write the ip):
Echo[ 
Echo Launching wconnect
wconnect %n%
Echo[
Echo -----------------------
Echo Listing ADB Devices
adb devices
Echo -----------------------
Echo[
Echo Pushing BusyBox and Gapps Minimal...
adb push Files\BusyBox /data/local/tmp/BusyBox
adb push Files\Gapps /data/local/tmp/Gapps
adb push Files\Other /data/local/tmp/Gapps/app
Echo[
Echo Done
Echo[
Echo -----------------------
Echo Now setting permissions for BusyBox ...
adb shell chmod 0755 /data/local/tmp/BusyBox/busybox
Echo[
Echo[
Echo Completed
Echo[
Echo We will configure it later.
pause

cls
TITLE FOLLOW PART 2 OF THE GUIDE
color 9e
Echo !! Now, follow part 2 of the guide !!
Echo !! Now, follow part 2 of the guide !!
start "" README.md
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