# tag all players with the tag that they still have to be teleported
tag @a[tag=ttt_participating] add ttt_have_to_tp

# call function for random remaining player
execute as @p[tag=ttt_have_to_tp, sort=random] at @s run function trouble_in_mc_town:utility/position_backup/tp_remaining_players_to_backup
