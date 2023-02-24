# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Careful, an ", "color":"white"},{"text":"Enderman", "color":"#750042"}, {"text":"!", "color":"white"}]

# summon a creeper at every player
execute as @a[tag=la_cc_effected] at @s run execute positioned ^ ^ ^2 run summon enderman ~ ~1 ~