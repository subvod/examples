@echo off
cd %~dp0
REM // replace "vcvarsall.bat" with direct file location if needed
REM // ex. "C:\vsbuildtools\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat"
REM //
REM // Also, ensure the install path of the VS Build Tools has no spaces in it.
REM // I changed mine from "Microsoft Visual Studio" to "vsbuildtools".
call vcvarsall.bat x64
cl /Fe"%~n1.exe" /EHsc %1
REM // delete object file; omit the command below if you need it
del %~n1.obj