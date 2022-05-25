# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon some cave spiders
summon minecraft:spider ~ ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:0.1F},{Name:"generic.attack_damage",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~-0.5 ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:1.0F}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~ ~0.5 ~0.5 {Attributes:[{Name:"generic.movement_speed",Base:1.0F}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~0.5 ~0.5 ~ {Attributes:[{Name:"generic.movement_speed",Base:1.0F}], Tags:["sp_summoned"]}


# make angry at nearest player
execute as @e[type=spider, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
execute as @e[type=cave_spider, sort=nearest, limit=3] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
