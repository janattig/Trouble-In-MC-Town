# file that is executed after installation to set all respective values at one place

# clear sidebar / set visibility to false (will be true when in round)
scoreboard objectives setdisplay sidebar




# GAME DATA

# maximum innocents per traitor (if played in a group > 15 people)
scoreboard players set #players_per_traitor ttt_num_players 4



# ROUND LENGTH

# information about how long a round is
# (mins : tsecs secs)
scoreboard players set #rl_mins ttt_countdowns 8
scoreboard players set #rl_tsecs ttt_countdowns 0
scoreboard players set #rl_secs ttt_countdowns 0

# information about how long the preparation phase is (before roles are distributed)
# (secs)
scoreboard players set #rs_secs ttt_countdowns 7



# LOOTCHEST CONFIG

# add maximum / current range of raycasting ray (steps are 1/4 block)
scoreboard players set #max_ray_range ttt_raycasting 40
# add maximum and current number of lootchests
scoreboard players set #max_chests ttt_lootchests 120
scoreboard players set #min_chests ttt_lootchests 30



# MINECRAFT GAMERULES

# no mob griefing (i.e. blocks stay the same, no explosion damage to map)
gamerule mobGriefing false
# no phantom spawning when having not slept
gamerule doInsomnia false
