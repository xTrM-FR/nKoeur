@echo off
:: Stop les instances Visual Basic
taskkill /F /IM wscript.exe

:: Commence un autre script pour
:: finir la desinstallation
:: (qui s'arretera tout seul)
start uHelper.vbs

:: Stop les instances Batch (dont celui-ci)
taskkill /F /IM cmd.exe 

exit