# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"Items / XP turn into ", "color":"white"}, {"text":"Parrots", "color":"red"}]

# summon parrot at every player and clear their XP bar
execute as @a[tag=la_cc_effected] at @s run summon parrot ~ ~ ~ {Tags:["sp_summoned"]}
xp set @a[tag=la_cc_effected] 0 levels
xp set @a[tag=la_cc_effected] 0 points

# summon a parrot at every item and kill it
execute as @e[type=item] at @s run summon parrot ~ ~ ~ {Tags:["sp_summoned"]}
execute as @e[type=item] at @s run kill @s
# summon a parrot at every xp orb and kill it
execute as @e[type=experience_orb] at @s run summon parrot ~ ~ ~ {Tags:["sp_summoned"]}
execute as @e[type=experience_orb] at @s run kill @s