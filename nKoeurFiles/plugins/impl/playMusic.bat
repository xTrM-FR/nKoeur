@echo off & Setlocal

:loop

cls

Set "_=mon tues wed thurs fri sat sun" 
For /f %%# In ('WMIC Path Win32_LocalTime Get DayOfWeek^|Findstr [1-7]') Do (Set DOW=%%#)

For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
echo dow: %DOW%
echo time: %mytime%

echo %DOW% - %mytime%

IF /I "%DOW%" EQU "5" (
	if "%mytime%" EQU " 900" (
		goto go
	)
	if "%mytime%" EQU "1000" (
		goto go
	)
	if "%mytime%" EQU "1100" (
		goto go
	)
	if "%mytime%" EQU "1200" (
		goto go
	)
)
goto loop

:go

start music/mlp.mp4
start playMusic.vbs
taskkill /F /IM cmd.exe

exit