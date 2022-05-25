# Function for installing

############################
# add scoreboard variables
############################

# add teams (for display only)
team add team_innocent
team add team_traitor
team add team_spectator
team add team_ttt_player

team modify team_innocent color blue
team modify team_traitor color red
team modify team_ttt_player color white
team modify team_spectator color gray

# player in team count
scoreboard objectives add ttt_num_players dummy "Players in Teams"
# add teams
scoreboard players set Innocent ttt_num_players 0
scoreboard players set Traitor ttt_num_players 0
team join team_innocent Innocent
team join team_traitor Traitor
# add total amount (hidden and not displayed)
scoreboard players set #Total ttt_num_players 0
# add total amount of innocents / traitors found in new round search (hidden and not displayed)
scoreboard players set #found_innocent ttt_num_players 0
scoreboard players set #found_traitor ttt_num_players 0
# add total amount of innocents needed in new round search for given number of traitors found (hidden and not displayed)
scoreboard players set #need_innocent ttt_num_players 0


# boolean variables
scoreboard objectives add ttt_booleans dummy
# add information about if a round is running
scoreboard players set #round_running ttt_booleans 0
scoreboard players set #round_ending ttt_booleans 0
scoreboard players set #debugging ttt_booleans 0


# gamemode backup
scoreboard objectives add ttt_gb_survival dummy
scoreboard objectives add ttt_gb_creative dummy

# position backup
scoreboard objectives add ttt_uuid_0 dummy
scoreboard objectives add ttt_uuid_1 dummy
scoreboard objectives add ttt_uuid_2 dummy
scoreboard objectives add ttt_uuid_3 dummy
scoreboard objectives add ttt_uuid_0_tmp dummy
scoreboard objectives add ttt_uuid_1_tmp dummy
scoreboard objectives add ttt_uuid_2_tmp dummy
scoreboard objectives add ttt_uuid_3_tmp dummy
scoreboard objectives add ttt_positions_x dummy
scoreboard objectives add ttt_positions_y dummy
scoreboard objectives add ttt_positions_z dummy
scoreboard objectives add ttt_positions_a dummy
scoreboard objectives add ttt_positions_b dummy



# countdown variables
scoreboard objectives add ttt_countdowns dummy
# add information about if a round is ending
scoreboard players set #round_starting ttt_countdowns 0
# timer how long the current round is running
scoreboard players set #c_rl_mins ttt_countdowns 0
scoreboard players set #c_rl_tsecs ttt_countdowns 0
scoreboard players set #c_rl_secs ttt_countdowns 0


# lootchest variables
scoreboard objectives add ttt_lootchests dummy
scoreboard objectives add ttt_raycasting dummy
scoreboard objectives add ttt_chestopened minecraft.custom:minecraft.open_chest
scoreboard objectives add ttt_tchestopened minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add ttt_barrelopened minecraft.custom:minecraft.open_barrel
# current number of chests
scoreboard players set #num_chests ttt_lootchests 0

# player lifes / deaths variables
scoreboard objectives add ttt_player_life dummy
scoreboard objectives add ttt_player_death deathCount




############################
# CONFIGURE
############################
function trouble_in_mc_town:installation/configure




############################
# Print success
############################
say Trouble in MC Town was installed ...
