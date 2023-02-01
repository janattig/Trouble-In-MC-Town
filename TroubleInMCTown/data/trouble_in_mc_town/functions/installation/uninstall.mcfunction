# Function for uninstalling

############################
# end the current round
############################
function trouble_in_mc_town:cleanup_after_round


############################
# remove scoreboard variables
############################

# remove teams (for display only)
team remove team_innocent
team remove team_traitor
team remove team_spectator
team remove team_ttt_player

# remove tags from everyone
tag @a remove ttt_traitor
tag @a remove ttt_innocent
tag @a remove ttt_want_to_participate
tag @a remove ttt_participating
tag @a remove ttt_alive

# remove score (tmp disabled to not remove score)
#scoreboard objectives remove ttt_score

# remove player in team count
scoreboard objectives remove ttt_num_players
scoreboard objectives remove ttt_booleans

# gamemode backup
scoreboard objectives remove ttt_gb_survival
scoreboard objectives remove ttt_gb_creative

# position backup
scoreboard objectives remove ttt_uuid_0
scoreboard objectives remove ttt_uuid_1
scoreboard objectives remove ttt_uuid_2
scoreboard objectives remove ttt_uuid_3
scoreboard objectives remove ttt_uuid_0_tmp
scoreboard objectives remove ttt_uuid_1_tmp
scoreboard objectives remove ttt_uuid_2_tmp
scoreboard objectives remove ttt_uuid_3_tmp
scoreboard objectives remove ttt_positions_x
scoreboard objectives remove ttt_positions_y
scoreboard objectives remove ttt_positions_z
scoreboard objectives remove ttt_positions_a
scoreboard objectives remove ttt_positions_b

# countdown variables
scoreboard objectives remove ttt_countdowns

# player life / deaths
scoreboard objectives remove ttt_player_life
scoreboard objectives remove ttt_player_death

# lootchest variables
scoreboard objectives remove ttt_lootchests
scoreboard objectives remove ttt_chestopened
scoreboard objectives remove ttt_tchestopened
scoreboard objectives remove ttt_barrelopened
scoreboard objectives remove ttt_raycasting

# rand
scoreboard objectives remove ttt_math

# player index
scoreboard objectives remove ttt_player_index

# gamerules
gamerule mobGriefing true

############################
# Print success
############################
say Trouble in MC Town was uninstalled ...
