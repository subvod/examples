REM webm2opus.bat
REM for use with Windows 10
REM downloads audio in format id# 251 a.k.a. audio-only OPUS 160k in WEBM container
REM extracts OPUS audio from WEBM container without transcoding (lossless)
REM automatically sets artist/title metadata according to filename format: "Artist - Title.webm"
REM refer to youtube-dl (for downloading) and ffmpeg (for conversion) documentations for alternative formats

REM eliminate echo-ing path
@echo off
REM enable variable expansion
setlocal enabledelayedexpansion

REM input path
set "istream=%~dp0istream"
REM output path
set "ostream=%~dp0ostream"
REM file containing list of video/audio hyperlinks
set "links=%~dp0_videolist.txt"
REM input extension
set "iext=.webm"
REM output extension
set "oext=.opus"
REM delimiter/splitter
set "delim=_"

REM check for existing subdirectories and link list
REM create subfolders and link list if they don't exist
if not exist %istream% mkdir %istream%
if not exist %ostream% mkdir %ostream%
if not exist %links% type nul >%links%

REM output filename in format "Uploader - Title.webm"
REM assume possible HLS stream as native
REM download format id #251; OPUS 160k audio-only in WebM container (refer to youtube-dl documentation)
REM download all from "_videolist.txt"
youtube-dl.exe --newline -o "%%(uploader)s - %%(title)s.%%(ext)s" --hls-prefer-native -f 251 --batch-file "%links%"

REM move all downloaded files to stdin path
REM echo mov "%~dp0*%iext%" "%istream%"
move "%~dp0*%iext%" "%istream%"

REM loop through all files in stdin path
REM removes "Topic - " string if present
REM tokenizes (splits) filename into strings; delimited/split by " - "
REM auto set artist/title metadata to tokens, respectively
REM use input/output extensions specified
for %%a in (!istream!\*!iext!) do (
 set tmpfn=%%~na
 call set tmpfn=%%tmpfn: - Topic - =!delim!%%
 call set tmpfn=%%tmpfn: - =!delim!%%
 call :tokenize "!tmpfn!" "%delim%"
 call set tmpfn=%%tmpfn:!delim!= - %%
 ffmpeg.exe -i "%%a" -vn -acodec copy -metadata artist="!artist!" -metadata title="!title!" "!ostream!\!tmpfn!!oext!"
)
goto :end
:tokenize
for /f "tokens=1,2 delims=%~2" %%A in ("%~1") do (
 set artist=%%A
 set title=%%B
)
goto :eof
:end
endlocal
exit /b