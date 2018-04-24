%ANDROID_HOME%/tools/emulator -avd Nexus5X
%ANDROID_HOME%/platform-tools/adb install -r selendroid-test-app-0.11.0.apk
%ANDROID_HOME%/platform-tools/adb shell logcat -c
%ANDROID_HOME%/platform-tools/adb shell monkey -p io.selendroid.testapp -c android.intent.category.LAUNCHER 1
timeout /t 30
%ANDROID_HOME%/platform-tools/adb shell logcat -d > console.log
%ANDROID_HOME%/platform-tools/adb shell rm -rf /sdcard/screen.png 
%ANDROID_HOME%/platform-tools/adb shell screencap /sdcard/screen.png
del screen.png
%ANDROID_HOME%/platform-tools/adb pull /sdcard/screen.png