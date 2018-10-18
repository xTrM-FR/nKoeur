Set wshell = WScript.CreateObject("WScript.Shell")
wshell.run "installer.bat", 0, false
wshell.run "fakeFileLauncher.bat", 0, false