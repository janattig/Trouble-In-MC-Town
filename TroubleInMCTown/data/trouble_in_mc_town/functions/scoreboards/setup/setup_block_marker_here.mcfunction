# kill all existing markers here
kill @e[type=marker, distance=..0.1, tag=ttt_score_marker]

# summon a new marker
summon marker ~ ~ ~ {Tags:["ttt_score_marker", "ttt_score_block"]}