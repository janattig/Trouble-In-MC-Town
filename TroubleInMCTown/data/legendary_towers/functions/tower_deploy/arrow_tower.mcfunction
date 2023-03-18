# summon the arrow tower entity
summon marker ~ ~1 ~ {Tags:["legendary_tower", "arrow_tower", "lt_new"]}

# set scoreboard values
execute store result score @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_cooldowns_max run data get entity @s Item.tag.cooldown
scoreboard players set @e[tag=lt_new, type=marker, limit=1, sort=nearest] lt_cooldowns 200

# remove the new tag on the marker
tag @e[tag=lt_new] remove lt_new

# play a sound
playsound block.end_portal.spawn ambient @a ~ ~ ~ 0.1 2.0
playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 0.5



# summon decoration entities
summon minecraft:armor_stand ~ ~0.1 ~ {NoGravity:1, Tags:["lt_decoration"], NoBasePlate:1, Small:1, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:spawner",Count:1b}]}
summon minecraft:armor_stand ~ ~-1.2 ~ {NoGravity:1, Tags:["lt_decoration"], NoBasePlate:1, Small:0, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:arrow",Count:1b}]}
summon minecraft:armor_stand ~ ~-1.2 ~ {Rotation:[180.0f,0.0f], NoGravity:1, Tags:["lt_decoration"], NoBasePlate:1, Small:0, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:arrow",Count:1b}]}
summon minecraft:armor_stand ~ ~-0.7 ~ {NoGravity:1, Tags:["lt_decoration", "lt_constructing"], NoBasePlate:1, Small:0, Invisible:1b, Marker:1b, ArmorItems:[{},{},{}, {id:"minecraft:gray_concrete",Count:1b}]}