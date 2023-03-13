# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Creepers", "color":"#22ff33"}, {"text":" come after you", "color":"white"}]

# summon a creeper at every player
execute as @a[tag=la_cc_effected] at @s run summon creeper ~ ~ ~ {Tags:["sp_summoned"]}