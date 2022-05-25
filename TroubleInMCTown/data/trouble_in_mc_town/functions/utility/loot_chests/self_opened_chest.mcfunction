# reset scoreboard to be able to trigger again later
scoreboard players set @s ttt_chestopened 0
scoreboard players set @s ttt_tchestopened 0
scoreboard players set @s ttt_barrelopened 0

# debugging: say hi
#say hi, I opened a chest!

# spawn an armor stand
scoreboard players set @s ttt_raycasting 0
scoreboard players operation @s ttt_raycasting += #max_ray_range ttt_raycasting
execute as @s at @s anchored eyes run function trouble_in_mc_town:utility/loot_chests/raycast_loop
