# usage:
# fasm.ps1 -f <source>

# parameters/arguments
param (
  [string]$f = "null"
)

$fasmDir = "C:\fasmw17327\"

# check for null file
if ($f -eq "null") {
  Write-Output "ERROR: no file specified"
  exit
}

# rename output file as <source>.exe
$outFile = (Get-Item $f).DirectoryName + "\" + (Get-Item $f).Basename + ".exe"
# $outFile = $outFile + (Get-Item $f).Basename + ".exe"
# change directory to FASM location
Set-Location -Path $fasmDir
# assemble <source> file
&($fasmDir + "fasm.exe") $f $outFile