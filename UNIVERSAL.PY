# UNIVERSAL.PY
# Python script for NPPExec
# Compile, assemble, run, and interpret code based on source file extension.
# Executes <source>.exe if <source> is of ".c", ".cpp", or ".asm" extension and present in assumed location.

# usage:
# UNIVERSAL.PY <source>

# Supports:
#  GNU C/C++ Compilers
#  Python
#  Batch

# NPPExec script format:
#   npp_save
#   cd $(CURRENT_DIRECTORY)
#   C:\Python394\python.exe C:\dev\UNIVERSAL.PY "$(FULL_CURRENT_PATH)"

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
tokens = "null"
x = 0
binaryProject = 0
needsLinking = 0
linkLibrary = 0

# argparse
printConsole("Parsing arguments...")
parser = argparse.ArgumentParser()
parser.add_argument("i", default="null", help="inFile")
args = parser.parse_args()
inFile = args.i

# error if blank file name
if inFile == "":
  exitConsole("No file specified")

# print passed input file
printConsole(inFile)

# verify file existence
if not os.path.exists(inFile):
  # exit if file doesn"t exist
  exitConsole("Input file doesn't exist")
else:
  # continue otherwise
  printConsole("File exists; continuing...")

# print input file name
printConsole("INPUT FILE: " + inFile)

# fetch output extension
printConsole("Fetching file name...")
fileName = os.path.splitext(inFile)[0]
printConsole("FILE NAME: " + fileName)

# fetch input extension
printConsole("Fetching input extension...")
inExt = os.path.splitext(inFile)[1]
printConsole("INPUT EXTENSION: " + inExt)

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

# search input file for project type and link libraries
if binaryProject > 0:
  printConsole("Detected as compiled/assembled project.")
  printConsole("Opening file...")
  
  with open(inFile, "r") as inStream:
    printConsole("Reading lines...")
    fileData = inStream.readlines()
    printConsole("Checking for specified libraries...")
    for line in fileData:
      if re.match("//LINKTARGETS:", line):
        printConsole("Library links found.")
        needsLinking = 1
        linkTargets = line[:-1]
        printConsole("Removing prefix...")
        linkTargets = linkTargets.replace("//LINKTARGETS:", "")
        printConsole("Serparating library list...")
        tokens = linkTargets.split(",")
        print("LIBRARIES (" + str(len(tokens)) + "): ")
        x = 0
        while x < (len(tokens)):
          print("\t" + tokens[x])
          x += 1
      if re.match("//COMPILEPROJECTASDLL", line):
          printConsole("Building as DLL...")
          linkLibrary = 1

# gnu gcc compile as library
if linkLibrary > 0:
  # compile to object code
  command = hostName + " -c -o \"" + fileName + ".o\" \"" + inFile + "\""
  runExtern(command)
  
  # compile object code and symbols to DLL
  command = hostName + " -shared -o \"" + fileName + ".dll\" " + fileName + ".o\""
  runExtern(command)

# link to targets if detected
if needsLinking > 0:
  command = hostName + " -o \"" + fileName + ".exe\" \"" + inFile + "\" -Wl,"
  x = 0
  while x < (len(tokens)):
    command = command + tokens[x]
    x += 1
  runExtern(command)

printConsole("END OF SCRIPT")