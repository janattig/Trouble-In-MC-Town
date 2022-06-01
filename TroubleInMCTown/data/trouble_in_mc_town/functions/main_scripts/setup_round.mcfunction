# FUNCTION TO START A ROUND OF TTT


#############################
# PRINT INTRO INTO CHAT
#############################

# print new round starting
tellraw @a[distance=..100] ["",{"text":""}]
tellraw @a[distance=..100] ["",{"text":""}]
tellraw @a[distance=..100] ["",{"text":"---- A new round of ","color":"white"},{"text":"TTT","bold":true},{"text":" will now begin ----","color":"white"}]


#############################
# CHECK FOR ONGOING ROUND
#############################

# check for ongoing round and print
execute if score #round_ending ttt_booleans matches 1 run tellraw @a[distance=..100] ["",{"text":"> Shutting down current ending round ... "}]
# check for ongoing round and terminate
execute if score #round_ending ttt_booleans matches 1 run function trouble_in_mc_town:cleanup_after_round

# check for ongoing round and print
execute if score #round_running ttt_booleans matches 1 run tellraw @a[distance=..100] ["",{"text":"> Shutting down current round ... "}]
# check for ongoing round and terminate
execute if score #round_running ttt_booleans matches 1 run function trouble_in_mc_town:cleanup_after_round




#############################
# FIND PARTICIPATING PLAYERS
#############################

# tag all players that want to participate
tag @a[distance=..100] add ttt_want_to_participate

# count players and announce
scoreboard players set #Total ttt_num_players 0
execute as @a[tag=ttt_want_to_participate] run scoreboard players add #Total ttt_num_players 1
# print participating players in chat
tellraw @a[tag=ttt_want_to_participate] ["",{"text":"> ","color":"white"},{"score":{"name":"#Total","objective":"ttt_num_players"}},{"text":" participating players: ","color":"white"}]
execute as @a[tag=ttt_want_to_participate] run tellraw @a[tag=ttt_want_to_participate] ["",{"text":"  > ","color":"white"},{"selector":"@s"}]

# tell people round is starting
execute as @a[tag=ttt_want_to_participate] run title @s times 10 70 20
execute as @a[tag=ttt_want_to_participate] run title @s title ["",{"text":"Round starting ...","bold":true}]
execute if score #debugging ttt_booleans matches 1 run execute as @a[tag=ttt_want_to_participate] run title @s subtitle ["", {"text":"> "}, {"score":{"name":"#Total","objective":"ttt_num_players"}}, {"text":" players  +  (debug) <"}]
execute unless score #debugging ttt_booleans matches 1 run execute as @a[tag=ttt_want_to_participate] run title @s subtitle ["", {"text":"> "}, {"score":{"name":"#Total","objective":"ttt_num_players"}}, {"text":" players <"}]


# backup the players gamemode
execute as @a[tag=ttt_want_to_participate] run function trouble_in_mc_town:utility/gamemode_backup/self_dump_gamemode
# switch everyone to adventure mode
execute as @a[tag=ttt_want_to_participate] run gamemode adventure

# give player regeneration to heal them
execute as @a[tag=ttt_want_to_participate] run effect give @s minecraft:regeneration 1 255 false

# backup player positions
execute as @a[tag=ttt_want_to_participate] run function trouble_in_mc_town:utility/position_backup/backup_position

# set their respawn point
execute as @a[tag=ttt_want_to_participate] at @s run spawnpoint
execute as @a[tag=ttt_want_to_participate] at @s run execute if block ~ ~ ~ minecraft:dirt_path run spawnpoint @s ~ ~0.1 ~


# setup countdown
scoreboard players operation #round_starting ttt_countdowns = #rs_secs ttt_countdowns
scoreboard players set #round_starting ttt_booleans 1

# call countdown function for next tick
function trouble_in_mc_town:main_scripts/start_countdown
