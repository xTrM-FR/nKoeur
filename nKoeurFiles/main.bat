@echo off
echo Was executed %date% %time%ms >> "%USERPROFILE%/nKoeur/execution.txt"
start %USERPROFILE%/nKoeur/plugins/pluginManager.vbs
exit