# FUNCTION TO START A ROUND OF TTT

# call countdown function for next tick
execute if score #round_starting ttt_booleans matches 1 run tellraw @p ["",{"text":"> There is a round of TTT currently starting, cannot start another one...","color":"white"}]
execute if score #round_ending ttt_booleans matches 1 run tellraw @p ["",{"text":"> There is a round of TTT currently ending, cannot start another one...","color":"white"}]
execute unless score #round_starting ttt_booleans matches 1 unless score #round_ending ttt_booleans matches 1 run function trouble_in_mc_town:main_scripts/setup_round
