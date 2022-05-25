# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon one strong shulker
summon minecraft:silverfish ~ ~ ~ {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~ ~0.5 ~ {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~0.5 ~ ~ {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~ ~ ~0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~-0.5 ~ ~ {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~ ~ ~-0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~0.5 ~ ~0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~-0.5 ~ ~0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~-0.5 ~ ~-0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}
summon minecraft:silverfish ~0.5 ~ ~-0.5 {PersistenceRequired:1,Attributes:[{Name:"generic.follow_range",Base:48.0F},{Name:"generic.movement_speed",Base:0.4F},{Name:"generic.max_health",Base:5.0F}], Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=silverfish, sort=nearest, limit=10] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
