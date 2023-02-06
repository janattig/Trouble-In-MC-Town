# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon some cave spiders
summon minecraft:spider ~ ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:0.1d},{Name:"generic.attack_damage",Base:5.0d}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~-0.5 ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:1.0d}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~ ~0.5 ~0.5 {Attributes:[{Name:"generic.movement_speed",Base:1.0d}], Tags:["sp_summoned"]}
summon minecraft:cave_spider ~0.5 ~0.5 ~ {Attributes:[{Name:"generic.movement_speed",Base:1.0d}], Tags:["sp_summoned"]}