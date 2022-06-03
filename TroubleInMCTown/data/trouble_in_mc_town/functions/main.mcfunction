# run the main loop if a round is running
execute if score #round_running ttt_booleans matches 1 run function trouble_in_mc_town:main_scripts/main_game_loop

# maybe teleport a spectator to his death place
execute as @e[tag=ttt_needs_death_tp, limit=1, sort=random] run function trouble_in_mc_town:utility/position_backup/tp_to_death

# check glowing powder
execute as @e[type=potion, nbt={Item:{tag:{glowing_powder:1b}}}] at @s run function trouble_in_mc_town:utility/glowing_powder_effect
