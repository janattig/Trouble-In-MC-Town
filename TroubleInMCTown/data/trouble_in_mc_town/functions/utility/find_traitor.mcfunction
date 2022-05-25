# FUNCTION TO START ADD A TRAITOR TO SELECTION OF PLAYERS

# 1-4 players: 1 traitor
execute if score #ttt_found_innocent ttt_num_players matches ..4 run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=1] add ttt_become_traitor

# 5-6 players: 1-2 traitor
execute if score #ttt_found_innocent ttt_num_players matches 5..6 run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=1] add ttt_become_traitor
execute if score #ttt_found_innocent ttt_num_players matches 5..6 if predicate trouble_in_mc_town:rand_normal run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=1] add ttt_become_traitor

# 7 players: 2 traitor
execute if score #ttt_found_innocent ttt_num_players matches 7 run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=2] add ttt_become_traitor

# 8-10 players: 2-3 traitor
execute if score #ttt_found_innocent ttt_num_players matches 8..10 run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=2] add ttt_become_traitor
execute if score #ttt_found_innocent ttt_num_players matches 8..10 if predicate trouble_in_mc_town:rand_normal run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=1] add ttt_become_traitor

# 12-15 players: 3-4 traitor
execute if score #ttt_found_innocent ttt_num_players matches 12..15 run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=3] add ttt_become_traitor
execute if score #ttt_found_innocent ttt_num_players matches 12..15 if predicate trouble_in_mc_town:rand_normal run tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor, sort=random, limit=1] add ttt_become_traitor

# larger groups: other function
execute if score #ttt_found_innocent ttt_num_players matches 16.. run function trouble_in_mc_town:utility/find_traitor_large_group




# correct the counts
scoreboard players set #ttt_found_innocent ttt_num_players 0
scoreboard players set #ttt_found_traitor ttt_num_players 0
execute as @a[tag=ttt_want_to_participate, tag=ttt_become_traitor] run scoreboard players add #ttt_found_traitor ttt_num_players 1
execute as @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor] run scoreboard players add #ttt_found_innocent ttt_num_players 1
