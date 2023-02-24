# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"All your ", "color":"white"}, {"text":"items", "color":"#ff65ff"}, {"text":" slip away", "color":"white"}]

# designate all players that have to drop items
tag @a[tag=la_cc_effected] add la_drops_items
# call loop for random first player
execute as @a[tag=la_drops_items, limit=1, sort=furthest] at @s run function legendary_artifacts:artifacts/chaos_crystal/drop_player_loop