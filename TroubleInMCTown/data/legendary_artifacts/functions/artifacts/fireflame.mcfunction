# apply fire to surrounding entities
execute as @e[distance=0.1..5] at @s run data modify entity @s Fire set value 20
# give self fire resistance
effect give @s minecraft:fire_resistance 1

# particle effect
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.7 0.2 0.1 2 force