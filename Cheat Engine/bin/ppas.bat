@echo off
SET THEFILE=D:\Projects\cheat-engine\Cheat Engine\bin\cheatengine-i386.exe
echo Linking %THEFILE%
D:\InstallDir\lazarus1.6.4\fpc\3.0.0\bin\i386-win32\ld.exe -b pei-i386 -m i386pe  --gc-sections  -s --subsystem windows --entry=_WinMainCRTStartup  --image-base=0x00400000  -o "D:\Projects\cheat-engine\Cheat Engine\bin\cheatengine-i386.exe" "D:\Projects\cheat-engine\Cheat Engine\bin\link.res"
if errorlevel 1 goto linkend
D:\InstallDir\lazarus1.6.4\fpc\3.0.0\bin\i386-win32\postw32.exe --subsystem gui --input "D:\Projects\cheat-engine\Cheat Engine\bin\cheatengine-i386.exe" --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
