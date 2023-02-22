# apply fire to surrounding entities
execute as @e[distance=0.1..5, tag=!la_unaffected] at @s run data modify entity @s Fire set value 20
# make burning ground around non-burning enemies
execute as @e[distance=..5, tag=!la_unaffected, nbt=!{Fire:-1s}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
execute as @e[distance=..5, tag=!la_unaffected, nbt={Fire:-1s}] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire[age=15] replace air

# give self fire resistance
effect give @s minecraft:fire_resistance 1

# particle effect
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.7 0.2 0.1 2 force