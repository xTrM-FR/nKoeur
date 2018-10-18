@echo off
mkdir "%USERPROFILE%/nTemp/"
xcopy "%cd%\uninstall\" "%USERPROFILE%/nTemp" /E /h
PING localhost -n 3 >NUL
taskkill /F /IM wscript.exe
cd /d %USERPROFILE%/nTemp/
start "%USERPROFILE%/nTemp/uninstallHelper.vbs"
taskkill /F /IM cmd.exe
exit