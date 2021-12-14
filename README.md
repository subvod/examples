# Introduction

*Some background info.*

I have never made programming a profession for myself. I've been a hobbyist programmer since 2008. I began as a skiddy, making fake virus scripts with Batch and VBScript. I began making more complex scripts in 2011, which I like to credit the inspiration to the forums/boards I joined around that time. (Specifics shall be left aside but if you know, you know.) I tried to begin learning C several times from 2011 to 2014, but all attempts to no avail. In 2016, I tried once again, and it just clicked like magic. Ever since, I've been using primarily C and C++ for most of my projects. I learned the basics of Python in 2018, and have been using it ever since. Not particularly regularly, but for any compact automation script, Python works wonders when compared to a system language like Batch. As for everything I've dabbled in, everything from 65816 ASM to C#. Like, most everything: Object Pascal, Java, Z80 ASM, Visual Basic .NET, JavaScript, HTML5, CSS, etc. I'm not much of a web programmer, but I've made use of the formatting tags when making guides. (I actually learned of Markdown after starting this GitHub, and ended up learning it.)

All that aside, this is a jumbled assortment of random scripts and snippets for referential purposes. In a section below, I will link all libraries and tools I've used both inside and outside programming. Hopefully these notes will give others a head start, or at the very least some sort of insight as to what they want to do.

Directly below are my small projects I've managed to muster up in the past two years:

