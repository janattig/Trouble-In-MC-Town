# MAIN CODE LOOP (execute only if round is running)

# check loot
function trouble_in_mc_town:utility/loot_chests/main_chest_loop


# check player death
execute as @a[tag=ttt_alive] at @s run function trouble_in_mc_town:utility/check_death
# check player heads for death attribution
function trouble_in_mc_town:utility/resolve_player_kills


# set correct number of persons team
scoreboard players set Traitor ttt_num_players 0
scoreboard players set Innocent ttt_num_players 0
scoreboard players set #Total ttt_num_players 0

# debugging: maybe add innocent that is not there
scoreboard players operation Innocent ttt_num_players += #debugging ttt_booleans

execute as @a[tag=ttt_traitor, tag=ttt_alive] run scoreboard players add Traitor ttt_num_players 1
execute as @a[tag=ttt_traitor, tag=ttt_alive] run scoreboard players add #Total ttt_num_players 1

execute as @a[tag=ttt_innocent, tag=ttt_alive] run scoreboard players add Innocent ttt_num_players 1
execute as @a[tag=ttt_innocent, tag=ttt_alive] run scoreboard players add #Total ttt_num_players 1



# show the roles to the Players
title @a[tag=ttt_traitor, tag=ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Traitor","bold":true,"color":"red"},{"text":" <-       (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]
title @a[tag=ttt_innocent, tag=ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Innocent","bold":true,"color":"blue"},{"text":" <-       (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]

# show roles to dead players
title @a[tag=ttt_traitor, tag=!ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Traitor","bold":true,"color":"red"},{"text":" <- (dead)      (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]
title @a[tag=ttt_innocent, tag=!ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Innocent","bold":true,"color":"blue"},{"text":" <- (dead)      (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]


# check winning condition
execute if score Traitor ttt_num_players matches 0 run function trouble_in_mc_town:utility/win_innocent
execute if score Innocent ttt_num_players matches 0 run function trouble_in_mc_town:utility/win_traitor
