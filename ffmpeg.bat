@echo off

:: NOTE
:: Requires ffmpeg and libmp3lame (standard conversion method).

:: Finds MP4 files in current (script's) directory
:: Add underscore ('_') to beginning of file name to force it to the top

:: "_new" folder must be created within script folder to run properly.

for %%a in ("%~dp0*.mp4") do (
	ffmpeg -i "%%a" -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 "_new\%%~na.mp3"
)