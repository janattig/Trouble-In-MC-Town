# mark this single head for resolving (can have multiple at once)
tag @e remove ttt_resolving
tag @s add ttt_resolving

# mark the killer as the item's uuid scores
execute store result score @s ttt_uuid_0 run data get entity @s Item.tag.killer[0]
execute store result score @s ttt_uuid_1 run data get entity @s Item.tag.killer[1]
execute store result score @s ttt_uuid_2 run data get entity @s Item.tag.killer[2]
execute store result score @s ttt_uuid_3 run data get entity @s Item.tag.killer[3]

# call each other player to check if he is responsible for the kill resulting in the head marked by tag "ttt_resolving"
execute as @a[tag=ttt_participating] at @s run function trouble_in_mc_town:utility/check_for_kill_as_player

# reset the item's uuid scores
scoreboard players reset @s ttt_uuid_0
scoreboard players reset @s ttt_uuid_1
scoreboard players reset @s ttt_uuid_2
scoreboard players reset @s ttt_uuid_3

# indicate that the kill was resolved
data modify entity @s Item.tag.needs_resolving set value 0b
tag @s remove ttt_resolving