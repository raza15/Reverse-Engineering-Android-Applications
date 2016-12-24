# Reverse-Engineering-Android-Applications

APK: decomple, change, recomple. Windows 7 

1)download apk: http://apps.evozi.com/apk-downloader/?id=com.onlineeducare.basiclawterms
https://play.google.com/store/search?q=law%20terms&c=apps

2)in command prompt cd to apktool dir, copy apk 

3)decomple apk usng:apktool d blah.apk ==>generates folder blah

4)make changes

5)source code to apk:apktool b blah ==>generates new apk in blah/dist/blah.apk 

6)Zipalign apk. cd to zipalign dir, copy apk.Type: zipalign -v 4 <new blah.apk> final-apk.apk
==>genertes final-apk.apk

7)Sign the apk. cd to sign dir, copy apk. Type: java -jar signapk.jar certificate.pem key.pk8 your-app.apk your-app-signed.apk

8)email the sined apk to your gmail account and install on phone
