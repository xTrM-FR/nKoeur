@echo off

:: On supprime les fichiers install�s dans l'ordinateur
rd /s /q "%USERPROFILE%/nKoeur"

:: Cette ligne sera enlev�e pour la version v2.0.1 BUBBLE de nKoeur,
:: qui utilisera une techenique plus avanc�e pour le d�marage
:: du programme au startup de Windows (sysrgstr)

del /A /f "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat"

:: Cr�ation d'un fichier pendant 3 secondes, permettant
:: de savoir si nKoeur s'est correctement desinstall� (DEBUG)
echo true > uninstall.ed
PING localhost -n 4 >NUL
del /A /f uninstall.ed

exit