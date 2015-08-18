TITLE AM GApps INSTALLER TOOL
@Echo off
cls
Color 9f
Echo --------------------
Echo Killing ADB Server
adb kill-server
Echo --------------------
Echo[
Echo Are you using usb or wifi?
Set /p n=(if wifi, write the ip):
Echo[ 
Echo Launching wconnect
wconnect %n%
Echo --------------------
Echo Listing ADB Devices
adb devices
Echo --------------------
Echo[
Echo Installing services
adb install Files\Other\Cob1.apk
adb install Files\Other\Cob2.apk
adb install Files\Gappsinstall\com.android.vending.apk
adb install Files\Gappsinstall\com.google.android.gsf.login.apk
adb install Files\Gapps\app\com.google.android.play.games.apk
adb install Files\Gapps\app\com.google.android.gms.apk
Echo[
Echo -
Echo Pushing GMS
adb push Files\GappsInstall\com.google.android.gms.apk /data/local/tmp/gmscore.apk
cls
Echo -- Go to file explorer --
Echo -- Go to Aow shortcut. --
Echo -- Go to data \ local \ tmp --
Echo -- Copy gmscore.apk to RootFS \ system \ app --
Echo -- Go back and press enter to set permission. --
pause
Echo Setting permission
adb shell chmod 0777 /system/app/gmscore.apk
Echo Done
Ping 127.0.0.1 -n 5 >nul
cls
ECHO ...............................................
ECHO PRESS 1 if you want finish the setup now.
ECHO[
ECHO PRESS 2 if you want install all GApps
ECHO ...............................................
Echo[
Echo[
SET /P M=Type 1 or 2, then press ENTER:
IF %M%==1 GOTO FINISH
IF %M%==2 GOTO FULL


:FULL
cls
Echo -
Echo Installing YouTube
adb install Files\Apps\YouTube.apk
Echo[
Echo -
Echo Installing Chrome
adb install Files\Apps\GChrome.apk
Echo[
Echo -
Echo Installing Google Drive
adb install Files\Apps\GDrive.apk
Echo[
Echo -
Echo Installing Google Maps
adb install Files\Apps\GMaps.apk
Echo[
Echo -
Echo Installing Google Search
adb install Files\Apps\GSearch.apk
Echo[
Echo -
Echo Installing Google Music
adb install Files\Apps\GMusic.apk
Echo[
Echo -
Echo Installing Google Earth
adb install Files\Apps\GEarth.apk
Echo[
Echo -
Echo Installing Google Plus
adb install Files\Apps\GPlus.apk
Echo[
Echo -
Echo Installing Google Translate
adb install Files\Apps\GTranslate.apk
Echo[
Echo -
Echo Installing Google Keep
adb install Files\Apps\GKeep.apk
Echo[
Echo -
Echo Installing Google Docs
adb install Files\Apps\GDocs.apk
Echo[
Echo -
Echo Installing Google Sheets
adb install Files\Apps\GSheets.apk
Echo[
Echo -
Echo Installing Google Slides
adb install Files\Apps\GSlides.apk
Echo[
Echo -
Echo Installing Google Hangout
adb install Files\Apps\Hangout.apk
GOTO FINISH

:FINISH
pause
cls
TITLE FINISHED
color 9e
Echo[
Echo[
Echo[
Echo !! Now, reboot your phone !!
Echo !! Now, reboot your phone !!
Echo[
Echo[
Echo[
pause
exit