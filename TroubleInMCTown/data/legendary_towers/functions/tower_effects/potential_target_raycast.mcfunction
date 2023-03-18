# if there is a non-air block, remove the potential_target tag
execute unless block ~ ~ ~ air run execute unless block ~ ~ ~ #buttons unless block ~ ~ ~ rail unless block ~ ~ ~ #pressure_plates unless block ~ ~ ~ #wall_signs unless block ~ ~ ~ #fences run tag @s remove lt_potential_target

# repeat raycast if not at target
execute unless entity @e[tag=lt_shooting_tower, distance=..0.3] run execute positioned ^ ^ ^0.2 run function legendary_towers:tower_effects/potential_target_raycast