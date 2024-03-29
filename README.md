# README.MD

*This is just a bunch of links I've compiled over the years, (mostly) useful stuff.*

[INTRODUCTION](#introduction)
<br>[TOOLS/UTILITIES](#toolsutilities)
<br>&emsp;[System Utilities](#system-utilities)
<br>&emsp;[Audio/Video Utilities](#audiovideo-utilities)
<br>&emsp;[Imaging Utilities](#imaging-utilities)
<br>&emsp;[3D Utilities](#3d-utilities)
<br>&emsp;[Document Utilities](#document-utilities)
<br>&emsp;[Web Browsers](#web-browsers)
<br>[PROGRAMMING](#programming)
<br>&emsp;[C/C++](#cc)
<br>&emsp;[Python](#python)
<br>&emsp;[Assembly (ASM)](#assembly-asm)
<br>&emsp;[PowerShell](#powershell)
<br>&emsp;[Batch, VBScript, JScript](#batch-vbscript-and-jscript)
<br>&emsp;[HTML5](#html5)
<br>&emsp;[CSS](#css)
<br>&emsp;[JavaScript](#javascript)
<br>&emsp;[Regex](#regex)
<br>&emsp;[Markdown](#markdown)
<br>[GAMING](#gaming)
<br>&emsp;[Homeworld Remastered](#homeworld-remastered)
<br>&emsp;[Phantom Forces](#phantom-forces)
<br>&emsp;[Red Dead Redemption 2](#red-dead-redemption-2)
<br>&emsp;[Grand Theft Auto V](#grand-theft-auto-v)
<br>&emsp;[Minecraft](#minecraft)
<br>&emsp;[Tom Clancy's Ghost Recon Wildlands](#tom-clancys-ghost-recon-wildlands)
<br>&emsp;[Emulation](#emulation)
<br>&emsp;&emsp;[SNES](#snes)
<br>&emsp;&emsp;[GameBoy](#gameboy)
<br>&emsp;[Minetest](#minetest)
<br>&emsp;[Forza](#forza)
<br>[QUOTES](#quotes)
<br>&emsp;[BAT2EXE](#bat2exe)

# INTRODUCTION

*This document is just some notes I've taken of programs/techniques I've used over the years. Mostly programming and gaming related, but some system utilities are linked as well.* [[bazinga]](https://youtu.be/j22bnzmjcQM)

[ASUS ROG Zephyrus GA401QM (2021 G14) Review](https://github.com/subvod/examples/blob/master/misc/2021-ASUS-ROG-Zephyrus-G14-GA401QM-Review.md) - A not-so-in-depth review of the **2021 ASUS G14** because I'm a fucking normie piece of shit.

If you, by chance, are curious about the "best" AA battery, take a quick ten minute glance at [Project Farm's AA battery comparison](https://youtu.be/V7-ghrTqA44).

# TOOLS/UTILITIES

*These are tools and references I've used in the past, distant and recent. I do not link to things I've not used/tried myself for credibility reasons.*

## System Utilities

*Tools:*

- [BleachBit](https://github.com/bleachbit/bleachbit) - Alternative to CCleaner because Avast fucked it up.
- [7-Zip](https://www.7-zip.org/) - File compression and archiving. I was a WinRAR fanboy for over a decade. Why? No clue. [[Source Code]](https://sourceforge.net/projects/sevenzip/) ; use LZMA2 for binary/images, PPMd for plaintext.
- [PowerISO](http://www.poweriso.com/) - Powerful CD / DVD / BD image file processing tool, which allows you to open, extract, burn, create, edit, compress, encrypt, split and convert ISO files, and mount ISO files with internal virtual drive. It can process almost all CD / DVD / BD image files including ISO and BIN files. PowerISO provides an all-in-one solution. You can do every thing with your ISO files and disc image files.
- [CheatEngine](https://www.cheatengine.org/downloads.php) - memory editor and process hook module; RAR archive isn't bundled with "optional" bloatware/adware. [[Source Code]](https://github.com/cheat-engine/cheat-engine)
- [IconsExtract](https://www.nirsoft.net/utils/iconsext.html) - extract icon resources from WinPE/DLL
- [ResourceHacker](http://www.angusj.com/resourcehacker/) - extract, edit, and repack WinPE/DLL resources
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) - universal CLI.

*Articles:*

- [DO NOT DEFRAGMENT YOUR SSD](https://superuser.com/questions/1594/why-cant-you-defragment-solid-state-drives) - Defragmenting does nothing but spike write cycles, lowering SSD lifespan because of how they operate. This is not the case for HDDs with physical disks. Defragmenting is beneficial for HDDs, not SSDs.
- [How to Check SSD Health in Windows 10 and Windows 11](https://www.tomshardware.com/how-to/check-ssd-health-windows-10-11) - Click **Search** button from the **Taskbar**, type `cmd`, hit **[ENTER]**, type `wmic`, hit **[ENTER]**, type `diskdrive get status`, hit **[ENTER]**.
- [Compression Benchmark](https://peazip.github.io/peazip-compression-benchmark.html) - Performance comparison of several compression algorithms. Also specifies [file formats less fit for compression](https://peazip.github.io/why-can-not-compress-pdf-avi-mp3-files.html).

## Audio/Video Utilities

*Tools:*

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - A fork of [youtube-dl](https://github.com/ytdl-org/youtube-dl) with additional features and fixes.
- [yt-dlp FFmpeg](https://github.com/yt-dlp/FFmpeg-Builds) - FFMpeg builds for [yt-dlp](https://github.com/yt-dlp/yt-dlp). Forked from [FFmpeg-Builds by BtbN](https://github.com/BtbN/FFmpeg-Builds). Certain builds have tons libraries already statically linked. Be sure to read the [Targets, Variants, and Addins](https://github.com/BtbN/FFmpeg-Builds#targets-variants-and-addins).
- [OPUS Codec](https://opus-codec.org/downloads/) - Modern audio compression for the internet. Lossy, but it's a witchcrafty compression algorithm. [[Docs]](https://opus-codec.org/docs/) [[Source Code]](https://gitlab.xiph.org/xiph/opus-tools)
- [VLC](https://www.videolan.org/) - Media player. [[Docs]](https://wiki.videolan.org/documentation:documentation/) [[Source Code]](https://github.com/videolan/vlc)
- [Audacity](https://www.audacityteam.org/) - Audio editor. [[Docs]](https://manual.audacityteam.org/) [[Source Code]](https://github.com/audacity/audacity)
- [LosslessCut](https://github.com/mifi/lossless-cut) - The Swiss army knife of lossless audio/video editing.

*Articles:*

- RIAA's [failed attempt to shut down youtube-dl](https://github.blog/2020-11-16-standing-up-for-developers-youtube-dl-is-back/). :)
- Automate the [downloading and conversion/extraction of audio/video](https://github.com/subvod/examples/blob/master/misc/youtube-dl.MD) using **youtube-dl** and **ffmpeg**.
- A video comparison of [MP3, M4A, AAC-LC, AAC-HE v1, AAC-HE v2, and Opus codecs](https://youtu.be/3B6pr6-YVyM). No commentary. Includes separate tracks for the data lost with each codec, as well as the original `WAV` as a control.
- [Trim OPUS audio losslessly](https://hydrogenaud.io/index.php?topic=113498.0) using **ffmpeg** and **LosslessCut**.

## Imaging Utilities

*Tools:*

- [GIMP](https://www.gimp.org/) - Image editor. Extensive support via plugins. [[Docs]](https://docs.gimp.org/2.10/en/) [[Tutorials]](https://www.gimp.org/tutorials/) [[Source Code]](https://gitlab.gnome.org/GNOME/gimp)
- [nomacs](https://github.com/nomacs/nomacs) - Image viewer with integrated adjustable window transparency.
- [GreenShot](https://github.com/greenshot/greenshot) - Screen capture software with autosave.
- [ImageMagick](https://imagemagick.org/) - Image editor with command-line untilities. [[Docs]](https://imagemagick.org/script/command-line-tools.php) [[Source Code]](https://github.com/ImageMagick/ImageMagick)

*References:*

- [DaFont](https://www.dafont.com/) - Huge database of fonts, free and proprietary.
- [How to add fonts to Linux, Windows, and Mac OS X](https://docs.gimp.org/2.10/en/gimp-using-fonts.html). Note, at the bottom it specifies you can place font files into `<GIMP_InstallDirectory>\etc\fonts` subdirectory to make them available to GIMP only.
- [Batch Converting via ImageMagick](https://stackoverflow.com/q/30414346) - With a `FOR` loop.
- [Image Formats Comparison](https://eclipseo.github.io/image-comparison-web/report.html) - Slightly more recent fork of [the original project](http://wyohknott.github.io/image-formats-comparison/report.html) by [wyohknott](https://github.com/WyohKnott).
- [How to set default export format in GIMP?](https://graphicdesign.stackexchange.com/a/124549) - `Edit` &gt; `Preferences` &gt; `Image Import &amp; Export`

## 3D Utilities

- [Blender](https://developer.blender.org/diffusion/) - 3D Editor. [[Docs]](https://docs.blender.org/) [[Tutorials]](https://www.blender.org/support/tutorials/) [[Source Code]](https://www.blender.org/get-involved/developers/)
- [Wings3D](http://www.wings3d.com/) - 3D Editor. Considerably less-demanding than larger editors like Blender/3DSMax. I used Wings for modeling/texturing until I got a system powerful enough to run Blender without it freezing up every five minutes. [[Source Code]](https://github.com/dgud/wings)

## Document Utilities

*Word Processors:*

- [LibreOffice](https://www.libreoffice.org/) - collection of alternatives for MS Office. [[Docs]](https://documentation.libreoffice.org/en/english-documentation/) [[Source Code]](https://www.libreoffice.org/about-us/source-code/)
- [Calibre](https://calibre-ebook.com/) - view and manage ebooks from desktop. [[Docs]](https://manual.calibre-ebook.com/) [[Source Code]](https://github.com/kovidgoyal/calibre)

*Text/Code Editors:*

- [Notepad++](https://notepad-plus-plus.org/) - Cross-platform code editor. Can be made into an [IDE with Batch scripts, NPPExec, and Macros](https://github.com/subvod/examples/blob/master/misc/NPP-IDE.MD). [[Docs]](https://npp-user-manual.org/) [[Source Code]](https://github.com/notepad-plus-plus/notepad-plus-plus)
- [CudaText](https://cudatext.github.io/) - Cross-platform code editor. [[Source Code]](https://github.com/Alexey-T/CudaText)

*Other:*

- [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro) - This is the real deal. The one included in **Nerd-Fonts** is *Sauce Code Pro*.
- [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts) - Iconic font aggregator, collection, & patcher.
- [pandoc](https://github.com/jgm/pandoc) - Universal Markup converter.
- How to [add spell checking in Notepad++.](https://superuser.com/a/1398978) - using [DSpellCheck](https://github.com/Predelnik/DSpellCheck).

*References:*

- [List of Latin Abbreviations](https://en.wikipedia.org/wiki/List_of_Latin_abbreviations) on Wikipedia.
- [Search by Regular Expressions in Notepad++](https://npp-user-manual.org/docs/searching/#regular-expressions).
- [Copying all lines hit by search in Notepad++.](https://stackoverflow.com/a/33098186) Useful for building indexes for Markdown documents.
- You can add fonts for just **LibreOffice** in `<LibreOffice_InstallDirectory>\program\resource\common\fonts`.

## Web Browsing, Security, and Utilities

*Browsers:*

- [Mozilla Firefox](https://www.mozilla.org/) - open-source browser with extensive plugin support. [[Source Code]](https://hg.mozilla.org/mozilla-central/)

*Plugins/Addons/Extensions:*

- [ViolentMonkey](https://violentmonkey.github.io/) - Control how webpages operate using JavaScript "userscripts". Alternative for GreaseMonkey. [[Source Code]](https://github.com/violentmonkey/violentmonkey)
- [PageHacker](https://addons.mozilla.org/en-US/firefox/addon/page-hacker/) - an interactive "Inspect Element".
- [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) - efficient, wide-spectrum content blocker.
- [RemoveAdblockThing](https://github.com/TheRealJoelmatic/RemoveAdblockThing) - Removes the intrusive "Ad blockers are not allowed on YouTube" thing.
- [The Stream Detector](https://addons.mozilla.org/en-US/firefox/addon/hls-stream-detector/) - HLS/DASH/HDS/MSS stream detector. Pinpoints `.m3u8` playlists from streams. [[Source Code]](https://github.com/rowrawer/stream-detector)
- [YouTube Video and Audio Downloader](https://addons.mozilla.org/en-US/firefox/addon/youtube_downloader_webx/) - WebX downloader with UI integrated to YouTube's.
- [pdf.js](https://github.com/mozilla/pdf.js) - mirror of PDF reader included with Firefox installs.

*References:*

- [DuckDuckGo](https://start.duckduckgo.com/) - Regardless of whether or not you're using a VPN, utilize this alternate search engine.
- [MEGA](https://mega.nz/) - file upload and cloud storage.
- [MediaFire](https://mediafire.com/) - file upload and cloud storage.
- [DropBox](https://www.dropbox.com/) - file upload and cloud storage.
- [OneDrive](https://onedrive.live.com/) - file upload and cloud storage.
- [Windscribe](https://windscribe.com/) - VPN with a free plan offering 10GB per month. No, I am not sponsored by these folks.
- How to link [short URLs on Reddit](https://redd.it/28gpzg).

# PROGRAMMING

## C/C++

*Compilers:*

- [TDM-GCC](https://jmeubank.github.io/tdm-gcc/) - GNU Compiler Collection fit for Windows; available in both 32 and 64-bit configurations. I highly recommend using this over **MSVC** when installing offline is a concern because Microsoft has made the process of installing Visual Studio Build Tools the biggest pain in the ass possible. [[Docs]](https://gcc.gnu.org/onlinedocs/)
- [MinGW-w64](https://www.mingw-w64.org/) - Advancement of the original `mingw.org` project, created to support the GCC compiler on Windows systems. [[Docs]](https://gcc.gnu.org/onlinedocs/) [[Builds by niXman]](https://github.com/niXman/mingw-builds-binaries)
- [Visual Studio Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022) - command-line build tools without the Visual Studio IDE or integration with it. [[Docs]](https://docs.microsoft.com/en-us/cpp/build/reference/c-cpp-building-reference)

*IDEs:*

- [Code::Blocks](https://www.codeblocks.org/) - IDE for C, C++, and Fortran. [[Docs]](https://www.codeblocks.org/user-manual/) [[Wiki]](https://wiki.codeblocks.org/index.php/Main_Page) [[Source Code]](https://www.codeblocks.org/downloads/source/) [[Backup of v22.03 Built with TDM-GCC v10.3.0]](https://mega.nz/file/7IER3IhZ#pbD4Bpxh02uvIFW7bunn_kGuBAUKQoKHF9IErtQ83Do)
- [VS Code](https://code.visualstudio.com/) - Jack of all trades (but master of none) code editor. Configurable with JSON scripts. Wide support spectrum via extensions. Can be made into an IDE, but with how involved in other garbage it's become that process is becoming increasingly (albeit needlessly) intricate. [[Docs]](https://code.visualstudio.com/docs) [[Task Info]](https://code.visualstudio.com/docs/editor/tasks) [[Editing 101]](https://code.visualstudio.com/docs/editor/codebasics) [[Source Code]](https://github.com/microsoft/vscode)

*Libraries:*

- [SDL](https://www.libsdl.org/) - Cross-platform development library designed to provide low level access to audio, keyboard, mouse, joystick, and graphics hardware via **OpenGL** and **Direct3D**. [[Docs]](http://wiki.libsdl.org/FrontPage) [[Source Code]](https://github.com/libsdl-org/SDL)
- [OpenGL](https://www.opengl.org/) - Cross-language, cross-platform API for rendering 2D and 3D vector graphics. [[Wiki]](https://www.khronos.org/opengl/wiki)
- [EasyHook](https://github.com/EasyHook/EasyHook) - The reinvention of Windows API hooking.
- [wxWidgets](https://www.wxwidgets.org/) - Cross-platform GUI library. Pairs well with [wxFormBuilder](https://github.com/wxFormBuilder/wxFormBuilder), a GUI creator which can export wxWidgets-compatible code in both C++ and Python. [[Docs]](https://www.wxwidgets.org/docs/) [[Tutorials]](https://www.wxwidgets.org/docs/tutorials/) [[Source Code]](https://github.com/wxWidgets/wxWidgets)
- [Boost C++ Libraries](https://www.boost.org/) - Set of libraries that provides support for tasks and structures such as linear algebra, pseudorandom number generation, multithreading, image processing, regular expressions, and unit testing. [[Docs]](https://www.boost.org/doc/)
- [OpenSSL](https://www.openssl.org/) - Crypto library. [[GitHub Repo]](https://github.com/openssl/openssl) [[SHA-256 Example]](https://stackoverflow.com/a/2458382)
- [SFML](https://www.sfml-dev.org/) - Multi-platform, multi-language library which provides a simple interface to the various components of your PC to ease the development of games and multimedia applications. **[Docs]** available on downloads page. [[Source Code]](https://github.com/SFML/SFML)
- [MD5 Message Digest Algorithm](https://github.com/deepmind/lab/tree/master/third_party/md) - Message Digest algorithm derived from RSA Data Security, Inc. [[Original Source]](https://opensource.apple.com/source/ppp/ppp-37/ppp/pppd/md5.c.auto.html)
- [md5-c](https://github.com/Zunawe/md5-c) - A simple, commented reference implementation of the MD5 hash algorithm.
- [sha256-in-c](https://github.com/EddieEldridge/SHA256-in-C) -  An implementation of the SHA256 Hashing Algorithm in C.

*References:*

- [cplusplus.com](https://www.cplusplus.com/) - [[C++ Tutorial]](https://www.cplusplus.com/doc/tutorial/) [[Articles]](https://www.cplusplus.com/articles/) [[Reference]](https://www.cplusplus.com/reference/)
- [cprogramming.com](https://www.cprogramming.com/) - [[C Tutorial]](https://www.cprogramming.com/tutorial/c-tutorial.html) [[C++ Tutorial]](https://www.cprogramming.com/tutorial/c++-tutorial.html)

*Articles:*

- [Setting up VSCode to use GCC/MinGW](https://code.visualstudio.com/docs/cpp/config-msvc)
- Command-line [linking with GCC](https://stackoverflow.com/q/15441877). See [SeKa's answer](https://stackoverflow.com/a/15445431) for a short explanation of the differences between "compiling" and "linking" with **gcc** and **ld** (respectively).
- [Learn C++ in 10 Hours](https://youtu.be/GQp1zzTwrIg) - A detailed tutorial covering everything you'll need to know for getting started. This is the most comprehensive video tutorial I've found. Somehow, it also has least rehashing of covered topics and superfluous explanations. Most everything is presented in a to-the-point manner.
- [Why system() is evil.](http://www.cplusplus.com/forum/articles/11153/) - A brief overview of why `system()` from `cstdlib` is evil.
- An analysis of [why Dev-C++ was deprecated](https://www.cplusplus.com/forum/articles/36896/).
- A somewhat detailed [comparison between Rust and C++](https://www.reddit.com/r/rust/comments/bya8k6/programming_with_rust_vs_c_c/).
- [Understanding C Program Compilation Process Using GCC](https://youtu.be/PzsXHGVTScI) - An explanation of the process with intermediate files and options needed when performing each step individually.
- [Use regular expressions in Visual Studio](https://docs.microsoft.com/en-us/visualstudio/ide/using-regular-expressions-in-visual-studio?view=vs-2022).

## Python

*Tools:*

- [Python](https://www.python.org/) - the programming language. [[Docs]](https://docs.python.org/3/) [[Source Code]](https://github.com/python/cpython)
- [py2exe](https://www.py2exe.org/) - converts Python scripts into Windows `.exe` format able to run without Python being installed. [[Source Code]](https://github.com/py2exe/py2exe)
- [unpy2exe](https://github.com/matiasb/unpy2exe) - extract `.pyc` files from Windows `.exe` files created with **py2exe**.
- [python-decompile3](https://github.com/rocky/python-decompile3) - bytecode decompiler for Python v3.7-3.8 `.pyc` files. A refactor of [python-uncompyle6](https://github.com/rocky/python-uncompyle6/) to fix long-standing problems.
- [hashID](https://github.com/psypanda/hashID) - identifies different types of hashes.

*Libraries:*

- [wxPython](https://www.wxpython.org/) - cross-platform GUI toolkit. [[Wiki]](https://wiki.wxpython.org/) [[Docs]](https://docs.wxpython.org/) [[Source Code]](https://github.com/wxWidgets/Phoenix/)
- [hashlib](https://docs.python.org/3/library/hashlib.html) - Part of **Python Standard Library**. Generate secure hashes and message digests. [[SHA256 File Example]](https://stackoverflow.com/a/22058673)

*References:*

- [Design of CPython's Compiler](https://devguide.python.org/compiler/). Referenced from [this StackOverflow post](https://stackoverflow.com/a/19917906).
- [dis](https://docs.python.org/3/library/dis.html) - bytecode disassembler module
- [py_compile](https://docs.python.org/3/library/py_compile.html) - bytecode compiler module

*Articles:*

- Piping and executing [external commands in Python](https://stackoverflow.com/a/5486820).
- Discussion on the [Python compilation/interpretation process](https://stackoverflow.com/q/3299648).

## Assembly (ASM)

*Tools:*

- [FASM](https://flatassembler.net/) - flat assembler for 32 and 64-bit code. [[Docs]](https://flatassembler.net/docs.php) [[Examples]](https://flatassembler.net/examples.php) [[Backup of v17.33.0]](https://mega.nz/file/2d9kmTRK#Ycf0C7Wk7y6qLBZYfT9KGKiCVSTBuL3DXyN6sK4NLZ4)
- [Olly](https://www.ollydbg.de/) - x86 assembly-level debugger.

*Articles:*

- How to [call C functions in FASM](https://board.flatassembler.net/topic.php?t=18707).
- The [differences between x86, x86-64, and x64 explained](https://stackoverflow.com/a/53364541).
- How to [determine what language a compiled/packaged program was written in](https://reverseengineering.stackexchange.com/q/3362).
- How to [debug using GDB](https://cs.baylor.edu/~donahoo/tools/gdb/tutorial.html), a quick overview with a basic example.
- [Reversing and cracking first simple program](https://youtu.be/VroEiMOJPm8), a video tutorial using `gdb`.

*References:*

- [Intel x86 Opcodes](http://ref.x86asm.net/coder32.html)
- [Intel x64 Opcodes](http://ref.x86asm.net/coder64.html)

## PowerShell

*Tools:*

- [PowerShell](https://github.com/PowerShell/PowerShell) - scripting language. [[Docs]](https://docs.microsoft.com/en-us/powershell/scripting/developer/windows-powershell-reference)
- [Invoke-CmdScript](http://windowsitpro.com/powershell/take-charge-environment-variables-powershell) - call CMD scripts from PowerShell. [[Backup]](https://github.com/subvod/examples/blob/master/powersh/Invoke-CmdScript.ps1) [[Backup of Backup]](https://pastebin.com/Gq7JRPrr)

*References:*

- [SS64](https://ss64.com/ps/) - PowerShell command reference.

## Batch, VBScript, and JScript

*Tools:*

- [JREPL](https://www.dostips.com/forum/viewtopic.php?f=3&t=6044) - Regex text processor script (Batch and JScript hybrid). [[Backup]](https://mega.nz/file/fUUHBYpK#d6I40sILoz3diVB_5mnyJGn5jb8a2mOmfoVXJONO19Q)

*References:*

- [SS64](https://ss64.com/nt/) - CMD (Batch) command reference.
- [Rob van der Woude's Scripting Pages](https://www.robvanderwoude.com/) - A collection of (administrative) scripting related information.
- [Making a Batch to Executable converter.](#BAT2EXE) - A quick run-down of the general process.

## HTML5

*References:*

- [HTML5](https://developer.mozilla.org/en-US/docs/Web/HTML) - MDN reference.

## CSS

*References:*

- [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) - MDN reference.

## JavaScript

*References:*

- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) - MDN reference.

## Regex

*References:*

- [Regex Cheatsheet](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Cheatsheet) - on MDN.
- [Regex Match all characters between two strings](https://stackoverflow.com/a/6110113)

## Markdown

*Tools:*

- [Turndown](https://github.com/mixmark-io/turndown) - HTML to Markdown converter written in HTML and JavaScript.

*References:*

- [Markdown Previewer](https://mdpreviewer.github.io/)
- [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) - MD syntax quick reference.
- [GitHub Markdown CSS](https://github.com/sindresorhus/github-markdown-css) - The minimal amount of CSS to replicate the GitHub Markdown style. [Demo.](https://sindresorhus.com/github-markdown-css/)

*Articles:*

- [Edit/Preview Markdown in VS Code](https://code.visualstudio.com/docs/languages/markdown) - tutorial/reference.

# GAMING

- [MyAbandonware](https://www.myabandonware.com/) - Retro gaming hub.
- [AutoHotKey](https://www.autohotkey.com/) - Keyboard and mouse macros via scripting. [Source code on GitHub.](https://github.com/AutoHotkey/AutoHotkey)
- [Cookie Clicker](https://idle-js-games.github.io/cookieclicker/) - The classic idle (AFK) game on GitHub.
- [How do Video Game Graphics Work?](https://youtu.be/C8YtdC8mxTU) - A video explanation by **Branch Education**.

## Homeworld Remastered

*Tools:*

- [bigDecrypter](https://github.com/mon/bigDecrypter) - Decrypts HWR BIG files. for use with ModPackager/HW2ICArchive.
- [Mod Tools](https://mega.nz/file/7ddh3TzT#SwbQ1Vekzvfto8x36tfccF1mikbF61csTLONKhlVxHg) - Based on the [Homeworld Universe Mod Tools](https://www.moddb.com/games/homeworld-2/downloads/homeworld-universe-mod-tools) which has pretty much every tool known to the Homeworld modding community, though I've added some others I've found along the way. Including **fda2aifc**, **No-CD Patches**, **skunk's Map Editor**, the **RDN Toolkit** (with update), **CFLuaDC**, **HWCDRP** (decompiled data), all archival versions of **CFHodEd**, and even `.chm` backups of the old **Karos Graveyard** modding resources. Since the removal of the **RelicNews** forums I imagine a lot of what could be done with these has been lost, but the tools are here and if all else fails we have the [Wayback Machine](https://archive.org/web/).
- [CFHodEd](https://github.com/Fallen-Angel/CFHodEd) - Universal `.hod` Editor for both classic and remastered Homeworld games.
- [Hw2 Official v1.1 Patch](https://www.moddb.com/games/homeworld-2/downloads/homeworld-2-v-11-patch-last-and-only-patch) - The only official HW2 game update from Relic. This is also included in the **Mod Tools** listed above.
- [HomeworldSDL](https://github.com/aheadley/homeworld) - source code for HW1's game engine.

*Mods:*

- [Complex Simple](https://www.moddb.com/mods/homeworld-2-complex-simple) - Massive mod based on the Complex mod. [Siliconworm](https://www.moddb.com/members/m-o-m) has made it clear that he will not adapt the mod to HWR because "reasons".
- [Tactical Fleet Simulator](https://www.moddb.com/mods/tactical-fleet-simulator) - Transforms Homeworld2 into a tactics-oriented strategy game.
- [R.E.A.R.M.](https://www.moddb.com/mods/rearm) - **R**earmament **E**xpansion **A**nd **R**edesign **M**od for Hw2 classic. [R.E.A.R.M. V2](https://www.moddb.com/mods/rearm-v2) is adapted to HWR, but it seems [Pouk](https://www.moddb.com/members/pouk) hasn't made significant progress in a very long time.
- [Homeworld 2 Complex](https://www.moddb.com/mods/homeworld-2-complex) - Complex mod, originally developed for Hw2 classic. [Complex Remastered](https://www.moddb.com/mods/homeworld-complex/downloads) is the adapted to HWR.

*References:*

- [HW2 Manual PDF](https://www.moddb.com/games/homeworld-2/downloads/homeworld2-manual-pdf) - A direct PDF copy of the game manual. (Not a scanned copy.)
- [HW2 Function Reference (Online)](https://hwmod.fandom.com/wiki/HW2_Function_Reference) - online function reference.
- [HWRM Karos Graveyard](https://github.com/HWRM/KarosGraveyard/wiki) - old-style Karos Graveyard for HWRM.

## Phantom Forces

[[PHANTOMFORCES.MD]](https://github.com/subvod/examples/blob/master/misc/PHANTOMFORCES.MD) - Notes on the game for Roblox. Random, niche stuff like what weapons have muzzle attachments that use base barrel textures/materials, some color notes on existing vanilla weapon colors/textures (yeah so you can have your **Beowulf ECR** the same color as the **C7A2**), etc.

- [Roblox FPS Unlocker](https://github.com/axstin/rbxfpsunlocker) - Got a decently beefy system that can run over 60 fps? Use it. Roblox announced years ago that they won't be handing out bans for those using only FPS unlockers.

## Red Dead Redemption 2

[[Animal Location Maps]](https://www.nexusmods.com/reddeadredemption2/mods/1929) - Previously known as **rdr2-maps**. Rare animal location maps. Woodpeckers to moose to panthers. Ported everything to **NexusMods**.

[[RDR2.MD]](https://github.com/subvod/examples/blob/master/misc/RDR2.MD) - Copy of the notes file from `rdr2-maps`. Hodgepodge of notes, but not disorganized. Contains things such as getting the Silver Dapple Pinto MFT as Arthur, glitches/bugs (and known fixes for them), document locations (missable and not), etc. Been playing since 2020 and have no-lifed the hell out of this game with over 7k hours dumped in. So much fun, my God...

## Grand Theft Auto

ITEM | DESCRIPTION
:--- | ---
[GTA5.MD](https://github.com/subvod/examples/blob/master/misc/GTA5.MD) | Notes on single player GTA V. Rare vehicles, unique vehicles, NPC-modified vehicles, etc. Been playing since day one and probly have accumulated over 10k hours since 2013.
[Fixing GTA IV with 4 Mods](https://youtu.be/UuXVYUGJ45Y) | Video explanation of what to install and how they work.
[FusionFix](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix) | Aims to fix some issues in GTA IV: Complete Edition.
[Console Visuals: The Complete Edition](https://gtaforums.com/topic/989098-console-visuals-the-complete-edition/) | Compilation of console visual restoration for GTA IV: Complete Edition for PC.
[Various Fixes](https://gtaforums.com/topic/975211-various-fixes/) | Fixes various bugs in GTA IV. Mod is not limited only on fixes, it also includes restoration of some things, console content, various texture improvements, etc. 
[Downgrader](http://downgraders.rockstarvision.com/) | Downgraders for GTA IV.
[dxvk](https://github.com/doitsujin/dxvk) |  Vulkan-based implementation of D3D9, D3D10 and D3D11 for Linux / Wine.

## Minecraft

- [mc-stuff](https://github.com/subvod/mc-stuff) - Notes on solo Minecraft, specifically **Java Edition**.

*Tools:*

- [Prism Launcher](https://github.com/Diegiwg/PrismLauncher-Cracked) - Special fork of **Prism Launcher**.
- [UltimMC](https://github.com/UltimMC/Launcher) - Cracked Minecraft launcher. Not related to the original developers.
- [Forge](https://files.minecraftforge.net/net/minecraftforge/forge/) - Mod platform.

*Mods:*

- [JEI](https://www.curseforge.com/minecraft/mc-mods/jei) - Just enough items.
- [WorldEdit](https://www.curseforge.com/minecraft/mc-mods/worldedit) - In-game map editor.
- [Advanced Finders](https://www.curseforge.com/minecraft/mc-mods/advanced-finders) - Adds several ore finders to make the mining process much more interesting and time-saving.
- [Large Ore Deposits](https://www.curseforge.com/minecraft/mc-mods/large-ore-deposits) - Adds very rare, but super-massive ore deposits to the world.

## Tom Clancy's Ghost Recon Wildlands

[TCGRW.MD](https://github.com/subvod/examples/blob/master/misc/TCGRW.MD) - Referential document containing weapon, vehicle, and NPC data gathered while playing **Tom Clancy's Ghost Recon Wildlands**. I have over 6k hours in this game.

## Fate

[Fate v1.23b (Multi5)](https://archive.org/details/fatespa) - Full version of the Diablo clone.
[Fate v1.21](https://archive.org/details/fate121) - The original Fate version `1.21` plus the official add-ons that were started for download on the official Fate website.
[Source Code](https://archive.org/details/fate_source_code) - The source code to the game FATE and it's sequel/expansion FATE: Undiscovered Realms. These leaked when Humble Bundle accidentally distributed copies of the source code instead of the final build.
[Ultimate Modpack](https://gamebanana.com/mods/321455) - Compilation of many mods created over the years.
[Mods on PCTalk](http://www.pctalk.info/Games/FATE/Pages/1FateMods.php) - Archive of mods.
[Mods on Nexus](https://www.nexusmods.com/fate/mods/) - Newer mods.

## Emulation

*ROM Archives:*

- [NES ROM Pack](https://archive.org/details/CylesNESRomPack)
- [SNES ROM Pack](https://archive.org/details/CylesSNESRomPack)
- [GB ROM Pack](https://archive.org/details/Cyles_Gameboy_roms)
- [GBC ROM Pack](https://archive.org/details/CylesGameBoyColorRomPack)
- [GBA ROM Pack](https://archive.org/details/CylesGameboyAdvancedRomPack)
- [DS ROM Collection](https://archive.org/details/cylums-nintendo-ds-rom-collection)

*Patching Tools:*

- [FlipsCygwin](https://github.com/subvod/FlipsCygwin) - Fork of [[Floating IPS]](https://www.smwcentral.net/?p=section&a=details&id=11474), an alternative to [[Lunar IPS]](https://www.fusoya.eludevisibility.org/lips/). Applies and creates **IPS** and **BPS** patches. Custom build of **Flips v1.31** with checkbox for quickly toggling override of checksum mismatches.
- [DeltaPatcher](https://github.com/marco-calautti/DeltaPatcher) - GUI interface with integrated **xdelta**.
- [WASM xdelta Patcher](https://kotcrab.github.io/xdelta-wasm/) - Online `.xdelta` patcher.

### SNES

*Emulators:*

- [Snes9x](http://www.snes9x.com/) - Portable SNES emulator. [[GitHub]](https://github.com/snes9xgit/snes9x)

*Tools:*

- [Lunar Magic](https://fusoya.eludevisibility.org/lm/program.html) - THE essential program needed to make SMW hacks. Closed source. [[SMWCentral]](https://www.smwcentral.net/?p=section&a=details&id=28429)
- [LMSW](https://www.smwcentral.net/?p=section&a=details&id=20746) - Plugin which allows the internal emulator in **Lunar Magic** to be used. Open source.
- [ROMclean](https://www.smwcentral.net/?p=section&a=details&id=12178) - checks if your ROM is a clean, headered `(U) [!]` ROM. If it's unclean, it tries to clean it. [JavaScript version](https://media.smwcentral.net/onlinetools/jsromclean.htm) for those paranoid about downloading things. Open source.
- [NPP_HexEdit](https://github.com/chcg/NPP_HexEdit) - Notepad++ Hex Editor plugin. Open source.

*References:*

- [SMWCentral](https://www.smwcentral.net/) - Everything SMW hacking. [[Tools]](https://www.smwcentral.net/?p=section&s=tools) [[Docs]](https://www.smwcentral.net/?p=section&s=documents) [[ROM Hacks]](https://www.smwcentral.net/?p=section&s=smwhacks)
- [SMW Hacking Guide](https://www.smwcentral.net/?p=beginners#how-to-make-hacks) - Beginner's guide Hosted on **SMWCentral**.
- [FuSoYa's Niche](https://fusoya.eludevisibility.org/) - SMW hacking tools; though I think [FuSoYa](https://www.smwcentral.net/?p=profile&id=9435) has moved most everything to SMWCentral.

### GameBoy

*Emulators:*

- [BGB](http://bgb.bircd.org/) - GBA/GBC/GB emulator. **Widely preferred by ROM hackers.** Closed source.
- [mGBA](https://mgba.io/) - GBA/GBC/GB emulator with full link support. [[GitHub]](https://github.com/mgba-emu/mgba)
- [TGB Dual](https://github.com/libertyernie/tgbdual_L) - GBC emulator with full link support.
- [VBA-M](https://vba-m.com/) - Merge project of all **VisualBoyAdvance** branches. [[GitHub]](https://github.com/visualboyadvance-m/visualboyadvance-m/) [[Nightly Builds]](https://nightly.vba-m.com/)

*Tools:*

**NOTE:** If you're gonna make a Pokemon ROM hack, use a disassembly/decompilation. Binary hacking may be old school and cool, but results in the most problems **BY FAR**. Especially further down the line in large projects.

- [GSC Clock Password Generator](https://bl4cksh4rk.github.io/Pokemon-GSC-Clock-Password-Generator/) - Generates passwords for clock reset.
- [Eon Timer](https://github.com/DasAmpharos/EonTimer) - RNG timer.
- [PKHeX](https://projectpokemon.org/pkhex/) - Universal save file editor. [[GitHub]](https://github.com/kwsch/PKHeX)
- [HexManiacAdvance](https://github.com/haven1433/HexManiacAdvance) - A tool for editing tables, text, scripts, images, and other data in Pokemon GBA games.
- [PokeFinder](https://github.com/Admiral-Fish/PokeFinder) -  Cross-platform Pokemon RNG tool.

*Games:*

- [pokeemerald](https://github.com/pret/pokeemerald) - decompilation of **Pokemon Emerald**. (Idk why, but I've never been able to get this to build. Tried on Cygwin, MSYS2, and WSL. Run into different issues with each. Guess I'm a dumbass.)
- [pokecrystal](https://github.com/pret/pokecrystal) - disassembly of **Pokemon Crystal**.
- [pokeyellow](https://github.com/pret/pokeyellow) - disassembly of **Pokemon Yellow**.

*ROM Hacks:*

- [Yellow Advanced 2019](https://www.pokecommunity.com/showthread.php?t=420552) - Fixes most issues present in OG Yellow.
- [Patched Crystal](https://github.com/UberMedic7/patched-crystal) - Fixes most issues in OG Crystal.
- [Emerald Final](https://www.pokecommunity.com/showthread.php?t=410480) - Lots of improvements on OG Emerald.
- [Polished Crystal](https://github.com/Rangi42/polishedcrystal) - Overhaul of Crystal. Many story deviations and such, but nothing jarring.
- [R.O.W.E.](https://www.pokecommunity.com/showthread.php?t=442592) - Massive backport of modern games' features into Emerald.
- [Flawless Platinum](https://www.pokecommunity.com/showthread.php?t=307373) - Overhaul of Platinum.

*References:*

- [GameFAQs](https://gamefaqs.gamespot.com/) - Walkthroughs, reference docs, cheat codes, glitches, etc.
- [Bulbapedia](https://bulbapedia.bulbagarden.net/) - Walkthroughs, wiki, reference docs, glitches, etc.
- [Serebii](https://www.serebii.net/) - Reference docs.
- [IIMarckus's Site](https://iimarckus.org/) - the brains behind the PRET disassemblies.

## Minetest

- [Minetest](https://github.com/minetest/minetest) - an open source voxel game engine. Basically Minecraft that runs native rather than through JVM/JRE. [[Wiki]](https://wiki.minetest.net/)

## Forza

*Articles:*

- [Creating Accurate Logos](https://forums.forzamotorsport.net/turn10_postst133507_-Guide--Creating-Accurate-Logos.aspx) - tutorial by **PJTierney**. I recommend using **nomacs**; link in [Imaging Utilities](#imaging-utilities).

# QUOTES

## BAT2EXE

> tl;dr No. For your purpose, that being you just want to convert the script to an executable, you'll be moving Heaven and Earth to avoid present-day AV detection. An executable extracting a system script to some directory then (attempting to) execute it looks suspicious as shit regardless of the circumstance(s). If, by chance, that piques your interest, I've jotted down some stuff I've used/referenced over the years. Further down I've explained how to go about making your own "converter".
> <br><br>If you're on sort of the same path I was back when I was big into Batch scripting, as in running across something I wanted to make an executable for whatever reason, you may want to look into learning C and/or C++. They're both catch-all languages. If your system allows it, either of them can do it. Though, from my perspective C++ is superior for my needs/wants. C is just the predecessor of C++, but it works much better for applications that focus on size/speed (such as both the stub and BAT 2 EXE "converter" or "compiler" in this case).
> <br><br>Those references I mentioned:
> <br>https://github.com/subvod/examples#cc
> <br><br>The usual process of making an EXE "converter" yourself is as follows:
> <br><br>1. Create a very small stub that will hold the script. Assembly is the best for stubs because you can define your own data section for very large scripts. Depending on the character count of the script itself, you might be able to split it into individual strings using the appropriate termination characters as needed. (Those being `\n`, `\t`, etc.) I'd say 64-character strings, but you can use more if needed. 64x64 allows 4,096 character scripts. You can use longer strings, but I'm unfamiliar with how long strings fare against numerous smaller strings.
> <br><br>2. Force the stub to extract the script to a new file, usually in `%USERPROFILE%` (sometimes the Documents folder works fine) or `%TEMP%`. If it is stored in strings, concatenate all the strings utilized for storing the script, then write it to a new time, for example `temp.bat` in some accessible directory.
> <br>https://stackoverflow.com/q/308695
> <br>https://stackoverflow.com/q/15319859 (C++)
> <br><br>Alternatively, and I'd argue the less-demanding way, is to simply append each string to the file:
> <br>https://www.cprogramming.com/tutorial/cfileio.html
> <br>https://stackoverflow.com/q/19429138
> <br>https://www.cplusplus.com/doc/tutorial/files/ (C++)
> <br>https://stackoverflow.com/q/2393345 (C++)
> <br><br>3. For execution, you can run the script directly from the stub or run it within the stub's own CLI window.
> <br><br>4. As far as deleting the script after execution, Windows API's `DeleteFile()` can be used:
> <br>https://stackoverflow.com/a/33916912
> <br>https://docs.microsoft.com/en-us/windows/win32/api/winbase/nf-winbase-deletefile
> <br><br>And, since you're scripting Batch I'm assuming you're primarily on Windows. As far as making the stub goes, it can be done in any language, but preferably one that compiles to native. My top picks are C, C++, and ASM. This would be a huge step if, again, you're in the same position I was many years ago. But... if you're focusing on "converting" a Batch script to executable, I say make the stub with FASM:
> <br>https://flatassembler.net/
> <br>https://docs.microsoft.com/en-us/cpp/c-language/maximum-string-length?view=msvc-170
> <br>https://board.flatassembler.net/topic.php?t=18707
> <br>https://board.flatassembler.net/topic.php?t=5900
> <br>https://board.flatassembler.net/topic.php?p=80851
> <br><br>As for AV avoidance, obfuscation and encryption are the best methods. However, as I mentioned earlier, a small stub writing and executing file(s) parallels a tuna boat passing by. Basically, you'll end up making a crypter, which is a whole other animal in itself:
> <br>https://hackforums.net/showthread.php?tid=6154191&pid=60762821#pid60762821
