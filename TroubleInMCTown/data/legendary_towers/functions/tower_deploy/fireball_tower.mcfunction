# summon the arrow tower entity
summon marker ~ ~1 ~ {Tags:["legendary_tower", "fireball_tower", "lt_new"]}

# set scoreboard values
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_cooldowns_max run data get entity @s Item.tag.cooldown
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_cooldowns run data get entity @s Item.tag.build_cooldown
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_speed_multiplier run data get entity @s Item.tag.speed
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_damage run data get entity @s Item.tag.fireball_size
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_damage_2 run data get entity @s Item.tag.explosion

# remove the new tag on the marker
tag @e[tag=lt_new] remove lt_new

# play a sound
playsound block.end_portal.spawn ambient @a ~ ~ ~ 0.1 2.0
playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.5



# summon decoration entities
summon minecraft:armor_stand ~ ~0.1 ~ {NoGravity:1, Tags:["lt_decoration"], NoBasePlate:1, Small:1, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:spawner",Count:1b}]}
summon minecraft:armor_stand ~ ~-0.28 ~ {NoGravity:1, Tags:["lt_decoration"], NoBasePlate:1, Small:1, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:sculk_shrieker",Count:1b}]}
summon minecraft:armor_stand ~ ~-0.73 ~ {NoGravity:1, Tags:["lt_decoration", "lt_stationary"], NoBasePlate:1, Small:1, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:chiseled_stone_bricks",Count:1b}]}
summon minecraft:armor_stand ~ ~-0.7 ~ {NoGravity:1, Tags:["lt_decoration", "lt_constructing"], NoBasePlate:1, Small:0, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:red_concrete",Count:1b}]}