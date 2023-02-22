# modify the air data value
execute if score %global_visual_fix ultimate_snowballs matches -1 run data modify entity @s Air set value 0s
execute if score %global_visual_fix ultimate_snowballs matches 1 run data modify entity @s Air set value 1s