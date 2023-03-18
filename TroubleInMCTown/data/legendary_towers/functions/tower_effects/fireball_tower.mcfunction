# maybe find a target
tag @a[gamemode=!spectator, distance=..12, limit=1, sort=random] add lt_potential_target
tag @s add lt_shooting_tower
# check targets
function legendary_towers:tower_effects/check_potential_targets_recursively
# make a targetable player the target
tag @a[tag=lt_targetable, limit=1, sort=random] add lt_target
tag @a remove lt_targetable
tag @s remove lt_shooting_tower

# if there is a target, shoot
execute if entity @e[tag=lt_target] run function legendary_towers:tower_effects/fireball_tower_shoot

# remove target tag
tag @a remove lt_target



# remove landed projectiles
kill @e[type=fireball, distance=15.., tag=lt_fireball]