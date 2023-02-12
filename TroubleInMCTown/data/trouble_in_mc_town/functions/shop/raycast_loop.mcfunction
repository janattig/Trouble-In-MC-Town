# reduce current distance
scoreboard players remove @s ttt_raycasting 1

# maybe hit a full block
execute unless block ~ ~ ~ air run scoreboard players operation @s ttt_raycasting -= #max_ray_range ttt_raycasting

# raycast stops
execute unless score @s ttt_raycasting matches 1.. run function trouble_in_mc_town:shop/raycast_finished_teleport_here
# raycast goes on
execute if score @s ttt_raycasting matches 1.. positioned ^ ^ ^0.25 run function trouble_in_mc_town:shop/raycast_loop
