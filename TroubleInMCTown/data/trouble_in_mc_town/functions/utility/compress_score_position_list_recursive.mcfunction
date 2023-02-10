# check if there are entities with this score
scoreboard players set %has_score ttt_score_position 0
execute as @a run execute if score @s ttt_score_position = %current ttt_score_position run scoreboard players set %has_score ttt_score_position 1

# if there are no entities: add 1 to the reduction, otherwise reduce score position by reduction
execute if score %has_score ttt_score_position matches 0 run scoreboard players add %reduction ttt_score_position 1
execute if score %has_score ttt_score_position matches 1 run execute as @a run execute if score @s ttt_score_position = %current ttt_score_position run scoreboard players operation @s ttt_score_position -= %reduction ttt_score_position

# increase the current score position by one
scoreboard players add %current ttt_score_position 1
# call the recursive function again if the maximum is not reached yet
execute if score %current ttt_score_position <= %maximum ttt_score_position run function trouble_in_mc_town:utility/compress_score_position_list_recursive