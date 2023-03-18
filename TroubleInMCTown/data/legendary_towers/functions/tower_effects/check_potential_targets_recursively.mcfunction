# check a potential target
execute as @a[tag=lt_potential_target, limit=1, sort=random] at @s run function legendary_towers:tower_effects/check_self_as_potential_target

# call again if there are more targets to check
execute if entity @a[tag=lt_potential_target] run function legendary_towers:tower_effects/check_potential_targets_recursively