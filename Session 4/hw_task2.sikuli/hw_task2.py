curent_dir = sys.path[0]
type("d", KEY_WIN);
sleep(1);
type("r", KEY_WIN);
sleep(1);
type("cmd");
sleep(1);
type(Key.ENTER);
sleep(1);
type("d:");
sleep(1);
type(Key.ENTER);
sleep(1);
type('cd "' + curent_dir + '"');
sleep(1);
type(Key.ENTER);
sleep(1);
type("taskkill /IM adb.exe /F");
sleep(1)
type(Key.ENTER);
sleep(1);
type("START /B %ANDROID_HOME%/tools/emulator -avd Nexus5X -no-snapshot > somefile.txt");
sleep(1);
type(Key.ENTER);
sleep(20);
type("adb shell am force-stop io.selendroid.testapp");
type(Key.ENTER);
sleep(1);
type("adb shell monkey -p io.selendroid.testapp -c android.intent.category.LAUNCHER 1");
type(Key.ENTER);
sleep(1);
type("adb shell monkey -p io.selendroid.testapp -v 10");
type(Key.ENTER);
sleep(10);
type("adb logcat -d > console.log");
type(Key.ENTER);
sleep(5);
type("adb -s emulator-5554 emu kill");
type(Key.ENTER);
