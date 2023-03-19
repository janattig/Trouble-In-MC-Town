# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Mobs drop ", "color":"white"}, {"text":"Artifacts", "color":"#aaaaff"}, {"text":" when slain", "color":"white"}]

# search all mobs whose loot tables can be altered
execute as @e[type=!player, type=!armor_stand] at @s run execute if data entity @s Brain run data merge entity @s {DeathLootTable:"legendary_artifacts:mob_pinata"}