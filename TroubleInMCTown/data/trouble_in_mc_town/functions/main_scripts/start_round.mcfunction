# FUNCTION TO START A ROUND OF TTT



#############################
# DIVIDE INTO TEAMS
#############################

# set internal counters correctly
scoreboard players set #ttt_found_innocent ttt_num_players 0
scoreboard players set #ttt_found_traitor ttt_num_players 0
scoreboard players set #ttt_need_innocent ttt_num_players 0
execute as @a[tag=ttt_want_to_participate] run scoreboard players add #ttt_found_innocent ttt_num_players 1

# add traitors
function trouble_in_mc_town:utility/find_traitor

# designate roles
tag @a remove ttt_traitor
tag @a remove ttt_become_traitor
tag @a remove ttt_innocent
tag @a[tag=ttt_want_to_participate, tag=!ttt_become_traitor] add ttt_innocent
tag @a[tag=ttt_want_to_participate, tag=ttt_become_traitor] add ttt_traitor
tag @a[tag=ttt_want_to_participate] add ttt_participating

# remove wanting to participate and becoming traitor
tag @a remove ttt_want_to_participate
tag @a remove ttt_become_traitor

# set correct number of persons team
scoreboard players set Traitor ttt_num_players 0
scoreboard players set Innocent ttt_num_players 0
scoreboard players set #Total ttt_num_players 0

# debugging: maybe add innocent that is not there
scoreboard players operation Innocent ttt_num_players += #debugging ttt_booleans

execute as @a[tag=ttt_traitor] run scoreboard players add Traitor ttt_num_players 1
execute as @a[tag=ttt_traitor] run scoreboard players add #Total ttt_num_players 1

execute as @a[tag=ttt_innocent] run scoreboard players add Innocent ttt_num_players 1
execute as @a[tag=ttt_innocent] run scoreboard players add #Total ttt_num_players 1

# print participating players in chat
#tellraw @a[tag=ttt_participating] ["",{"text":"> Number of ","color":"white"},{"text":"Innocent","bold":true,"color":"blue"},{"text":": ","color":"white"},{"score":{"name":"Innocent","objective":"ttt_num_players"}}]
#tellraw @a[tag=ttt_participating] ["",{"text":"> Number of ","color":"white"},{"text":"Traitor","bold":true,"color":"red"},{"text":": ","color":"white"},{"score":{"name":"Traitor","objective":"ttt_num_players"}}]
#tellraw @a[tag=ttt_participating] ["",{"text":"> ","color":"white"},{"score":{"name":"#Total","objective":"ttt_num_players"}},{"text":" participating players: ","color":"white"},{"selector":"@a[tag=ttt_participating]"}]

#############################
# SETUP GLOBAL STUFF
#############################

# add sidebar display of player counts
#scoreboard objectives setdisplay sidebar ttt_num_players
scoreboard objectives setdisplay sidebar.team.gray ttt_num_players

# set round to running
scoreboard players set #round_running ttt_booleans 1
scoreboard players set #round_starting ttt_booleans 0

# lootchest
scoreboard players set @a[tag=ttt_participating] ttt_chestopened 0
scoreboard players set @a[tag=ttt_participating] ttt_barrelopened 0
scoreboard players set #num_chests ttt_lootchests 0

# everybody gets lower number of hearts
execute as @a[tag=ttt_participating] run attribute @s minecraft:generic.max_health base set 10
execute as @a[tag=ttt_participating] run effect give @s minecraft:regeneration 1 255 false
execute as @a[tag=ttt_participating] run effect give @s minecraft:instant_health

# setup game rules
gamerule showDeathMessages false
gamerule mobGriefing false
gamerule announceAdvancements false

# setup item item_removal_loop
schedule function trouble_in_mc_town:main_scripts/item_removal_loop 1s

# setup global round length
scoreboard players operation #c_rl_mins ttt_countdowns = #rl_mins ttt_countdowns
scoreboard players operation #c_rl_tsecs ttt_countdowns = #rl_tsecs ttt_countdowns
scoreboard players operation #c_rl_secs ttt_countdowns = #rl_secs ttt_countdowns

# setup countdown loop
schedule function trouble_in_mc_town:main_scripts/countdown_loop 1s



#############################
# SETUP ROLES FOR PEOPLE
#############################

# let all traitors set themselves up as traitors
execute as @a[tag=ttt_traitor] at @s run function trouble_in_mc_town:utility/setup_self_as_traitor

# let all innocents set themselves up as innocents
execute as @a[tag=ttt_innocent] at @s run function trouble_in_mc_town:utility/setup_self_as_innocent


# setup everyone with one life
tag @a[tag=ttt_participating] add ttt_alive
scoreboard players set @a[tag=ttt_participating] ttt_player_life 1
scoreboard players set @a[tag=ttt_participating] ttt_player_death 0

# set the difficulty to normal
difficulty normal


#############################
# PRINT FINISH INTO CHAT
#############################
tellraw @a[tag=ttt_participating] ["",{"text":"> Round is now running!","color":"white"}]
