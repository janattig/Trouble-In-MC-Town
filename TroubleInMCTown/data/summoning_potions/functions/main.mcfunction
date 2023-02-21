# test all flying potions if they are initialized
execute as @e[type=potion, nbt={Item:{tag:{summoning_potion:1b}}}, tag=!sp_initialized] at @s run function summoning_potions:scripts/init_potion

# test all aoe clouds if they are still riding, if not: potion landed = spawn event
execute as @e[type=area_effect_cloud, tag=sp_companion] unless predicate summoning_potions:is_riding_potion at @s run function summoning_potions:scripts/found_spawn_event



# visual fix for all potions
execute as @e[type=potion,tag=summoning_potion] run function summoning_potions:scripts/visual_fix
scoreboard players operation %global_visual_fix summoning_potions *= %multi_visual_fix summoning_potions