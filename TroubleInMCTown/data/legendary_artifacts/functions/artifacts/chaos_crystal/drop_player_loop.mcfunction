# call as self: drop everything
function legendary_artifacts:artifacts/chaos_crystal/self_drop_everything
# remove the tag that shows one has to drop items
tag @s remove la_drops_items

# execute as the next player in the list
execute as @a[tag=la_drops_items, limit=1, sort=furthest] at @s run function legendary_artifacts:artifacts/chaos_crystal/drop_player_loop