Dim objShell
Set objShell = WScript.CreateObject( "WScript.Shell" )
objShell.Run("javaw.exe" & " -args")
Set objShell = Nothing
