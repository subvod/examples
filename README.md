This is a jumbled assortment of random scripts and snippets for referential purposes. As of 2021/04/15 I've succeeded in morphing **Notepad++** into [an IDE of sorts](#how-to-use-notepad-as-a-makeshift-ide), [automated downloading/converting/extracting videos](#how-to-download-and-convert-youtube-videos) using **youtube-dl** and **ffmpeg**, and learned a bit of Markdown in the process. Original plan was to use HTML and CSS, but GitHub thought otherwise and the concept of Markdown interests me nonetheless. I've also spent quite a bit of time playing **Tom Clancy's Ghost Recon Wildlands** over the past three years. During that time I collected tons of data. Those numbers are crunched and compared in [stats.html](https://github.com/subvod/examples/blob/master/stats.html) if you're into that. I also have recorded things I've come across in **Red Dead Redemption 2** in [RDR2.MD](https://github.com/subvod/examples/blob/master/RDR2.MD). That's everything from damn moose locations to getting the Silver Dapple Pinto MFT as Arthur.

### Want a super lightweight IDE? Give Notepad++ a shot:

[Universal Compile/Assemble/Interpret Script for NPPExec](https://github.com/subvod/examples/blob/master/universal.ps1) (Requires [Invoke-CmdScript function](https://github.com/subvod/examples/blob/master/Invoke-CmdScript.ps1). See below for details.)

[How to use Notepad++ as a makeshift IDE?](#how-to-use-notepad-as-a-makeshift-ide)

[How to add toolbar buttons for macros?](#how-to-add-toolbar-buttons-for-macros)

[How to delete existing plugin macros for NPPExec in Notepad++ (v7.9.5+)?](#how-to-delete-existing-plugin-macros-for-nppexec-in-notepad-v795)

[How to add a custom UAC bypass for anything?](#how-to-add-a-custom-uac-bypass-to-skip-prompt-when-starting-an-application)

### Download and convert/extract videos and audio all from command line.

[How to download and convert YouTube videos?](#how-to-download-and-convert-youtube-videos)

[An explanation of the tokenization method used in webm2opus.bat](#an-explanation-of-the-tokenization-method-used-in-webm2opusbat)

### How to use Notepad++ as a makeshift IDE?

Side note: I've switched to PowerShell. But if you're looking to combine every compile/assemble/run method in "pure" Batch, when you get around to working out fixing **INCLUDE** paths for Flat Assembler, take a look at [JREPL.bat](https://www.dostips.com/forum/viewtopic.php?t=6044). It has the capability you're looking for. JREPL works great, but I've encountered far too many inconsistencies using `findstr` in conjunction with it to pursue that journey any longer.

This was a long and arduous process to work out but ended up being well worth it. I've configured my Notepad++ to my liking, but it took several hours of searching to do so. Everything is here, but be prepared. You'll need to download and install [Notepad++](https://notepad-plus-plus.org/downloads/) (assume latest stable release) and [NPPExec](https://github.com/d0vgan/nppexec). The latter can also be downloaded from within Notepad++ via the Plugins Admin. (If using a recent build of Notepad++ with the Plugins Admin and downloading NPPExec from GitHub, be sure to download the **_PA** version of NPPExec; details on its GitHub readme). Adding toolbar buttons (with custom images) which compile/assemble/execute is [covered at the bottom of this section](#how-to-add-toolbar-buttons-for-macros).

Once installed, restart Notepad++. For accessibility sake, I'll use my own scripts as examples for use with [TDM-GCC v9.2.0 Win64](https://jmeubank.github.io/tdm-gcc/download/). I've compiled all of my old Batch scripts and [translated them into PowerShell](https://github.com/subvod/examples/blob/master/universal.ps1). That script differentiates between file extensions and can be modified for any compiler/assembler. Download that script and save as `universal.ps1` or whatever you like. The script file name does not make any difference in functionality. Additionally, you'll need to save [Invoke-CmdScript.ps1](https://github.com/subvod/examples/blob/master/Invoke-CmdScript.ps1) as well (explained below).

If you've not added the locations to your environment variables (either through an installer or manually) I strongly suggest you do so. Otherwise, you may need to replace the compilers' names with the full file path to each, respectively. For my own purposes, I've already added all proper environment variables. For compiling C/C++ code with the Microsoft Visual Studio Build Tools, you'll need to add the full path to **vcvars64.bat** included in your MSVC Build Tools install directory (example: `C:\vsbuildtools\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat`). If, by chance, you're compiling on and/or targeting different architechtures, the Batch script called can be changed as needed (ex: **vcvars32.bat**). Also, ensure the install path itself has no spaces in it. This throws nothing but errors across the board when used outside of the shortcut, let alone CMD. It can cause issues when loading the file path into Batch variables. I changed mine from `Microsoft Visual Studio` to `vsbuildtools`. The MSVC compiler toolset relies on several environment variables which are set only by **vcvarsall.bat** when called with specific arguments. Other compilers/assemblers do not require such superfluous steps. (Thanks, Microsoft!) [Command line syntaxes for all tools included in the MSVC build tools can be found on MSDN.](https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160) Additional note: **vcvars64.bat** _must_ be called using the `Invoke-CmdScript` function from [Invoke-CmdScript.ps1](https://github.com/subvod/examples/blob/master/Invoke-CmdScript.ps1), so download and save that as well. It's useful even outside of Notepad++, especially if you're doing a lot of crossover command line work between CMD and PowerShell. The reason we need it here is because using `&`, `cmd /c`, and `cmd /k` runs the script but the NPPExec shell within Notepad++ does not retain the environment variables, while using the custom subroutine **Invoke-CmdScript** runs the script and retains the environment variables. After compiling (with extended exception handling enabled), the object file is deleted if present. Omit the command within the script if you need the object file for debugging.

Creating a similar script for **TDM-GCC** was nowhere near as time-consuming. The script is formatted for general GCC builds (MinGW, TDM-GCC, etc). Same as MSVC, you may need to replace `gcc.exe` and `g++.exe` with their respective full file paths if you've not added their appropriate environment variables. (Example: "C:\TDM-GCC\bin\gcc.exe") Essentially the same as the MSVC script, but modified with conditionals to differentiate between C and C++ source files as GCC does not use one compiler for both languages. (GCC is the GNU C Compiler, G++ is the GNU C++ Compiler.) The conditionals (`if` statements) check the input file's extension and assign a compiler accordingly. The `-o` option specifies output file name/path. If you're curious about the percent-squiggle-letter combinations in archived Batch scripts, [look here for more information](https://www.robvanderwoude.com/batchfiles.php) or open Command Prompt and type `for /?` to display extensive variable options. Anyways, back to the setup. Save both scripts in the same directory, restart Notepad++, and select **Plugins > NPPExec > Execute** or just press F6 (default hotkey; can be changed). Then, copy and paste the contents of [universal.npp](https://github.com/subvod/examples/blob/master/universal.npp) into the text box.

The script takes two arguments: the source file and preferred system. The second argument, as of right now, is only applicable for C and C++ source files. By default, GCC is used, but you can specify `msvc` after the source file (ex. `universal.ps1 "C:\main.cpp" msvc`) to switch and use `cl.exe` as the primary compiler. A quick line-by-line breakdown of **universal.npp**:

1. save the current document
2. execute **universal.ps1** and pass the current file as `arg1`, as well as anything extra for `arg2`

After pasting, click **Save...**, name the script, then click **Save**. Afterwards, click **Plugins > NPPExec > Advanced Options...**. Within the **Menu Item** section (lower left), select the custom script from the **Associated script** drop-down menu, and name it (the **Item Name** text box). Tick the **Place to the Macros submenu** checkbox (under **Menu Items**, upper left), click **Add/Modify**, then click **OK** to exit out of the NPPExec menu.

Click **Macro > Modify Shortcut/Delete Macro...**, select the **Plugin Commands** tab, and scroll down until you find your custom named NPPExec scripts. Select your custom script, click **Modify**, and select your key combinations for easy access. If using toolbar buttons, keyboard shortcuts aren't really necessary, but you do you! (NOTE: Keycode conflicts do not have to be avoided, but almost always result in synchronous menu selections which are nothing but troublesome and an annoyance at best.) After setting your key combination(s), click **OK** then **Close**. Restart Notepad++, open a source file, and enter your key combination to test it out.

#### How to add toolbar buttons for Macros?

To add buttons with custom images linked to user-defined Macros, you'll need to download and install **Customize Toolbar** from either the Plugins Admin or [SourceForge](https://sourceforge.net/projects/npp-customize). As far as the actual image editing goes, everything can be done in MS Paint. I personally use [GIMP](https://www.gimp.org/) and have been for almost a decade at this point. I've used Photoshop CS6 in the past, but realized I can do everything in GIMP for free along with access to the source code, huge community, extensive plugin support, as well as the GNU GPL covering it. MS Paint is the baseline image editor and included with every Windows OS. You can do everything from there if you're not making super meticulous adjustments. Let's be honest, at 24x24 pixels and 8-bit color depth, who the hell is going to be able to see any detail? Another important thing to note: all pixels which are the same color as the bottom-left pixel will appear transparent. Keep this in mind if making those aforementioned meticulous edits. :)

GIMP Method:
1. Open the image you wish to convert into an icon.
2. Make your edits, then change the color depth to 8-bits (256-color) via **Image > Mode > Indexed**. Default options are fine. (255 color is correct; arrays start at 0 instead of 1.) Why are we doing this? GIMP's default BMP exports are BMP4, where as Notepad++ accepts only BMP3. Therefore we must manually assign the indexed color range. I've read other tutorials and explanations which advise using ImageMagick, but I'm running GIMP v2.10.24 (Win64) and exporting as indexed BMP @ 255 works just fine.
3. Resize the image to 24x24 pixels via **Image > Scale Image**.
4. Export the image as a Bitmap (.BMP) via **File > Export**. You will be notified that alpha channels will be ignored, this is normal for zero-transparency formats. Click **Ok**.
5. When prompted with the **Export image as BMP** menu, expand the **Compatibility Options** menu by clicking it, tick the **Do not write color space information** box (writing CSI appears to corrupt BMP3 data when it comes to Notepad++'s importer), then click **Export**.

MS Paint Method:
1. Open the image you wish to convert into an icon.
2. Make your edits and **Resize** the image to 24x24 pixels.
3. Save as 256-color Bitmap (via drop down menu in **Save As** prompt).

Once your button icons are all created, place them in the `%APPDATA%\Notepad++\plugins\config` folder. Open Notepad++, navigate to **Plugins > Customize Toolbar > Custom Buttons** and click it. This creates a definition file and enables custom toolbar buttons. If you come to find no file has been created, ensure you're running Notepad++ as an administrator. (That goes for everything filesystem-related, as well.) Restart Notepad++ and open the definition file `%APPDATA%\Notepad++\plugins\config\CustomizeToolbar.btn`

Upon creation, the file is filled with example options. These lines can be removed if not used. Line format/syntax can be accessed via **Plugins > Customize Toolbar > Help - Custom Buttons**. Line 1 is the function type, line 2 is the name of the function, lines 3 and 4 I don't know but it says they're additional strings, and line 5 is the image to use for the button. Here is my button definition for example:

`Macro,TDM-GCC x64,,,gnu24.bmp`

In this case, `Macro` specifies it's a... Macro, `TDM-GCC x64` is the name of my Macro to compile with TDM-GCC x64 native, and `gnu24.bmp` is the name of the button icon Bitmap located in the `%APPDATA%\Notepad++\plugins\config` folder. Once you've added the lines for your buttons, set the proper encoding via **Encoding > Convert to UCS-2 LE BOM**, then save the file. (Refer to **Plugins > Customize Toolbar > Help - Custom Buttons** for details on file encoding requirements). Restart Notepad++ to update the toolbar. If all goes to plan, your toolbar should have custom icons, like so:

[![alt text][image]][hyperlink]

  [hyperlink]: https://github.com/subvod
  [image]: https://i.imgur.com/kDbtZFx.png (tooltip)

### How to delete existing Plugin Macros for NPPExec in Notepad++ (v7.9.5+)?

Navigate to `%APPDATA%\Roaming\Notepad++\plugins\config` and open **NPPExec.ini** in a text editor. Scroll to the **[UserMenu]** label, below that should be the user-defined macros for NPPExec. Listing format is as follows:

`id="Macro Name :: NPPExecScriptName"`

Macro options can be changed by hand via editing these lines, but to completely remove them from the Macros submenu you must delete the entire line per Macro. Be sure to leave **[UserMenu]** and **NppMacrosSubmenu=1** in the INI file.

Additionally, you can remove NPPExec scripts manually by editing **npes_saved.txt**. Each script is denoted by two colons and its name (ex. `::Universal`). The lines below that (until the next name label) are lines for that script.

### How to add a custom UAC bypass to skip prompt when starting an application?

Run Task Scheduler (**taskschd.msc**). Click **Create Task**. Under the **General** tab give it a name (recommend using no spaces), description (optional), and check **Run with Highest Privileges**. Under the **Actions** tab, click **New...**, then click **Browse**, select the file you want to skip the UAC prompt on, and click **Open**. Under the **Conditions** tab, uncheck both the **Start the task only if computer is on AC power** and **Stop if the computer switches to battery power** boxes. Under the **Settings** tab, ensure the **Allow task to be run on demand** box is checked. Other options do not affect the overall goal (prompt bypass) but are available if you need them.

After creating the task, navigate to the target file's location and create a shortcut to it. Right click the shortcut, click **Properties**, and change the **Target** box's contents to as follows:

`C:\Windows\System32\schtasks.exe /run /tn "TaskNameHere"`

Replace `TaskNameHere` with the task name you assigned (keep the quotes, of course).

**IMPORTANT NOTE FOR NOTEPAD++ USERS** - For some reason, when running Notepad++ this way many users, including myself, are finding that we cannot open files in Notepad++ through the context menu after implementing this bypass. (Returns `ShellExecute() failed`.) I'm looking into what's causing this right now.

### How to download and convert YouTube videos?

Everyone has their own method and preferred formats. I personally use OPUS, but you can change around both the youtube-dl and FFmpeg command lines to fit your formatting preferences. My **webm2opus** scripts automate the downloading and conversion processes, including automatically assigning metadata according to the input filename.

1. Save a version of **webm2opus** on your local machine: [Python](https://github.com/subvod/examples/blob/master/webm2opus.py) or [Batch](https://github.com/subvod/examples/blob/master/webm2opus.bat). The Batch version does not require Python, but if you're using the Python version you'll need to [download and install Python first](https://www.python.org/downloads/). Also note: the Batch version may screw up the naming if the artist/title have special characters in them. The Python version does not jack with any special characters and sends them properly (as is) to ffmpeg for labeling during extraction. If you chose to add Python to `%PATH%` during the install, restart your system. This entire process can be done in pure PowerShell as well (working on it), but I honestly prefer Python. Much more room to stretch my legs. However both versions do the exact same thing, so if you're not already a Python programmer and don't plan on getting into Python, you may as well use the Batch script. You'll still need **youtube-dl** (which is coded in Python) and **FFmpeg** for both versions, though.
2. Download both [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html) and [FFmpeg](https://ffmpeg.org/download.html), then extract and copy all three (**webm2opus** (either version), **ffmpeg.exe**, and **youtube-dl.exe**) to the same directory, then run **webm2opus.py**. It will create the appropriate subdirectories and link file if they don't exist, then it will exit (as the link file is empty).
3. Open **_videolist.txt** (file name can be changed within the script as you see fit) and paste video links, one line each. Update links as needed.
4. Run **webm2opus** when you want to download and convert the videos from the list.

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
