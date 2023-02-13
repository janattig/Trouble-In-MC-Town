# handle self
execute as @s at @s run function legendary_artifacts:handle_player_self

# remove the tag from itself
tag @s remove la_wields_artifact

# go through other players recursively
execute as @a[tag=la_wields_artifact, limit=1] at @s run function legendary_artifacts:handle_players_recursively