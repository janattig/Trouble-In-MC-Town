# clear items
execute as @a[tag=ttt_participating, tag=ttt_alive] at @s run function trouble_in_mc_town:utility/self_clear_empty_containers


# schedule again
execute if score #round_running ttt_booleans matches 1 run schedule function trouble_in_mc_town:main_scripts/item_removal_loop 1s
