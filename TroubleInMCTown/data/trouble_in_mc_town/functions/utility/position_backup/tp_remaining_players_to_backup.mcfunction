# tp itself to backup
function trouble_in_mc_town:utility/position_backup/tp_to_backup

# remove the tag from itself
tag @s remove ttt_have_to_tp

# call function for random remaining player
execute as @p[tag=ttt_have_to_tp, sort=random] at @s run function trouble_in_mc_town:utility/position_backup/tp_remaining_players_to_backup
