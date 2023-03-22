# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"All mobs turn to ", "color":"white"}, {"text":"Frogs", "color":"#00ffaa"}]

# search all mobs whose loot tables can be altered
execute as @e[type=!player, type=!armor_stand] at @s run execute if data entity @s Brain run summon frog ~ ~ ~ {Tags:["sp_summoned", "sp_frog_new"]}
execute as @e[tag=sp_frog_new] at @s run data modify entity @s DeathLootTable set from entity @e[tag=!sp_frog_new, distance=..1, limit=1, sort=nearest] DeathLootTable
execute as @e[type=!player, type=!armor_stand, tag=!sp_frog_new] at @s run execute if data entity @s Brain run tp @s ~ ~-1000 ~
tag @e[tag=sp_frog_new] remove sp_frog_new