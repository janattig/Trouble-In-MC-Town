# tag the nearest player as he is the one that is teleported
tag @p add tp_target

# give the nearest player the effect of blindness
effect give @p[tag=tp_target] minecraft:blindness 1 2 false

# set the coordinates
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @p[tag=tp_target] ttt_positions_x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @p[tag=tp_target] ttt_positions_y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @p[tag=tp_target] ttt_positions_z
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p[tag=tp_target] ttt_positions_a
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p[tag=tp_target] ttt_positions_b

# tp the player
tp @p[tag=tp_target] @s

# remove the tag
tag @p[tag=tp_target] remove tp_target

# kill the armor stand itself
kill @s
