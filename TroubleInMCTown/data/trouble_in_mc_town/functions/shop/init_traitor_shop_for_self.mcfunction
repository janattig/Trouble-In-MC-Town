# summon a marker above current position
summon marker ~ ~100 ~ {NoGravity:1, Tags:["ttt_traitor_shop_home", "ttt_traitor_shop_home_new"]}

# save player and marker score for this shop
scoreboard players add %current ttt_shop 1
execute positioned ~ ~100 ~ run execute as @e[tag=ttt_traitor_shop_home_new, limit=1, sort=nearest] at @s run scoreboard players operation @s ttt_shop = %current ttt_shop
scoreboard players operation @s ttt_shop = %current ttt_shop

# add a tag that the player has a shop
tag @s add has_shop

# remove the "new" tag of the marker
execute positioned ~ ~100 ~ run tag @e[tag=ttt_traitor_shop_home_new, limit=1, sort=nearest] remove ttt_traitor_shop_home_new
