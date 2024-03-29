# do a raycast towards the shooting tower to find out if it hits something
execute anchored eyes facing entity @e[tag=lt_shooting_tower, limit=1, sort=nearest] eyes run function legendary_towers:tower_effects/potential_target_raycast

# check if the entity is invisible --> not a target
execute as @s[nbt={ActiveEffects:[{Id:14}]}] run tag @s remove lt_potential_target

# if still potential target, make target
tag @s[tag=lt_potential_target] add lt_targetable

# remove the potential target tag
tag @s remove lt_potential_target