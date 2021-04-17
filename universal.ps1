# UNIVERSAL.PS1
# PowerShell script for NPPExec
# Automatically fixes FASM include directories for <source> file
# Uses default include directory format "fasmw17327\INCLUDE\"

# general usage:
# universal.ps1 <source> <preferred-system>

# NPPExec example script format using GNU GCC:
# npp_save
# powershell C:\universal.ps1 "$(FULL_CURRENT_PATH)"
# cmd /c "$(CURRENT_DIRECTORY)\$(NAME_PART).exe"

$inFile = Get-Item $args[0]
$prefSys = $args[1]

# folder path of FASM.EXE
# REMEMBER TO INCLUDE THE FINAL SLASH
$fasm = "C:\fasmw17327\"

# EXACT LOCATION NECESSARY
$devShell = "C:\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"

# extended options per application
$fasmOpts = ""
$gccOpts = ""
$gppOpts = ""
$pyOpts = ""
$psOpts = ""

# check for null file
# exit if true
if ($inFile -eq "null") {
  Write-Output "ERROR: no file specified"
  exit
}

$command = "null"

# run compiler/assembler/linker/interpreter according to file extension
$inFileExt = (Get-Item $inFile).Extension

# rename output file as <source>.exe in same path
$outFile = (Get-Item $inFile).DirectoryName + "\" + (Get-Item $inFile).Basename + ".exe"

# include file directory fix for FASM
if ($inFileExt -eq ".asm") {
  # include path replacement strings for FASM
  $incOrg = "include `""
  $incFix = "include `"INCLUDE"
  # check for matches (improper include directories in <source>)
  if (Select-String -Path $inFile -Pattern $incFix -SimpleMatch -Quiet) {
    Write-Output "FASM: include directories are proper; continuing..."
  } else {
    # if include directories need fixing
    # replace entries found and overwrite <source>
    Write-Output "FASM: fixing include directories..."
    (Get-Content $inFile).replace($incOrg, $incFix + "\") | Set-Content $inFile
  }
  # change directory to FASM location
  Write-Output $(-join("changing directory: ", $fasm))
  Set-Location -Path $fasm
  # assemble <source> file
  Write-Output "assembling: " $inFile
  $command = -join("fasm `"", $inFile, "`" `"", $outFile, "`"")
  Invoke-Expression $command
} elseif ($inFileExt -eq ".c") {
  $command = -join("gcc `"", $inFile, "`" -o `"", $outFile, "`"")
  if ($prefSys -eq "msvc") {
	$command = -join("cmd /c `"", $vcvarsall, "`" x64")
	Write-Output $command
	Invoke-Expression $command
	$command = -join("cl /Fe`"", $outFile, "`" /EHsc `"", $inFile, "`"")
  }
} elseif ($inFileExt -eq ".cpp") {
  $command = -join("g++ `"", $inFile, "`" -o `"", $outFile, "`"")
} elseif ($external -eq ".py") {
  $command = -join("python `"", $inFile, "`"")
} elseif ($external -eq ".ps1") {
  $command = -join("powershell `"", $inFile, "`"")
}

# print and execute final command
Write-Output $command
Invoke-Expression $command

# delete object file if using MSVC
if ($prefSys -eq "msvc") {
  $objFile = (Get-Item $inFile).DirectoryName + "\" + (Get-Item $inFile).Basename + ".obj"
  Remove-Item $objFile
}