[rdr2-maps](https://github.com/subvod/rdr2-maps) - High-res maps marked with locations for rare/uncommon animals and places you can sit, etc in **Red Dead Redemption 2**.

[RDR2.MD](https://github.com/subvod/examples/blob/master/RDR2.MD). - Hodgepodge of notes, but not disorganized. Contains things such as getting the Silver Dapple Pinto MFT as Arthur, glitches/bugs (and known fixes for them), document locations (missable and not), etc.

[TCGRW.MD](https://github.com/subvod/examples/blob/master/TCGRW.MD) - Referential document containing weapon, vehicle, and NPC data gathered while playing **Tom Clancy's Ghost Recon Wildlands**.

[ASUS ROG Zephyrus GA401QM (2021 G14) Review](https://github.com/subvod/examples/blob/master/2021-ASUS-ROG-Zephyrus-G14-GA401QM-Review.md) - A not-so-in-depth review of the **2021 ASUS G14** because I'm a fucking normie piece of shit.

And, in case you haven't noticed already, yes there will be some marginally crude language and possible references to comic mischief here and there. If you've even the slightest amount of mental fortitude, you'll do just fine. Otherwise, if you can't handle either of those or are so in favor of having your freedoms taken away just so mine do as well (while those who take those freedoms retain their own): bitch boys need not read further but instead [watch this](https://youtu.be/j22bnzmjcQM).

# MISCELLANEOUS

*These are tools and references I've used in the past, distant and recent. I do not link to things I've not used/tried myself for credibility reasons.*

## System Utilities

*Tools:*

- [BleachBit](https://github.com/bleachbit/bleachbit) - Alternative to CCleaner because Avast fucked it up.
- [7-Zip](https://www.7-zip.org/) - File compression and archiving. I was a WinRAR fanboy for over a decade. Why? No clue. [[Source Code]](https://sourceforge.net/projects/sevenzip/) ; LZMA2 for binary/images, PPMd for plaintext.
- [Calibre](https://calibre-ebook.com/) - view and manage ebooks from desktop. [[Docs]](https://manual.calibre-ebook.com/) [[Source Code]](https://github.com/kovidgoyal/calibre)
- [CheatEngine](https://www.cheatengine.org/downloads.php) - memory editor and process hook module; RAR archive isn't bundled with "optional" bloatware/adware. [[Backup]](https://www.mediafire.com/file/vc97e7249287jdd) [[Source Code]](https://github.com/cheat-engine/cheat-engine)
- [IconsExtract](https://www.nirsoft.net/utils/iconsext.html) - extract icon resources from WinPE/DLL
- [ResourceHacker](http://www.angusj.com/resourcehacker/) - extract, edit, and repack WinPE/DLL resources
- [Olly](https://www.ollydbg.de/) - x86 assembly-level debugger.
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) - universal CLI.
- [MediaFire](https://mediafire.com/) - file upload and cloud storage.
- [windscribe](https://windscribe.com/) - VPN with a free plan offering 10GB per month. No, I am not sponsored by these folks.

*Articles:*

- [DO NOT DEFRAGMENT YOUR SSD](https://superuser.com/questions/1594/why-cant-you-defragment-solid-state-drives) - Defragmenting does nothing but spike write cycles, lowering SSD lifespan because of how they operate. This is not the case for HDDs with physical disks. Defragmenting is beneficial for HDDs, not SSDs.

## Media Related

### Audio/Video

*Tools:*

- [youtube-dl](https://github.com/ytdl-org/youtube-dl) - Stream/download various media in various formats from various sources.
- [FFMpeg](https://github.com/FFmpeg/FFmpeg) - Audio/video conversion. [[Docs]](https://ffmpeg.org/documentation.html)
- [OPUS Codec](https://opus-codec.org/downloads/) - Modern audio compression for the internet. [[Docs]](https://opus-codec.org/docs/) [[Source Code]](https://gitlab.xiph.org/xiph/opus-tools)
- [VLC](https://www.videolan.org/) - Media player. [[Docs]](https://wiki.videolan.org/documentation:documentation/) [[Source Code]](https://github.com/videolan/vlc)
- [Audacity](https://www.audacityteam.org/) - Audio editor. [[Docs]](https://manual.audacityteam.org/) [[Source Code]](https://github.com/audacity/audacity)

*Articles:*

- RIAA's [failed attempt to shut down youtube-dl](https://github.blog/2020-11-16-standing-up-for-developers-youtube-dl-is-back/). :)
- Automate the [downloading and conversion/extraction of audio/video](https://github.com/subvod/examples/blob/master/youtube-dl.MD) using **youtube-dl** and **ffmpeg**.

### Image

*Tools:*

- [GIMP](https://www.gimp.org/) - Image editor. Extensive support via plugins. [[Docs]](https://docs.gimp.org/2.10/en/) [[Tutorials]](https://www.gimp.org/tutorials/) [[Source Code]](https://gitlab.gnome.org/GNOME/gimp)
- [nomacs](https://github.com/nomacs/nomacs) - Image viewer with integrated adjustable window transparency.
- [GreenShot](https://github.com/greenshot/greenshot) - Screen capture software with autosave.
- [ImageMagick](https://imagemagick.org/) - Image editor with command-line untilities. [[Docs]](https://imagemagick.org/script/command-line-tools.php) [[Source Code]](https://github.com/ImageMagick/ImageMagick)
- [DaFont](https://www.dafont.com/) - Huge database of fonts.

*Articles:*

- [Batch Converting via ImageMagick](https://stackoverflow.com/q/30414346) - With a `FOR` loop.

### 3D

- [Blender](https://developer.blender.org/diffusion/) - 3D Editor. [[Docs]](https://docs.blender.org/) [[Tutorials]](https://www.blender.org/support/tutorials/) [[Source Code]](https://www.blender.org/get-involved/developers/)
- [Wings3D](http://www.wings3d.com/) - 3D Editor. Considerably less-demanding than larger editors like Blender/3DSMax. I used Wings for modeling/texturing until I got a system powerful enough to run Blender without it freezing up every five minutes. [[Source Code]](https://github.com/dgud/wings)

### Documentation

*Word Processors:*

- [LibreOffice](https://www.libreoffice.org/) - collection of alternatives for MS Office. [[Docs]](https://documentation.libreoffice.org/en/english-documentation/) [[Source Code]](https://www.libreoffice.org/about-us/source-code/)

*Text/Code Editors:*

- [CudaText](https://cudatext.github.io/) - Cross-platform code editor. [[Source Code]](https://github.com/Alexey-T/CudaText)
- [Notepad++](https://notepad-plus-plus.org/) - Cross-platform code editor; can be made into an [IDE with Batch scripts, NPPExec, and Macros](https://github.com/subvod/examples/blob/master/NPP-IDE.MD). [[Docs]](https://npp-user-manual.org/) [[Source Code]](https://github.com/notepad-plus-plus/notepad-plus-plus)

### Web Browsers

*Browsers:*

- [Mozilla Firefox](https://www.mozilla.org/) - open-source browser with extensive plugin support. [[Source Code]](https://hg.mozilla.org/mozilla-central/)

*Plugins:*

- [ViolentMonkey](https://violentmonkey.github.io/) - Control how webpages operate using JavaScript "userscripts". Alternative for GreaseMonkey. [[Source Code]](https://github.com/violentmonkey/violentmonkey)
- [PageHacker](https://addons.mozilla.org/en-US/firefox/addon/page-hacker/) - an interactive "Inspect Element".
- [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) - efficient, wide-spectrum content blocker.
- [The Stream Detector](https://addons.mozilla.org/en-US/firefox/addon/hls-stream-detector/) - HLS/DASH/HDS/MSS stream detector. [[Source Code]](https://github.com/rowrawer/stream-detector)
- [YouTube Video and Audio Downloader](https://addons.mozilla.org/en-US/firefox/addon/youtube_downloader_webx/) - WebX downloader with UI integrated to YouTube's.
- [pdf.js](https://github.com/mozilla/pdf.js) - mirror of PDF reader included with Firefox installs.

*References:*

- How to link [short URLs on Reddit](https://redd.it/28gpzg).

## Desktop Programming

### C/C++

*Compilers:*

- [TDM-GCC](https://jmeubank.github.io/tdm-gcc/) - GNU Compiler Collection fit for Windows; available in both 32 and 64-bit configurations. Can be configured for [use with VSCode](https://code.visualstudio.com/docs/cpp/config-mingw). Documentation parallels the [[Docs]](https://gcc.gnu.org/onlinedocs/) of **GCC** itself.
- [Visual Studio Build Tools 2019](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2019) - command-line build tools without the Visual Studio IDE or integration with it. Can be configured for [use with VSCode](https://code.visualstudio.com/docs/cpp/config-msvc). [[Docs]](https://docs.microsoft.com/en-us/cpp/build/reference/c-cpp-building-reference)

*IDEs:*

- [VS Code](https://code.visualstudio.com/) - Code editor, but configurable with JSON scripts. Wide support spectrum via extensions. Can easily be made into an IDE. [[Docs]](https://code.visualstudio.com/docs) [[Task Info]](https://code.visualstudio.com/docs/editor/tasks) [[Editing 101]](https://code.visualstudio.com/docs/editor/codebasics) [[Source Code]](https://github.com/microsoft/vscode)
- [Code::Blocks](https://www.codeblocks.org/) - IDE for C, C++, and Fortran. [[Docs]](https://www.codeblocks.org/user-manual/) [[Wiki]](https://wiki.codeblocks.org/index.php/Main_Page) [[Source Code]](https://www.codeblocks.org/downloads/source/)

*Libraries:*

- [SDL](https://www.libsdl.org/) - Simple DirectMedia Layer. [[Docs]](http://wiki.libsdl.org/FrontPage) [[Source Code]](https://github.com/libsdl-org/SDL)
- [OpenGL](https://www.opengl.org/) - 3D graphics lib. [[Wiki]](https://www.khronos.org/opengl/wiki)
- [EasyHook](https://github.com/EasyHook/EasyHook) - WinAPI hook base.
- [wxWidgets](https://www.wxwidgets.org/) - cross-platform GUI library. Pairs well with [wxFormBuilder](https://github.com/wxFormBuilder/wxFormBuilder), a GUI creator which can export wxWidgets-compatible code in both C++ and Python. [[Docs]](https://www.wxwidgets.org/docs/) [[Tutorials]](https://www.wxwidgets.org/docs/tutorials/) [[Source Code]](https://github.com/wxWidgets/wxWidgets)
- [Boost C++ Libraries](https://www.boost.org/) - a ton of functions for a wide variety of uses. [[Docs]](https://www.boost.org/doc/)
- [SFML](https://www.sfml-dev.org/) - Simple and Fast Multimedia Library. **[Docs]** available on downloads page. [[Source Code]](https://github.com/SFML/SFML)
- [MD5 Message Digest Algorithm](https://github.com/deepmind/lab/tree/master/third_party/md) - derived from RSA Data Security, Inc. [[Original Source]](https://opensource.apple.com/source/ppp/ppp-37/ppp/pppd/md5.c.auto.html)

*References:*

- [cplusplus.com](https://www.cplusplus.com/) - [[C++ Tutorial]](https://www.cplusplus.com/doc/tutorial/) [[Articles]](https://www.cplusplus.com/articles/) [[Reference]](https://www.cplusplus.com/reference/)
- [cprogramming.com](https://www.cprogramming.com/) - [[C Tutorial]](https://www.cprogramming.com/tutorial/c-tutorial.html) [[C++ Tutorial]](https://www.cprogramming.com/tutorial/c++-tutorial.html)

*Articles:*

- Command-line [linking with GCC](https://stackoverflow.com/q/15441877). See [SeKa](https://stackoverflow.com/users/2159358)'s answer for a short explanation of the differences between "compiling" and "linking" with **gcc** and **ld** (respectively).
- [Learn C++ in 10 Hours](https://youtu.be/GQp1zzTwrIg) - A detailed tutorial covering everything you'll need to know for getting started. This is the most comprehensive video tutorial I've found. Somehow, it also has least rehashing of covered topics and superfluous explanations. Most everything is presented in a to-the-point manner.
- An analysis of [why Dev-C++ was deprecated](https://www.cplusplus.com/forum/articles/36896/).
- A somewhat detailed [comparison between Rust and C++](https://www.reddit.com/r/rust/comments/bya8k6/programming_with_rust_vs_c_c/).
- [Understanding C Program Compilation Process Using GCC](https://youtu.be/PzsXHGVTScI) - An explanation of the process with intermediate files and options needed when performing each step individually.

### Python

*Tools:*

- [Python](https://www.python.org/) - the programming language. [[Docs]](https://docs.python.org/3/) [[Source Code]](https://github.com/python/cpython)
- [py2exe](https://www.py2exe.org/) - converts Python scripts into Windows `.exe` format able to run without Python being installed. [[Source Code]](https://github.com/py2exe/py2exe)
- [unpy2exe](https://github.com/matiasb/unpy2exe) - extract `.pyc` files from Windows `.exe` files created with **py2exe**.
- [python-uncompyle6](https://github.com/rocky/python-uncompyle6/) - cross-version Python bytecode decompiler.
- [python-decompile3](https://github.com/rocky/python-decompile3) - reverse engineer compiled Python code (v3.7-3.8) `.pyc` files.

*Libraries:*

- [wxPython](https://www.wxpython.org/) - cross-platform GUI toolkit. [[Wiki]](https://wiki.wxpython.org/) [[Docs]](https://docs.wxpython.org/) [[Source Code]](https://github.com/wxWidgets/Phoenix/)

*Articles:*

- Piping and executing [external commands in Python](https://stackoverflow.com/questions/5486725/how-to-execute-a-command-prompt-command-from-python).

### Assembly (ASM)

*Tools:*

- [FASM](https://flatassembler.net/) - flat assembler for 32 and 64-bit code. [[Docs]](https://flatassembler.net/docs.php) [[Examples]](https://flatassembler.net/examples.php)

*Articles:*

- How to [call C functions in FASM](https://board.flatassembler.net/topic.php?t=18707).

### PowerShell

*Tools:*

- [PowerShell](https://github.com/PowerShell/PowerShell) - scripting language. [[Docs]](https://docs.microsoft.com/en-us/powershell/scripting/developer/windows-powershell-reference)
- [Invoke-CmdScript](http://windowsitpro.com/powershell/take-charge-environment-variables-powershell) - call CMD scripts from PowerShell. [[Backup]](https://github.com/subvod/examples/blob/master/Invoke-CmdScript.ps1)

*References:*

- [SS64](https://ss64.com/ps/) - PowerShell command reference.

### Batch/JScript/VBScript (Windows System Scripting)

*Tools:*

- [JREPL](https://www.dostips.com/forum/viewtopic.php?f=3&t=6044) - Regex text processor. Batch-JScript hybrid. [[Backup]](https://www.mediafire.com/file/l8u0w1dczi1ns69)

*References:*

- [SS64](https://ss64.com/nt/) - CMD (Batch) command reference.
- [Rob van der Woude's Scripting Pages](https://www.robvanderwoude.com/) - A collection of (administrative) scripting related information.
- [Making a Batch to Executable converter.](#BAT2EXE) - A quick run-down of the general process.

## Web Programming

### HTML5

*References:*

- [HTML5](https://developer.mozilla.org/en-US/docs/Web/HTML) - MDN reference.

### CSS

*References:*

- [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) - MDN reference.

### JavaScript

*References:*

- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) - MDN reference.

### Regex (Regular Expressions)

*References:*

- [Regex Cheatsheet](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Cheatsheet) - on MDN.

### Markdown

*Tools/Languages:*

- [Turndown](https://github.com/mixmark-io/turndown) - HTML to Markdown converter written in HTML and JavaScript.

*References:*

- [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) - MD syntax quick reference.

*Articles:*

- [Edit/Preview Markdown in VS Code](https://code.visualstudio.com/docs/languages/markdown) - tutorial/reference.
- [Markdown via VS Code](https://code.visualstudio.com/docs/languages/markdown) - how to edit and preview Markdown in VS Code.

## Game-Specific Stuff

### Grand Theft Auto V

*Tools:*

- [ScriptHookV](http://www.dev-c.com/gtav/) - ScriptHookV base. SDK for development of C++ plugins available on the same page.
- [CodeWalker](https://github.com/dexyfex/CodeWalker) - Interactive map editor. Discord server serves latest downloads (invite link on [GTA5-Mods](https://www.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map)). [[Backup v30-dev36]](https://www.mediafire.com/file/382gfs26a40rivs/)

*Mods:*

- [MenyooSP](https://github.com/MAFINS/MenyooSP) - SP trainer.
- [Enhanced Native Trainer](https://www.gta5-mods.com/scripts/enhanced-native-trainer-zemanez-and-others) - SP trainer with integrated fuel mod, among many other external mods/features.
- [Enable All Interiors](https://www.gta5-mods.com/scripts/enable-all-interiors-wip) - merge project of existing interior mods.
- [Vigilante Missions](https://www.gta5-mods.com/scripts/gta-4-vigilante-missions) - GTA IV style "Cleaned the Mean Streets" missions. [[Source Code]](https://github.com/I-E-A-I-A-I-O/VigilanteMissions)
- [LemonUI](https://www.gta5-mods.com/tools/lemonui) - UI framework for GTA V. Intended to replace NativeUI. [[Source Code]](https://github.com/justalemon/LemonUI)
- [Rainbomizer](https://gtaforums.com/topic/974412-v-rainbomizer/) - Configurable randomizer collection. [[Source Code]](https://github.com/Parik27/V.Rainbomizer)

*Articles:*

- [Enable/disable backfire](https://forums.gta5-mods.com/topic/24300/exhaust-backfire-disable/2) via mods using OpenIV.

### Red Dead Redemption 2

*Tools/Mods:*

- [ScriptHookRDR2](https://www.dev-c.com/rdr2/scripthookrdr2/) - ScriptHookRDR2 base. SDK for development of C++ plugins available on the same page.
- [RampageTrainer](https://www.nexusmods.com/reddeadredemption2/mods/233) - SP trainer.

*References:*

- [RDR2Mods](https://www.rdr2mods.com/) - focused around RDR2 modding. Wiki with databases, tutorials, and references (including hash IDs). [[Wiki]](https://www.rdr2mods.com/wiki/)

### Homeworld 1, Cataclysm, 2, and/or Remastered

*Tools:*

- [bigDecrypter](https://github.com/mon/bigDecrypter) - Decrypts HWR BIG files. for use with ModPackager/HW2ICArchive.
- [Homeworld Universe Mod Tools](https://www.moddb.com/games/homeworld-2/downloads/homeworld-universe-mod-tools) - Almost every tool used for HW1 (classic), Cataclysm, and HW2 (classic).
- [CFHodEd](https://github.com/Fallen-Angel/CFHodEd) - Universal HOD Editor for both classic and remastered Homeworld games.
- [Hw2 Official v1.1 Patch](https://www.moddb.com/games/homeworld-2/downloads/homeworld-2-v-11-patch-last-and-only-patch) - The only official HW2 game update from Relic.
- [fda2aifc](https://www.mediafire.com/file/nbc2qrz93nvt2n3) - converts `.fda` to `.aifc` audio formats. Old backup from Relic.
- [Common Controls](https://www.mediafire.com/file/y8c6o4omi9ah06r) - External libraries req'd by some old HW1, Cata, and HW2 tools.
- [CFLuaDC](https://www.mediafire.com/file/gljt3lb0ik97l02) - 4E354B's Lua decompiler.
- [HW2CDRP](https://www.mediafire.com/file/csulrdwbosymob7) - **HW2 C**lean **D**ata **R**esource **P**roject. (Decompiled data archive.)
- [No-CD Patches](https://www.mediafire.com/file/sm4wb37gj4pzl9d) - Backup of English and German game engine v1.1 patches. (Hw2 Classic only.)
- [HomeworldSDL](https://github.com/aheadley/homeworld) - source code for HW1's game engine.

*Mods:*

- [Complex Simple (Simplex)](https://www.moddb.com/mods/homeworld-2-complex-simple) - Massive mod based on the Complex mod. [Siliconworm](https://www.moddb.com/members/m-o-m) has assured he will not adapt the mod to HWR because reasons.
- [R.E.A.R.M.](https://www.moddb.com/mods/rearm) - **R**earmament **E**xpansion **A**nd **R**edesign **M**od for Hw2 classic. [R.E.A.R.M. V2](https://www.moddb.com/mods/rearm-v2) is adapted to HWR, but it seems [Pouk](https://www.moddb.com/members/pouk) hasn't made significant progress in a very long time.
- [Homeworld 2 Complex](https://www.moddb.com/mods/homeworld-2-complex) - Complex mod, originally developed for Hw2 classic. [Complex Remastered](https://www.moddb.com/mods/homeworld-complex/downloads) is the adapted to HWR.

*References:*

- [Hw2 Manual PDF](https://www.moddb.com/games/homeworld-2/downloads/homeworld2-manual-pdf) - A direct PDF copy of the game manual. (Not a scanned copy.)
- [HW2 Function Reference (Online)](https://hwmod.fandom.com/wiki/HW2_Function_Reference) - online function reference.
- [HWRM Karos Graveyard](https://github.com/HWRM/KarosGraveyard/wiki) - old-style Karos Graveyard for HWRM.

### SMW, SMW2

*Tools:*

- [ASAR](https://www.smwcentral.net/?p=section&a=details&id=25953) - 65816 assembler; successor to xkas. [[Source Code]](https://github.com/RPGHacker/asar)
- [Snes9x](https://github.com/snes9xgit/snes9x) - portable SNES emulator.
- [Lunar Magic](https://fusoya.eludevisibility.org/lm/program.html) - the essential program needed to make SMW hacks. [[SMWCentral]](https://www.smwcentral.net/?p=section&a=details&id=28429)

*References:*

- [SMWCentral](https://www.smwcentral.net/) - Everything SMW hacking. [[Tools]](https://www.smwcentral.net/?p=section&s=tools) [[Docs]](https://www.smwcentral.net/?p=section&s=documents) [[ROM Hacks]](https://www.smwcentral.net/?p=section&s=smwhacks)
- [FuSoYa's Niche](https://fusoya.eludevisibility.org/) - SMW hacking tools; though I think [FuSoYa](https://www.smwcentral.net/?p=profile&id=9435) has moved most everything to SMWCentral.

### Pokemon Gen 1 and 2 (RBYGSC)

*Tools:*

- [VisualBoyAdvance-M](https://github.com/visualboyadvance-m/visualboyadvance-m) - merge project of all VBA branches; GB/GBC/GBA emulator.
- [TGB Dual L](https://github.com/libertyernie/tgbdual_L) - Updated builds of TGB Dual, a GBC emulator which implements link cable emulation.
- [RGBDS](https://github.com/gbdev/rgbds) - **R**ednex **G**ame**B**oy **D**evelopment **S**ystem.
- [pokeemerald](https://github.com/pret/pokeemerald) - decompilation of Pokemon Emerald.
- [pokecrystal](https://github.com/pret/pokecrystal) - disassembly of Pokemon Crystal.
- [pokeyellow](https://github.com/pret/pokeyellow) - disassembly of Pokemon Yellow.

*References:*

- [Pkmn Crystal Guide](https://gamefaqs.gamespot.com/gbc/375087-pokemon-crystal-version/faqs/13668)
- [Pkmn Crystal GS Codes](https://gamefaqs.gamespot.com/gbc/375087-pokemon-crystal-version/faqs/13410)
- [Pkmn Yellow Guide](https://gamefaqs.gamespot.com/gameboy/198314-pokemon-yellow-version-special-pikachu-edition/faqs/64175)
- [Pkmn Yellow GS Codes](https://gamefaqs.gamespot.com/gameboy/198314-pokemon-yellow-version-special-pikachu-edition/faqs/6618)
- [IIMarckus's Site](https://iimarckus.org/) - the brains behind the PRET disassemblies.

### Minetest

- [Minetest](https://github.com/minetest/minetest) - an open source voxel game engine. Basically Minecraft that runs native rather than through JVM/JRE. [[Wiki]](https://wiki.minetest.net/)

### Forza

*Articles:*

- [Creating Accurate Logos](https://forums.forzamotorsport.net/turn10_postst133507_-Guide--Creating-Accurate-Logos.aspx) - tutorial by **PJTierney**. I recommend using **nomacs**; link in [Image Tools](#image).

# Quotes

### BAT2EXE

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
