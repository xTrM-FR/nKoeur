@echo off

:: On supprime les fichiers installés dans l'ordinateur
rd /s /q "%USERPROFILE%/nKoeur"

:: Deletes the regedit key and the launcher.bat
:: in startup for the old nKoeur installer
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\nKoeur" /f
del /A /f "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat"

exit
