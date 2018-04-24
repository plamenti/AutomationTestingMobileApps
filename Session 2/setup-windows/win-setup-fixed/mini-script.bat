call %ANDROID_HOME%\tools\bin\sdkmanager --licenses < yes.txt
echo. 2>%USERPROFILE%\.android\repositories.cfg
call %ANDROID_HOME%\tools\bin\sdkmanager "platform-tools" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "build-tools;27.0.3" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "platforms;android-23" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "emulator" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "extras;android;m2repository" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "extras;google;m2repository" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "system-images;android-23;default;x86" < yes.txt
call %ANDROID_HOME%\tools\bin\sdkmanager "extras;intel;Hardware_Accelerated_Execution_Manager" < yes.txt
call %ANDROID_HOME%\tools\bin\avdmanager create avd -n Emulator-Api23-Default -k "system-images;android-23;default;x86" -b default/x86 -c 12M -f < Enter.txt
set current_dir=%CD%
cd %ANDROID_HOME%\extras\intel\Hardware_Accelerated_Execution_Manager
silent_install.bat || ver>nul
cd %current_dir%