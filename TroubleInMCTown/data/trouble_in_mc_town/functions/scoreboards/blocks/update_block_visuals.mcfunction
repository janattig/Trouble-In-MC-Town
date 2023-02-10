# called as the block marker

# basic check if there is no head
execute as @s[tag=!ttt_has_head] run setblock ~ ~ ~ stone
execute as @s[tag=ttt_has_head, tag=!ttt_player_online] run setblock ~ ~ ~ andesite
execute as @s[tag=ttt_has_head, tag=ttt_player_online] run setblock ~ ~ ~ polished_andesite

# special positions get special blocks
execute as @s[tag=ttt_is_first] run setblock ~ ~ ~ gold_block
execute as @s[tag=ttt_is_second] run setblock ~ ~ ~ iron_block
execute as @s[tag=ttt_is_third] run setblock ~ ~ ~ waxed_copper_block
