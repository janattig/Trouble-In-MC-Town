# check if there is an arrow that should have its damage removed
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:4b}]},tag=!arrow_damage_removed] at @s run function custom_arrows:remove_damage

# check if there is an arrow effect on the ground or a player
execute as @e[type=arrow,nbt={inGround:1b,CustomPotionEffects:[{Id:4b}]}] at @s run function custom_arrows:apply_effect
execute as @e[type=!arrow,nbt={ActiveEffects:[{Id:4b}]}] at @s run function custom_arrows:apply_effect
