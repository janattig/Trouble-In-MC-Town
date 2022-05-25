# test all flying potions if they are initialized
execute as @e[type=potion, nbt={Item:{tag:{summoning_potion:1b}}}, tag=!sp_initialized] at @s run function summoning_potions:scripts/init_potion

# test all flying armor stands for movement
execute as @e[type=armor_stand, tag=sp_companion] at @s run function summoning_potions:scripts/move_potion
