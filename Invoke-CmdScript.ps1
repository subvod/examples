# Invokes a Cmd.exe shell script and updates the environment.

# Stolen from:
# http://windowsitpro.com/powershell/take-charge-environment-variables-powershell
# Proper credit given where credit is due. This is madness...

function Invoke-CmdScript {
  param(
    [String] $scriptName
  )
  $cmdLine = """$scriptName"" $args & set"
  & $Env:SystemRoot\system32\cmd.exe /c $cmdLine |
  select-string '^([^=]*)=(.*)$' | foreach-object {
    $varName = $_.Matches[0].Groups[1].Value
    $varValue = $_.Matches[0].Groups[2].Value
    set-item Env:$varName $varValue
  }
}