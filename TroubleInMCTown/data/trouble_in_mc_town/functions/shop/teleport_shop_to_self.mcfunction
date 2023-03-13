# particle effects for the player
particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 1 1 normal

# run the raycast to find its intersection with the nearest wall / ground
scoreboard players set @s ttt_raycasting 10
execute as @s at @s anchored eyes positioned ^ ^ ^0.25 run function trouble_in_mc_town:shop/raycast_loop
