# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Mobs ", "color":"white"}, {"text":"come to you", "color":"#ffa0bb"}]

# search all mobs whose loot tables can be altered
execute as @e[type=!player, type=!armor_stand] at @s run execute if data entity @s Brain run tp @s @a[limit=1, sort=nearest, tag=la_cc_effected]