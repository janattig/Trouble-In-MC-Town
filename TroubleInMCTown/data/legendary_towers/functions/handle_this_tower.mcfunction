# reduce cooldown if necessary
execute if score @s lt_cooldowns matches 1.. run scoreboard players remove @s lt_cooldowns 1

# handle depending on tag
execute as @s[tag=arrow_tower, scores={lt_cooldowns=0}] at @s run function legendary_towers:tower_effects/arrow_tower




# remove the update needed tag
tag @s remove lt_needs_update