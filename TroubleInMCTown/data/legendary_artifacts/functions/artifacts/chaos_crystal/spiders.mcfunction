# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Spiders", "color":"#778A7F"}, {"text":" come after you", "color":"white"}]

# summon a zombie at every player
execute as @a[tag=la_cc_effected] at @s run summon cave_spider ~ ~ ~ {Tags:["sp_summoned"]}
execute as @a[tag=la_cc_effected] at @s run summon cave_spider ~ ~ ~ {Tags:["sp_summoned"]}
execute as @a[tag=la_cc_effected] at @s run summon cave_spider ~ ~ ~ {Tags:["sp_summoned"]}