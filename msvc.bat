@echo off
cd %~dp0
REM // change location to match your install path of "vcvarsall.bat"
REM // Also, ensure the install path of the VS Build Tools has no spaces in it.
REM // I changed mine from "Microsoft Visual Studio" to "vsbuildtools".

REM call Developer Prompt for Win64 native
call C:\vsbuildtools\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat x64
REM compile with extended exception handling enabled
REM output executable with same name
cl /Fe"%~n1.exe" /EHsc %1
REM // delete object file; omit the command below if you need it
del %~n1.obj
exit
