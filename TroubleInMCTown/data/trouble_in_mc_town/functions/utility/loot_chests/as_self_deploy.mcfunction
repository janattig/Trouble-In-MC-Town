# script that is called as an armor stand at their position to deploy and add loot to their chest
#say hi, I am new here!

# add number of armorstands
scoreboard players add #num_chests ttt_lootchests 1

# spawn loot (maybe)
execute if predicate trouble_in_mc_town:rand_normal run loot insert ~ ~ ~ loot trouble_in_mc_town:lootchest_main
execute if predicate trouble_in_mc_town:rand_lucky run loot insert ~ ~ ~ loot trouble_in_mc_town:lootchest_lucky
execute as @s[tag=ttt_traitor] unless entity @p[distance=..10,tag=ttt_innocent] run execute if predicate trouble_in_mc_town:rand_traitor_lucky run loot insert ~ ~ ~ loot trouble_in_mc_town:traitor_loot
