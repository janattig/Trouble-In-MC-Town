# STEP 1 - tag all removable chests (that are far away from players)
execute as @e[tag=ttt_lootchest] at @s run execute unless entity @p[distance=..7] run tag @s add player_far_away

# STEP 2 - remove random tagged chest
execute as @e[limit=1, sort=random, tag=ttt_lootchest, tag=player_far_away] at @s run function trouble_in_mc_town:utility/loot_chests/as_self_remove

# STEP 3 - remove all tags
tag @e[tag=player_far_away, tag=ttt_lootchest] remove player_far_away
