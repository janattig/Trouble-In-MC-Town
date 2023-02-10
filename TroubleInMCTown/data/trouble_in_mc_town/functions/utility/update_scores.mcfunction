# called at the end of the round (or whenever) to translate scores to score positions (first / second / etc.)

# reset all score position values
scoreboard players set @a ttt_score_position 0

# let all players update their own score position (by how many players have more points)
execute as @a at @s run function trouble_in_mc_town:utility/update_own_score_position

# move up score positions (if there are ties which lead to some ranks not used)
function trouble_in_mc_town:utility/compress_score_position_list