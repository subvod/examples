# FASM.PS1
# PowerShell script for NPPExec
# Automatically fixes include directories per <source> file
# Uses default include directory format "fasmw17327\INCLUDE\"

# usage:
# fasm.ps1 -f <source>

$incOrg = "include `""
$incFix = "include `"INCLUDE"

# folder path of "fasm.exe"
# REMEMBER TO INCLUDE THE FINAL SLASH
$fasmDir = "C:\fasmw17327\"

$inFile = $args[0]

# check for null file
# exit if true
if ($inFile -eq "null") {
  Write-Output "ERROR: no file specified"
  exit
}

# check for matches (improper include directories in <source>)
if (Select-String -Path $inFile -Pattern $incFix -SimpleMatch -Quiet) {
  Write-Output "include directories unchanged; continuing..."
} else {
  # if include directories need fixing
  # replace entries found and overwrite <source>
  Write-Output "fixing include directories..."
  (Get-Content $inFile).replace($incOrg, $incFix + "\") | Set-Content $inFile
}

# rename output file as <source>.exe in same path
Write-Output "constructing command..."
$outFile = (Get-Item $inFile).DirectoryName + "\" + (Get-Item $inFile).Basename + ".exe"
# change directory to FASM location
Set-Location -Path $fasmDir
# assemble <source> file
Write-Output "assembling..."
&($fasmDir + "fasm.exe") $inFile $outFile
Write-Output "assembly complete:"
$inFile
$outFile
