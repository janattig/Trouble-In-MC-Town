# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon a giant slime
summon minecraft:slime ~ ~ ~ {Size:4, Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=slime, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
