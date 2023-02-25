# maybe init the stone
execute as @s[tag=!initialized] at @s run function legendary_artifacts:artifacts/ender_stone_init

# if on ground, check for ender pearls and teleport them
tag @e remove la_teleport
execute as @s[nbt={OnGround:1b}] at @s run tag @e[type=ender_pearl, tag=!teleported, distance=..100] add la_teleport
execute as @e[type=ender_pearl, tag=la_teleport] run function legendary_artifacts:artifacts/ender_stone_teleport_this_pearl
tag @e[type=ender_pearl, tag=la_teleport] remove la_teleport
