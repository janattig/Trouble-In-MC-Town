# reduce cooldown if necessary
execute if score @s lt_cooldowns matches 1.. run scoreboard players remove @s lt_cooldowns 1
# play a sound for the first activation
execute as @s[tag=!lt_deployed, scores={lt_cooldowns=0}] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 1.0
execute as @s[tag=!lt_deployed, scores={lt_cooldowns=0}] at @s run kill @e[tag=lt_constructing, distance=..2, limit=1, sort=nearest]
execute as @s[tag=!lt_deployed, scores={lt_cooldowns=0}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ 1 0.02
execute as @s[tag=!lt_deployed, scores={lt_cooldowns=0}] at @s run tag @s add lt_deployed
# show that the tower is being built
execute as @s[tag=!lt_deployed] run particle bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.01 1

# handle depending on tag
execute as @s[tag=arrow_tower, scores={lt_cooldowns=0}] at @s run function legendary_towers:tower_effects/arrow_tower


# additional effects depending on tag
execute as @s[tag=arrow_tower, tag=lt_deployed] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 1




# remove the update needed tag
tag @s remove lt_needs_update