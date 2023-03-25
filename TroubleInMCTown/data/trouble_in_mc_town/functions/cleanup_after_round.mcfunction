# FUNCTION TO CLEANUP AFTER A ROUND OF TTT
# (remove tags etc)

# tell people that a round is ending
tellraw @a[tag=ttt_participating] ["",{"text":"---- Round has shut down ----","color":"white"}]
tellraw @a[tag=ttt_participating] ["",{"text":""}]

# set the difficulty to peaceful
difficulty peaceful

# everybody loads there gamemode
execute as @a at @s run function trouble_in_mc_town:utility/gamemode_backup/self_load_gamemode
# everybody gets enough hearts
execute as @a run effect clear @s
execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run effect give @s minecraft:regeneration 1 255 false

# everybody resets their invetory
clear @a[tag=ttt_participating]
# dropped items are removed
kill @e[type=item]
kill @e[type=experience_orb]
# everybody can use portals (from procedural dungeons) again
tag @a remove pd_portal_prevent_tp
# everybody can be targeted by summoning potions again
tag @a remove sp_no_target
# remove tags related to legendary items
tag @a remove la_cc_effected
tag @a remove la_unaffected
# loot chests are removed
function trouble_in_mc_town:utility/loot_chests/remove_all_chests

# remove all backup positions entirely
kill @e[tag=ttt_tp_position]

# remove want to participate tag
tag @a remove ttt_want_to_participate
tag @a remove ttt_participating
tag @a remove ttt_alive
tag @a remove ttt_become_traitor
tag @a remove ttt_traitor
tag @a remove ttt_innocent

# clear all titles for all Players (showing if they are innocent / traitor)
title @a clear

# purge all player numbers
scoreboard players set Traitor ttt_num_players 0
scoreboard players set Innocent ttt_num_players 0
scoreboard players set #Total ttt_num_players 0

# set round to not running
scoreboard players set #round_starting ttt_booleans 0
scoreboard players set #round_running ttt_booleans 0
scoreboard players set #round_ending ttt_booleans 0
scoreboard players set #round_ending ttt_cooldowns 0
# add information about how long a round is running
scoreboard players set #c_rl_mins ttt_countdowns 0
scoreboard players set #c_rl_tsecs ttt_countdowns 0
scoreboard players set #c_rl_secs ttt_countdowns 0

# lootchest
scoreboard players reset @a ttt_chestopened
scoreboard players reset @a ttt_barrelopened
scoreboard players set #num_chests ttt_lootchests 0

# summoning potions reset
tag @a remove sp_no_target

# position backup
scoreboard players reset @a ttt_positions_x
scoreboard players reset @a ttt_positions_y
scoreboard players reset @a ttt_positions_z
scoreboard players reset @a ttt_positions_a
scoreboard players reset @a ttt_positions_b
scoreboard players reset @e ttt_uuid_0
scoreboard players reset @e ttt_uuid_1
scoreboard players reset @e ttt_uuid_2
scoreboard players reset @e ttt_uuid_3
scoreboard players reset @e ttt_uuid_0_tmp
scoreboard players reset @e ttt_uuid_1_tmp
scoreboard players reset @e ttt_uuid_2_tmp
scoreboard players reset @e ttt_uuid_3_tmp

# set sidebar display to false (purge sidebar)
team empty team_spectator
#scoreboard objectives setdisplay sidebar

# setup game rules
gamerule showDeathMessages true


# remove all traitor shops
function trouble_in_mc_town:shop/remove_all_shops
# remove traitor shop items from inventory
clear @a book{traitor_shop:1b}
clear @a emerald

# update scores
function trouble_in_mc_town:utility/update_scores

# remove all towers
function legendary_towers:remove_all_towers

# remove spawned mobs (that were spawned with summoned potions)
tp @e[type=!player, tag=sp_summoned] ~ -1000 ~
kill @e[type=!player, tag=sp_summoned]
