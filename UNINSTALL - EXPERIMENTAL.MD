## GUIDE BY MAROCCO2

Go to C:\Data\Users\DefApps\APPDATA\Local\Aow\data\local\tmp and remove all folders and files


Then go to C:\Data\Users\DefApps\APPDATA\Local\Aow\RootFS\system\xbin and remove busybox file

After that, go up and go to "app" folder
Remove following apps:

* com.google.android.gms.apk
* com.google.android.play.games.apk
* GooglePartnerSetup.apk
* GoogleOneTimeInitializer.apk
* GoogleServicesFramework.apk
* GoogleLoginService.apk
* GoogleBackupTransport.apk
* GoogleContactsSyncAdapter.apk
* GoogleCalendarSyncAdapter.apk
* GoogleFeedback.apk
* com.google.android.gsf.login.apk
* phonesky.apk
* SetupWizard.apk
* PrebuiltGmsCore.apk
* Cob1.apk
* Cob2.apk


Go up and remove these files from "framework" folder:

* com.google.widevine.software.drm.jar
* com.google.android.media.effects.jar
* com.google.android.camera2.jar
* com.google.android.ble.jar
* com.google.android.maps.jar

Also these files from "lib" folder:

* libWhisper.so
* libwearable-selector.so
* libsslwrapper_jni.so
* libNearbyApp.so
* libjgcastservice.so
* libgms-ocrclient.so
* libgmscore.so
* libgms-ocrclient.so
* libgcastv2_support.so
* libgcastv2_base.so
* libdirect-audio.so
* libconscrypt_gmscore_jni.so
* libAppDataSearch.so

Finally, these from "etc\permissions" folder:

* features.xml
* com.google.widevine.software.drm.xml
* com.google.android.media.effects.xml
* com.google.android.maps.xml
* com.google.android.camera2.xml
* com.google.android.ble.xml


After that reboot.
Now you have completely uninstalled AM Gapps tool.
