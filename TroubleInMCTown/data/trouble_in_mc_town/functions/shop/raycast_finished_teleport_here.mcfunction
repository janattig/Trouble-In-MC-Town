# save the current player orientation (depends how to teleport the shop)
execute store result score @s ttt_raycasting run data get entity @s Rotation[1]
execute if score @s ttt_raycasting matches 0.. run tp @e[tag=shop_shop] ~ ~-1.55 ~
execute if score @s ttt_raycasting matches ..0 run tp @e[tag=shop_shop] ~ ~-0.05 ~
scoreboard players reset @s ttt_raycasting