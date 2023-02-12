# spawn an armor stand
scoreboard players set @s ttt_raycasting 10
execute as @s at @s anchored eyes run function trouble_in_mc_town:shop/raycast_loop
