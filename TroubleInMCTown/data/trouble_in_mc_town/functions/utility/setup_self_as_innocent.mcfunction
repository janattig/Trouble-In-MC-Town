# script that the player runs himself, when he is becoming a innocent


# clear the player inventory
clear @s

# give random loot
loot give @s loot trouble_in_mc_town:normal_starting

# tell player as what he is playing
tellraw @s ["",{"text":"> You are playing as "},{"text":"Innocent","bold":true,"color":"blue"},{"text":" ("},{"selector":"@s"},{"text":") <--"}]

# tell the objective of the INNOCENT team
tellraw @s ["",{"text":"> Objective:"}]
tellraw @s ["",{"text":"  > "},{"text":"Survive until the time runs out OR elminate all Traitors","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"You can find loot in chests and barrels","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"Traitors can find special loot if they wander alone","color":"gray"}]

title @s times 10 120 50
title @s title {"text":"Innocent","bold":true,"color":"blue"}
#title @s subtitle ["", {"text":"(Your role, ","color":"white"},{"selector":"@s"},{"text":")"}]

# change into adventure mode
gamemode adventure @s

# join the team of ttt players
team join team_ttt_player @s
