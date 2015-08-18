TITLE Preparing Gapps
@Echo off
cls
Color 9f
Echo -
Echo Killing ADB Server
adb kill-server
Echo -
Echo Launching wconnect on %n%
wconnect %n%
Echo -
Echo Listing ADB Devices
adb devices
Echo -
Echo Configuring Gapps from tmp data
adb shell busybox chmod 0755 /system/xbin/busybox
adb shell busybox mount -o rw,remount -t rootfs /
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/com.google.android.gms.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/com.google.android.play.games.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GooglePartnerSetup.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleOneTimeInitializer.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleLoginService.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleBackupTransport.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleContactsSyncAdapter.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleCalendarSyncAdapter.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleFeedback.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/GoogleServicesFramework.apk
adb shell busybox chmod 0777 /data/local/tmp/Gapps/app/com.google.android.gsf.login.apk

Echo Installing services
adb install Files\Other\Cob1.apk
adb install Files\Other\Cob2.apk
adb install Files\Gappsinstall\com.android.vending.apk
adb install Files\Gappsinstall\com.google.android.gsf.login.apk
adb install Files\Gapps\app\com.google.android.play.games.apk
adb install Files\Gapps\app\com.google.android.gms.apk
ECHO ...............................................
ECHO PRESS 1 if you want finish the setup now.
ECHO[
ECHO PRESS 2 if you want install all GApps
ECHO ...............................................
SET /P M=Type 1 or 2, then press ENTER:
IF %M%==1 GOTO FINISH
IF %M%==2 GOTO FULL


:FULL
cls
Echo -
Echo Installing YouTube
adb install Files\Apps\YouTube.apk
cls
Echo -
Echo Installing Chrome
adb install Files\Apps\GChrome.apk
cls
Echo -
Echo Installing Google Drive
adb install Files\Apps\GDrive.apk
cls
Echo -
Echo Installing Google Maps
adb install Files\Apps\GMaps.apk
cls
Echo -
Echo Installing Google Search
adb install Files\Apps\GSearch.apk
cls
Echo -
Echo Installing Google Music
adb install Files\Apps\GMusic.apk
cls
Echo -
Echo Installing Google Earth
adb install Files\Apps\GEarth.apk
cls
Echo -
Echo Installing Google Plus
adb install Files\Apps\GPlus.apk
cls
Echo -
Echo Installing Google Translate
adb install Files\Apps\GTranslate.apk
cls
Echo -
Echo Installing Google Keep
adb install Files\Apps\GKeep.apk
cls
Echo -
Echo Installing Google Docs
adb install Files\Apps\GDocs.apk
cls
Echo -
Echo Installing Google Sheets
adb install Files\Apps\GSheets.apk
cls
Echo -
Echo Installing Google Slides
adb install Files\Apps\GSlides.apk
cls
Echo -
Echo Installing Google Hangout
adb install Files\Apps\Hangout.apk
GOTO FINISH

:FINISH
Echo Wait 5 seconds
Ping 127.0.0.1 -n 5 >nul
pause
cls
TITLE FOLLOW PART 3 OF THE GUIDE
color 9e
Echo !! Now, follow part 3 of the guide !!
Echo !! Now, follow part 3 of the guide !!
start "" README.md
Echo[
Echo[
Echo[
Echo After you finished, restart your phone and then press enter!
Echo[
Echo[
Echo[
pause
3UCONF.bat