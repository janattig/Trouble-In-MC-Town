# Trouble In MC Town

This Minecraft datapack provides a new implementation of the well known Trouble in Terrorist Town (TTT) mod.


### Contents

In total, the datapack provides:
1. Implementation of the TTT rules, dividing players into <span style="color:blue">**Innocent**</span> and <span style="color:blue">**Traitor**</span>. Innocents win if they stay alive for 8 minutes (configurable) or all Traitors are dead. Traitors win if all Innocents are dead before the 8 minutes are over.
2. All players can find loot by opening (empty) chests around the world (best used with a pre-generated level, more coming soon). Traitors who wander around the world far away from the Innocents can find extra fun Traitor-loot
3. Special Traitor-loot containing these special items:
    * Diamond armor and weapons
    * Enchanted Golden Apples
    * Arrows with special effects, like lightning or TNT explosions. This is an adaption of Cloud Wolf's "Custom Arrows in Minecraft" Tutorial which can be found [here](https://www.youtube.com/watch?v=14mBKL53Fy0)
    * Splash Potions which can be thrown to summon mobs
4. A start structure which allows easy access to the TTT game



### Installation

... TODO ...

### How to play

... TODO ...



### Start Structure

To provide an easier start into setting up a TTT map which utilizes the Trouble in MC Town datapack, a start structure is provided. This structure is a 5x5 platform which contains command blocks that call the respective functions to *start* and *stop* (or interrupt) rounds of TTT, as well as blocks which *enable* or *disable* the debug mode in which an imaginary second player joins the game so features can be explored solo without the round ending.

The start structure can be obtained with the command
```
/loot give @s loot trouble_in_mc_town:structure_ttt_start
```
which spawns a structure block with the exact reference of the structure in the player inventory. This structure block has to be placed and the structure has to be loaded.

Upon loading, the structure looks like this:
![](images/start_structure.png)
