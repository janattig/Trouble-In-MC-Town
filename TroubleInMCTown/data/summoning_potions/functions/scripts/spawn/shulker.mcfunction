# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon one strong shulker
summon minecraft:shulker ~ ~ ~ {Color:2,PersistenceRequired:1,Attributes:[{Name:"generic.max_health",Base:40.0F},{Name:"generic.movement_speed",Base:2.0F},{Name:"generic.attack_damage",Base:4.0F}], Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=shulker, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
