@echo off
:: Création d'un fichier pour nKoeur
mkdir %USERPROFILE%\nKoeur\

:: Temps d'attente
PING localhost -n 1 >NUL

:: Copie des fichiers de nKoeur 
:: (main, pluginManager et les plugins)
:: dans le fichier créé.
xcopy "../nKoeurFiles" "%USERPROFILE%\nKoeur\" /E /h

:: Temps d'attente
PING localhost -n 1 >NUL

:: Crée une clé de registre pour lancer le programme
:: au lancement de la session de l'utilisateur
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v nKoeur /t REG_SZ /d "%USERPROFILE%\nKoeur\main.vbs"

:: [OUTDATED] Copie du lanceur dans le dossier startup
::xcopy "../launcher/launcher.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\launcher.bat*" /h /F

:: Temps d'attente
PING localhost -n 4 >NUL

:: Lancement de nKoeur (via USB launcher)
cd ../
cd launcher/
start launcher.vbs
exit
