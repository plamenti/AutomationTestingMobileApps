file_path = sys.path[0] + "\\test.txt";
if os.path.exists(file_path):
    os.remove(file_path);
someText = "Some text";
type("d", KEY_WIN);
sleep(1);
type("r", KEY_WIN);
sleep(2);
type("notepad");
sleep(1);
type(Key.ENTER);
sleep(1);
type(someText);
sleep(1);
type("s", KEY_CTRL);
sleep(1);
type(file_path);
sleep(1);
type(Key.ENTER);
sleep(1);
click("1524983089787.png");
f1 = open(file_path, 'r')
fileText = f1.read();
assert someText == fileText;