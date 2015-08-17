Made by ADeltaX
Hosted by Marocco2

## PART 1

Requirements:
IPOverUSBSvc installed

Connect via USB and start 1INSTALL.bat
Come back if the script says to you to come here.

## PART 2

Don't restart your phone!
Required a lot of patience (File Explorer can easily crash....)

Copy "Aow shortcut" on your phone (for example in Documents)
Go to your phone, launch File Explorer, go to Documents, and open "Aow shortcut".
You will be ported in this path: "C:\Data\Users\DefApps\APPDATA\Local\Aow"
Go to data > local > tmp > BusyBox
Go now to common folder.
Copy "busybox" file and press the Up button. You will go "back"
Press it as much as you see the RootFS folder (You need to be in Aow directory)
Open RootFS > system > xbin and copy here.

Reboot your phone!

## PART 3

Go to Aow shortcut.
Go to data > local > tmp > Gapps > app.
Select all files and copy them to RootFS > system > app
Do the same thing with etc - lib - framework > Permission.
Remember: Don't copy the folder; copy files from that folder (or File Explorer will duplicate the folder...)

After finished, restart your phone, and then continue

Optional: Install Google's apps by launching "install apps" - Will install YouTube - GMaps - Google Search - Chrome. Do it after installed Gapps.

## PART 4

Be sure you have connection in your phone.
Launch Google Account Manager and enter your email and password.
If it say "Cannot connect to Google server" or something like, restart your phone and then retry.
Then Open Google Play Store. It should be blank or loading circle or with message like "Authentication required". Ignore that.
Now, you can use GAPPS like Youtube
PS: Try to install app that require google play games, like clash of clans.
