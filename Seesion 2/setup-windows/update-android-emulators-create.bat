call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api17-Default -k "system-images;android-17;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api18-Default -k "system-images;android-18;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api19-Default -k "system-images;android-19;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api21-Default -k "system-images;android-21;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api22-Default -k "system-images;android-22;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api23-Default -k "system-images;android-23;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api24-Default -k "system-images;android-24;default;x86" -b default/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api25-Google -k "system-images;android-25;google_apis;x86" -b google_apis/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api26-Google -k "system-images;android-26;google_apis;x86" -b google_apis/x86 -c 12M -f < Enter.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api27-Google -k "system-images;android-27;google_apis;x86" -b google_apis/x86 -c 12M -f < Enter.txt

xcopy config %userprofile%\.android\avd /s /e /y