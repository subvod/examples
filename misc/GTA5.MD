# GTA5.MD

*A collection of notes for story mode players.*

# TABLE OF CONTENTS

[TABLE OF CONTENTS](#table-of-contents)
<br>[INFORMATION](#information)
<br>&emsp;[Quick Tips](#quick-tips)
<br>[MODS](#mods)
<br>&emsp;[Tools](#tools)
<br>&emsp;[Trainers](#trainers)
<br>&emsp;[Quality Control](#quality-control)
<br>&emsp;[Gameplay Mods](#gameplay-mods)
<br>&emsp;[References](#references)
<br>[GAMEPLAY](#gameplay)
<br>&emsp;[Ground Vehicle Tips](#ground-vehicle-tips)
<br>&emsp;[Air Vehicle Tips](#air-vehicle-tips)
<br>&emsp;[Aquatic Vehicle Tips](#aquatic-vehicle-tips)
<br>[RARE VEHICLES](#rare-vehicles)
<br>&emsp;[Regular Vehicles](#regular-vehicles)
<br>&emsp;[NPC-Modified Vehicles](#npc-modified-vehicles)
<br>&emsp;[Beach Bum Update Vehicles](#beach-bum-update-vehicles)
<br>&emsp;[Gang Vehicles](#gang-vehicles)
<br>&emsp;[Convertibles](#convertibles)
<br>[SECURITY VANS](#security-vans)

# INFORMATION

### Quick Tips

- [GTA V Basic Modding Guide](https://github.com/ikt32/GTAVBasicModdingGuide)
- Aiming while walking helps your character stay balanced even on sheer cliffs.
- If you shoot an RPG into waist high water, it will float up into the air.
- Vehicles are flooded if the exhaust is submerged for more than `3` seconds. Use **HVY Dump**, **Vapid Guardian**, **Dock Handler**, **Duneloader**, etc.

### Add Backfire to Any Vehicle

[Source.](https://forums.gta5-mods.com/topic/37477/how-to-assign-remove-exhaust-backfire-to-from-vehicle/7)

```
@Sup321V
I have indeed confirmed that that works (giving washington the sultanrs audio hash gives it audio & visual backfire effect). Albeit the visual effect was a little off, only one backfire left & right (2 total) when washington has 4 exhausts total etc. That might be an issue you have to contend with no matter how it's done with game files alone. Might have to take the backfire effect from a similar vehicle with the same amount of exhausts etc (that might work) or fix/add more exhaust dummies in ZModeler etc.

I'll investigate if there is a way to achieve adding audio/visual backfire effects & keep the original engine sounds. I'll test that right now, shouldn't take long... :thumbsup:

...Sometime later...

...Yeah, that's totally possible :thumbsup:

I have a few engine audio related tuts on my profile page, there is a lot of good information in them, including detailed descriptions of how to edit '.rel' files . Start with this one if you have a look at them, but basically to add backfire effects to a vehicle that does not have them by default, you do this:

Add Exhaust Backfire - Instructions:

    Download/install/use CodeWalker's RPF Explorer to export the games 'game' '.rel' files (the ones with 'game.dat' in the name ('game.dat151.rel' for example), ignore the numbers as it's possible for them to be different (149, 150, 151 etc)) to XML ('.rel.xml') & edit them with a text editor (Notepad++ etc). There are many different ones stored in different dlc's with the base game one being here:

...\Grand Theft Auto V\mods\update\update.rpf\x64\audio\config\game.dat151.rel

Find the ones you want to edit & the one you want to copy info from (they will likely be in the same dlc as the vehicles are, in a 'x64\audio' or 'x64\audio\config' folder structure) & export them (CodeWalker's RPF Explorer > right-click file > 'Export XML...') to a Windows folder of your chioce.

    Open the 'game.dat' '.rel' file/s in your text editor & search for the game name (washington etc) of the vehicle you want to give/add backfire effects to.
    Under it's name, copy the data (it'll either be in English or hash form, doesn't matter which) entered in the '<Engine>' line (washington > '<Engine>' line > hash_390C6146 for example) & search the rest of the file for it
    You will then find a '"VehicleEngine"' section with that English name or hash in it's '<Name>' line
    Scroll down in that '"VehicleEngine"' section until you find the lines '<ExhaustPops>' & '<ExhaustPopsUpgraded>'
    You then edit those lines (one is for default/always on, the other when exhaust is upgraded) to the same as another vehicle that has backfire effects by default.
    Save the file after & reimport it back into the game in it's original location using CodeWalker (In CodeWalker's RPF Explorer > right-click anywhere within the original folder > 'Import XML...' > navigate & select file (RPF Explorer file UI will blink when import complete)).
    Test changes in-game

Remove Exhaust Backfire - Instructions:
To do the opposite, & remove a backfire effect, just set the vehicle's 'ExhaustPops' lines mentioned above to 'null_sound':

Example:

   <ExhaustPops>null_sound</ExhaustPops>
...
   <ExhaustPopsUpgraded>null_sound</ExhaustPopsUpgraded>

That should be all that is required. As mentioned, tons of detailed info in the vehicle engine tuts on my profile page. If you intend to edit vehicle sounds, give them a read as they cover all the basics of accessing & editing '.rel' files & some details on how the 'game.dat' & 'sounds.dat' files relate to one another etc.

When you see my tuts, especially the 'How to create an add-on engine sounds dlc' one, you'll understand why I was asking for as much detail as possble
```

### Keyboard Touchpad Combo

My mouse died so here's [how to use a touchpad and keyboard simultaneously](https://answers.microsoft.com/en-us/windows/forum/all/how-do-i-use-my-touchpad-and-my-keyboard-at-the/3f3e09dc-61e5-4d06-9465-8c96c4a66f68). My system doesn't have these options, so I set the touchpad to `Most Sensitive`.

```
Disabling PalmCheck or other similarly-named settings removes the delay between being able to use the touchpad after using the keyboard, allowing you to use touchpad and keyboard at the same time.

Kindly follow these steps.

1. Click Start.
2. Start typing Control Panel, and click on Control Panel from the results.
3. If you are in Category view, click on Hardware and Sound.
4. Under Devices and Printers, click on Mouse.
5. In mouse and touchpad software window, Look for any settings related to palm tracking, touchpad sensitivity, or SmartSense.
(If yours in Synaptics Touchpad, under the Synaptic Settings, go to Pointing, then select Sensitivity and Select Palmcheck and set it to Minimum)
6. These settings vary by manufacturer because Windows has limited ability in controlling touchpad options.

Also try in Control panel:
- In Hardware and Sound
- open Touchpad
- In additional tap of the new window that opened up on touch pad settings
- Scroll to TP Rejections and disable it
```

# MODS

*Things I use myself.*

- If you're looking for more varied cars in traffic, I highly suggest **V Rainbomizer** over mods that modify game files. Models can be excluded from the pool by editing `BigVehicles.txt`.
- Don't like Rockstar's panty-sniffing DRM? Use [this](https://www.1337x.to/torrent/5929875/Grand-Theft-Auto-V-GTA-V-v1-0-3095-v1-68-online-All-DLCs-Bonus-Content-MULTi13-DODI-Repack/).

### HOW TO UPGRADE GTA V STORY MODE

There are quite a few mods which improve the story mode of GTA V. Tailor your game to how you want it. I prefer my GTA V pretty vanilla due to having spent several thousand hours on XB1, strictly story mode. Here's the steps I took to improve my own experience and make this now decade old game last even longer:

1. Install all `vcredist` versions for your OS. (Install both `x86` and `x64` versions to maximize compatibility.)
2. Install **ScriptHookV**.
3. Install **ScriptHookVDotNet**.
4. Install **OpenIV**.
5. <s>Install **Lenny's Mod Loader**. I use **lml** to load in my modified `gameconfig.xml`.</s>
6. Install **JM36 Lua Plugin**.
7. (OPTIONAL) Install **RAGE Plugin Hook**. Note that previous versions of **RPH** are not maintained, so archived builds may not work with specific versions of GTA V.
8. Install a better `gameconfig.xml`. I use **pnwparksfan**'s.
9. Install **Heap Adjuster**.
10. Install **Packfile Limit Adjuster**.
11. Install **SirenSetting Limit Adjuster**.
12. Install **Fixes & Improvements**.
13. Install **Map Fixes**.
14. Install **No Boundary Limits**.
15. Install **Quality of Life Vehicle Pack**.
16. Install **Railroad Engineer**.
17. Install **New License Plates**.
18. Install **TurboSystemV**.
19. Install **Fuel Reloaded**.
20. Install any trainer of your choosing. I prefer using both **Menyoo** and **ENT**.

### CORE MOD NOTES

**OpenIV**:

Mods released as `dlc.rpf` must be installed to `mods\update\x64\dlcpacks`. For example, `mods\update\x64\dlcpacks\m188_siren_fixes\dlc.rpf`.

1. Start **OpenIV** and nagivate to `mods\update\update.rpf\common\data`.
2. Enable **Edit Mode**. (Click `Edit Mode` button left of searchbox in top right corner.)
3. Right click `dlclist.xml` (listed under the `XML Text` category within **OpenIV**)
4. Click `Edit`.
5. Scroll to the bottom of the list and paste as shown: `<Item>dlcpacks:/dlc_name_here/</Item>`. For example: `<Item>dlcpacks:/m188_siren_fixes/</Item>`.
6. `CTRL+S` to save.
7. Close **OpenIV** and start game.

**ScriptHookV**/**ScriptHookVDotNet**:

Scripts meant for **SHVDN** are usually version-dependent, meaning .NET code made for **SHVDN3** may not work with **SHVDN2** and other previous versions.

1. If your main game directory doesn't have a `scripts` folder after installing **SHVDN**, create one.
2. Place `.dll` and `.cs` files into said `scripts` folder.

### ESSENTIAL MODS

Name | Description
:--- | ---
[Visual C++ Redistributables](https://docs.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170) | a.k.a. `vcredist`. [Alternate link.](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)
[ScriptHookV](http://www.dev-c.com/gtav/) | Allows scripts written in C++ to be run. Includes `.asi` loader `dinput8.dll`. SDK for development of C++ plugins available on the same page.
[ScriptHookVDotNet](https://github.com/crosire/scripthookvdotnet) | A.k.a. **SHVDN**. Allows scripts written in any **.NET** language to be run.
[OpenIV](https://openiv.com/) | Open and edit RAGE `.rpf` archives. (GTA IV, GTA V, RDR II, etc). Includes `OpenIV.asi`.
[Lenny's Mod Loader](https://www.lcpdfr.com/lml/index/) | a.k.a. **lml**, a well-documented mod loader with easy installation in mind.
[RAGE Plugin Hook](https://ragepluginhook.net/) | Hooks into and acts as an interface between custom code and RAGE engine based games like **Red Dead Redemption 2** and **Grand Theft Auto 5**.
[JM36 Lua Plugin](https://www.gta5-mods.com/tools/jm36-lua-plugin-for-script-hook-v-reloaded) | Adds Lua script support. Place `.lua` mod scripts into `scripts\ScriptsDir-Lua`. [Source code on GitHub.](https://github.com/JayMontana36/LuaPlugin-GTAV)
[gameconfig](https://github.com/pnwparksfan/gameconfig) | Add-on mods in GTA V typically require a modified `gameconfig.xml` to increase various memory pool limits. This repository serves as a central location for known-working gameconfig files for each GTA V update. Files based on [Gameconfig.xml by Dilapidated](https://www.gta5-mods.com/misc/gameconfig-xml-dilapidated). Some gameconfigs may not work for other users, in which case try [F7YO's Gameconfig](https://www.gta5-mods.com/misc/gta-5-gameconfig-300-cars). Both require **Heap Adjuster** and **Packfile Limit Adjuster**.
[Heap Adjuster](https://www.gta5-mods.com/tools/heapadjuster) | Modified version of the **HeapAdjuster** mod to resolve `ERR MEM EMBEDDEDALLOC ALLOC` error crashes caused by using more memory than the heap allows. The modified version comes with an `.ini` so users can define the heap size manually as they wish. Also, please make sure to combine your DLC packs. Not doing so is the most common reason for `ERR_FIL_PACK_1`.
[Packfile Limit Adjuster](https://www.gta5-mods.com/tools/packfile-limit-adjuster) | Doubles the amount of packfiles (`.rpf`) the game can handle. Please note that this plugin will only "fix" `ERR_FIL_PACK_1`, nothing else. Get a better **gameconfig** and install the **Heap Limit Adjuster** if you still experience crashes. [Source code on GitHub.](https://github.com/Dilapidated/gtav-HeapAdjuster-ini)
[SirenSetting Limit Adjuster](https://www.gta5-mods.com/scripts/sirensetting-limit-adjuster) | Raises various siren limits.
[fwBoxStreamerVariable and decals limit patch](https://www.gta5-mods.com/tools/ymap-load-list-extent-limit-fix-fwboxstreamervariable-patch) | Patches `.ymap` load list extent limit and decal limit. Basically when there are too many ymaps running in parallel, some part of the map unloads. Requires updated **vcredist**.
[Weapon Limits Adjuster](https://www.gta5-mods.com/tools/cweaponinfoblob-limit-adjuster) | The game has a hardcoded limit on the number of weapons.meta files that can be loaded and on the total number of weapon components that can be defined, which Rockstar increases everytime new weapons.meta or weapon components are added in DLCs. Reaching any these limits when installing weapon mods makes the game crash while loading. This ASI allows you to increase these limits to prevent those crashes.
[MenyooSP](https://github.com/MAFINS/MenyooSP) | SP trainer. Disables DLC car despawn. Incompatible with **Object Spawn Unlocker**. Latest build on [gta5-mods](https://www.gta5-mods.com/scripts/menyoo-pc-sp) is outdated.
[LemonUI](https://www.gta5-mods.com/tools/lemonui) | UI framework for GTA V. Intended to replace NativeUI. [Source code on GitHub.](https://github.com/justalemon/LemonUI)
[Map Editor](https://www.gta5-mods.com/scripts/map-editor-oldnapalm) | Updated version of Map Editor.

### ACCESSIBILITY MODS

NAME: | DESCRIPTION:
:--- | ---
[Add-On Vehicle Spawner](https://www.gta5-mods.com/scripts/add-on-vehicle-spawner) | Automatically looks for add-on vehicles and puts them in a menu for you to spawn. [Source code on GitHub.](https://github.com/ikt32/GTAVAddonLoader) Uses [simpleini](https://github.com/brofield/simpleini).
[Enhanced Native Trainer](https://www.gta5-mods.com/scripts/enhanced-native-trainer-zemanez-and-others) | A.k.a. **ENT**. SP trainer.
[Simple Trainer](https://www.gta5-mods.com/scripts/simple-trainer-for-gtav) | SP trainer.
[Rampage Trainer](https://www.gta5-mods.com/scripts/rampage-trainer) | SP trainer.
[SimpleHUD](https://www.gta5-mods.com/scripts/simplehud-venoxity) | Displays player's current location, as well as a compass and the time. Customizable via `.ini`.

### DRIVING MODS

NAME: | DESCRIPTION:
:--- | ---
[TurboSystemV](https://www.gta5-mods.com/scripts/turbosystemv-ultra-nitro) | Allows you use a "Turbo System" similar to **NFS: Hot Pursuit 2** and **NFS: Rivals** in Grand Theft Auto V.
[Fuel Reloaded](https://www.gta5-mods.com/scripts/fuel-reloaded) | A simple fuel mod that has a lot of features, `4` consumption types, `8` vehicle types.
[Community Races](https://www.gta5-mods.com/scripts/community-races-oldnapalm) | Update to Community Races by **Guadmaz**, uploaded with author's permission. [Source code on GitHub.](https://github.com/oldnapalm/CommunityRaces)
[GTA Online Stunt Race Maps](https://www.gta5-mods.com/maps/gta-online-stunt-races-map-editor-menyoo) | Contains 129 Stunt Race maps from GTA Online. These are the official ones created by Rockstar. Compatible with Map Editor and Menyoo.

### QOL MODS

NAME: | DESCRIPTION:
:--- | ---
[Map Fixes](https://www.gta5-mods.com/maps/map-fixes) | Fixes a ton of map errors.
[Fixes and Improvements](https://www.gta5-mods.com/misc/fixes-improvements) | Fixes various errors and oversights in the game.
[No Boundary Limits](https://www.gta5-mods.com/scripts/no-boundary-limits-unknown-modder) | Patches numerous boundary limits, a full list can be found in the config file.
[Diving Motion](https://www.gta5-mods.com/scripts/diving-motion) | Activates the "alternative" animations for swimming underwater (used in the mission "Monkey Business"). The animations are activated only when wearing scuba flippers (a trainer is required to equip them) and with a specific set of characters (but there's an option to extend this to other characters too).
[DLC/MP Vehicles in Singleplayer](https://www.gta5-mods.com/scripts/dlc-mp-vehicles-in-singleplayer) - Adds some of the vehicles from DLCs and Multiplayer to singleplayer via `popgroups.ymt`. The new cars can be found in traffic throughout Los Santos and Blaine County, as well as in parking spaces.
[Quality of Life Vehicle Pack](https://www.gta5-mods.com/vehicles/quality-of-life-vehicle-pack-replace) | Fixes the broken surface normals (causing a "bubbly" appearance) and a vast number of other bugs on 122 original & early DLC vehicles. Every vehicle and tuning part in this pack features corrected and properly weighted normals on all affected LODs.
[Railroad Engineer](https://www.gta5-mods.com/scripts/railroad-engineer) | Extension for Grand Theft Auto V to control trains and trams.
[New License Plates](https://www.gta5-mods.com/paintjobs/new-license-plates-add-on) | The first license plate pack working as an add-on. Featuring `63` lore-friendly license plates; `7` from iFruit files, `1` from game files, `54` made from scratch, `1` designed by another person. All plates feature custom normal maps and other parameters such as text size, color, or placement on the actual plate. Kind of a shame Rockstar never added the plates featured in iFruit files, it would add some variety to customization.
[Rainbomizer](https://gtaforums.com/topic/974412-v-rainbomizer/) | Configurable randomizer collection. [Source code on GitHub.](https://github.com/Parik27/V.Rainbomizer)
[Vigilante Missions](https://www.gta5-mods.com/scripts/gta-4-vigilante-missions) | GTA IV style "Cleaned the Mean Streets" missions. [Source code on GitHub.](https://github.com/I-E-A-I-A-I-O/VigilanteMissions)
[No Turbulence](https://www.gta5-mods.com/scripts/no-turbulence-unknown-modder) | Removes turbulence for all aircrafts. And by all aircrafts I mean **all** aircrafts. Default ones, DLC ones, Add-Ons, etc. The purpose of this plugin is that you don't need to edit handling files to remove turbulence. You also don't need to care about updating everything after a game update or when you install Add-On aircrafts.
[GTA V Remastered: Enhanced](https://www.gta5-mods.com/maps/gta-v-remastered-enhanced) | GTA V E&amp;E community edition.
[Forests of San Andreas: Revised](https://www.gta5-mods.com/maps/forests-of-san-andreas-revised) | Helps the game world look less barren.
[Enable All Interiors](https://www.gta5-mods.com/scripts/enable-all-interiors-wip) | Merge project of existing interior mods.

### TOOLS

TOOL | Description
:--- | ---
[CodeWalker](https://github.com/dexyfex/CodeWalker) | Interactive map editor. Discord server serves latest downloads (invite link on [GTA5-Mods](https://www.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map)).<br>&emsp;[Well organized modding video tutorials by Tobiii.](https://www.youtube.com/playlist?list=PL3KgAhmoIEOU540c5hydM5KaVXeJcYiPF)
[lambda2ymap](https://redm.khzae.net/lambda2ymap/) | Convert between map formats.
[Map Editor &amp; Menyoo to YMAP Converter](https://www.gta5-mods.com/tools/mapeditor-2-ymap-converter) | Convert MapEditor & Menyoo maps to `.ymap` format. [Source code on GitHub.](https://github.com/sollaholla/me2ymap)
[Handling Guide](https://eddlm.github.io/Handling-Tools/guide) | A detailed guide on how to edit vehicle handling.
[Handling Guide](https://forums.gta5-mods.com/topic/24280/understanding-and-editing-gtav-s-handling/2) | Secondary post by Eddlm.
[Handling Editor](https://eddlm.github.io/Handling-Tools/handling) | Online car handling editor.

### REFERENCES

- [Vehicle IDs](https://wiki.rage.mp/index.php?title=Vehicles)
- [Enable/disable backfire](https://forums.gta5-mods.com/topic/24300/exhaust-backfire-disable/2) via mods using OpenIV.
- [Weapon, med kit, and armor locations](https://gtaforums.com/topic/696088-weapons-locations/), all compiled nice and neat.

# GAMEPLAY

*Some notes about gameplay in general.*

### GROUND VEHICLE TIPS

**Carjacking at gunpoint.**

Carjacking at gunpoint prevents unarmed drivers from becoming hostile towards you. It can be done with any pistol or assault rifle that comes with the enhanced version by default. Those are: Pistol, Combat Pistol, AP Pistol, Pistol .50, SNS Pistol, Heavy Pistol, Vintage Pistol, Assault Rifle, Carbine Rifle, Advanced Rifle, Special Carbine, and Bullpup Rifle. Equipping any special tint (gilded, wood grip, etc) disables carjacking at gunpoint with that weapon. Using standard tints does not. Attachments do not affect the animation. DLC pistols and assault rifles don't appear to be tied to the same animation sets, and as such do not trigger the pointing animations. This can likely be fixed with mods. The `MP_Male` and `MP_Female` multiplayer models support the same animations.

**Keep engine running.**

Equip any weapon, shoot (only one shot necessary) or melee with it, then immediately hop in your vehicle. When you exit, the engine will remain running.

**Shotguns in vehicles.**

You can use the **Sawed Off Shotgun** and **Auto Shotgun** while on a motorcycle.

**Stopping on steep grades.**

Using regular brakes will not lock the car in place. Tap the handbrake when stopped. It'll lock the car's position regardless of grade.

**Off roading.**

AWD/4WD is helpful, but RWD cars are usually faster on dirt. Granted, with a bit of practice. Here's my personal picks for trails and offroading:

CAR | NOTES
:--- | ---
Maxwell Vagrant | This thing trumps all surfaces.
BF Dune Buggy | Good all-around RWD. (The **Dune FAV** is more prone to rollover.)
Vapid Blade | Surprisingly good on trails and hillclimbs.
BF Bifta | RWD takes getting used to but blazes trails once learned. Poor hillclimb, though.
Karin Sultan | Speedy on trails, but too grippy for tight turns at high speed.
Vapid Sandking XL | Decent all around. High suspension, average top speed, decent cornering. Good hill climber.

### AIR VEHICLE TIPS

**What's the best plane?**

Well, up to the individual to check stats for themselves. Helicopters aren't affected by turbulence, but planes (generally) fly faster. Here's my personal favorites:

PLANE/HELI | NOTES
:--- | ---
Mammoth Hydra | VTOL, higher top and lower cruising speeds than **P-996 LAZER**, easy to land.
Mammoth Dodo | Amphibious. Quite resistant to turbulence. Very easy to land.
Western Cuban 800 | Well-balanced across the board. Easy to land. Has lights.
Buckingham Alpha Z1 | Immune to turbulence. Fast cruise speed. Somewhat difficult to land.
Maibatsu Frogger | well-balanced civilian heli.
Buckingham Savage | well-balanced attack heli.

**How to land planes.**

Some are easier than others. Hold decel key about halfway down. (PC users periodically tap decel.) Speed will begin to decrease. Holding decel any farther will shut the engine, and most jet-powered (and even some prop-powered) planes drop like a rock when doing so.

Gear down on approach. It increases air resistance, therefore lowering the maximum cruise (idle) speed.

**Stealing the Atomic Blimp.**

Land on top either by helicopter or parachute. Walk to the very front edge. Enter vehicle. You'll clip through as if the doors were blocked.

### AQUATIC VEHICLE TIPS

**Getting the SCUBA gear.**

You get it only by exiting a **Dinghy**, **Submersible**, or **Kraken**.

**Parking boats.**

There doesn't appear to be a solid way to keep boats where they are after entering them. The tide/current will guide them away from where you leave them. No aquatic vessel is exempt from this.

# RARE VEHICLES

Below are vehicles which are rare, but not missable. The type of vehicle being driven appears to affect what vehicles spawn. If you want a **Grotti Turismo R** or **Pegassi Zentorno**, drive a Super car like a **Pegassi Infernus** or **Vapid Bullet GT**. If you want a **Invetero Coquette Classic**, drive a Sports Classic like a **Pigalle**, **Vapid Peyote**, or **Declasse Tornado** (clean variant). If you want a **Bravado Rat-Loader**, drive any beater car or something old like a **Vapid Hotknife** or **Vapid Blade**.

When approaching any known spawn of significant rarity, drive slowly. I've found maintaining `20 mph` and just barely touching the throttle works best.

Scenario spawns can be viewed, altered, and/or deleted within **CodeWalker**. [Read more about scenarios and scripted events here.](https://gta.fandom.com/wiki/Vehicles_in_GTA_V/Scenarios)

### REGULAR VEHICLES

These are regular vehicles, just highly localized and/or generally hard to find.

**BF Dune Buggy**
- `11:00`-`18:00` Driving north on dirt road east of **Los Santos Customs** in **Grand Senora Desert**.
- `07:00`-`15:00` Parked next to a radio tower and shack west of **Yellow Jack Inn** in **Grand Senora Desert**. Sometimes surrounded by a **Brute Camper**, **BF Injection**, or an NPC driving a **MTL Packer** northbound (away from the radio tower).
- `18:00`-`23:00` Driving east on dirt road parallel train tracks north of **Sandy Shores Airfield**. Drives entire dirt road, then turns onto **East Joshua Road** at **Marina Drive**.
- `14:00`-`18:00` Driving west at dirt road junction west of **Sandy Shores Airfield**.
- `12:00` Parked next to an Auto Repair Shop on **Marina Drive** in southern **Grapeseed**.
- `08:00`-`20:00` Parked under the canopy of a shut gas station on **Marina Drive** in southern **Grapeseed**. Sometimes with two or three **Sanchez (livery)**.
- `15:00`-`20:00` Parked in the cul-de-sac on the western end of **Marina Drive** in **Grand Senora Desert**.
- `06:00`-`19:00` Parked next to a water tower in northeastern **Stab City**.
- `19:00` Driving southwest (spawns mobile at the bridge to **Mount Chiliad**) on **North Calafia Way**, continuing down along the **Alamo Sea**.
- `07:00`-`12:00` Driving south on beach east side of **Great Ocean Highway** (northwest of **Fort Zancudo**). Merges onto **Zancudo Trail** and continues south around **Fort Zancudo** alongside **Lago Zancudo**. May spawn driverless.
- Parked under the first big jump on the south side of the dirt path leading down from the cable car drop off point atop **Mount Chiliad**.
- 24 hours. Parked beside dirt road (second road south from **Cassidy Creek**) in **Raton Canyon**. Almost dead south (just a bit west) in line with **Altruist Camp**.
- Parked beachside on northern edge of **Mount Gordo**. Directly east of **Up 'n' Atom Burger**. Almost directly north (beyond **Braddock Pass**) of **Weed Farm** (Trevor random encounter).
- Parked aside seawall next to beach in northwestern **Paleto Bay**. Northwest of **The Hen House**. Southwest of `Parachute Jump 4`.

**Bravado Rat-Loader**
- `06:00`-`03:00` Parked at the house directly east of *Cletus'* on **Marina Drive** in **Sandy Shores**.
- Parked in dirt alley just west of **Ammu-Nation** in **Sandy Shores**.
- Parked next to farm house off the east side of a dirt road (dead east of **Redwood Lights Track**, southeast of **Los Santos Customs**) in **Grand Senora Desert**.
- Parked in carport attached to trailer on **Lesbos Lane** (next to two red shipping containers off **Algonquin Boulevard**). East of **Ace Liquor**.
- Parked aside a red trailer on the northeast corner of **Algonquin Boulevard** and **Mountain View Drive** in **Sandy Shores**. (East of **Ammu-Nation**.)
- `15:00`-`22:00` NPC-modified variant driving out of the **LTD** Fuel Station in **Grapeseed**, headed northeast on **Grapeseed Main Street**.
- `07:00`-`15:00` NPC-modified variant parked afront **Beeker's Garage** in **Paleto Bay**.

**Bravado Police Cruiser (Buffalo)**
- `18:00`-`04:00` Under Train Station on **Olympic Freeway** in **Strawberry**.
- Commonly patrolling around the **Car Impound** (Police Station) in **Mission Row**.

**Brute Boxville (LSDWP)**
- `09:00` Leaving north exit of LSDWP facility on west side of **Popular Street**, then driving south. Sometimes parked at same facility.
- Pulling out of LSDWP facility onto **Elgin Avenue**, heading south.

**Buckingham Swift**
- `06:00`-`18:00` Both the regular and Flying Bravo variants will land at the easternmost helipad at the terminal of LSIA.
- Black variant taking off at the **NOOSE Headquarters** on **Sustancia Road**, in **Palomino Highlands**.
- Flying Bravo variant flying along the east coast of **Blaine County**, usually near the **RON Alternates Wind Farm**.

**Declasse Gang Burrito**
- During `Mr. Philips`
- During `Nervous Ron`
- During `Property Management: Gang Attack` for **Car Scrapyard**.
- Random events involving *The Lost MC*.
- Trevor switch scene. He throws a man, usually a Lost MC Member, from a bridge. Behind him there will be a Gang Burrito in lieu of Trevor's own vehicle.

**Declasse Granger (Lifeguard)**
- Parked at lifeguard lookout posts and stations along **Vespucci Beach**.

**Declasse Granger (Park Ranger)**
- Parked at **Paleto Bay Sheriff Office**.
- Parked at Ranger Station (north of Vinewood sign) at dead end of **Mount Haan Drive** in **Vinewood Hills**.
- Parked at **Beaver Bush Ranger Station** on southeast corner of **Baytree Canyon Road** and **Marlowe Drive**.
- Driving east on dirt path (north side of **Cassidy Creek**) toward bridge which crosses the creek.
- Driving into parking lot of **Bolingbroke Penitentiary**. Driver will park up, walk to a fuel tanker, and light a stogie.
- Parked on outskirts of Mount Gordo (near Mount Chiliad) with a ranger nearby.
- Random Trevor switch scene. He's in the **Grand Senora Desert** being chased by two **Sheriff Cruisers** and one **Park Ranger**.

**Declasse Tornado (Mariachi)**
- `11:00`-`18:00` Parked in lot west of **Ammu-Nation** on **Route 68** in northern edge of **Great Chaparral**.
- During `The Civil Border Patrol`
- `15:00`-`20:00` Random event easter egg atop **Raton Canyon**.

**Dinka Akuma**
- Parked with a **Dinka Double T** at a trailer house east of **Sandy Shores Airfield**.

**HVY Docktug**
- `17:00` Up to two parked on a seawall extension off of **Autopia Parkway**. It can be accessed via two roads close to the Auto Repair Shop used during the `Gauntlet` heist setup missions. Sometimes a **Dock Handler** may spawn here as well.
- Driving north out of first gate for LSIA (south of **Los Santos Customs**).
- `12:00` Driving out of oil pumps in **Banning** onto **Dutch London Street** eastbound.
- `06:00`-`12:00` Parked on road shoulder opposite **D-Rail** building near the drydocks on **Elysian Island**.
- `12:00` Driving north on **Plaice Place**, away from the **Post Op Depository**, on **Elysian Island**.

**JoBuilt P-996 LAZER**
- Parked, taxiing, landing eastbound, taking off westbound, and/or flying at various spots around **Fort Zancudo**.
- `07:00`-`11:00` Flying over **Raton Canyon** every in-game half hour. Rarely in groups of three.

**JoBuilt Mammatus**
- Flying around Los Santos.
- `15:00`-`18:00` Occasionally lands at **Sandy Shores Airfield**.
- Flying eastbound over the northern shore of the **Alamo Sea**.
- Flying westbound towards the railroad bridge over **Raton Canyon**.
- Parked outside the western wall of **Michael's Hangar** in **LSIA**, usually next to a **Cuban 800**.

**JoBuilt Velum**
- Parked afront **Hangar A17** on the southern side of **LSIA**.

**Titan**
- Up to four parked in **Fort Zancudo**.
- Taking off westbound from runway at **Fort Zancudo**.

**Karin Dilettante (Merryweather Patrol)**
- Driving west on **Eclipse Boulevard** in **Vinewood**.
- Driving around southwest side of **Davis Quartz**.
- Driving around northwest side of **Palmer Taylor Power Station**.
- `17:00`-`06:00` Driving in front of **Berth 57** (truck bays with green tin siding) in **Elysian Island**.
- Driving around the drydocks at **Pacific Allied Shipyard** (across from **Pier 400**) on southern **Elysian Island**.
- `00:00`-`06:00` Driving west on **Wild Oats Drive** in **Vinewood Hills**.

**Nagasaki Dinghy**
- East of the **Olifantus** (Tug).
- Occasionally docked at the piers around **Vespucci Helipad**.
- By the barge under the **Miriam Turner Overpass**.
- Southwest of the **Post Op Depository**.
- South side of the island by the dry docks.
- **Puerto Del Sol Marina**
- Sonar Collections Dock after `Death at Sea`
- On trailers towed by pickup trucks around **Elysian Island** and **Cypress Flats**. [[Cite.]](https://gtaforums.com/topic/786063-so-i-found-this-the-other-day/)

**Pegassi Bati 801RR**
- Pick Karim Denz as the getaway driver during `The Jewel Store Heist`, and continue the heist as normal. Once reaching the point where the heist crew members enter the tunnel, instead of following them, continue down the highway and take a right on the first exit. Drive off the exit through a broken section on the right side barrier and then make another right turn. Activate the cinematic camera mode (R on keyboard, B on Xbox, Circle for PlayStation) to focus the camera angle on the crew before passing the **Union Depository**. Drive back to the **Franklin's House** garage without exiting the cinematic camera or getting dismounted (as it will automatically break the camera lock). While the camera angle can be disorienting, no traffic will spawn along the way, therefore drive slowly and carefully to avoid crashing. Park the bike in the garage, fail the mission, and retry from the last checkpoint. The Bati 801RR should be saved in the garage even after the heist is passed. Unknown if this works in Mission Replay; unlikely. [[Source.]](https://gta.fandom.com/wiki/Bati_Custom#Grand_Theft_Auto_V_2)

**Truffade Adder**
- `08:00`-`20:00` In front of **Sessanta Nove** on **Portola Drive** in **Rockford Hills**. May spawn in either black/orange or white/blue variants, the latter being considerably rare.
- Franklin switch scene. Quite rare. Stuck in traffic in **Downtown Vinewood**, often surrounded by several uncommon cars. Up to three black Adders spawn around his Buffalo S. One is almost always guaranteed to spawn, but two or three is exceedingly rare.

**Vapid Unmarked Cruiser**
- During `Grass Roots - The Pickup` (graphite, silver, red, blue)
- `18:00`-`04:00` Randomly under Train Station on **Olympic Freeway** in **Strawberry**. Graphite variant only.
- During `Property Management: Van Retrieval` for **Smoke on the Water**.

**Vapid Liberator**
- **Rebel Radio Tower** in **Grand Senora Desert**. 

**Vapid Stretch (Pink)**
- This unique colored stretch spawns only in front of **Cockatoos** night club on the southwest side of the intersection at **Hawick Avenue** and **Eastbourne Way**. It is just northwest of the **Los Santos Customs** in **Burton**.

**Western Besra**
- `18:00`-`20:00` Flying in a group of `3` over **Lago Zancudo** northeast of the **Ammu-Nation**.

**Western Cuban 800**
- `15:00`-`18:00` Occasionally landing or taking off at **Sandy Shores Airfield**.
- Parked outside western wall of **Michael's Hangar** in **LSIA**, usually next to a **Mammatus**.
- Trevor switch scene. He'll be flying a black Cuban 800 over the **Grand Senora Desert**.

**Western Duster**
- Flying around Grapeseed.
- Parked on the cul-de-sac on the western edge of **Marina Drive** in the **Grand Senora Desert**, near the shore of the Alamo Sea. Usually spawns in red. Begins spawning after completing all of the `Flight School` lessons.
- `16:00`-`18:00` Occasionally lands at **McKenzie Field Hangar**.
- `15:00`-`18:00` Occasionally lands at **Sandy Shores Airfield**.

### NPC-MODIFIED VEHICLES

These spawn pre-modified in two or more variants of each:

Make | Model
:--- | ---
Albany | Alpha
Bravado | Gauntlet<br>Rat-Loader
Benefactor | Dubsta2<br>Feltzer<br>Glendale<br>Panto<br>Surano
BF | Bifta<br>Surfer
Canis | Kalahari
Coil | Voltic
Declasse | Rhapsody<br>Sabre Turbo
Dewbauchee | Massacro<br>Rapid GT
Dinka | Jester<br>Thrust
Enus | Huntley S<br>Super Diamond
Grotti | Turismo R
Imponte | Ruiner
Invetero | Coquette Classic
Lampadati | Pigalle
Pegassi | Infernus<br>Zentorno
Pfister | Comet
Ubermacht | Sentinel XS
Vapid | Blade<br>Dominator<br>Sandking XL
Vulcar | Warrener

**Notes:**

- Certain vehicles seem to get rare cars to spawn more often. I've had the best overall luck with the **Vapid Blade** and **Dinka Double T**.
- Certain approach directions work more often than others, and are noted appropriately as `Approach from...`
- Daytime spawns are best checked around 12:00 noon. Nighttime spawns are best checked at 00:00 midnight.
- Weather doesn't seem to affect most spawns. Though I recall encountering more rare vehicles when it's clear. Maybe that's just because I generally don't drive in rain.
- Freezing time and (clear/sunny) weather via trainer helped tremendously when determining these times.
- Beach Bum Update vehicles **BF Bifta** and **Canis Kalahari** spawn from **Vespucci** to **Del Perro**. The **BF Surfer** (clean variant) has its own unique spawns, but can be found basically across the entire map.
- The **[N]** suffix indicates the spawn has its own spawn group, and only spawn with neons.
- Vehicles which are listed at the end of every bullet point are ones I've seen there myself.

**Los Santos International Airport**
- 12:00 Parked outside **Los Santos Customs**. Sentinel XS, Jester
- 10:00-18:00 Parked outside northwest wall of **Devin Weston** hangar. Coquette Classic

**La Puerta**
- 11:00 Parked in southeast side of lot in car park directly beside **Maze Bank Arena**. Second row (first all non-handicapped row) from the arena itself. Rhapsody, Blade, Massacro, Warrener, Jester

**Cypress Flats**
- 10:00-12:00 Driving westbound on bridge over **LS River** on **Innocence Boulevard** (headed towards **Little Bighorn Avenue**). South of the **Fridgit Cold Storage**. Approach from either east or west. Alpha, Voltic, Blade, Pigalle, Glendale, Sentinel XS

**La Mesa**
- 22:00-04:00 Two vehicles drag racing on the concrete of the **LS River**. They start next to the metal bridge over the water just south of the bridge on **Capital Boulevard** (southwest of **Los Santos Customs**). Dominator, Sabre Turbo, Ruiner
- 24 hours. Driving out of **Los Santos Customs** onto **Popular Street** southbound. Massacro, Zentorno
- 06:00-18:00 Parked on south side of **Capital Boulevard**, next to an Auto Repair shop with red scaffolding afront it. Warrener, Infernus, Glendale, Rhapsody, Pigalle, Blade, Sabre Turbo, Ruiner

**Mirror Park**
- 06:00-18:00 Parked on west side of **Mirror Park Boulevard**. Next to a lone large tree just south of the intersection with **West Mirror Drive**. Glendale, Pigalle, Panto, Warrener, Blade, Rhapsody
- 09:00-10:00 Driving out of **LTD** fuel station onto **Mirror Park Boulevard** southbound. Approach from south. Rhapsody, Panto, Blade

**Vespucci Canals**
- 24 hours. Driving out of **The Viceroy Hotels & Resort** onto **Palomino Avenue** northbound. Approach from south. Sabre Turbo, Sentinel, Surano, Dominator, Infernus, Huntley S, Feltzer, Alpha, Jester, Comet, Turismo R, Thrust
- 12:00-19:00 Parked at **Burger Shot** on southwest corner of **San Andreas Avenue** and **Prosperity Street**. (Southeast of **Suburban**.) Warrener, Sabre Turbo, Rapid GT, Huntley S, Jester, Pigalle, Panto, Dominator

**Vespucci Beach**
- 24 hours. Parked at southeastern dead end of **Bay City Avenue**. Kalahari, Bifta

**Vespucci**
- Parked in alley aside **Papa Surf** (south of **Vespucci Movie Masks**) between dead ends of **Palomino Avenue** and **Vitus Street**. Kalahari, Bifta
- Parked afront three closed garage doors in the alley northeast of (I guess you could say behind) **Vespucci Movie Masks**. Kalahari, Bifta

**Del Perro**
- 01:00 Pulling out of car lot on northwestern end of **Del Perro Beach**, then merging onto **Great Ocean Highway** southbound towards **Vespucci**. Southeast of **Xero** servo. Kalahari, Bifta
- 15:00-18:00 Parked afront brown house with green window trim, green garage doors, and white second floor deck railing. Facing **Great Ocean Highway**. Kalahari, Bifta
- 07:00-15:00 Driving out of **Banner Hotel & Spa** on **Boulevard Del Perro**. Huntley S
- 06:00-12:00 Parked aside southeasternmost house along **Great Ocean Highway**. Comet
- 06:00-18:00 Driving northwest on **Playa Vista**. Approach from east on **Dorset Drive** westbound. Dubsta, Dominator, Comet, Infernus, Ruiner, Surano
- 06:00-18:00 Driving northwest on **Bay City Avenue** (at **Boulevard Del Perro** intersection; southwest of **Lombank** building). Approach from either north or south. Ruiner, Dominator, Infernus, Panto, Massacro, Pigalle, Gauntlet, Warrener, Coquette Classic
- 06:00-14:00 Driving southwest on **Red Desert Avenue** headed towards **Bay City Avenue**. Approach from east. Blade, Ruiner, Dubsta, Huntley S, Infernus, Sentinel XS, Feltzer
- 15:00-18:00 BF Surfer parked in lot on northern end of beach houses on **Great Ocean Highway**.
- 18:00 Parked in small lot (southeast of footbridge over **Great Ocean Highway**) in spot closest to bicycle path. Kalahari

**Pacific Bluffs**
- 15:00 Driving north on **Great Ocean Highway**. Rapid GT

**Banham Canyon**
- Parked on beach at the northernmost end of **Banham Canyon**. Kalahari, Bifta
- Parked on shoulder of **Great Ocean Highway**. Drives southbound onto **Inseno Road**. Kalahari, Bifta

**Chumash**
- 10:00 Parked afront orange house on southern end of **Barbareno Road**. Kalahari, Bifta
- 16:00 Merging from shoulder on west side of **Great Ocean Highway**. Continues south. Kalahari, Bifta

**Mission Row**
- 10:00-16:00 Driving out of the **Mission Row Police Station** (Impound Garage) north onto **Sinner Street**. Approach from north on **Sinner Street**. Panto, Warrener, Massacro, Sabre Turbo, Blade

**Pillbox Hill**
- 18:00-04:00 Driving out of parking garage under **Arcadius Business Center**, then turning north on **Las Lagunas Boulevard**. Massacro
- 08:00 Driving into parking garage under **Arcadius Business Center** from **Las Lagunas Boulevard**. Parks in fifth spot from entrance. Comet **[N]**
- 06:00-18:00 Parked in **Caesars Auto Parking 24HR** at intersection of **Adam's Apple Boulevard** and **Elgin Avenue**. Across from **Ammu-Nation**. Pigalle, Panto, Jester, Blade, Warrener, Thrust, Infernus

**Downtown**
- 24 hours. Parked on first level of **SAP Council** red parking garage. Northwest side of intersection at **Peaceful Street** and **Vespucci Boulevard**. Turismo R, Zentorno, Jester, Massacro
- 12:00-16:00 Dinka Thrust parked in lot south side of junction at **Vespucci Boulevard** and **Peaceful Street**. Second row from **Vespucci Boulevard**. (Across from the red parking garage.)
- 09:00-05:00 Turning off **Swiss Street** onto **Elgin Avenue** just north of the **IAA Headquarters**. Zentorno, Jester

**Burton**
- 24 hours. Parked outside **Los Santos Customs**. All NPC-modified vehicles spawn here.

**Vinewood**
- 20:00 Pulls in and parks at **Liquor Hole** (across from **Tequi-La-La**) on **Eclipse Boulevard**. 20:00. Peyote **[N]**, Comet **[N]**
- 11:00 Pulls in and parks at **Binco** (east across the street from **Tequi-La-La**). 11:00. Infernus **[N]**
- 10:00-12:00 Driving west in front of **Cinema Doppler** on **Vinewood Boulevard**. 10:00-12:00. Voltic, Rapid GT
- 06:00-18:00 Driving out of **Up-n-Atom Burger** on **Vinewood Boulevard**, turning west onto **Vinewood Boulevard**. Approach from northwest via **Clinton Avenue**. Sentinel XS, Pigalle, Panto, Surano, Huntley S, Rhapsody
- 18:00-00:00 Driving east on **West Eclipse Boulevard**. Passes in front of **Tequi-La-La**. Sentinel XS

**West Vinewood**
- 24 hours. Parked in the garage under **Gentry Manor Hotel** on **Gentry Lane** (merge right off of **Eclipse Boulevard** and **Las Lagunas Boulevard**). Turismo R, Zentorno, Jester, Massacro
- 12:00-00:00 Up to two vehicles driving east along **Eclipse Boulevard** towards **Vinewood Boulevard**. Approach from east. Sentinel XS, Ruiner
- 18:00-04:00 Parked in lot east of **Last Train in Los Santos Diner**. Below Kung Fu Rainbow Lazer Force billboard. Rapid GT, Voltic

**Rockford Hills**
- 16:00-05:00 Parked inside north gate of the **Epsilon Building** on **Spanish Avenue** and **Rockford Drive**. The gate is locked. You have to drive it out of the east pedestrian exit. This is the only place this light blue Alpha spawns.
- 10:00-18:00 Parked in front of **Gussét** on **Portola Drive**, across from **Ponsonbys**. Surano, Pigalle, Dubsta, Panto, Jester, Sabre Turbo, Feltzer, Massacro, Rapid GT, Glendale, Dominator, Gauntlet, Zentorno, Ruiner, Alpha
- 06:00-18:00 Driving north on **Portola Drive**. (Opposite **Sessanta Nove**. South of **Ponsonbys**.) Comet, Jester, Comet, Rhapsody
- 07:00-18:00 Parked in back entrance of **The Archipelago**. (Across from across the **LifeInvader Office** on south side of **South Boulevard Del Perro**.) Coquette Classic, Sabre Turbo, Jester, Panto, Glendale, Rapid GT, Huntley S, Massacro, Zentorno, Gauntlet
- 14:00 Driving west on **Eastbourne Way**. Turns north onto **Mad Wayne Thunder Drive**. Coquette Classic
- 10:00-14:00 Driving out west exit of **Rockford Dorset Hotel**, turning north on **Palomino Avenue**. Approach from either north or south on **Portola Drive**. Jester, Turismo R, Massacro
- 08:00-20:00 Driving out of **Didiersachs** underground parking and turning westbound onto **Heritage Way** headed towards **Movie Star Way**. (East of **Richards Majestic**.) Dubsta, Rhapsody, Huntley S, Comet, Surano, Thrust, Coquette Classic, Infernus, Zentorno, Sentinel XS
- 10:00-18:00 Driving west along **Boulevard Del Perro** past the **Rockford Hills Sign**. Pigalle

**Richards Majestic**
- 24 hours. Albany Roosevelt parked next to a metal trailer opposite *Solomon Richards*' office. The car and trailers around it can be seen immediately when entering the east gate then turning left (as if you were going to *Solomon's* office).

**Vinewood Hills**
- 12:00-15:00 Driving north on **Milton Road** (at **Picture Perfect Drive**) just north of **Tequi-La-La**. Alpha
- 22:00-00:00 Parked at **3667 Wild Oats Drive**. Comet
- 24 hours. Driving south on **Baytree Canyon Road**. Spawns mobile just south of **Sisyphus Theater**. Turns west onto **Marlowe Drive**. Sentinel XS, Comet, Pigalle, Jester, Massacro, Coquette Classic, Zentorno, Dubsta
- 09:00-12:00 BF Surfer parked on east side of **Baytree Canyon Road**, north of **Sisyphus Theater**.
- 08:00-10:00 Driving east on **Kimble Hill Drive**. Approach from east. Surano
- 06:00-18:00 Massacro parked in front of (operable) garage door at **6085 Milton Road**. Just east of intersection with **Mount Vinewood Drive**. Seems the only place a pink Massacro spawns.
- 12:00 Parked in northwesternmost spot within enclosed parking area at the **Vinewood Bowl**. (Access via **Vinewood Park Drive** and **Fenwell Place**.) Zentorno
- 24 hours. Albany Roosevelt parked in garage at **2848 Milton Road**.

**Richman**
- 12:00-14:00 Turismo R parked outside double garage at **Richman Mansion**.
- 18:00-02:00 Pulls from driveway (fifth house north from **Kortz Drive**) on west side of **North Rockford Drive**. Turns southbound. Approach from south. Feltzer, Infernus
- 17:00-18:00 Driving south on **North Rockford Drive**. Pulls into driveway of fifth house north from **Kortz Drive**. Sabre Turbo **[N]**
- 12:00 Pulls from driveway of house for sale (forclosure sign) directly southeast of a parking lot (west of **Richman Mansion**). Drives east on **Americano Way**. Super Diamond
- 12:00 Parked in second to last spot from entrance in lot of **Los Santos Country Club**. Super Diamond
- 10:00-15:00 Parked on street north of **ULSA** (common misnomer "UCLS"). Alpha, Huntley S

**Great Chaparral**
- 22:00-04:00 One vehicle parked on west side of **Ammu-Nation** on **Route 68**. Another NPC-modified vehicle is driving west, pulls in, and parks next to the stationary vehicle. Two NPC drivers exit the vehicles and smoke/chat. The vehicles at random, but sometimes it will be two variants of the same base vehicle. Dominator, Ruiner, Sabre Turbo, Gauntlet

**Tongva Valley**
- 10:00-17:00 Parked next to **White Water Activity Center** on west side of **Tongva Drive**. NPC enters and drives away. BF Surfer

**Tongva Hills**
- 12:00 Sandking XL pulls out of **RON** fuel station and merges onto **Great Ocean Highway**. Continues north/south at random. Approach from east.

**Grand Senora Desert**
- 12:00 Sandking XL parked in the lot of **Larry's RV Sales** on **Route 68** (across from **Los Santos Customs**).

**Grapeseed**
- 12:00-18:00 Rat-Loader driving out of the **Ltd** Fuel Station in **Grapeseed**, headed northeast on **Grapeseed Main Street**. Approach from east.

**Raton Canyon**
- 24 hours. Driving south across the **Cassidy Creek Bridge**. Jester, Pigalle, Alpha

**Mount Gordo**
- 12:00 Driving west on feeder road (north side of **Great Ocean Highway**), past **Up 'n' Atom Diner** restaurant, then merging onto **Great Ocean Highway** westbound. Sabre Turbo, Ruiner, Gauntlet

**Paleto Bay**
- Sandking XL parked at **Ammu-Nation**. This spawn was removed in some patch, version unknown, but works in the base version of enhanced editions.
- 08:00 Rat-Loader parked outside **Beeker's Garage**.

### GANG VEHICLES

All gangs have their own colors painted onto their cars. Families' color is green, Ballas purple, Vagos yellow. Families are at the northern end of **Grove Street** in **Chamberlain Hills**. Ballas are at the southern end of **Grove Street**, also in **Chamberlain Hills**. Vagos are at the southwest end of **Jamestown Street** in **Rancho**. All gang vehicles spawn with the same upgrades, only the paint is different:

- Vapid Peyote
- Declasse Tornado
- Albany Manana
- Albany Buccaneer

Regular variants of each can be obtained at the bus junkyard on the intersection of **South Shambles Street** and **Hanger Way** in **El Burro Heights**. This location works most often at night, and the vehicles will not have any upgrades. Non-gang variants (with upgrades) can be found at **Olson's Autos** on **El Rancho Boulevard** in **Cypress Flats**. The vehicles found here have the same upgrades, but no specific paintjob.

### CONVERTIBLES

These vehicles have retractable roofs (or variants with retractable roofs):

- Obey 9F Cabrio
- Dinka RT3000
- Enus Cognoscenti Cabrio, Windsor Drop
- Grotti Carbonizzare
- Declasse Tornado, Tornado Custom
- Dewbauchee Rapid GT
- Benefactor Surano
- Lampadati Felon GT
- Pfister Comet S2 Cabrio
- Ubermacht Sentinel, Zion Cabrio
- Weeny Issi

These vehicles have topless variants:

- Albany Manana, Manana Custom, Buccaneer Custom
- Bravado Banshee
- Canis Kalahari, Mesa
- Coil Voltic
- Grotti Stinger
- Imponte Ruiner
- Invetero Coquette, Coquette Classic, Coquette Blackfin
- Pfister 811
- Vapid Chino Custom, Peyote, Peyote Custom

### CB CHATTER

When **Trevor** is driving one of the below vehicles anywhere in **Blaine County**, [CB chatter](https://youtu.be/D_EucPi1D9s) can be heard periodically. He even responds to some of the messages.

- BF Dune Buggy
- BF Space Docker
- Canis Bodhi
- Karin Rebel, Rusty Rebel
- Tow Truck (both variants)
- Flatbed
- JoBuilt Phantom & Phantom Wedge
- JoBuilt Hauler
- Bravado Rat-loader
- Vapid Benson
- Pounder
- Tipper
- Rubble
- Brute Boxville (LSDS and LSDWP variants)
- Maibatsu Mule (excluding the ramp door variant)
- MTL Packer

# SECURITY VANS

[[Cite.]](https://gta.fandom.com/wiki/Random_Events_in_GTA_V#Security_Vans)
[[Cite.]](https://gamefaqs.gamespot.com/boards/634491-grand-theft-auto-v/67500570)

If you see a truck but don't get close enough to activate the event (when the minimap displays the blue dot), you can travel to any other truck location and have it spawn without question. This can be done indefinitely until the event is activated.

If avoiding explosives, five shots from any weapon directly in the center of the doors will open them up.

There appear to be non-event trucks able to spawn in traffic. They scatter bill stacks (as opposed to a briefcase, like in events) when blown, GTA IV style. However the only one I've come across is in **Pillbox Hill**.

I've been able to consistently get a truck every 72 hours in game.

Area | Type | Location
:--- | --- | ---
Cypress Flats | Event,<br>Mobile | Driving west along **El Rancho Boulevard**. Near **Orchardville Avenue** (north of the **Ammu-Nation**).
La Puerta | Event,<br>Parked | Parked at **Globe Oil** on southwest side of intersection at **Innocence Boulevard** and **Alta Street**.
La Mesa | Event,<br>Mobile | Driving south along **Supply Street** near the north intersection with **Popular Street**.
Pillbox Hill | Traffic,<br>Mobile | Pulls out of alley next to **Fleeca** on the southeast corner of **Vespucci Boulevard** and **Elgin Avenue**.
Little Seoul | Event,<br>Static | Parked in front of **KOREAN PLAZA**. West of intersection at **Adam's Apple Boulevard** and **Calais Avenue**.
Little Seoul | Event,<br>Static | Parked outside the **Lucky Plucker** restaurant on the southeast side of intersection at **Palomino Avenue** and **Vespucci Boulevard**.
Little Seoul | Event,<br>Mobile | Driving east along **San Andreas Avenue** near the **Hit 'n' Run Coffee**.
Vespucci Canals | Event,<br>Mobile | Driving northwest along **Prosperity Street**.
Tongva Hills | Event,<br>Mobile | Driving south along **Great Ocean Highway**, near **Route 68**.
San Chianski Mountain Range,<br>Mobile | Event | Driving north along **Chianski Passage**, near the guard post in the middle of the road.
Paleto Bay | Event,<br>Static | Parked on northeast side of intersection at **Paleto Boulevard** and **Great Ocean Highway**. Across from Sheriff Station.
