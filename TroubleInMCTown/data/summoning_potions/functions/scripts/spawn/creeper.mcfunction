# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon one charged creeper
summon creeper ~ ~ ~ {powered:1,Fuse:40,ExplosionRadius:4, Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=creeper, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
