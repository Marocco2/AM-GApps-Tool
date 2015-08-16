TITLE Installing Services
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
Echo Installing Services
adb install Files\Other\Cob1.apk
adb install Files\Other\Cob2.apk