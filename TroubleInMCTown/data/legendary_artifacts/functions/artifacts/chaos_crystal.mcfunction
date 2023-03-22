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
summon marker ~ ~ ~ {Tags:["la_option_8", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_9", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_10", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_11", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_12", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_13", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_14", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_15", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_16", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_17", "la_tmp_option"]}

# mark a random option as chosen
execute as @e[sort=random, limit=1] run tag @e[type=marker, tag=la_tmp_option, limit=1, sort=random, distance=..1] add la_chosen

# execute options as subfunctions
execute as @e[type=marker, tag=la_option_1, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/diamond_sword
execute as @e[type=marker, tag=la_option_2, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/zombies
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/glowing
execute as @e[type=marker, tag=la_option_4, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/invisibility
execute as @e[type=marker, tag=la_option_5, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/levitation
execute as @e[type=marker, tag=la_option_6, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/teleport
execute as @e[type=marker, tag=la_option_7, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/drop_items
execute as @e[type=marker, tag=la_option_8, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/creepers
execute as @e[type=marker, tag=la_option_9, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/enderman
execute as @e[type=marker, tag=la_option_10, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/sheep
execute as @e[type=marker, tag=la_option_11, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/bats
execute as @e[type=marker, tag=la_option_12, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/spiders
execute as @e[type=marker, tag=la_option_13, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/parrots
execute as @e[type=marker, tag=la_option_14, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/armor_replacement
execute as @e[type=marker, tag=la_option_15, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/mob_pinata
execute as @e[type=marker, tag=la_option_16, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/mob_to_frog
execute as @e[type=marker, tag=la_option_17, tag=la_tmp_option, tag=la_chosen] at @s run function legendary_artifacts:artifacts/chaos_crystal/mob_teleport_to_player


# play a sound for all those effected
execute as @a[tag=la_cc_effected] at @s run playsound block.bell.use ambient @s ~ ~ ~ 0.3 0.1


# remove all markers and tags
kill @e[type=marker, tag=la_tmp_option]
tag @a remove la_cc_effected

# kill self
kill @s