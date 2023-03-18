# rotate the decoration
execute store result score @s legendary_towers run data get entity @s Rotation[0] 10.0
scoreboard players add @s legendary_towers 42
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get @s legendary_towers
#scoreboard players reset @s legendary_towers

# check change of readiness
execute as @s[tag=!lt_ready] if score @e[tag=legendary_tower, sort=nearest, distance=..2, limit=1] lt_cooldowns matches 0 run function legendary_towers:tower_decorations/tower_ready
execute as @s[tag=lt_ready] if score @e[tag=legendary_tower, sort=nearest, distance=..2, limit=1] lt_cooldowns matches 1.. run function legendary_towers:tower_decorations/tower_unready