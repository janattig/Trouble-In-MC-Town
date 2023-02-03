# script that the player runs himself, when he is becoming a spectator (because he died)


# clear the player inventory
clear @s

# set respawn point
#spawnpoint
#execute if block ~ ~ ~ minecraft:dirt_path run spawnpoint @s ~ ~0.1 ~
execute as @s at @s run function trouble_in_mc_town:utility/position_backup/backup_death
tag @s add ttt_needs_death_tp

# change into adventure mode
gamemode spectator @s

# join the team of spectators to see the sidebar
team join team_spectator @s

# drop the player head --> moved to loottable minecraft:entities/player to incorporate on-death effects
#execute as @s[tag=ttt_traitor] run loot spawn ~ ~ ~ loot trouble_in_mc_town:player_head_traitor
#execute as @s[tag=ttt_innocent] run loot spawn ~ ~ ~ loot trouble_in_mc_town:player_head_innocent

# check player heads for death attribution
function trouble_in_mc_town:utility/resolve_player_kills
