# kill all existing markers here
kill @e[type=marker, distance=..0.1, tag=ttt_score_marker]

# summon a new marker
summon marker ~ ~ ~ {Tags:["ttt_score_marker", "ttt_score_head"]}

# check if there is a head here
execute if block ~ ~ ~ player_head run tag @e[tag=ttt_score_head, limit=1, sort=nearest] add ttt_has_head

# register a block marker below the head
execute positioned ~ ~-1 ~ run function trouble_in_mc_town:scoreboards/setup/setup_block_marker_here