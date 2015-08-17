TITLE Installing Services
@Echo off
cls
Color 9f
Echo -
Echo Killing ADB Server
adb kill-server
Echo -
Echo Are you using usb or wifi?
Set /p n=(if wifi, write the ip): 
Echo Launching wconnect
wconnect %n%
Echo -
Echo Listing ADB Devices
adb devices
Echo -
Echo Installing Services
adb install Files\Other\Cob1.apk
adb install Files\Other\Cob2.apk