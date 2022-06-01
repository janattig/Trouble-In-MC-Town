# script that the player runs himself, when he is becoming a traitor



# clear the player inventory
clear @s

# give random loot
loot give @s loot trouble_in_mc_town:normal_starting

# tell player as what he is playing as the only traitor
execute if score Traitor ttt_num_players matches 1 run tellraw @s ["",{"text":"> You are the (only) "},{"text":"Traitor","bold":true,"color":"red"},{"text":" ("},{"selector":"@s"},{"text":") <--"}]

# tell player as what he is playing as the one of the traitors
execute if score Traitor ttt_num_players matches 2.. run tellraw @s ["",{"text":"> You are one of the "},{"text":"Traitors","bold":true,"color":"red"},{"text":" ("},{"selector":"@s"},{"text":") <--"}]
execute if score Traitor ttt_num_players matches 2.. at @s run tellraw @s ["",{"text":"  together with ","color":"white"},{"selector":"@a[tag=ttt_traitor, distance=0.0001..]","color":"red"}]

# tell the objective of the TRAITOR team
tellraw @s ["",{"text":"> Objective:"}]
tellraw @s ["",{"text":"  > "},{"text":"Eliminate all Innocents before the time runs out","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"You can find loot in chests and barrels","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"Special Traitor loot can be found if you wander alone","color":"gray"}]

title @s times 10 120 50
title @s title {"text":"Traitor","bold":true,"color":"red"}
#execute if score Traitor ttt_num_players matches 1 run title @s subtitle ["", {"text":"(Your role, ","color":"white"},{"selector":"@s","bold":true},{"text":")"}]
execute if score Traitor ttt_num_players matches 2.. run title @s subtitle ["", {"text":"(together with ","color":"white"},{"selector":"@a[tag=ttt_traitor,distance=0.0001..]","bold":true,"color":"red"},{"text":")"}]

# change into adventure mode
gamemode adventure @s

# join the team of ttt players
team join team_ttt_player @s
