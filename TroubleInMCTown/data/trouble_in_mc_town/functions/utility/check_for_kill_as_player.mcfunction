# mark the player uuid
execute store result score @s ttt_uuid_0 run data get entity @s UUID[0]
execute store result score @s ttt_uuid_1 run data get entity @s UUID[1]
execute store result score @s ttt_uuid_2 run data get entity @s UUID[2]
execute store result score @s ttt_uuid_3 run data get entity @s UUID[3]

# resolve the kill if all player uuid values are the same as the killer uuid
execute if score @s ttt_uuid_0 = @e[type=item,tag=ttt_resolving,limit=1] ttt_uuid_0 run execute if score @s ttt_uuid_1 = @e[type=item,tag=ttt_resolving,limit=1] ttt_uuid_1 run execute if score @s ttt_uuid_2 = @e[type=item,tag=ttt_resolving,limit=1] ttt_uuid_2 run execute if score @s ttt_uuid_3 = @e[type=item,tag=ttt_resolving,limit=1] ttt_uuid_3 run function trouble_in_mc_town:utility/resolve_kill_as_player

# reset the player uuid scores
scoreboard players reset @s ttt_uuid_0
scoreboard players reset @s ttt_uuid_1
scoreboard players reset @s ttt_uuid_2
scoreboard players reset @s ttt_uuid_3