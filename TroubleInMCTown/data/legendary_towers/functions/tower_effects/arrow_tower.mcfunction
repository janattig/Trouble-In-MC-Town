# maybe find a target
tag @a[gamemode=!spectator, distance=..15, limit=1, sort=random] add lt_target

# if there is a target, shoot
execute if entity @e[tag=lt_target] run function legendary_towers:tower_effects/arrow_tower_shoot

# remove target tag
tag @a remove lt_target



# remove landed projectiles
kill @e[type=arrow, nbt={inGround:1b}, tag=lt_arrow]