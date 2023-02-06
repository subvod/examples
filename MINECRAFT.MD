# MINECRAFT.MD

*Some notes on random stuff. All this is for Java Edition. Latest v1.19.3.*

# Index

[Mobs](#mobs)
<br>&emsp;[Cat](#cat)
<br>&emsp;[Horses, Donkeys, and Mules](#horses-donkeys-and-mules)
<br>&emsp;[Frog](#frog)
<br>&emsp;[Panda](#panda)
<br>&emsp;[Chicken](#chicken)
<br>&emsp;[Ocelot](#ocelot)
<br>&emsp;[Dolphin](#dolphin)
<br>&emsp;[Axolotl](#axolotl)
<br>&emsp;[Bee](#bee)
<br>&emsp;[Mooshroom](#mooshroom)
<br>&emsp;[Creeper](#creeper)
<br>&emsp;[Zombie](#zombie)
<br>&emsp;[Skeleton](#skeleton)
<br>&emsp;[Blaze](#blaze)
<br>&emsp;[Magma Cube](#magma-cube)
<br>&emsp;[Piglin](#piglin)
<br>&emsp;[Hoglin](#hoglin)
<br>[Items](#items)
<br>&emsp;[Ore Depths and Biomes](#ore-depths-and-biomes)
<br>&emsp;[Block Functions](#block-functions)
<br>[Farming Methods](#farming-methods)
<br>&emsp;[Iron Farm](#iron-farm)
<br>&emsp;[Zombie Villager Farm](#zombie-villager-farm)
<br>&emsp;[Charged Creeper Farm](#charged-creeper-farm)
<br>&emsp;[Blaze Rod Farm](#blaze-rod-farm)
<br>[Gameplay](#gameplay)
<br>&emsp;[Quick Tips](#quick-tips)
<br>&emsp;[Nether Survival](#nether-survival)
<br>&emsp;[Biomes](#biomes)
<br>&emsp;[Alchemy/Brewing](#alchemybrewing)
<br>&emsp;[Enchanting](#enchanting)
<br>&emsp;[Commands](#commands)
<br>&emsp;[Functional Setups](#functional-setups)
<br>&emsp;[Buried Treasure Maps](#buried-treasure-maps)
<br>[Extras](#extras)
<br>&emsp;[TOML JSON Converter](#toml-json-converter)
<br>&emsp;[pack_format](#pack_format)
<br>&emsp;[Shortcuts](#shortcuts)
<br>&emsp;[Change Skin Via Resource Pack](#change-skin-via-resource-pack)
<br>&emsp;[Bypass Launcher](#bypass-launcher)
<br>&emsp;[Mods I Use](#mods-i-use)

# Mobs

*Some info on specific mobs.*

### Cat

Spawns in **Villages** and **Swamp Huts**. Can be tamed with **Raw Cod** or **Raw Salmon** (same as [[Ocelots]](#ocelot)). They don't take fall damage from any height.

### Horse, Donkey, and Mule

Horses and donkeys spawn on the surface in the wild. Mules do not spawn naturally. They must be bred by taming any **Horse** and **Donkey**, then feeding both a **Golden Apple** or **Golden Carrot**.

The rare skeleton variant can be ridden underwater and can be obtained by an incredibly rare chance on lightning striking any **Horse**. Or by finding and triggering a **Trap Horse** (only in `Hard` difficulty), killing **Skeletons** atop their skeleton **Horses**, and taming the skeleton **Horses**.

### Frog

The rare green variant can be obtained by breeding two frogs by feeding them **Slimeballs**. After one **Frog** hops to water and lays its **Frogspawn**, wait a while for the **Tadpoles** to hatch from it. After they've hatched and are swimming around, catch one with an **Empty Bucket** and travel to some liquid **Water** in any cold/snowy biome. Place the **Tadpole** into the water. Beware, sometimes liquid **Water** in these biomes can freeze. After a while, it will mature into the green variant.

### Panda

Can be found in **Bamboo Jungle** biomes. The rare brown variant can only be obtained by random mutation chance during breeding. Feed regular **Pandas** some **Bamboo** until they breed a brown **Panda**.

### Chicken

Can be found in the **Nether**, as baby **Zombified Piglin** have a small chance to spawn in as a **Chicken Jockey**.

### Ocelot

Spawns in **Jungle** biomes. Can be tamed with **Raw Cod** or **Raw Salmon**.

### Dolphin

If fed **Cod** or **Salmon**, they will lead you to nearby treasure. When you break the **Chest** it led you to and feed it more **Cod** or **Salmon**, it'll lead you to the next nearby treasure.

### Axolotl

Rare purple variant can only be found by an incredibly small chance of a gene mutation during breeding.

### Bee

Bees can be farmed for honey and comb/wax. They can be herded/bred by feeding them flowers.

**Bee Nests** are natural while **Bee Hives** are crafted. Both serve the same purpose. Using **Shears** on a nest/hive gives up to `3` comb. Using a glass bottle gives one **Honey Bottle** (cures poison; can be crafted into `3` **Sugar**).

To prevent bees from angering and swarming while harvesting, you have to smoke them out. This is best done by placing a **Carpet** or **Trapdoor** one block below the nest, then a **Campfire** or lit block of **Netherrack** `2` blocks below the nest/hive. This blocks the flames from damaging the bees but lets the smoke rise freely, and the fire can remain there indefinitely.

### Mooshroom

Only spawn in **Mushroom Fields** biomes (commonly referred to as "Mushroom Islands" as they're only found surrounded by **Deep Ocean** biomes).

Variant | Details
:--- | ---
Red | The only mob which spawns in **Mushroom Fields** biomes.
Brown | Incredibly small chance for gene mutation during breeding. Variants swap when a **Mooshroom** is struck by lightning. The [[Charged Creeper Farm]](#charged-creeper-farm) method works for this.

### Creeper

- **Creepers** explode when near the player. If it has a status boost when it explodes, a pool of that status effect, similar to the **Lingering** variant(s) of that effect, equivalent to the explosion radius will be created.
- **Creepers** flee from **Cats**.

Variant | Details
:--- | ---
Creeper | Standard mob variant.
Charged Creeper | Buffed explosion. Created when a **Creeper** is struck by lightning. Can be farmed: [[Charged Creeper Farm]](#charged-creeper-farm)

### Zombie

Variant | Details
:--- | ---
Husk | Spawns only in **Desert** biomes. They do not burn in sunlight and their unarmed attacks don't inflict **Hunger**. Can be led to water and rehydrate into normal **Zombie** variants.
Zombie | Base mob variant.
Zombie Villager | Small chance to spawn at night. Spawns in **Abandoned Villages**, which themselves are very rare at a `0.02` chance of all **Villages**. They will not despawn unless you have traded with them, use a **Nametag** on them, or have given them an item. Can be cured and, as a result of such, offer discounts on trades. Can be exploited for permanent discounts on rare enchantments with [[Zombie Villager Farm]](#zombie-villager-farm) method.
Drowned | Spawns in **Oceans**, **Rivers**, **Dripstone Caves**, or when **Zombies** drown. Usually attack through melee attacks, but may also come armed with **Tridents** which they throw. They are the only source of **Tridents**, and the only renewable source of **Copper**. 

### Skeleton

All skeletons have a `0.11` chance of being left-handed.

Variant | Details
:--- | ---
Skeleton | Base mob variant.
Stray | Variant created when a **Skeleton** becomes trapped in **Powder Snow**.

### Blaze

Spawns in **Nether Fortress** and are the only source of **Blaze Rods**.

### Magma Cube

Spawns in the **Nether**. Behaves similarly to **Slime**, but is fireproof, jumps higher, and deals more damage.

### Piglin

Variant | Details
:--- | ---
Piglin | Base mob variant.
Zombified Piglin | a.k.a. the old **Zombie Pigman**

### Hoglin

Variant | Details
:--- | ---
Hoglin | Spawns only in **Crimson Forest** biomes.
Zoglin | a.k.a. "Zombified Hoglin". Spawns only when a **Hoglin** passes through a **Nether Portal** to the **Overworld**. Hostile to all mobs.

# Items

*Some info on specific items.*

### Ore Depths and Biomes

Type | Common<br>Biome(s) | Most Common<br>Depth (Y) | Depths (Y)<br>(From/To) | Blobs Per Chunk | Notes
:--- | --- | --- | --- | --- | ---
Coal Ore | Stoney Peaks | -<br>95 | 136/320<br>0/190 | 30<br>20 | No spawn chance cut from touching air.
Copper Ore | - | 47 | -16/112 | 6 | Very common near water.
Redstone Ore | Deepslate | -50 | -63/15<br>-63/-32 | 4<br>8 | No spawn chance cut from touching air. Common at lower depths.
Iron Ore | Stoney Peaks<br>Deepslate | 255<br>15<br>- | 128/320<br>24/54<br>-63/64 | 40<br>6<br>3 | Common in **Stoney Peaks**.
Gold Ore | Badlands<br>Mesa (Stone Layers) | -16<br>- | -64/32<br>32/256 (Badlands) | 4<br>50 (Badlands) | Very common in **Badlands** and **Mesa** (stoney depths).
Nether Gold Ore | - | - | 10-117 | 10<br>20 (Basalt Delta) | Blobs in patches all around the **Nether**.
Emerald Ore | High Mountains<br>Stoney Peaks | 256<br>6-7 | -16/320 | 50 | Common surface spawns. **Deepslate Emerald Ore** is quite rare, but most common at the surface, so for the **Deepslate** variant it's most common to be where **Stone** and **Deepslate** start to mix.
Diamond Ore | Deepslate | -58 | 14/-63 | 7 (1-4 Ores)<br>1 (1-12 Ores, Every 1/9 Chunk)<br>4 (1-8 Ores) | Low chance of blob spawn if touching air.
Ancient Debris<br>(Netherite Ore) | Nether | 14/15<br>-15 | 8/22<br>8/119 | 2<br>1 | More common at lower depths. Important to strip mine chunk borders. [[Reference.]](https://youtu.be/1MLXD0zkkB4)

- When ore hunting, bring plenty of **Potion of Night Vision** and  **Potion of Water Breathing**. Those effects make ores so much easier to spot and mine, especially in underground rivers.
- The **Silk Touch** enchantment generally fares better than **Fortune III** with tools. Not only can you carry more, most ore blocks yield slighty more product when smelted than if mined with **Fortune III**. In the case for **Lapis Lazuli** and **Copper**, mining with **Fortune III** yields a ton of product and will quickly fill up your inventory. Using a **Pickaxe** with **Silk Touch** not only gives you bonus product after smelting, but also frees up inventory space.

### Block Functions

Block | Unique Function
:--- | ---
Furnace | Cooks food and smelts blocks at the standard rate. Can cook and smelt everything.
Blast Furnace | Smelts **Blocks** and **Ores** at `2.0x` rate. Cannot cook food or bake logs. Yields `0.5x` XP per smelt.
Smoker | Cooks food at `2.0x` rate. Cannot smelt blocks or bake logs. Yields `0.5x` XP per cook.Cartography Table | Zooms out maps. (`Map` + `Paper`)
Brewing Stand | Enables [[Alchemy/Brewing]](#alchemybrewing).
Enchanting Table | Enables [[Enchanting]]().
Compass | Points to world spawn.
Lodestone | Changes `Compass` needle direction, given the Lodestone is in the same dimension. Right-click a regular **Compass** on a **Lodestone** to turn it into a glowing **Lodestone Compass** which points to the **Lodestone** it was paired with.

# Farming Methods

*Some info on farming stuff.*

### Iron Farm

[[Reference.]](https://youtu.be/ZCLf0iahOsU)

### Zombie Villager Farm

[[Villager Breeder + Zombifier]](https://youtu.be/ydNY6_WYGiA)
<br>[[Villager Trading Hall]](https://youtu.be/4YvOkJ4mW3A)

All **Librarian** villagers have a chance to offer any **Enchanted Book** except for **Soul Walker** and **Strafe Sneak**. Yes, including **Mending**. To exploit these villager merchants, if they don't immediately offer a book you want, simply destroy their podium and replace it near them. They'll usually pick the occupation back up and have different offers. Repeat until you get offered a book with an enchantment you're looking for. Once you trade with any Villager merchant they will not despawn. Same goes for cured Zombie Villagers, which are especially valuable since they give a discount to the player for curing them. However, in either case, once the Villager is traded with their deals are locked in as well, so choose wisely.

Another strat uses an **Enchantment Table**, but requires a lot of spare XP: basically you just check the enchantment guesses and if nothing fits your suit, buy the cheapest enchantment, then use a **Stonecutter* to remove the enchantment(s) and check the table's new enchantments. Repeat until desired enchantment(s) are obtained.

### Charged Creeper Farm

1. Drink a **Potion of Invisibility**.
2. Trap a **Creeper** in an impassable barrier made of **Fence**, **Wall**, or **Trapdoor**.
3. Top the barrier with **Lightning Rods**.
4. Wait until a **Thunderstorm** or change the weather via `/weather thunder`. Or you can use a **Trident** with **Channeling** to control a strike directly.

### Blaze Rod Farm

*Also works as a Blaze Powder Farm.*

1. Find a **Blaze Spawner**.
2. Place **Torches** around all sides of the **Blaze Spawner** to prevent it from spawning any **Blazes**.
3. Clear all blocks around it and build a `10x10x10` cube of transparent blocks, i.e. **Glass**, with the base being `6` blocks below the spawner.
4. Dig a `2x2x1` hole out of the transparent blocks directly below the **Blaze Spawner**.
5. Dig further down a `4x4x4` hole below the base of the structure to act as the "killing area".
6. Place a **Double Chest** directly under the transparent blocks on the side you wish to enter from. Leave a `2` block space above the **Double Chest** for **Trapdoors**.
7. Fill the base of the `2x2` grid with `4` **Hoppers**.
8. Place a **Slab** atop each **Hopper**.
9. Place a **Trapdoor** on the bottom of the transparent block above the **Double Chest** and open them.
10. Place **Trapdoors** inside the first block down to the "killing area" and open them.
11. Place a **Lava Source** in each bottom corner of the structure.
12. Place a **Slab** on top of the **Blaze Spawner**.
13. Break all **Torches** on the **Blaze Spawner**.
14. Make an entry way to the **Double Chest** in your "killing area".
15. Go AFK for a few minutes to allow **Blazes** to spawn.
16. Killfarm away!

# Gameplay

*Some info on gameplay.*

### Quick Tips

- To negate fall damage, you can enter a **Boat** and row off of cliffs *or* perform the ol' trusty MLG trick of spamming `RMB` with **Twisted Vines** or a **Water Bucket**.
- Using **Trapdoors** as a fence is actually more viable than actuall **Fences** and **Fence Gates**. A **Trapdoor** fence is essentially a one-way gate where mobs can enter but not exit.
- **Carrots** and **Beetroots** aren't necessarily the best crops to farm. It's good to have them on hand, and most people farm them to breed **Pigs**, but **Potatoes** serve the same purpose but also act as a good food source for players. Crafting **Golden Carrots** yourself isn't a super viable route since most **Farmer Villagers** have good offers on **Golden Carrots**. And **Beetroot Soup** isn't super nutritious.
- **Leather Armor** keeps you from freezing in snow. **Leather Boots** also act as snowshoes.
- **Powder Snow** is easily distinguishable from regular **Snow** blocks because **Powder Snow** does not allow fraction blocks on top of it (i.e. "snow carpet").
- Using a **Shield** comes in very handy for many players. They're relatively cheap to craft early on and prevent taking tons of damage. To use, just craft one, place it into your offhand slot (next to your armor), and hold `RMB` to pull up your shield when being attacked. They do have limited durability just like any other tool/armor, but can also be repaired and even enchanted with **Unbreaking**, **Mending**, etc.
- You can trap hostile mobs (except for **Spiders**) in a **Boat**. This does not negate the explosion of **Creepers**.
- You can get mob heads more easily by crafting **Lightning Rods** and placing them near **Creepers** during **Thunderstorms**. When lightning strikes near the **Creeper**, it becomes a **Charged Creeper**. (Alternatively, you can use a **Trident** with **Channeling**.) The first mob the **Charged Creeper** kills with its massive explosion will drop its head.
- To kill **Endermen** ez, just place some blocks directly above your head at least `3` block out. **Endermen** cannot pass through `2` block high spaces, and thus cannot attack you.
- To kill any *Undead* mob (**Zombies**, **Skeletons**, etc) with potions, use potions with **Healing** properties. They're undead, so effects are reversed.
- Cooking food gives it better nutritional properties. To cook meats without a **Furnace**, you'll need a **Flint and Steel** (or **Fire Charge**) and a **Sword** (or **Axe**). Set mobs on fire by right clicking the block under them while holding your preferred firestarter, then attack them with your preferred weapon. As long as they're on fire when you kill them, cooked meat will drop rather than raw.
- You can use an **X-Ray Glitch** to help locate underground structures.
- **Fossils** and **Diamond Fossils** are unique structures localized to **Desert**, **Swamp** and **Mangrove Swamp** biomes.
- **Creepers** will run away from **Cats** (tamed **Ocelots**).
- **Skeletons** and **Zombies** will run away from **Dogs** (tamed **Wolves**).
- You can cheese giant **Oak Trees** by planting an **Oak Sapling**, then placing any solid block `1` space above and `1` space to any side. The giant ones take a lot longer (or a lot more **Bone Meal**) to mature.
- You can cheese giant **Spruce Trees** to get tons of **Podzol** by planting `4` **Spruce Saplings** in a `2x2` grid then either let them grow naturally or **Bone Meal** the hell out of them.
- Fish bite more often when it's **Raining**. The **Lure** enchantment on a **Fishing Rod** adds the same effect in all weather.
- **Treasure** loot from **Fishing** only spawns in `5x5x2` areas of water.
- **Dog** armies are extremely useful, and almost cheating in a sense. If you're fortunate enough to find `2` **Wolves**, tame and breed them with any meat, raw or cooked, including **Rotten Flesh**. Continue feeding and breeding them until you have `10` adults. More adult **Dogs** only makes fighting mobs easier. Pet **Dogs** will attack any mob that attacks you or that you attack, including your own tamed **Dogs**.
- Some soil blocks allow mushrooms to be planted and grow in any light level. These are **Mycelium**, **Warped/Crimson Nylium**, and **Podzol**. These can all be obtained directly with any tool enchanted with **Silk Touch** (preferably a **Shovel**). **Nylium** can be spread manually by placing **Bone Meal** on any **Netherrack** block directly next to a **Nylium** block. **Podzol** can be created spontaneously by cheesing a giant **Spruce Tree** (see above).
- Logs, planks, etc, from **Nether** trees (**Crimson Stem** and **Warped Stem**) do not burn.

### Nether Survival

- To enter the **Nether**, you'll need *at least* `10` **Obsidian**. Place them in a `3x2` pattern (corners don't have to be filled) and light the inside of one **Obsidian** with **Flint and Steel** or a **Fire Charge**.
- You can construct complex traversal systems for the **Nether** by building hubs and linking portals. [[Reference.]](https://youtu.be/K94789i0zRk)
- Wearing any piece of **Gold Armor** will make all **Piglins** passive to you. Opening any of their **Chests** negates this effect.
- **Zombified Piglins** are passive until you injure one. In which case, all in a `48` block radius will gang up and attack you. They'll remain aggressive until they kill you. Sometimes, it's best to just let them kill you so they'll return to being passive.
- For food, **Hoglins** drop **Raw Pork Chops**. To cook these, **Furnaces** can be crafted from **Blackstone**. To fuel the **Furnace**, you can use **Coal** from **Wither Skeletons** or simply bring a **Bucket** with you and harvest the plentiful **Lava**. You can also collect **Brown Mushrooms** and **Red Mushrooms**, as well as a few Nether logs (**Crimson Stem** or **Warped Stem**). Craft the logs into planks, make a crafting table, craft some bowls, and then craft **Mushroom Stew** with the **Bowls** and **Mushrooms** (one of each **Brown** and **Red**).
- To avoid fire damage, especially the blue flames of **Soul Fire** which deal `2.0x` damage than normal fire, you can brew and drink **Potions of Fire Resistance**. These **Potions** can also be obtained by trading with **Piglins**. Uniquely, **Netherite Armor** gives a small (but not limitless) boost to fire resistance. The ore to turn **Diamond** into **Netherite** is stupid rare, but well worth the work to find and mine.
- To avoid getting lost, which is almost always fatal, the old screenshot trick works wonders. Walk next to your portal, press `F3` to bring up the debug menu, then press `F2` to screenshot. The coordinates listed are where your portal is, and you can always travel back there. For a more hands-on approach, a lot of players mark paths back to places with contrasting (usually non-natural) blocks, like **Torches**, **Warped Planks**, or **Crimson Planks**. These make paths a lot more obvious, as opposed to just placing some **Crimson Planks** atop **Netherrack**, both of which have similar colors and are thus less obvious. **Lodestones** are an expensive but very useful way of tracking back to important places like **Nether Portals**.
- A **Respawn Anchor** acts as a **Bed** for the **Nether**. They're not cheap, but are super useful when doing a lot of **Nether** spelunking. They can be crafted using **Crying Obsidian** and **Glowstone**. You can get **Crying Obsidian** from trading with **Piglins**, and **Glowstone** grows on the ceilings of the **Nether**. To use one, craft and place it, then click `RMB` while holding **Glowstone** `1` to `4` times. Each anchor can hold four charges of **Glowstone**, and each charge is good for one respawn.

### Biomes

Biome | Dimension | Unique Feature(s)
:--- | --- | ---
Nether Wastes | Nether | - Large amounts of exposed **Nether Quartz Ore** and **Nether Gold Ore**.<br><br>- Large numbers of **Piglins**, **Zombified Piglins**, and **Ghasts**. Despite having less **Piglins** in general, it's best to make portal farms here because there's no **Hoglins**.
Soul Sand Valley | Nether | - Rare **Skeletons** and **Ghasts**.<br><br>- Large amounts of **Bone Blocks**.<br><br>- **Nether Fortresses** that spawn here have mob concentrations greater than normal.
Crimson Forest | Nether | - Only place **Crimson Stem** can be found.<br><br>- More **Piglins** than any other biome.<br><br>**Hoglins** spawn here.
Warped Forest | Nether | - **Enderman** is the only hostile mob that spawns here.<br><br>Only place to find **Warped Stem** and **Twisted Vines**.
Basalt Deltas | Nether | - Large amounts of **Basalt** and **Blackstone**.<br><br>Large number of **Magma Cubes**.

### Alchemy/Brewing

Brewing potions requires a **Brewing Stand**.

Ingredient | Effect/Purpose | Location(s)
:--- | --- | ---
Milk Bucket | Removes all effects.
Nether Wart | Base **Awkward Potion**. | Nether Fortress<br>Bastion<br>Soul Sand (Crop)
Blaze Powder | Fuel for **Brewing Stand**. | Nether Fortress (**Blaze**)
Gunpowder | Turns potions into **Splash** variant. | **Creeper**
Redstone | Increases **Duration**. | **Redstone Ore**
Glowstone Dust | Increases effect **Potency**. | Glowstone (Nether)
Pufferfish | **Night Vision** | Fishing

### Enchanting

Enchantment | Max Level | Equipment | Effect(s)
:--- | --- | --- | ---
Aqua Affinity | I | Helmets | Increases underwater mining speed.
Bane of Arthropods | 

### Commands

**/summon**

`summon <entity> [<pos>] [<nbt>]`
<br>`summon spider ~ ~ ~ {Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b}]}]}`

**/clear**

Clears player inventory.

### Functional Setups

`Fun`ctional stuff to build.

Thing | Items Needed | Setup
:--- | --- | ---
Semi-Auto<br>Door | **Door**<br>**Button** | Place any **Button** on a wall next to any **Door**.
Full-Auto<br>Door | **Door**<br>**Pressure Plate** | Place any **Pressure Plate** both in front of and behind any **Door**.
Crawl Forcer | **Trapdoor**<br>or **Piston** | Place either of the two above  a `2` block high space, close/extend it, and crawl into any `1` block high space. Crawl speed can be improved with the **Swift Sneak** enchantment.
Fast Travel | **Nether Portal**<br>**Boat**<br>**Blue Ice** | Each block traversed in the **Nether** is equal to `8` blocks of travel in the **Overworld**. You can exploit this to travel stupid long distances quickly. Dig a `2x3` flat tunnel of any length in the **Nether**, then place a block of **Blue Ice** on the corner of the entrance. (**Blue Ice** allows **Boats** to travel significantly faster than regular **Ice** and **Compact Ice**.) Progressively place another block of **Blue Ice** `2` blocks forward and `1` across to make a hopscotch-esque pattern. This works because the **Boat** can rest on these spaces between the **Blue Ice**. Spawnproofing these linked portal tunnel networks is as simple as placing **Slabs** atop the solid surfaces and **Buttons** atop the **Blue Ice**. The **Slabs** prevent entities from spawning atop solid blocks. The **Buttons** also prevent spawning, but also allow the **Boat** to glide across the **Blue Ice**. [[Reference.]](https://youtu.be/K94789i0zRk)
Hidden Water Source | **Stairs**<br>**Water Bucket** | Place any **Stairs** in a `1x3x1` pattern with the high side facing towards you. Waterlog (fill) the stairs with **Water Buckets**, then cover the **Stairs** with any solid block to hide any visible water.
Renewable Water<br>+ Lava Source | `1` **Cauldron**<br>`1` **Pointed Dripstone**<br>`1` **Lava/Water Bucket** | Dig a `1x1x4` hole. Place the **Cauldron** at the bottom. Place some solid block `2` blocks above the **Cauldron**. Place the **Pointed Dripstone** on the bottom of that solid block, then fill the top `1` block hole with **Lava** or **Water**. The lava/water will seep through the block, go down the **Pointed Dripstone**, and drip into the **Cauldron**. It takes a long time to drip fill a single **Cauldron**, so this is best done with multiple **Cauldrons** in a row. Bear in mind that lava/water will not seep through the block unless a **Water Source** is directly above it.
Renewable Water +<br>Powder Snow Source | `1` Cauldron | Just place it outside. When it rains, it will fill with water over time.
Automatic Respawn Anchor | `2` **Observer Blocks**<br>`1` **Dispenser**<br>`1` **Respawn Anchor**<br>**Glowstone** | This is a `1x4x1` layout. Place the **Respawn Anchor**, then a **Dispenser** next to and facing the **Respawn Anchor**, then an **Observer** next to but facing away from the **Dispenser**, then a second **Observer** next to and facing the first **Observer** (to make an "Observer Clock"). Fill the **Dispenser** with **Glowstone** blocks. As long as there is **Glowstone** in the **Dispenser**, your **Respawn Anchor** will always be fully charged.

### Buried Treasure Maps

*These can be found in wrecked Pirate Ship structures which generate in and under water. There's also a reliable way to always find the buried treasure:*

1. Obtain a **Buried Treasure Map**.
2. Travel to where your player location blip is directly centered over the `X`.
3. Press `F3` + `G` to show chunk borders.
4. Travel to the northwest corner of the current chunk you're in.
5. Travel south `10` blocks.
6. Travel east `10` blocks.
7. Dig straight down. If you don't immediately find the **Chest** after `10` or so blocks down, dig around the area as it's almost always guaranteed to be somewhere in a `4x4` block radius down below that area.

# Extras

*References and such.*

### TOML JSON Converter

*Convert back and forth.*

[[GitHub.]](https://esakat.github.io/toml2jsonConverter/)

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

### Shortcuts

Key(s) | Details
:--- | ---
`F3` | Debug Menu
`F3` + `F4` | Cycle through game modes.
`F3` + `G` | Show chunk borders.
`F3` + `A` | Reload all chunks.
`F3` + `T` | Reload all textures, sounds, and web-loaded client resources.
`F3` + `H` | Toggle detailed item descriptions.
`F3` + `C` | Copies player coordinates and rotation as a `/tp` command.
`F3` + `C`<br>>6 seconds | Trigger a manual debug crash.
`F3` + `B` | Show hitboxes.
`F3` + `D` | Clears chat, including past commands.

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

### Bypass Launcher

Looking to run Minecraft without an internet connection? Or just need to bypass the launcher for any other reason? Here's how:

*You'll need a launcher to get this set up, but once done you'll no longer need the launcher. This process must be completed for each version of Minecraft you want to run without the launcher. Yes, including Forge/Fabric versions.*

The original method I found was devised with Batch. [[Reference.]](https://gaming.stackexchange.com/a/306709)
<br>Below is a method I've modified to work with VBScript to avoid having a CMD window present while playing. [[Reference.]](https://stackoverflow.com/a/1340372)

1. Download [Process Explorer](https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer). [[Direct.]](https://download.sysinternals.com/files/ProcessExplorer.zip) [[Backup of v17.02]](https://www.mediafire.com/file/bj5leu59f8bfm0t)
2. Create a blank **VBScript** in your `.minecraft` directory. I just rename a blank text document as `Minecraft.vbs`, for example.
3. Right click the script, click `Edit`, and paste the following code into the script:

[[GitHub Backup]](https://github.com/subvod/examples/blob/master/RunExternalApp.vbs)

```
Dim objShell
Set objShell = WScript.CreateObject( "WScript.Shell" )
objShell.Run("javaw.exe" & " -args")
Set objShell = Nothing
```

4. Run the **Minecraft Launcher** and launch the **exact** version and configuration which you want to use. Yes, **Forge**, **Fabric**, etc make a difference. Those add a bunch more libraries to the command line.
5. Run **Process Explorer** and find the **Minecraft** process (it'll be a `javaw.exe` process).
6. Double-click on the process to view details and copy the command line used to run it. If you have two or more processes running through `javaw.exe`, it's gonna be the one with the longest command line.
7. Replace the `javaw` within the quotes with the full application path of `javaw.exe` at the beginning of the command you copied from **Process Explorer**. Newer launcher versions will automatically download the latest JVM from Mojang. For example, mine is: `C:\Users\Admin\AppData\Roaming\.minecraft\runtime\temurin-latest-windows-x64\bin\javaw.exe`. If the path to your `javaw.exe` contains spaces, you need to tripple quote the path (just to the executable, not the arguments), i.e.
```
objShell.Run("""C:\Program Files\Java\bin\javaw.exe""" & " -args")
```
8. Replace the `-args` in the second pair of quotes with all of the arguments. (The rest of the command you copied). Remember to keep that first space after the open quote.
9.  The command will include a `-Djava.library.path=` which points to a temporary directory that only exists while Minecraft is still open. These are your natives and necessary to run the game. While the game is still running in the same instance, navigate to and copy that directory somewhere. This ensures they'll always be present on runtime.
10. Append the path of the natives to `-Djava.library.path=`. (You'll have to replace the path that's there after the `=`.)
11. (OPTIONAL) If you want to have a fancy icon, just create a shortcut to the Batch script, right click the shortcut, and click `Change Icon...`.

### Mods I Use

*Some personal recommendations. All of these are Forge-oriented. Don't be hipster for Fabric. Forge has worked just fine all these years.*

[JEI](https://www.curseforge.com/minecraft/mc-mods/jei)
<br>*Item and recipe viewing mod. Built from the ground up for stability and performance.*

[Climb Ladders Fast](https://www.curseforge.com/minecraft/mc-mods/climb-ladders-fast)
<br>*Very simple and efficient mod to climb ladders faster. Also works with vines.*

[Sound Physics Remastered](https://www.curseforge.com/minecraft/mc-mods/sound-physics-remastered)
<br>*Provides realistic sound attenuation, reverberation, and absorption through blocks.*

[Xaero's Minimap](https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap) and [Xaero's World Map](https://www.curseforge.com/minecraft/mc-mods/xaeros-world-map)
<br>*Efficient minimap and top-down view overworld maps with vanilla aesthetics.*
