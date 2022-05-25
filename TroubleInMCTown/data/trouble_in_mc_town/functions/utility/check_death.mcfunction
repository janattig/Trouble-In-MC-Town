# script for checking if the player has died recently

# check if the death counter has gone up
execute if score @s ttt_player_death matches 1.. run scoreboard players remove @s ttt_player_life 1
execute if score @s ttt_player_death matches 1.. run scoreboard players set @s ttt_player_death 0

# check if no more lifes left
execute if score @s ttt_player_life matches 0 run tellraw @s "> you died ... respawn to spectate"
execute if score @s ttt_player_life matches 0 run tag @s remove ttt_alive

# set self as spectator
execute if score @s ttt_player_life matches 0 run function trouble_in_mc_town:utility/setup_self_as_spectator
