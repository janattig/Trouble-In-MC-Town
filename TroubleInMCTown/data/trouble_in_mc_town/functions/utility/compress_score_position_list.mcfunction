# start by score position 1
scoreboard players set %current ttt_score_position 1
scoreboard players set %maximum ttt_score_position 0
scoreboard players set %reduction ttt_score_position 0

# set the maximum
execute as @a run execute if score @s ttt_score_position > %maximum ttt_score_position run scoreboard players operation %maximum ttt_score_position = @s ttt_score_position

# call the recursive function
function trouble_in_mc_town:utility/compress_score_position_list_recursive

# reset certain variables
scoreboard players reset %current ttt_score_position
scoreboard players reset %maximum ttt_score_position
scoreboard players reset %reduction ttt_score_position
scoreboard players reset %has_score ttt_score_position