# debugging
#say yes, empty barrel found!

# stop raycasting
scoreboard players operation @s ttt_raycasting -= #max_ray_range ttt_raycasting

# check if single chest
execute if block ~ ~ ~ chest[type=single] run function trouble_in_mc_town:utility/loot_chests/raycast_found_single_chest
# check if double chest
execute if block ~ ~ ~ chest[type=left] run function trouble_in_mc_town:utility/loot_chests/raycast_found_double_chest
execute if block ~ ~ ~ chest[type=right] run function trouble_in_mc_town:utility/loot_chests/raycast_found_double_chest
