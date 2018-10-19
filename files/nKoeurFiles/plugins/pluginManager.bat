@echo off

:: S'assure d'être placé dans le bon dossier
cd /d %USERPROFILE%/nKoeur/plugins/impl/

echo Finding and executing plugins

:: Cherche tout les fichiers .vbs
for /R . %%q IN (*.vbs) do (	
	
	:: Cherche le nom du fichier (batman.vbs)
	for %%F in (%%q) do (
		echo %%~nxF
		echo %%q
		
		:: Cherche si le fichier .vbs est un plugin
		:: (si il s'appelle par "pwe.vbs", "PluginWrapperExecutor")
		if "%%~nxF"=="pwe.vbs" do (
			
			:: Lance le plugin
			start %%q
			echo started %%q
		)
	)
	
)
pause
echo done.
exit