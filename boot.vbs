'Beaucoup de fichiers VBS sont utilis�s pour
'lancer en arri�re plan les fichiers batch,
'comme une sorte de wrapper.

Set wshell = WScript.CreateObject("WScript.Shell")
wshell.run "launch.bat", 0, false