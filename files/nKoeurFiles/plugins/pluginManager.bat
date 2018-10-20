@echo off

:: S'assure d'être placé dans le bon dossier
cd /d %USERPROFILE%\nKoeur\plugins\impl\

echo Finding and executing plugins

:: Cherche tout les fichiers .vbs
for /R . %%q IN (*.vbs) do (
	
	:: Cherche le nom du fichier (batman.vbs)
	for %%F in (%%q) do (
		echo File name: %%~nxF
		echo File path: %%q
		echo File dir:  %%~dF%%~pF
		
		set direkk=%%~dF%%~pF
		
		:: Cherche si le fichier .vbs est un plugin
		:: (si il s'appelle par "pwe.vbs", PluginWrapperExecutor)
		if "%%~nxF"=="pwe.vbs" do (
			echo Moving to plugin dir: %%~dF%%~pF
			cd "%%~dF%%~pF"
			
			echo CURRENT: %cd%
			
			echo Moving back...
			cd "%USERPROFILE%\nKoeur\plugins\impl\"
			
			echo CURRENT: %cd%
			
			echo thonk
			::start %%q
		)
	)	
)
echo done.
pause
exit