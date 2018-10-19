'Beaucoup de fichiers VBS sont utilisés pour
'lancer en arrière plan les fichiers batch,
'comme une sorte de wrapper.

Set wshell = WScript.CreateObject("WScript.Shell")
wshell.run "launch.bat", 0, false