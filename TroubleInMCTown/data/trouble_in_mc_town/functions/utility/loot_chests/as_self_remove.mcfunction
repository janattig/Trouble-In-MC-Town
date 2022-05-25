# script that is called as all armor stands at their position to remove themselves

# debugging: say goodbye
#say goodbye

# remove loot from chest
data remove block ~ ~ ~ Items

# remove 1 from number of armorstands
scoreboard players remove #num_chests ttt_lootchests 1

# kill itself
kill @s
