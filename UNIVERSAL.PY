# UNIVERSAL.PY
# Python script for NPPExec
# Compile, assemble, run, and interpret code based on source file extension.
# Executes <source>.exe if <source> is of ".c", ".cpp", or ".asm" extension and present in assumed location.

# usage:
# UNIVERSAL.PY <sourceFile> <dryRunBool>
#   <sourceFile> the source file to be used
#   <dryRunBool> run without executing anything; "true" or "false"

# Supports:
#  GNU C/C++ Compilers
#  Python
#  Batch

# NPPExec script format:
#   npp_save
#   cd $(CURRENT_DIRECTORY)
#   C:\Python394\python.exe C:\dev\UNIVERSAL.PY "$(FULL_CURRENT_PATH)" "false"

# Usage for linking to and/or compiling as DLL via GCC:
#   Including "//COMPILEPROJECTASDLL" will tell GCC to compile it as a DLL
#     NOTE: the line must be included as shown, commented and everything
#   Usage of standard "#pragma comment(lib, "library.dll")" preprocessor comments is supported. Lib names are passed to GCC.

print("Creating script function definitions...")

# for basic messages
# print to console with script name prefix
def printConsole(stringToPrint):
  print("[UNIVERSAL.PY]", stringToPrint)

# for errors
# print passed message and exit
def exitConsole(returnString):
  printConsole("FATAL ERROR: " + returnString + "!")
  sys.exit(1)

# external program launcher
def runExtern(cmdToSend):
  printConsole("EXECUTING: " + cmdToSend)
  if dryRun == "false":
    os.system(cmdToSend)

# init and import
printConsole("Importing required script libraries...")
import os
import argparse
import sys
import re
import mmap

# global variables
printConsole("Setting global variables...")
inFile = "null"
inExt = "null"
outFile = "null"
outExt = "null"
fileName = "null"
command = "null"
linkTargets = "null"
tmpLine = "null"
tokens = "null"
x = 0
binaryProject = 0
needsLinking = 0
linkLibrary = 0
dryRun = 0

# argparse
printConsole("Parsing arguments...")
parser = argparse.ArgumentParser()
parser.add_argument("i", default="null", help="inFile")
parser.add_argument("d", default="false", help="dryRun")
args = parser.parse_args()
inFile = args.i
dryRun = args.d

if dryRun == "true":
  printConsole("DRY RUN; NO EXTERNAL COMMANDS WILL BE EXECUTED")

# error if blank file name
if inFile == "":
  exitConsole("No file specified")

# verify file existence
if not os.path.exists(inFile):
  # exit if file doesn"t exist
  exitConsole("Input file doesn't exist")

# print input file name
printConsole("INPUT FILE: " + inFile)

# fetch output extension
fileName = os.path.splitext(inFile)[0]

# fetch input extension
inExt = os.path.splitext(inFile)[1]

# check input extension
if inExt.lower() == ".py":
  # set python
  printConsole("CODE TYPE: Python")
  command = "python \"" + inFile + "\""
  runExtern(command)
  sys.exit(0)

elif inExt.lower() == ".bat":
  # set c project
  printConsole("CODE TYPE: Batch")
  command = "cmd \"" + inFile + "\""
  runExtern(command)
  sys.exit(0)

elif inExt.lower() == ".c":
  # set c project
  hostName = "gcc"
  printConsole("CODE TYPE: C")
  binaryProject = 1

elif inExt.lower() == ".cpp":
  # set c++ project
  hostName = "g++"
  printConsole("CODE TYPE: C++")
  binaryProject = 1

elif inExt == "null":
  # terminate if null input file type remains
  exitConsole("No extension detected")

else:
  # terminate if unknown file type
  exitConsole("Unknown file type")

# if binary/compiled, search input file for project type and link libraries
if binaryProject > 0:
  printConsole("Detected as compiled/assembled project.")
  
  with open(inFile, "r") as inStream:
    fileData = inStream.readlines()
    printConsole("Checking for MSVC-style PRAGMA lib comments...")
    for line in fileData:
      if re.match("^#pragma\scomment\(lib,", line):
        printConsole("Library link found.")
        needsLinking = 1
        
        if linkTargets == "null":
          # clear null value from targets list on initial detection
          printConsole("Clearing target list...")
          linkTargets = ""
        
        printConsole("Isolating library name and appending to library list...")
        # copy to temporary variable
        tmpLine = line
        # regex between to isolate library name
        tmpLine = re.match("#pragma\scomment\(lib,(.*)\)", tmpLine).group(1)
        # remove space if present
        tmpLine = tmpLine.replace(" ", "")
        # append to targets list
        linkTargets += tmpLine
        # add comma as delimeter
        linkTargets += ","
      
      # check if to be compiled as DLL
      if re.match("//COMPILEPROJECTASDLL", line):
        printConsole("Building project as DLL...")
        linkLibrary = 1

# construct final command
command = hostName + " -o \"" + fileName + ".exe\" \"" + inFile + "\""

# split library list and set to link if present
if needsLinking > 0:
  # remove final comma if last character
  linkTargets = linkTargets[:-1]
  
  printConsole("Serparating library list...")
  # split list by ',' token
  tokens = linkTargets.split(",")
  # print library count and list
  print("LIBRARIES (" + str(len(tokens)) + "): ")
  x = 0
  while x < (len(tokens)):
    print("\t" + tokens[x])
    x += 1
  
  # construct final command to be executed
  command += " -Wl," + linkTargets
  # send command
  runExtern(command)

# gnu gcc compile as library
elif linkLibrary > 0:
  # compile to object code
  command = hostName + " -c -o \"" + fileName + ".o\" \"" + inFile + "\""
  runExtern(command)
  
  # compile object code and symbols to DLL
  command = hostName + " -shared -o \"" + fileName + ".dll\" " + fileName + ".o\""
  runExtern(command)

# continue otherwise
else:
  runExtern(command)

printConsole("END OF SCRIPT")
