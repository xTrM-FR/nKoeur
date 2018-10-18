@echo off
mkdir %USERPROFILE%\nKoeur\
PING localhost -n 1 >NUL
xcopy "%~dp0/nKoeurFiles" "%USERPROFILE%\nKoeur\" /E /h
PING localhost -n 1 >NUL
xcopy "%~dp0/launcher.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat*" /h /F
PING localhost -n 4 >NUL
start launcher.bat
exit