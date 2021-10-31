# Introduction

Here's a few clips I enjoy listening to. They'll give you a feel for how I operate:

- https://www.youtube.com/watch?v=OHTWeIsP_ck
- https://www.youtube.com/watch?v=TI6dG99HHX4
- https://www.youtube.com/watch?v=aZ2lXrtjP6o
- https://www.youtube.com/watch?v=pJmTHF4XYJY
- https://www.youtube.com/watch?v=MvzwmoZaNHQ

Anyways, this is a jumbled assortment of random scripts and snippets for referential purposes. I'm not some big time developer. I've spent (probably more than) my fair share of time tinkering around with over 20 languages since 2008. I've dabbled in a little bit of everything: Z80, Java, 65816, Object Pascal, D, C#, Batch, Rust, etc. But after all the experimenting I've done I came to primarily focus on developing with C++ and Python. I came to that conclusion sometime in 2013. The few reference files I have for C/C++ are super basic functions I found online for different projects of my own, so I feel no need to upload them here. I no longer have access to any of my larger projects thanks to an unfortunate accident involving me typing up some code during the worst thunderstorm in the area since 28 years ago (allegedly). Fried my old laptop. However, in a section below, I will link all libraries and tools I've used both inside and outside programming. Hopefully these will give others a head start, or at the very least some sort of insight as to what they want to do.

Directly below are my small projects I've managed to muster up in the past two years. Not much programming-wise, as you'll see, but I learned Markdown in the process so there's some faint glimmer of silver lining. :)

