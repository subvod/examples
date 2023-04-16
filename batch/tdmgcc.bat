@echo off
cd %~dp0
REM // This is a bit more straightforward with GCC.
REM // Thanks, Microsoft! :)
if "%~x1"==".cpp" (
	g++ "%1" -o "%~n1.exe"
)
if "%~x1"==".c" (
	gcc "%1" -o "%~n1.exe"
)
exit
