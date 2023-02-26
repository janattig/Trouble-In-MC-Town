# script that the player runs himself, when he is becoming a traitor



# clear the player inventory
clear @s

# give random loot
loot give @s loot trouble_in_mc_town:normal_starting

# cannot be targeted by summoning potions
tag @s add sp_no_target

# tell player as what he is playing as the only traitor
execute if score Traitor ttt_num_players matches 1 run tellraw @s ["",{"text":"> You are the (only) "},{"text":"Traitor","bold":true,"color":"red"},{"text":" ("},{"selector":"@s"},{"text":") <--"}]

# tell player as what he is playing as the one of the traitors
execute if score Traitor ttt_num_players matches 2.. run tellraw @s ["",{"text":"> You are one of the "},{"text":"Traitors","bold":true,"color":"red"},{"text":" ("},{"selector":"@s"},{"text":") <--"}]
execute if score Traitor ttt_num_players matches 2.. at @s run tellraw @s ["",{"text":"  together with ","color":"white"},{"selector":"@a[tag=ttt_traitor, distance=0.0001..]","color":"red"}]

# tell the objective of the TRAITOR team
tellraw @s ["",{"text":"> Objective:"}]
tellraw @s ["",{"text":"  > "},{"text":"Eliminate all Innocents before the time runs out","color":"gray"}]
tellraw @s ["",{"text":"> Hints:"}]
tellraw @s ["",{"text":"  > "},{"text":"Find loot in chests and barrels","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"Get ","color":"gray"},{"text":"$TC","color":"red"},{"text":" emeralds","color":"green"},{"text":" when an Innocent dies","color":"gray"}]
tellraw @s ["",{"text":"  > "},{"text":"Buy Traitor loot in the ","color":"gray"},{"text":"Traitor Shop (book)","color":"white"}]


# setup traitor shop for self
function trouble_in_mc_town:shop/init_traitor_shop_for_self
loot give @s loot trouble_in_mc_town:traitor_shop
# give starting money
function trouble_in_mc_town:utility/traitor_give_self_money_start


title @s times 10 120 50
title @s title {"text":"Traitor","bold":true,"color":"red"}
#execute if score Traitor ttt_num_players matches 1 run title @s subtitle ["", {"text":"(Your role, ","color":"white"},{"selector":"@s","bold":true},{"text":")"}]
execute if score Traitor ttt_num_players matches 2.. run title @s subtitle ["", {"text":"(together with ","color":"white"},{"selector":"@a[tag=ttt_traitor,distance=0.0001..]","bold":true,"color":"red"},{"text":")"}]

# change into adventure mode
gamemode adventure @s

# join the team of ttt players
team join team_ttt_player @s
