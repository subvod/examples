# Index

[pack_format](#pack_format)
<br>[Change Skin Via Resource Pack](#change-skin-via-resource-pack)
<br>[Ores](#ores)
<br>[Block Functions](#block-functions)
<br>[Bypass Launcher](#bypass-launcher)

### pack_format

*Defines the version(s) of Minecraft some packs are compatible with.*

[[Reference.]](https://minecraft.fandom.com/wiki/Pack_format)

**Resource Packs:**

pack_format | Minecraft version(s)
:--- | ---
1 | 1.6.1–1.8.9
2 | 1.9–1.10.2
3 | 1.11–1.12.2
4 | 1.13–1.14.4
5 | 1.15–1.16.1
6 | 1.16.2–1.16.5
7 | 1.17.x
8 | 1.18.x
9 | 1.19-1.19.2
11 | 22w42a-22w44a
12 | 1.19.3-1.19.4

**Data Packs:**

pack_format | Minecraft version(s)
:--- | ---
4 | 1.13–1.14.4
5 | 1.15–1.16.1
6 | 1.16.2–1.16.5
7 | 1.17-1.17.1
8 | 1.18–1.18.1
9 | 1.18.2
10 | 1.19-1.19.3
11 | 1.19.4

### Change Skin Via Resource Pack

1. Copy and paste your Minecraft version's `.jar` file into the `resourcepacks` folder.
2. Change its extension to `.zip`.
3. Open the Minecraft version's `.jar` file with an archiving tool like 7-Zip.
4. Delete all files and folders except the `assets` folder.
5. Navigate to `assets\minecraft\textures\entity\player.` You can delete any other files/folders in any of these subdirectories.
6. The `wide` folder uses classic skins with 4px arms. The `slim` folder uses sleek skins with 3px arms.
7. Extract any player skin you want to mod and replace it with the same file name and extension.
8. (OPTIONAL) To change the pack icon, just add a `pack.png` image as long as its size is a power of `2`. A `64x64` icon will work, for example.
9. Start up Minecraft and load up your resource pack.

Hold `F3` and press `F4` to cycle through game modes.

### Ores

Type | Most Common<br>Depth | Depths | Batches Per Chunk
:--- | --- | --- | ---
Coal Ore | -<br>95 | 136/320<br>0/190 | 30<br>20
Copper Ore | 47 | -16/112 | 6
Redstone Ore | -50 | -63/15<br>-63/-32 | 4<br>8
Iron Ore | 255<br>15<br>- | 128/320<br>24/54<br>-63/64 | 40<br>6<br>3
Gold Ore | -16<br>- | -64/32<br>32/256 (Badlands) | 4<br>50 (Badlands)
Nether Gold Ore | - | 10-117 | 10<br>20 (Basalt Delta)
Emerald Ore | 256 | -16/320 | 50
Diamond Ore | - | 14/-63 | 7 (1-4 Ores)<br>1 (1-12 Ores, Every 1/9 Chunk)<br>4 (1-8 Ores)

### Block Functions

Block | Unique Function
:--- | ---
Furnace | Can smelt/cook everything.
Smoker | Cooks food twice as fast.
Blast Furnace | Smelts ore/rock twice as fast.
Cartography Table | Zooms out maps. (`Map` + `Paper`)
Compass | Points to world spawn.
Lodestone | Changes `Compass` needle direction, given the Lodestone is in the same dimension.

### Bypass Launcher

*The original method I found was devised with Batch.* [[Reference.]](https://gaming.stackexchange.com/a/306709)
<br>*Below is a method I've modified to work with VBScript to avoid having a CMD window present while playing.* [[Reference.]](https://stackoverflow.com/a/1340372)

1. Download [Process Explorer](https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer). [[Direct.]](https://download.sysinternals.com/files/ProcessExplorer.zip) [[Backup of v17.02]](https://www.mediafire.com/file/bj5leu59f8bfm0t)
2. Create a blank **VBScript** in your `.minecraft` directory. I just rename a blank text document as `Minecraft.vbs`, for example.
3. Right click the script, click `Edit`, and paste the following code into the script:

```
Dim objShell
Set objShell = WScript.CreateObject( "WScript.Shell" )
objShell.Run("javaw" & " -args")
Set objShell = Nothing
```

4. Run the **Minecraft Launcher** and launch the **exact** version and configuration which you want to use. Yes, **Forge**, **Fabric**, etc make a difference.
5. Run **Process Explorer** and find the **Minecraft** process (it'll be a `javaw.exe` process).
6. Double-click on the process to view details and copy the command line used to run it. If you have two or more processes running through `javaw.exe`, it's gonna be the one with the longest command line.
7. Replace the `javaw` within the quotes with the full application path of `javaw.exe` at the beginning of the command you copied from **Process Explorer**. Newer launcher versions will automatically download the latest JVM from Mojang. For example, mine is: `C:\Users\Admin\AppData\Roaming\.minecraft\runtime\temurin-latest-windows-x64\bin\javaw.exe`
8. Replace the `-args` in the second pair of quotes with all of the arguments. (The rest of the command you copied). Remember to keep that first space after the open quote.
9. The command will include a `-Djava.library.path=` which points to a temporary directory that only exists while Minecraft is still open. These are your natives and necessary to run the game. While the game is still running in the same instance, navigate to and copy that directory somewhere. This ensures they'll always be present on runtime.
10. Append the path of the natives to `-Djava.library.path=`. (You'll have to replace the path that's there after the `=`.)
11. (OPTIONAL) If you want to have a fancy icon, just create a shortcut to the Batch script, right click the shortcut, and click `Change Icon...`.
