# Main loop of the chest system

# check if someone recently openened barrel or chest
execute as @a[scores={ttt_barrelopened=1..},tag=ttt_participating,tag=ttt_alive] if score #num_chests ttt_lootchests < #max_chests ttt_lootchests run function trouble_in_mc_town:utility/loot_chests/self_opened_chest
execute as @a[scores={ttt_tchestopened=1..},tag=ttt_participating,tag=ttt_alive] if score #num_chests ttt_lootchests < #max_chests ttt_lootchests run function trouble_in_mc_town:utility/loot_chests/self_opened_chest
execute as @a[scores={ttt_chestopened=1..},tag=ttt_participating,tag=ttt_alive] if score #num_chests ttt_lootchests < #max_chests ttt_lootchests run function trouble_in_mc_town:utility/loot_chests/self_opened_chest

# check if there are chests to remove
execute if score #num_chests ttt_lootchests > #min_chests ttt_lootchests run function trouble_in_mc_town:utility/loot_chests/remove_random_chest