[rdr2-maps](https://github.com/subvod/rdr2-maps) - High-res maps marked with locations for rare/uncommon animals and places you can sit, etc in **Red Dead Redemption 2**.

[RDR2.MD](https://github.com/subvod/examples/blob/master/RDR2.MD). - Hodgepodge of notes, but not disorganized. Contains things such as getting the Silver Dapple Pinto MFT as Arthur, glitches/bugs (and known fixes for them), document locations (missable and not), etc.

[TCGRW.MD](https://github.com/subvod/examples/blob/master/TCGRW.MD) - Referential document containing weapon, vehicle, and NPC data gathered while playing **Tom Clancy's Ghost Recon Wildlands**.

[ASUS ROG Zephyrus G14 (2021) Review](https://github.com/subvod/examples/blob/master/2021-ASUS-ROG-Zephyrus-G14-GA401QM-Review.md) - A not-so-in-depth review of the **2021 ASUS G14** because I'm a fucking normie piece of shit.

And in case you haven't noticed already... yes, there will be some marginally crude language and possible references to comic mischief here and there. If you've even the slightest amount of mental fortitude, you'll do just fine. Otherwise, if you can't handle either of those or are so in favor of having your freedoms taken away just so mine do as well (while those who take those freedoms retain their own): bitch boys need not read further but instead [watch this](https://www.youtube.com/watch?v=j22bnzmjcQM).

# MISCELLANEOUS

*A collection of jottings.*

## System Utilities

*Tools:*

- [BleachBit](https://github.com/bleachbit/bleachbit) - Alternative to CCleaner because Avast fucked it up.
- [7-Zip](https://www.7-zip.org/) - File compression and archiving. I was a WinRAR fanboy for over a decade. Why? No clue. [[Source Repo]](https://sourceforge.net/projects/sevenzip/) ; LZMA2 for binary/images, PPMd for plaintext.
- [Calibre](https://calibre-ebook.com/) - view and manage ebooks from desktop. [[Docs]](https://manual.calibre-ebook.com/) [[Source Repo]](https://github.com/kovidgoyal/calibre)
- [CheatEngine](https://www.cheatengine.org/downloads.php) - memory editor and process hook module; RAR archive isn't bundled with "optional" bloatware/adware. [[Backup]](https://www.mediafire.com/file/vc97e7249287jdd) [[Source Repo]](https://github.com/cheat-engine/cheat-engine)
- [IconsExtract](https://www.nirsoft.net/utils/iconsext.html) - extract icon resources from WinPE/DLL
- [ResourceHacker](http://www.angusj.com/resourcehacker/) - extract, edit, and repack WinPE/DLL resources
- [Olly](https://www.ollydbg.de/) - x86 assembly-level debugger.
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) - universal CLI.
- [MediaFire](https://mediafire.com/) - file upload and cloud storage.
- [windscribe](https://windscribe.com/) - VPN with a free plan offering 10GB per month. No, I am not sponsored by these folks.

*Old Backups of Legacy Programs:*

- [DarkComet](https://www.mediafire.com/file/u6mu5h49ed5gpq6) - Backup of the classic, before the bullshit. Coded in Delphi. No source directly available, but something to look at if you're into this field.

*References:*

- [DO NOT DEFRAGMENT YOUR SSD](https://superuser.com/questions/1594/why-cant-you-defragment-solid-state-drives) - Defragmenting does nothing but spike write cycles, lowering SSD lifespan because of how they operate. This is not the case for HDDs with physical disks. Defragmenting is beneficial for HDDs, not SSDs.

## Media Related

### Audio/Video

*Tools:*

- [youtube-dl](https://github.com/ytdl-org/youtube-dl) - Stream/download various media in various formats from various sources.
- [FFMpeg](https://github.com/FFmpeg/FFmpeg) - Audio/video conversion. [[Docs]](https://ffmpeg.org/documentation.html)
- [OPUS Codec](https://opus-codec.org/downloads/) - Modern audio compression for the internet. [[Docs]](https://opus-codec.org/docs/) [[Source Repo]](https://gitlab.xiph.org/xiph/opus-tools)
- [VLC](https://www.videolan.org/) - Media player. [[Docs]](https://wiki.videolan.org/documentation:documentation/) [[Source Repo]](https://github.com/videolan/vlc)
- [Audacity](https://www.audacityteam.org/) - Audio editor. [[Docs]](https://manual.audacityteam.org/) [[Source Repo]](https://github.com/audacity/audacity)

*References:*

- RIAA's [failed attempt to shut down youtube-dl](https://github.blog/2020-11-16-standing-up-for-developers-youtube-dl-is-back/). :)
- Automate the [downloading and conversion/extraction of audio/video](https://github.com/subvod/examples/blob/master/youtube-dl.MD) using **youtube-dl** and **ffmpeg**.

### Image

*Tools:*

- [GIMP](https://gitlab.gnome.org/GNOME/gimp) - Image editor. Extensive support via plugins. [[Docs]](https://docs.gimp.org/2.10/en/) [[Tutorials]](https://www.gimp.org/tutorials/)
- [nomacs](https://github.com/nomacs/nomacs) - Image viewer with integrated adjustable window transparency.
- [GreenShot](https://github.com/greenshot/greenshot) - Screen capture software with autosave.
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) - Image editor with command-line untilities.

*References:*

### 3D

- [Blender](https://developer.blender.org/diffusion/) - 3D Editor [[Docs]](https://docs.blender.org/) [[Tutorials]](https://www.blender.org/support/tutorials/)
- [Wings3D](http://www.wings3d.com/) - 3D Editor

### Word Processors

- [LibreOffice](https://www.libreoffice.org/) - collection of alternatives for MS Office. [[Docs]](https://documentation.libreoffice.org/en/english-documentation/)

### Text Editors

- [Notepad++](https://notepad-plus-plus.org/) - text editor; can be made into an IDE with Batch scripts. [[Docs]](https://npp-user-manual.org/)
- [Turn Notepad++ into an IDE of sorts](https://github.com/subvod/examples/blob/master/NPP-IDE.MD) using **NPPExec** and **Notepad++ Macros**. Can be modified to work with any command-line compiler for any language.

### Web Browsers

*Browsers:*

- [Mozilla Firefox](https://www.mozilla.org/) - used this exclusively since 2009. [[Source Repo]](https://hg.mozilla.org/mozilla-central/)

*Plugins:*
- [ViolentMonkey](https://violentmonkey.github.io/) - Control how webpages operate using JavaScript "userscripts". Alternative for GreaseMonkey. [[Source Repo]](https://github.com/violentmonkey/violentmonkey)
- [PageHacker](https://addons.mozilla.org/en-US/firefox/addon/page-hacker/) - an interactive "Inspect Element".
- [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) - efficient, wide-spectrum content blocker.
- [The Stream Detector](https://addons.mozilla.org/en-US/firefox/addon/hls-stream-detector/) - HLS/DASH/HDS/MSS stream detector. [[Source Repo]](https://github.com/rowrawer/stream-detector)
- [YouTube Video and Audio Downloader](https://addons.mozilla.org/en-US/firefox/addon/youtube_downloader_webx/) - WebX downloader with UI integrated to YouTube's.
- [pdf.js](https://github.com/mozilla/pdf.js) - mirror of PDF reader included with Firefox installs.

## Desktop Programming

### C/C++

*IDEs:*

- [VSCode](https://code.visualstudio.com/) - Microsoft Visual Studio Code. Configurable with JSON scripts. Wide support spectrum via extensions. [[Docs]](https://code.visualstudio.com/docs) [[Task Info]](https://code.visualstudio.com/docs/editor/tasks) [[Source Repo]](https://github.com/microsoft/vscode)
- [Code::Blocks](https://www.codeblocks.org/) - C, C++, and Fortran IDE. [[Docs]](https://www.codeblocks.org/user-manual/) [[Wiki]](https://wiki.codeblocks.org/index.php/Main_Page) [[Source Repo]](https://www.codeblocks.org/downloads/source/)

*Compilers:*

- [TDM-GCC](https://jmeubank.github.io/tdm-gcc/) - Windows-focused GNU Compiler Collection; available in both 32 and 64-bit configurations. Can be configured for [use with VSCode](https://code.visualstudio.com/docs/cpp/config-mingw). Documentation parallels the [[Docs]](https://gcc.gnu.org/onlinedocs/) of **GCC** itself.
- [Visual Studio Build Tools 2019](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2019) - command-line build tools without the IDE or integration with it. Can be configured for [use with VSCode](https://code.visualstudio.com/docs/cpp/config-msvc). [[Docs]](https://docs.microsoft.com/en-us/cpp/build/reference/c-cpp-building-reference)

*Libraries:*

- [SDL](https://www.libsdl.org/) - Simple DirectMedia Layer. [[Docs]](http://wiki.libsdl.org/FrontPage) [[Source Repo]](https://github.com/libsdl-org/SDL)
- [OpenGL](https://www.opengl.org/) - 3D graphics lib. [[Wiki]](https://www.khronos.org/opengl/wiki)
- [EasyHook](https://github.com/EasyHook/EasyHook) - WinAPI hook base.
- [wxWidgets](https://www.wxwidgets.org/) - cross-platform GUI library. Pairs well with [wxFormBuilder](https://github.com/wxFormBuilder/wxFormBuilder), a GUI creator which can export wxWidgets-compatible code in both C++ and Python. [[Docs]](https://www.wxwidgets.org/docs/) [[Tutorials]](https://www.wxwidgets.org/docs/tutorials/) [[Source Repo]](https://github.com/wxWidgets/wxWidgets)
- [Boost C++ Libraries](https://www.boost.org/) - a ton of functions for a wide variety of uses. [[Docs]](https://www.boost.org/doc/)
- [SFML](https://www.sfml-dev.org/) - Simple and Fast Multimedia Library. **[Docs]** available on downloads page. [[Source Repo]](https://github.com/SFML/SFML)

*References:*

- [cplusplus.com](https://www.cplusplus.com/) - [[C++ Tutorial]](https://www.cplusplus.com/doc/tutorial/) [[Articles]](https://www.cplusplus.com/articles/) [[Reference]](https://www.cplusplus.com/reference/)
- [cprogramming.com](https://www.cprogramming.com/) - [[C Tutorial]](https://www.cprogramming.com/tutorial/c-tutorial.html) [[C++ Tutorial]](https://www.cprogramming.com/tutorial/c++-tutorial.html)
- Command-line [linking with GCC](https://stackoverflow.com/q/15441877). See [SeKa](https://stackoverflow.com/users/2159358)'s answer for a short explanation of the differences between "compiling" and "linking" with **gcc** and **ld** (respectively).

*Articles/Tutorials:*

- [Learn C++ in 10 Hours](https://youtu.be/GQp1zzTwrIg) - A detailed tutorial covering everything you'll need to know for getting started. This is the most comprehensive video tutorial I've found. Somehow, it also has least rehashing of covered topics and superfluous explanations. Most everything is presented in a to-the-point manner.
- An analysis of [why Dev-C++ was deprecated](https://www.cplusplus.com/forum/articles/36896/).
- A somewhat detailed [comparison between Rust and C++](https://www.reddit.com/r/rust/comments/bya8k6/programming_with_rust_vs_c_c/).
- [Understanding C Program Compilation Process Using GCC](https://youtu.be/PzsXHGVTScI) - An explanation of the process with intermediate files and options needed when performing each step individually.

### Python

*Tools:*

- [Python](https://www.python.org/) - programming language. [[Docs]](https://docs.python.org/3/) [[Source Repo]](https://github.com/python/cpython)

*Libraries:*

- [wxPython](https://www.wxpython.org/) - cross-platform GUI toolkit. [[Wiki]](https://wiki.wxpython.org/) [[Docs]](https://docs.wxpython.org/) [[Source Repo]](https://github.com/wxWidgets/Phoenix/)

*References:*

### Assembly (ASM)

*Tools:*

- [FASM](https://flatassembler.net/) - flat assembler for 32 and 64-bit code. [[Docs]](https://flatassembler.net/docs.php) [[Examples]](https://flatassembler.net/examples.php)

*References:*

- How to [call C functions in FASM](https://board.flatassembler.net/topic.php?t=18707).

### PowerShell

*Tools:*

- [PowerShell](https://github.com/PowerShell/PowerShell) - scripting language. [[Docs]](https://docs.microsoft.com/en-us/powershell/scripting/developer/windows-powershell-reference) [[Source Repo]](https://github.com/PowerShell/PowerShell)
- [Invoke-CmdScript](http://windowsitpro.com/powershell/take-charge-environment-variables-powershell) - call CMD scripts from PowerShell. [[Backup]](https://github.com/subvod/examples/blob/master/Invoke-CmdScript.ps1)

*References:*

- [SS64](https://ss64.com/ps/) - PowerShell command reference.

### Batch/JScript/VBScript (Windows System Scripting)

*Tools:*

- [JREPL](https://www.dostips.com/forum/viewtopic.php?f=3&t=6044) - Regex text processor. Batch-JScript hybrid. [[Backup]](https://www.mediafire.com/file/l8u0w1dczi1ns69)

*References:*

- [Rob van der Woude's Scripting Pages](https://www.robvanderwoude.com/) - A collection of (administrative) scripting related information.

## Web Programming

### HTML5

*References:*

- [HTML5](https://developer.mozilla.org/en-US/docs/Web/HTML) - tag reference on MDN.

### CSS

*References:*

- [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) - tag reference on MDN.

### JavaScript

*References:*

- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) - reference on MDN.

### Regex (Regular Expressions)

- [Regex Cheatsheet](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Cheatsheet) - on MDN.

### Markdown

*Tools/Languages:*

- [Turndown](https://github.com/mixmark-io/turndown) - HTML to Markdown converter written in HTML and JavaScript.

*References:*

- [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) - MD syntax quick reference.

*Documents/Articles:*

- [Markdown via VS Code](https://code.visualstudio.com/docs/languages/markdown) - 

## Game-Specific Stuff

### Grand Theft Auto V

*Tools:*

- [ScriptHookV](http://www.dev-c.com/gtav/) - ScriptHookV base. SDK for development of C++ plugins available on the same page.
- [CodeWalker](https://github.com/dexyfex/CodeWalker) - Interactive map editor. Discord server serves latest downloads (invite link on [GTA5-Mods](https://www.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map)). [[Backup v30-dev36]](https://www.mediafire.com/file/382gfs26a40rivs/)

*Mods:*

- [MenyooSP](https://github.com/MAFINS/MenyooSP) - SP trainer.
- [Enhanced Native Trainer](https://www.gta5-mods.com/scripts/enhanced-native-trainer-zemanez-and-others) - SP trainer with integrated fuel mod, among many other external mods/features.
- [Enable All Interiors](https://www.gta5-mods.com/scripts/enable-all-interiors-wip) - merge project of existing interior mods.
- [Vigilante Missions](https://www.gta5-mods.com/scripts/gta-4-vigilante-missions) - GTA IV style "Cleaned the Mean Streets" missions. [[Source Repo]](https://github.com/I-E-A-I-A-I-O/VigilanteMissions)
- [LemonUI](https://github.com/justalemon/LemonUI) - UI framework for GTA V. Intended to replace NativeUI.
- [Rainbomizer](https://gtaforums.com/topic/974412-v-rainbomizer/) - Randomizer collection. [Source Repo](https://github.com/Parik27/V.Rainbomizer)

*Articles/Tutorials:*

- [Enable/disable backfire](https://forums.gta5-mods.com/topic/24300/exhaust-backfire-disable/2) via mods using OpenIV.

### Red Dead Redemption 2

*Tools/Mods:*

- [ScriptHookRDR2](https://www.dev-c.com/rdr2/scripthookrdr2/) - ScriptHookRDR2 base. SDK for development of C++ plugins available on the same page.
- [RampageTrainer](https://www.nexusmods.com/reddeadredemption2/mods/233) - SP trainer.

*References:*

- [RDR2Mods](https://www.rdr2mods.com/) - focused around RDR2 modding. Wiki with databases, tutorials, and references (including hash IDs). [[Wiki]](https://www.rdr2mods.com/wiki/)

### Homeworld 1, Cataclysm, 2, and/or Remastered

*Tools/Mods:*

- [bigDecrypter](https://github.com/mon/bigDecrypter) - Decrypts HWR BIG files. for use with ModPackager/HW2ICArchive.
- [CFHodEd](https://github.com/Fallen-Angel/CFHodEd) - Universal HOD Editor for both classic and remstered Homeworld games.
- [Homeworld Universe Mod Tools](https://www.moddb.com/games/homeworld-2/downloads/homeworld-universe-mod-tools) - Various tools for use with HW1, Cataclysm, and HW2.
- [Hw2 Official v1.1 Patch](https://www.moddb.com/games/homeworld-2/downloads/homeworld-2-v-11-patch-last-and-only-patch) - The only official HW2 game update from Relic.
- [HomeworldSDL](https://github.com/aheadley/homeworld) - source code for HW1's game engine.
- [fda2aifc](https://www.mediafire.com/file/nbc2qrz93nvt2n3) - converts **.fda** to **.aifc** audio formats. Old backup from **Relic**.
- [Common Controls](https://www.mediafire.com/file/y8c6o4omi9ah06r) - Req'd by some old HW1, Cata, and HW2 tools.
- [CFLuaDC](https://www.mediafire.com/file/gljt3lb0ik97l02) - 4E354B's Lua decompiler.
- [HW2CDRP](https://www.mediafire.com/file/csulrdwbosymob7) - Decompiled data archive.
- [No-CD Patches](https://www.mediafire.com/file/sm4wb37gj4pzl9d) - English and German game engine v1.1 patches.

*References:*

- [Hw2 Manual PDF](https://www.moddb.com/games/homeworld-2/downloads/homeworld2-manual-pdf) - A direct PDF copy of the game manual. (Not a scanned copy.)
- [HW2 Function Reference (Online)](https://hwmod.fandom.com/wiki/HW2_Function_Reference) - online function reference.
- [HWRM Karos Graveyard](https://github.com/HWRM/KarosGraveyard/wiki) - old-style Karos Graveyard for HWRM.

### SMW, SMW2

*Tools:*

- [ASAR](https://github.com/RPGHacker/asar) - 65816 assembler; successor to xkas. [[SMWCentral]](https://www.smwcentral.net/?p=section&a=details&id=25953)
- [Snes9x](https://github.com/snes9xgit/snes9x) - portable SNES emulator.

*References:*

- [SMWCentral](https://www.smwcentral.net/) - Everything SMW hacking. [[Tools]](https://www.smwcentral.net/?p=section&s=tools) [[Docs]](https://www.smwcentral.net/?p=section&s=documents) [[ROM Hacks]](https://www.smwcentral.net/?p=section&s=smwhacks)
- [FuSoYa's Site](https://fusoya.eludevisibility.org/) - SMW hacking tools; though I think [FuSoYa](https://www.smwcentral.net/?p=profile&id=9435) has moved most everything to SMWCentral.

### Pokemon Gen 1 and 2 (RBYGSC)

*Tools:*

- [RGBDS](https://github.com/gbdev/rgbds) - Rednex Gameboy Development System
- [Pokemon Crystal Disassembly](https://github.com/pret/pokecrystal)
- [Pokemon Yellow Disassembly](https://github.com/pret/pokeyellow)
- [VisualBoyAdvance-M](https://github.com/visualboyadvance-m/visualboyadvance-m) - merge project of all VBA branches; GB/GBC/GBA emulator.
- [TGB Dual L](https://github.com/libertyernie/tgbdual_L) - Updated builds of TGB Dual, a GBC emulator which implements link cable emulation.

*References:*

- [Pkmn Crystal Guide](https://gamefaqs.gamespot.com/gbc/375087-pokemon-crystal-version/faqs/13668)
- [Pkmn Crystal GS Codes](https://gamefaqs.gamespot.com/gbc/375087-pokemon-crystal-version/faqs/13410)
- [Pkmn Yellow Guide](https://gamefaqs.gamespot.com/gameboy/198314-pokemon-yellow-version-special-pikachu-edition/faqs/64175)
- [Pkmn Yellow GS Codes](https://gamefaqs.gamespot.com/gameboy/198314-pokemon-yellow-version-special-pikachu-edition/faqs/6618)

### Minetest

- [Minetest](https://github.com/minetest/minetest) - an open source voxel game engine. Basically Minecraft that runs native rather than through JVM/JRE. [[Wiki]](https://wiki.minetest.net/)

### Forza

*Tutorials/Articles:*

- [Creating Accurate Logos](https://forums.forzamotorsport.net/turn10_postst133507_-Guide--Creating-Accurate-Logos.aspx) - tutorial by **PJTierney**. I recommend using **nomacs**; link in [Image Tools](#image).
