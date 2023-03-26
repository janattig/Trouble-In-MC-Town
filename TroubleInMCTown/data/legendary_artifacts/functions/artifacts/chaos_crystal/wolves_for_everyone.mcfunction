# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"You have a ", "color":"white"}, {"text":"Wolf Buddy", "color":"#777777"}, {"text":" now", "color":"white"}]

# summon horses at every player
execute as @a[tag=la_cc_effected] at @s run summon wolf ~ ~ ~ {Tags:["sp_summoned", "cc_new_wolf"], Owner:[I;1,1,1,1]}

# modify wolf attributes to make wolf stronger
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run attribute @s generic.attack_damage base set 8
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run attribute @s generic.attack_speed base set 2
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run attribute @s generic.movement_speed base set 0.5
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run attribute @s generic.max_health base set 30
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run attribute @s generic.follow_range base set 60

# set the wolf's owner correctly
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run data modify entity @s Owner[0] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[0]
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run data modify entity @s Owner[1] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[1]
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run data modify entity @s Owner[2] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[2]
execute as @e[type=minecraft:wolf, tag=cc_new_wolf] at @s run data modify entity @s Owner[3] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[3]

# remove the tag
tag @e remove cc_new_wolf