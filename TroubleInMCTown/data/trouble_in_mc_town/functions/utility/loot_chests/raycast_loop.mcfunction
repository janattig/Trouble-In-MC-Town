# debuggin effects
#particle crit ~ ~ ~ 0 0 0 0 1
#say yes, run 1 time

# maybe found an empty / full chest
execute if block ~ ~ ~ chest{Items:[]} positioned ~ ~ ~ align xyz run execute positioned ~0.5 ~0.5 ~0.5 run execute unless entity @e[tag=ttt_lootchest,distance=..0.6] run function trouble_in_mc_town:utility/loot_chests/raycast_found_chest
execute if block ~ ~ ~ chest{Items:[{}]} run scoreboard players operation @s ttt_raycasting -= #max_ray_range ttt_raycasting

# maybe found an empty / full trapped_chest
execute if block ~ ~ ~ trapped_chest{Items:[]} positioned ~ ~ ~ align xyz run execute positioned ~0.5 ~0.5 ~0.5 run execute unless entity @e[tag=ttt_lootchest,distance=..0.6] run function trouble_in_mc_town:utility/loot_chests/raycast_found_trapped_chest
execute if block ~ ~ ~ trapped_chest{Items:[{}]} run scoreboard players operation @s ttt_raycasting -= #max_ray_range ttt_raycasting

# maybe found an empty / full barrel
execute if block ~ ~ ~ barrel{Items:[]} positioned ~ ~ ~ align xyz run execute positioned ~0.5 ~0.5 ~0.5 run execute unless entity @e[tag=ttt_lootchest,distance=..0.6] run function trouble_in_mc_town:utility/loot_chests/raycast_found_barrel
execute if block ~ ~ ~ barrel{Items:[{}]} run scoreboard players operation @s ttt_raycasting -= #max_ray_range ttt_raycasting


# maybe found another chest
#execute if block ~ ~ ~ chest{Items:[{}]} positioned ~ ~ ~ run say chest with items found
# raycast goes on
scoreboard players remove @s ttt_raycasting 1
execute if score @s ttt_raycasting matches 1.. positioned ^ ^ ^0.25 run function trouble_in_mc_town:utility/loot_chests/raycast_loop
