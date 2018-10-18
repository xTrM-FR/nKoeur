@echo off
cd uninstall
taskkill /F /IM wscript.exe
start %cd%/uninstallHelper.vbs
taskkill /F /IM cmd.exe 
pause
exit