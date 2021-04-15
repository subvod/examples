[How to add a custom UAC bypass for anything?](#how-to-add-a-custom-uac-bypass-to-skip-prompt-when-starting-an-application)

[How to delete existing plugin macros for NPPExec in Notepad++ (v7.9.5+)?](#how-to-delete-existing-plugin-macros-for-nppexec-in-notepad-v795)

[How to use Notepad++ as a makeshift IDE?](#how-to-use-notepad-as-a-makeshift-ide)

[How to add toolbar buttons for macros?](#how-to-add-toolbar-buttons-for-macros)

[How to download and convert YouTube videos?](#how-to-download-and-convert-youtube-videos)

### How to add a custom UAC bypass to skip prompt when starting an application?

Run Task Scheduler (**taskschd.msc**). Click **Create Task**. Under the **General** tab give it a name (recommend using no spaces), description (optional), and check **Run with Highest Privileges**. Under the **Actions** tab, click **New...**, then click **Browse**, select the file you want to skip the UAC prompt on, and click **Open**. Under the **Conditions** tab, uncheck both the **Start the task only if computer is on AC power** and **Stop if the computer switches to battery power** boxes. Under the **Settings** tab, ensure the **Allow task to be run on demand** box is checked. Other options do not affect the overall goal (prompt bypass) but are available if you need them.

After creating the task, navigate to the target file's location and create a shortcut to it. Right click the shortcut, click **Properties**, and change the **Target** box's contents to as follows:

`C:\Windows\System32\schtasks.exe /run /tn "TaskNameHere"`

Replace `TaskNameHere` with the task name you assigned (keep the quotes, of course).

### How to delete existing Plugin Macros for NPPExec in Notepad++ (v7.9.5+)?

Navigate to `%APPDATA%\Roaming\Notepad++\plugins\config` and open **NPPExec.ini** in a text editor. Scroll to the **[UserMenu]** label, below that should be the user-defined macros for NPPExec. Listing format is as follows:

`id="Macro Name :: NPPExecScriptName"`

Macro options can be changed by hand via editing these lines, but to completely remove them from the Macros submenu you must delete the entire line per Macro. Be sure to leave **[UserMenu]** and **NppMacrosSubmenu=1** in the INI file.

### How to use Notepad++ as a makeshift IDE?

This was a long and arduous process to work out. I've configured my Notepad++ to my liking, but it took several hours of searching to do so. Everything is here, but be prepared. You'll need to download and install NPPExec (for command execution and shell integration within Notepad++) via the Plugins Admin or [GitHub](https://github.com/d0vgan/nppexec). (If using a recent build of Notepad++ with the Plugins Admin, be sure to download the **_PA** version of NPPExec; details on its GitHub readme). Adding toolbar buttons (with custom images) is [covered at the bottom of this section](#how-to-add-toolbar-buttons-for-macros).

Once installed, restart Notepad++. For accessibility sake, I'll use my own script as an example for use with the Microsoft Visual C++ Build Tools 2019 (x64) C/C++ compiler (**cl.exe**). The below script can be modified for any compiler/assembler. Create a new file and save as `msvc.bat`. The script file name does not make any difference, but for readability I have separate scripts named for TDM-GCC and MSVC. File contents are as shown:

```
@echo off
cd %~dp0
call vcvarsall.bat x64
cl.exe /Fe"%~n1.exe" /EHsc %1
del %~n1.obj
```

For the above script, you may need to replace `vcvarsall.bat` with the full file path to the script included in your MSVC Build Tools install directory (example: `C:\vsbuildtools\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat`). Also, ensure the install path itself has no spaces in it. This can cause issues when loading the file path into Batch variables. I changed mine from `Microsoft Visual Studio` to `vsbuildtools`. Breakdown of the script, line by line:

1. Disable path echo-ing.
2. Change to current directory.
3. Call the Build Tools Developer Prompt for x64 native. The MSVC compiler toolset relies on several environment variables which are set only by **vcvarsall.bat** when called with specific arguments. Other compilers/assemblers do not require such superfluous steps. (Thanks, Microsoft!) The **x64** argument can be changed for host/target platform(s). [Syntaxes for all tools included in the MSVC build tools can be found on MSDN.](https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160) Additional note: **vcvarsall.bat** <u>must</u> be called (i.e. using the `call` command). This is because using `cmd /c` runs the script but the NPPExec console within Notepad++ does not retain the environment variables, while `cmd /k` runs the script and retains the environment variables but does not allow the internal NPPExec script to continue (i.e. it gives no return value because it does not terminate).
4. Compile source file passed as argument (`%1`), set output file name as copy of source file name, and enable extended exception handling.
5. Delete object file. (If needed for debugging, omit this line from the script.)

Creating a similar script for MinGW/TDM-GCC was not nearly as time-consuming:

```
@echo off
cd %~dp0
if "%~x1"==".cpp" (
  g++.exe "%1" -o "%~n1.exe"
)
if "%~x1"==".c" (
  gcc.exe "%1" -o "%~n1.exe"
)
```
The above script is formatted for GCC builds (MinGW, TDM-GCC, etc). Same as MSVC, you may need to replace `gcc.exe` and `g++.exe` with their respective full file paths. Essentially the same as the MSVC script, but modified with conditionals to differentiate between C and C++ source files as GCC does not use one compiler for both languages. (GCC is the GNU C Compiler, G++ is the GNU C++ Compiler.) The conditionals (`if` statements) check the input file's extension. (Again, source file passed as argument `%1`). GCC syntax assumes option-less file is the input (source) file. The `-o` option specifies output file name/path. If you're curious about the percent-squiggle-letter combination, [look here for more information](https://www.robvanderwoude.com/batchfiles.php) or open Command Prompt and type `for /?` to display extensive variable options.

Anyways, back to the setup. Save either script (whichever one you're using), open Notepad++, and select **Execute** from the **NPPExec** cascaded menu under the **Plugins** drop down menu. Or just press F6. Then, copy and paste the below script into the text box:

```
npp_save
C:\dev\tdmgcc.bat "$(FULL_CURRENT_PATH)"
cmd /c "$(CURRENT_DIRECTORY)\$(NAME_PART).exe"
```

Replace `C:\dev\tdmgcc.bat` with the full file path to the script you're using, leave everything else as-is. A quick breakdown of this script: it saves the current document (line 1), runs the Batch script for the compiler specified and passes the current file as the first argument (line 2), then runs the output file of the same name in the same folder after compilation (line 3). After pasting, click **Save...**, name the script, then click **Save**. Afterwards, click **Advanced Options...** in the NPPExec cascaded menu under the **Plugins** drop-down menu. Within the **Menu Item** section (lower left), select the custom script from the **Associated script** drop-down menu, and name it (the **Item Name** text box). Check the **Place to the Macros submenu** (under **Menu Items**, upper left), click **Add/Modify**, then click **OK** to exit out of the NPPExec menu.

Click **Macro > Modify Shortcut/Delete Macro...**, select the **Plugin Commands** tab, and scroll down until you find your custom named NPPExec scripts. Select your custom script, click **Modify**, and select your key combinations for easy access. (NOTE: Keycode conflicts do not have to be avoided, but almost always result in synchronous menu selections which are nothing but troublesome and an annoyance at best.</u>) I use **Ctrl+F7** for MSVC and **Alt+F7** for TDM-GCC as I change compilers depending on the project I'm working on, but you're free to select your own. After setting your key combination(s), click **OK** then **Close**. Restart Notepad++, open a source file, and enter your key combination to test it out.

#### How to add toolbar buttons for Macros?
To add buttons with custom images linked to user-defined Macros, you'll need to download and install **Customize Toolbar** from either the Plugins Admin or [SourceForge](https://sourceforge.net/projects/npp-customize). As far as the actual image editing goes, everything can be done in MS Paint. I personally use [GIMP](https://www.gimp.org/) and have been for almost a decade at this point. I've used Photoshop CS6 in the past, but realized I can do everything in GIMP for free along with access to the source code, huge community, extensive plugin support, as well as the GNU GPL covering it. MS Paint is the baseline image editor and included with every Windows OS. You can do everything from there if you're not making super meticulous adjustments. Let's be honest, at 24x24 pixels and 8-bit color depth, who the hell is going to be able to see any detail?

GIMP Method:
1. Open the image you wish to convert into an icon.
2. Make your edits, then change the color depth to 8-bits (256-color) via **Image > Mode > Indexed**. Default options are fine. (255 color is correct; arrays start at 0 instead of 1.)
3. Resize the image to 24x24 pixels via **Image > Scale Image**.
4. Export the image as a Bitmap (.BMP) via **File > Export**. You will be notified that alpha channels will be ignored, this is normal for zero-transparency formats. Click **Ok**.
5. When prompted with the **Export image as BMP** menu, expand the **Compatibility Options** menu by clicking it, tick the **Do not write color space information** box, then click **Export**.

MS Paint Method:
1. Open the image you wish to convert into an icon.
2. Make your edits and scale the image to 24x24 pixels.
3. Save as 256-color Bitmap (via drop down menu in **Save As** prompt).

Once your button icons are all created, place them in the `%APPDATA%\Notepad++\plugins\config` folder. Open Notepad++, navigate to **Plugins > Customize Toolbar > Custom Buttons** and click it. This creates a definition file and enables custom toolbar buttons. If you come to find no file has been created, ensure you're running Notepad++ as an administrator. (That goes for everything filesystem-related, as well.) Restart Notepad++ and open the definition file `%APPDATA%\Notepad++\plugins\config\CustomizeToolbar.btn`

Upon creation, the file is filled with example options. These lines can be removed if not used. Line format/syntax can be accessed via **Plugins > Customize Toolbar > Help - Custom Buttons**. Line 1 is the function type, line 2 is the name of the function, lines 3 and 4 I don't know but it says they're additional strings, and line 5 is the image to use for the button. Here is my button definition for example:

`Macro,TDM-GCC x64,,,gnu24.bmp`

In this case, `Macro` specifies it's a... Macro, `TDM-GCC x64` is the name of my Macro to compile with TDM-GCC x64 native, and `gnu24.bmp` is the name of the button icon Bitmap located in the `%APPDATA%\Notepad++\plugins\config` folder. Once you've added the lines for your buttons, set the proper encoding via **Encoding > Convert to UCS-2 LE BOM**, then save the file. (Refer to **Plugins > Customize Toolbar > Help - Custom Buttons** for details on file encoding requirements). Restart Notepad++ to update the toolbar. If all goes to plan, your toolbar should have custom icons, like so:

[![alt text][image]][hyperlink]

  [hyperlink]: https://github.com/subvod
  [image]: https://i.imgur.com/C62DeMQ.png (tooltip)

### How to download and convert YouTube videos?

Everyone has their own method and preferred formats. I personally use OPUS, but you can change around both the youtube-dl and FFmpeg command lines to fit your formatting preferences. My **webm2opus.py** script automates the downloading and conversion processes, including automatically assigning metadata according to the input filename.

1. Download and install [Python](https://www.python.org/downloads/). Restart your system if you chose to add Python to `%PATH%`. This entire process can be done in pure PowerShell and even 100% Batch, but I honestly prefer Python. Much more room to stretch my legs.
2. Download both [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html) and [FFmpeg](https://ffmpeg.org/download.html), as well as [webm2opus.py](https://github.com/subvod/examples/blob/master/webm2opus.py). Extract and copy all three (**webm2opus.py**, **ffmpeg.exe**, and **youtube-dl.exe**) to the same directory, then run **webm2opus.py**.
3. Open **_videolist.txt** (file name can be changed as you see fit) and paste video links, one line each. Update links as needed.
4. Run **webm2opus.py** when you want to download and convert the videos from the list.
