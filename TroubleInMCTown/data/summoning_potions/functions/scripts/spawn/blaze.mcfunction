# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon a blaze
summon minecraft:blaze ~ ~ ~ {PersistenceRequired:1,Health:50.0f, Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=blaze, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
