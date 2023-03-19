# maybe find a target
tag @e remove lt_potential_target
tag @e remove lt_targetable
tag @e remove lt_target
execute as @e[distance=..15, type=!player, type=!armor_stand] at @s run execute if data entity @s Brain run tag @s add lt_potential_target
execute as @a[distance=..15, gamemode=!spectator] at @s run tag @s add lt_potential_target
tag @s add lt_shooting_tower
# check targets
function legendary_towers:tower_effects/check_potential_targets_recursively
# make a targetable player the target
tag @e[tag=lt_targetable, limit=1, sort=random] add lt_target
tag @e remove lt_targetable

# if there is a target, shoot
execute if entity @e[tag=lt_target] run function legendary_towers:tower_effects/arrow_tower_shoot

# remove target tag
tag @a remove lt_target
tag @s remove lt_shooting_tower



# remove landed projectiles
kill @e[type=arrow, nbt={inGround:1b}, tag=lt_arrow]