# FUNCTION TO START ADD A TRAITOR TO SELECTION OF PLAYERS

# no traitors so far
tag @a remove ttt_become_traitor

# give an index to every participating player
scoreboard players set @a[tag=ttt_want_to_participate] ttt_player_index -1
scoreboard players set %current ttt_player_index 1
function trouble_in_mc_town:utility/give_index_to_players
scoreboard players set %maximum ttt_player_index -1
scoreboard players operation %maximum ttt_player_index += %current ttt_player_index

# reset the scoreboard
scoreboard players set %ttt_want_traitor ttt_num_players 1
scoreboard players operation #ttt_found_innocent ttt_num_players = %maximum ttt_player_index

# seed the RNG
function trouble_in_mc_town:rand/seed

# 1-4 players: 1 traitor
execute if score #ttt_found_innocent ttt_num_players matches ..4 run scoreboard players set %ttt_want_traitor ttt_num_players 1

# 5-6 players: 1-2 traitor
execute if score #ttt_found_innocent ttt_num_players matches 5..6 run scoreboard players set %ttt_want_traitor ttt_num_players 1
execute if score #ttt_found_innocent ttt_num_players matches 5..6 if predicate trouble_in_mc_town:rand_normal run scoreboard players add %ttt_want_traitor ttt_num_players 1

# 7 players: 2 traitor
execute if score #ttt_found_innocent ttt_num_players matches 7 run scoreboard players set %ttt_want_traitor ttt_num_players 2

# 8-10 players: 2-3 traitor
execute if score #ttt_found_innocent ttt_num_players matches 8..10 run scoreboard players set %ttt_want_traitor ttt_num_players 2
execute if score #ttt_found_innocent ttt_num_players matches 8..10 if predicate trouble_in_mc_town:rand_normal run scoreboard players add %ttt_want_traitor ttt_num_players 1

# 11 players: 3 traitor
execute if score #ttt_found_innocent ttt_num_players matches 11 run scoreboard players set %ttt_want_traitor ttt_num_players 3

# 12-15 players: 3-4 traitor
execute if score #ttt_found_innocent ttt_num_players matches 12..15 run scoreboard players set %ttt_want_traitor ttt_num_players 3
execute if score #ttt_found_innocent ttt_num_players matches 12..15 if predicate trouble_in_mc_town:rand_normal run scoreboard players add %ttt_want_traitor ttt_num_players 1

# larger groups: divide respectively
execute if score #ttt_found_innocent ttt_num_players matches 16.. run scoreboard players operation %ttt_want_traitor ttt_num_players = #ttt_found_innocent ttt_num_players
execute if score #ttt_found_innocent ttt_num_players matches 16.. run scoreboard players operation %ttt_want_traitor ttt_num_players /= #players_per_traitor ttt_num_players
execute if score #ttt_found_innocent ttt_num_players matches 16.. if predicate trouble_in_mc_town:rand_normal run scoreboard players add %ttt_want_traitor ttt_num_players 1



# designate all traitors
function trouble_in_mc_town:utility/designate_all_traitors

# reset all the indices
scoreboard players reset @a ttt_player_index
scoreboard players reset %maximum ttt_player_index
scoreboard players reset %ttt_want_traitor ttt_num_players


# correct the counts
scoreboard players set #ttt_found_innocent ttt_num_players 0
scoreboard players set #ttt_found_traitor ttt_num_players 0
execute as @a[tag=ttt_want_to_participate, tag=ttt_become_traitor] run scoreboard players add #ttt_found_traitor ttt_num_players 1
execute as @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor] run scoreboard players add #ttt_found_innocent ttt_num_players 1
