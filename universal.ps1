# UNIVERSAL.PS1
# PowerShell script for NPPExec
# Compile, assemble, run, and interpret code based on source file extension.
# Executes <source>.exe if <source> is of ".c", ".cpp", or ".asm" extension and present in assumed location.

# usage:
# universal.ps1 <source> <preferred-system>

# Supports:
#  GNU C/C++ Compilers
#  Microsoft C/C++ Compiler (specify "msvc" as second argument in NPPExec script)
#  Flat Assembler (Automatically fixes INCLUDE directories in <source>.)
#  Python
#  PowerShell
#  Batch

# NPPExec script format:
# npp_save
# powershell C:\universal.ps1 "$(FULL_CURRENT_PATH)"

Write-Output "Initializing script..."

$scriptName = -join("[", $MyInvocation.MyCommand.Name, "]")

function Write-ScriptLog() {
  param(
    [string] $text
  )
  if ($text -ne "") {
    Write-Output (-join($scriptName, " ", $text))
  }
}

# include this external script:
$invCmd = -join($($PSScriptRoot), $("\Invoke-CmdScript.ps1"))
Write-ScriptLog "Importing CMD invoker script..."
if (!(Test-Path $invCmd)) {
  Write-ScriptLog "ERROR: cannot locate CMD invoker script. You'd best have included the function for it in this file."
} else {
  . $invCmd
  Write-ScriptLog "Import successful."
}


# defaults: exit upon error; null file upon error
$command = "exit"
$inFile = "null"

# preserve initial argument values
$inFile = Get-Item $args[0]
$prefSys = $args[1]

# folder path of FASM.EXE
# REMEMBER TO INCLUDE THE FINAL SLASH
$fasm = "C:\Users\smike\Desktop\util\fasmw17327\"

# precise location of VCVARS64
# install directories with spaces yield trash results; don't use spaces in path names
$vsDevShell = "C:\Users\smike\Desktop\util\visualstudio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

# extended options per application
$fasmOpts = ""
$gccOpts = ""
$gppOpts = ""
$pyOpts = ""
$psOpts = ""

# check for null file
# exit if true
if ($inFile -eq "null") {
  Write-ScriptLog "ERROR: no file specified"
  exit
}

# store <source> extension
$inFileExt = (Get-Item $inFile).Extension

# rename output file as <source>.exe in same path
$outFile = (Get-Item $inFile).DirectoryName + "\" + (Get-Item $inFile).Basename + ".exe"

# file directory fix for FASM
if ($inFileExt -eq ".asm") {
  # include path replacement strings for FASM
  $incOrg = "include `""
  $incFix = "include `"INCLUDE"
  # check for matches (improper include directories in <source>)
  if (Select-String -Path $inFile -Pattern $incFix -SimpleMatch -Quiet) {
    Write-ScriptLog "FASM include directories are proper; continuing..."
  } else {
    # if include directories need fixing
    # replace entries found and overwrite <source>
    Write-ScriptLog "fixing FASM include directories..."
    (Get-Content $inFile).replace($incOrg, $incFix + "\") | Set-Content $inFile
  }
  # change directory to FASM location
  Write-ScriptLog $(-join("SWITCHING directory: ", $fasm))
  Set-Location -Path $fasm
  # assemble with FASM
  $command = -join("fasm `"", $inFile, "`" `"", $outFile, "`"")
  Invoke-Expression $command
} elseif ($inFileExt -eq ".c" -or $inFileExt -eq ".cpp") {
  # if "msvc" passed as <preferred-system>, compile with CL
  if ($prefSys -eq "msvc") {
	# set up VsDevPrompt
	Invoke-CmdScript $vsDevShell
	# compile with CL
	$command = -join("cl /Fe`"", $outFile, "`" /EHsc `"", $inFile, "`"")
  } elseif ($inFileExt -eq ".c") {
    # compile with GCC by default
    $command = -join("gcc `"", $inFile, "`" -o `"", $outFile, "`"")
  } elseif ($inFileExt -eq ".cpp") {
    # compile with G++ by default
    $command = -join("g++ `"", $inFile, "`" -o `"", $outFile, "`"")
  }
} elseif ($inFileExt -eq ".py") {
  # run python script
  $command = -join("python `"", $inFile, "`"")
} elseif ($inFileExt -eq ".ps1") {
  # run powershell script
  $command = -join("powershell `"", $inFile, "`"")
}

# execute final command
Write-ScriptLog $(-join("EXECUTING: ", $command))
Invoke-Expression $command

# delete object file if using MSVC
if ($prefSys -eq "msvc") {
  $objFile = (Get-Item $inFile).DirectoryName + "\" + (Get-Item $inFile).Basename + ".obj"
  if (Test-Path $objFile) {
	Write-ScriptLog -join("DELETING: ", $objFile)
    Remove-Item $objFile
  }
}

# eliminate attempting to run a nonexistent executable
if (Test-Path $outFile) {
  Write-ScriptLog $(-join("EXECUTING: ", $outFile))
  Invoke-Expression $outFile
}

# exit upon finish
exit
