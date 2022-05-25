# extract the current effect to apply
execute if entity @s[type=arrow] store result score %current_effect ca_effects run data get entity @s CustomPotionEffects[0].Amplifier
execute if entity @s[type=!arrow] store result score %current_effect ca_effects run data get entity @s ActiveEffects[{Id:4b}].Amplifier

# check what effect should be applied
execute if score %current_effect ca_effects matches 11 run function custom_arrows:arrow_effects/tnt
execute if score %current_effect ca_effects matches 12 run function custom_arrows:arrow_effects/lightning
execute if score %current_effect ca_effects matches 13 run function custom_arrows:arrow_effects/poison
execute if score %current_effect ca_effects matches 14 run function custom_arrows:arrow_effects/wither
execute if score %current_effect ca_effects matches 15 run function custom_arrows:arrow_effects/ender_pearl
execute if score %current_effect ca_effects matches 16 run function custom_arrows:arrow_effects/levitation
execute if score %current_effect ca_effects matches 17 run function custom_arrows:arrow_effects/self_drop_everything

# kill the arrow in the ground (if it was an arrow triggering the event)
kill @s[type=arrow]
# kill the effect on the player
effect clear @s minecraft:mining_fatigue
