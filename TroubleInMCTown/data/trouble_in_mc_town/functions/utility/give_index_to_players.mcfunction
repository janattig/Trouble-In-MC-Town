# find random player to give current index
execute as @e[limit=1, sort=random] at @s run execute as @a[tag=ttt_want_to_participate, scores={ttt_player_index=-1}, limit=1, sort=random] at @s run scoreboard players operation @s ttt_player_index = %current ttt_player_index

# increment index
scoreboard players add %current ttt_player_index 1

# call again as a player that has no index
execute as @a[tag=ttt_want_to_participate, scores={ttt_player_index=-1}, limit=1, sort=random] at @s run function trouble_in_mc_town:utility/give_index_to_players
