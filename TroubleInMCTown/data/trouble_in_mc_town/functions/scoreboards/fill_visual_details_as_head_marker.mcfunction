# called as the head marker (from its position) to fill visual details

# clear display
execute as @e[tag=ttt_score_sign, limit=1, sort=nearest] at @s run function trouble_in_mc_town:scoreboards/sign/clear_sign


# gather details

# tag the other block markers if there is a head present
execute as @s[tag=ttt_has_head] run tag @e[tag=ttt_score_block, limit=2, sort=nearest] add ttt_has_head
execute as @s[tag=ttt_has_head] run tag @e[tag=ttt_score_sign, limit=1, sort=nearest] add ttt_has_head

# set the uuid scoreboards for this marker and check if a player is online
execute as @s[tag=ttt_has_head] at @s run function trouble_in_mc_town:scoreboards/check_player_uuid

# tag the other block markers if the player is online
execute as @s[tag=ttt_player_online] run tag @e[tag=ttt_score_block, limit=2, sort=nearest] add ttt_player_online
execute as @s[tag=ttt_player_online] run tag @e[tag=ttt_score_sign, limit=1, sort=nearest] add ttt_player_online
# copy data to other markers 
execute as @s[tag=ttt_player_online] run data modify entity @e[tag=ttt_score_sign, limit=1, sort=nearest] data.player_uuid set from entity @s data.player_uuid
execute if score @s ttt_score_position matches 1 run tag @e[tag=ttt_score_block, limit=2, sort=nearest] add ttt_is_first
execute if score @s ttt_score_position matches 2 run tag @e[tag=ttt_score_block, limit=2, sort=nearest] add ttt_is_second
execute if score @s ttt_score_position matches 3 run tag @e[tag=ttt_score_block, limit=2, sort=nearest] add ttt_is_third



# update blocks
execute as @e[tag=ttt_score_block, limit=2, sort=nearest] at @s run function trouble_in_mc_town:scoreboards/blocks/update_block_visuals

# update sign
execute as @e[tag=ttt_score_sign, limit=1, sort=nearest] at @s run execute as @s[tag=ttt_has_head, tag=ttt_player_online] run function trouble_in_mc_town:scoreboards/sign/update_player_info





# kill all markers
kill @e[tag=ttt_score_block, limit=2, sort=nearest]
kill @e[tag=ttt_score_sign, limit=1, sort=nearest]
kill @s 