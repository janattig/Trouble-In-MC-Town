# visual fix for all entities that want it
execute as @e[tag=visual_fix_needed] at @s run function visual_fix:visual_fix
# update the visual fix scoreboard values
scoreboard players operation %global visual_fix *= %multi visual_fix