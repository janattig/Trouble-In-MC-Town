# if potion found: move
execute if entity @e[limit=1,type=potion,distance=..2] run tp @s @e[limit=1,type=potion,distance=..2]

# if no potion found, it disappeared, so spawn detected
execute unless entity @e[limit=1,type=potion,distance=..2] as @s at @s run function summoning_potions:scripts/found_spawn_event
