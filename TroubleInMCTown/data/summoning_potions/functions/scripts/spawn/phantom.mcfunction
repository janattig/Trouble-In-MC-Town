# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon some cave spiders
summon minecraft:phantom ~ ~0.5 ~ {PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.movementSpeed",Base:0.5f}], Tags:["sp_summoned"]}
summon minecraft:phantom ~0.5 ~ ~ {PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.movementSpeed",Base:0.5f}], Tags:["sp_summoned"]}
summon minecraft:phantom ~ ~ ~-0.5 {PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.movementSpeed",Base:0.5f}], Tags:["sp_summoned"]}
summon minecraft:phantom ~ ~ ~0.5 {PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.movementSpeed",Base:0.5f}], Tags:["sp_summoned"]}
summon minecraft:phantom ~-0.5 ~ ~ {PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.movementSpeed",Base:0.5f}], Tags:["sp_summoned"]}


# make angry at nearest player
execute as @e[type=phantom, sort=nearest, limit=5] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
