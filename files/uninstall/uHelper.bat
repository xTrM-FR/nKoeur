@echo off

:: On supprime les fichiers installés dans l'ordinateur
rd /s /q "%USERPROFILE%/nKoeur"

:: Cette ligne sera enlevée pour la version v2.0.1 BUBBLE de nKoeur,
:: qui utilisera une techenique plus avancée pour le démarage
:: du programme au startup de Windows (sysrgstr)

del /A /f "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat"

:: Création d'un fichier pendant 3 secondes, permettant
:: de savoir si nKoeur s'est correctement desinstallé (DEBUG)
echo true > uninstall.ed
PING localhost -n 4 >NUL
del /A /f uninstall.ed

exit