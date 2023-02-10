# copy the uuid from the player head
data modify entity @s data.player_uuid set from block ~ ~ ~ SkullOwner.Id

# set the scoreboards appropriately for the marker
execute store result score @s ttt_uuid_0 run data get entity @s data.player_uuid[0]
execute store result score @s ttt_uuid_1 run data get entity @s data.player_uuid[1]
execute store result score @s ttt_uuid_2 run data get entity @s data.player_uuid[2]
execute store result score @s ttt_uuid_3 run data get entity @s data.player_uuid[3]

# set the scoreboards for all players
execute as @a run execute store result score @s ttt_uuid_0 run data get entity @s UUID[0]
execute as @a run execute store result score @s ttt_uuid_1 run data get entity @s UUID[1]
execute as @a run execute store result score @s ttt_uuid_2 run data get entity @s UUID[2]
execute as @a run execute store result score @s ttt_uuid_3 run data get entity @s UUID[3]

# check all players if they match in all four uuid fields
tag @s add ttt_tmp_me
tag @a remove ttt_tmp_match
execute as @a at @s run execute if score @s ttt_uuid_0 = @e[tag=ttt_tmp_me, limit=1] ttt_uuid_0 run execute if score @s ttt_uuid_1 = @e[tag=ttt_tmp_me, limit=1] ttt_uuid_1 run execute if score @s ttt_uuid_2 = @e[tag=ttt_tmp_me, limit=1] ttt_uuid_2 run execute if score @s ttt_uuid_3 = @e[tag=ttt_tmp_me, limit=1] ttt_uuid_3 run tag @s add ttt_tmp_match

# add a tag that the corresponding player is online
execute if entity @p[tag=ttt_tmp_match] run tag @s add ttt_player_online

# copy the scoreboard values of the player for later use
scoreboard players operation @s ttt_score = @p[tag=ttt_tmp_match] ttt_score
scoreboard players operation @s ttt_score_position = @p[tag=ttt_tmp_match] ttt_score_position

# remove the matching tag again
tag @a remove ttt_tmp_match