@echo off

:: (DEBUG)
:: echo Was executed %date% %time%ms >> "%USERPROFILE%/nKoeur/execution.txt"

:: Lancement du PluginManager
start %USERPROFILE%/nKoeur/plugins/pluginManager.vbs

exit