# handle a given tower
execute as @e[type=marker, tag=legendary_tower, limit=1, sort=random, tag=lt_needs_update] at @s run function legendary_towers:handle_this_tower

# call again if there is a tower in need of an update
execute as @e[type=marker, tag=legendary_tower, limit=1, sort=random, tag=lt_needs_update] at @s run function legendary_towers:handle_towers_recursively