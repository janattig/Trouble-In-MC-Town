# script that is called as a player who wants to be teleported back to his backup position

# set all entity uuid score values to player uuid
execute store result score @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] ttt_uuid_0_tmp run data get entity @s UUID[0]
execute store result score @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] ttt_uuid_1_tmp run data get entity @s UUID[1]
execute store result score @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] ttt_uuid_2_tmp run data get entity @s UUID[2]
execute store result score @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] ttt_uuid_3_tmp run data get entity @s UUID[3]

# subtract the own entity uuid values from their scoreboard
execute as @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] at @s run scoreboard players operation @s ttt_uuid_0_tmp -= @s ttt_uuid_0
execute as @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] at @s run scoreboard players operation @s ttt_uuid_1_tmp -= @s ttt_uuid_1
execute as @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] at @s run scoreboard players operation @s ttt_uuid_2_tmp -= @s ttt_uuid_2
execute as @e[type=armor_stand, tag=ttt_backup, tag=ttt_tp_position] at @s run scoreboard players operation @s ttt_uuid_3_tmp -= @s ttt_uuid_3

# mark the target armorstand
tag @e[scores={ttt_uuid_0_tmp=0, ttt_uuid_1_tmp=0, ttt_uuid_2_tmp=0, ttt_uuid_3_tmp=0}] add ttt_tp_target

# give the player the effect of blindness
effect give @s minecraft:blindness 1 2 false

# tp the player
tp @s @e[tag=ttt_tp_target, limit=1]

# kill the armor stand itself
kill @e[tag=ttt_tp_target]


title @s times 10 70 20
title @s title ["",{"text":"Your back!","bold":true}]
title @s subtitle ["", {"text":"A new round can be started"}]




# summon armor stand as helper
#summon armor_stand ~ ~ ~ {NoGravity:1, Tags:["ttt_tp_back"], NoBasePlate:1, Small:1, NoHitBox:1, Marker:1b, Invisible:1}

#execute as @e[tag=ttt_tp_back,limit=1,sort=nearest] at @s run function trouble_in_mc_town:utility/position_backup/armorstand_help_function
