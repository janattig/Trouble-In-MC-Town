# general particle and sound effects
particle poof ~ ~ ~ 0.5 0.5 0.5 1 30
particle explosion ~ ~ ~
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~

# designate players that are effected
tag @a remove la_cc_effected
tag @a[distance=0.., gamemode=!spectator] add la_cc_effected

# general title screen (as info for all players)
title @a[tag=la_cc_effected] title [{"text":"Chaos Crystal", "color":"#b100cd"}]

# summon markers for the different options
kill @e[type=marker, tag=la_tmp_option]
summon marker ~ ~ ~ {Tags:["la_option_1", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_2", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_3", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_4", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_5", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_6", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_7", "la_tmp_option"]}
# mark a random option as chosen
tag @e[type=marker, tag=la_tmp_option, limit=1, sort=random, distance=..1] add la_chosen

# execute options as subfunctions
execute as @e[type=marker, tag=la_option_1, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/diamond_sword
execute as @e[type=marker, tag=la_option_2, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/zombies
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/glowing
execute as @e[type=marker, tag=la_option_4, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/invisibility
execute as @e[type=marker, tag=la_option_5, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/levitation
execute as @e[type=marker, tag=la_option_6, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/teleport
execute as @e[type=marker, tag=la_option_7, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/drop_items



# remove all markers and tags
kill @e[type=marker, tag=la_tmp_option]
tag @a remove la_cc_effected

# kill self
kill @s