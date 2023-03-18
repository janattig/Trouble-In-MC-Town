# backup position as motion parameter
execute store result score @s lt_motion_x2 run data get entity @s Pos[0] 100000
execute store result score @s lt_motion_y2 run data get entity @s Pos[1] 100000
execute store result score @s lt_motion_z2 run data get entity @s Pos[2] 100000

# teleport the entity closer to the target by 1 unit
execute as @s at @s facing entity @e[tag=lt_target, limit=1, sort=nearest] eyes run tp @s ^ ^ ^1

# backup position as second motion parameter
execute store result score @s lt_motion_x run data get entity @s Pos[0] 100000
execute store result score @s lt_motion_y run data get entity @s Pos[1] 100000
execute store result score @s lt_motion_z run data get entity @s Pos[2] 100000

# calculate motion
scoreboard players operation @s lt_motion_x -= @s lt_motion_x2
scoreboard players operation @s lt_motion_y -= @s lt_motion_y2
scoreboard players operation @s lt_motion_z -= @s lt_motion_z2

# set motion
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s lt_motion_x
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s lt_motion_y
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s lt_motion_z