'On attends une seconde avant de lancer un fichier batch
'pour que le 1er script ne le ferme pas
WScript.Sleep 1000

'On lance le fichier avec wshell, pour qu'il ne soit pas visible
Set wshell = WScript.CreateObject("WScript.Shell")
wshell.run "uHelper.bat", 0, false