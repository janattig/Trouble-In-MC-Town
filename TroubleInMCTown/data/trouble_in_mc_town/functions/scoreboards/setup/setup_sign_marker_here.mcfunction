# kill all existing markers here
kill @e[type=marker, distance=..0.1, tag=ttt_score_marker]

# summon a new marker
summon marker ~ ~ ~ {Tags:["ttt_score_marker", "ttt_score_sign"]}

# clear the sign
execute as @e[tag=ttt_score_sign, limit=1, sort=nearest] at @s run function trouble_in_mc_town:scoreboards/sign/clear_sign