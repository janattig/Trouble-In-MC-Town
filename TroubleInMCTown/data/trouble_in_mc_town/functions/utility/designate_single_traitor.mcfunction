# function to find a random person as traitor

# get random index
scoreboard players set %LCG_rand_min ttt_math 1
scoreboard players operation %LCG_rand_max ttt_math = %maximum ttt_player_index
function trouble_in_mc_town:rand/update

# execute as the player with this number
tag @a remove ttt_chosen_index
execute as @a[tag=ttt_want_to_participate, scores={ttt_player_index=0..}, tag=!ttt_become_traitor] at @s run execute if score @s ttt_player_index = %LCG_rand ttt_math run tag @s add ttt_chosen_index

# as the chosen player, become traitor
tag @a[tag=ttt_chosen_index] add ttt_become_traitor

# mark that there has been a chosen player
execute as @a[tag=ttt_chosen_index] run scoreboard players set %LCG_rand ttt_math -10

# unchose player
tag @a remove ttt_chosen_index


# if no chosen player existed (then %LCG_rand is larger than 0), repeat the function
execute if score %LCG_rand ttt_math matches 0.. run function trouble_in_mc_town:utility/designate_single_traitor
