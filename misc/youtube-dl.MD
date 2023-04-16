### How to download and convert online media (Youtube videos)?

Everyone has their own method and preferred formats. I personally use OPUS, but you can change around both the youtube-dl and FFmpeg command lines to fit your formatting preferences. My **webm2opus** scripts automate the downloading and conversion processes, including automatically assigning metadata according to the input filename.

1. Save a version of **webm2opus** on your local machine: [Python](https://github.com/subvod/examples/blob/master/webm2opus.py) or [Batch](https://github.com/subvod/examples/blob/master/webm2opus.bat). The Batch version does not require Python but encounters naming errors when file names contain special/nonstandard characters. The Python version does not have this issue, likely because Python (iirc) uses Unicode universally across the language. Much like using `wchar_t` in place of the common `char` in C/C++. If you're using the Python version you'll obviously need to [download and install Python first](https://www.python.org/downloads/). If you chose to add Python to `%PATH%` during the install, restart your system. This entire process can be done in pure PowerShell as well, but I honestly prefer Python. Much more room to stretch my legs.
2. Download both [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html) and [FFmpeg](https://ffmpeg.org/download.html), then extract and copy **webm2opus.py**, **ffmpeg.exe**, and **youtube-dl.exe** to the same directory.
3. Run **webm2opus.py**. It will create the appropriate subdirectories and link file if they don't exist, then it will exit (as the link file is empty).
4. Open **_videolist.txt** (file name can be changed within the script as you see fit) and paste video links, one line each. Update links as needed. Alternatively, you can manually download your preferred quality/format using [this WebExtension for FireFox](https://addons.mozilla.org/en-US/firefox/addon/youtube_downloader_webx/). I'm a FireFox user, but I'm certain Chrome has an equal counterpart. Be that as it may, [youtube-dl has universal format selection via command line](https://github.com/ytdl-org/youtube-dl/blob/master/README.md#format-selection).
5. Run **webm2opus.py** when you want to download and convert the videos from the list.

*SIDE NOTE:* if the media you're downloading has different versions available (explicit and editied, for example), Google provides auto-generated original audio tracks through "Topic" channels. Searching for an explicit version of anything will almost always yield no direct result from the Topic channel of the creator. Try searching the creator/artist, title, and "topic" in Google itself. Doing so usually reveals those explicit versions on their respective "Topic" channels, where otherwise the video may be replaced by the actual music video or an edited version if searched through YouTube.

#### Is OPUS *really* better than other common formats?

I converted all of my audio to MP3 until late 2019 when I started looking more into OPUS. Now, FLAC is my go-to for lossless, but I hardly ever use lossless. My smaller devices can't handle 4-6 MB per file and, frankly, OPUS doesn't reduce quality by some insane, inordinate amount yet cuts file size on average to 2-4 MB. Compared to other lossy codecs and judging from my own experiences: yes, it's worth the tradeoff. I notice very little audio fidelity loss with OPUS, especially compared to what I used to run universally: 48 kbps MP3. Additionally, from what I've read, OPUS has a sort of witchcrafty vibe to it but it somehow works. This video conveys the loss differences between various comparison formats well: https://www.youtube.com/watch?v=3B6pr6-YVyM

#### An explanation of the tokenization method used in [webm2opus.bat](https://github.com/subvod/examples/blob/master/webm2opus.bat)

`for %%a in (!istream!\*!iext!) do` Begins looping through all files in `%istream%` with `%iext%` extension. (Confused on those exclamation points? That's thanks to `setlocal enabledelayedexpansion`.)

`set tmpfn=%%~na` Sets temporary file name without extension for use in tokenizer function.

`call set tmpfn=%%tmpfn: - Topic - =!delim!%%` Replaces ` - Topic - ` string from temporary file name with delimiter `_` if present.

`call set tmpfn=%%tmpfn: - =!delim!%%` Replaces ` - ` with delimiter `_` if present.

`call :tokenize "!tmpfn!" "%delim%"` Call tokenizer function. Pass temporary file name now delimited by `_` and the delimiter itself `_` as arguments. Calls, or jumps to, `:tokenize`

`call set tmpfn=%%tmpfn:!delim!= - %%`

`ffmpeg.exe -i "%%a" -vn -acodec copy -metadata artist="!artist!" -metadata title="!title!" "!ostream!\!tmpfn!!oext!"` Extracts OPUS audio (via codec copy a.k.a. lossless) and assigns artists/title metadata according to strings from tokenizer function `:tokenize`.

`goto :end` Begin closing process.

`:tokenize` Label for tokenizer function.

`for /f "tokens=1,2 delims=%~2" %%A in ("%~1") do (` loop through passed temporary file name, take two tokens, and use second argument passed as delimiter.

`set artist=%%A` Set artist string as token 1 (for metadata).

`set title=%%B` Set title string as token 2 (for metadata).

`goto :eof` Jump to end of file; this ends the function loop and returns to the original file loop (line 1)

`:end` Label for closing process.

`endlocal` Disable delayed expansion. Better safe than sorry, you never know.

`exit /b` Terminate script.
