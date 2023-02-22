# particle effects
particle minecraft:explosion ~ ~ ~ 1 1 1 2 5

# fill air with fire blocks in vicinity
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 fire[age=10] replace air 
fill ~-3 ~-2 ~-1 ~3 ~2 ~1 fire[age=10] replace air 
fill ~-1 ~-2 ~-1 ~1 ~2 ~3 fire[age=10] replace air 
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 fire[age=10] replace air 

# apply fire to surrounding entities
execute as @e[distance=0.1..5, tag=!la_unaffected] at @s run data modify entity @s Fire set value 100
# make burning ground around non-burning enemies
execute as @e[distance=..5, tag=!la_unaffected, nbt={Fire:-1s}] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire[age=15] replace air

# play sound effects
playsound minecraft:item.bucket.fill_lava ambient @a ~ ~ ~ 0.2 1.5
playsound block.pointed_dripstone.drip_lava_into_cauldron ambient @a ~ ~ ~ 1.0 0.2