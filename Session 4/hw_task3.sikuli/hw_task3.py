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
wait("1525006306849.png", 20);

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

type("adb install -r Calculator_2.0.apk");
type(Key.ENTER);
sleep(1);
type("adb shell monkey -p com.android.calculator2 -c android.intent.category.LAUNCHER 1");
type(Key.ENTER);
sleep(1);