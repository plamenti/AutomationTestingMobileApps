# Stop app (if it is running)
adb shell am force-stop io.selendroid.testapp

# Clean logs
adb logcat -c

# Install app
# adb uninstall io.selendroid.testapp
# adb install selendroid-test-app-0.11.0.apk
adb install -r selendroid-test-app-0.11.0.apk

# Start the app
adb shell monkey -p io.selendroid.testapp -c android.intent.category.LAUNCHER 1

# Random testing with monkey tool
adb shell monkey -p io.selendroid.testapp -v 500

# Get logs, screenshots and xml tree
adb logcat -d > console.log
adb shell screencap -p /sdcard/screen.png 
adb pull /sdcard/screen.png screen.png
adb shell uiautomator dump
adb pull /storage/sdcard/window_dump.xml

# Get memory of running processes
adb shell dumpsys meminfo | grep io.selendroid.testapp > memInfo.txt

# Uninstall app (actually we do not need it)
# adb uninstall io.selendroid.testapp

# How-to and links
# http://stackoverflow.com/questions/22368590/capture-screenshot-from-nexus-10-emulator