# designate a single traitor
function trouble_in_mc_town:utility/designate_single_traitor

# check how many traitors there are
scoreboard players set #ttt_found_traitor ttt_num_players 0
execute as @a[tag=ttt_want_to_participate, tag=ttt_become_traitor] run scoreboard players add #ttt_found_traitor ttt_num_players 1

# check if still too few
execute if score #ttt_found_traitor ttt_num_players < %ttt_want_traitor ttt_num_players run function trouble_in_mc_town:utility/designate_all_traitors
