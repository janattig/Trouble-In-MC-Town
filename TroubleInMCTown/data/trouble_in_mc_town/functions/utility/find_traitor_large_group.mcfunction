# FUNCTION TO START ADD A TRAITOR TO SELECTION OF PLAYERS

# tmp: announcing
#tellraw @a[tag=ttt_want_to_participate] ["",{"text":"> Adding a ","color":"white"},{"text":"Traitor","bold":true,"color":"red"}]

# designate traitor
tag @r[tag=ttt_want_to_participate, tag=!ttt_become_traitor] add ttt_become_traitor

# increase counts for this round
scoreboard players operation #ttt_need_innocent ttt_num_players += #max_i_per_t ttt_num_players
scoreboard players remove #ttt_found_innocent ttt_num_players 1
scoreboard players add #ttt_found_traitor ttt_num_players 1

# need more traitors
execute if score #ttt_need_innocent ttt_num_players < #ttt_found_innocent ttt_num_players run function trouble_in_mc_town:utility/find_traitor_large_group
