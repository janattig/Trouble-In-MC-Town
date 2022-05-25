# MAIN CODE LOOP FOR ENDING

# remove spawned mobs (that were spawned with summoned potions)
tp @e[type=!player, tag=sp_summoned] ~ -1000 ~

# everybody loads there gamemode
execute as @a at @s run function trouble_in_mc_town:utility/gamemode_backup/self_load_gamemode

# teleport players back to where they started
function trouble_in_mc_town:utility/position_backup/tp_all_players_to_backup

# set their respawn point
#execute as @a[tag=ttt_want_to_participate] at @s run spawnpoint
#execute as @a[tag=ttt_want_to_participate] at @s run execute if block ~ ~ ~ minecraft:dirt_path run spawnpoint @s ~ ~0.1 ~

# trigger cleanup
schedule function trouble_in_mc_town:cleanup_after_round 1s
