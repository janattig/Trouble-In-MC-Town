# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"You have a ", "color":"white"}, {"text":"Horse", "color":"#624110"}, {"text":" now", "color":"white"}]

# summon horses at every player
execute as @a[tag=la_cc_effected] at @s run summon horse ~ ~ ~ {Tags:["sp_summoned", "cc_new_horse"], Tame:1b, Owner:[I;1,1,1,1], SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{Enchantments:[{}]}}}

# set the owner correctly
execute as @e[type=horse, tag=cc_new_horse] at @s run data modify entity @s Owner[0] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[0]
execute as @e[type=horse, tag=cc_new_horse] at @s run data modify entity @s Owner[1] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[1]
execute as @e[type=horse, tag=cc_new_horse] at @s run data modify entity @s Owner[2] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[2]
execute as @e[type=horse, tag=cc_new_horse] at @s run data modify entity @s Owner[3] set from entity @e[tag=la_cc_effected, limit=1, sort=nearest] UUID[3]

# remove the tag
tag @e remove cc_new_horse