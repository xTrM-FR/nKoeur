@echo off
rd /s /q "%USERPROFILE%/nKoeur"
del /A /f "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat"
cls
color 0c
echo.
echo Uninstalled nKoeur from %USERNAME%
echo.
echo.
echo.
pause
exit