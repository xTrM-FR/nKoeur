@echo off
cd /d %USERPROFILE%/nKoeur/plugins/impl/
echo Finding and executing plugins
FOR %%i IN (%cd%\*.vbs) DO (
	echo %%i found
	start %%i
)
echo done.
exit