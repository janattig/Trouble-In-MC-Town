# reduce score
scoreboard players remove #round_starting ttt_countdowns 1

# show player
title @a[tag=ttt_want_to_participate] actionbar ["",{"text":"Distributing roles in -> "},{"score":{"name":"#round_starting","objective":"ttt_countdowns"}},{"text":" <-"}]

# schedule again
#execute as @a[tag=ttt_want_to_participate] run effect give @s minecraft:instant_damage 1 0
execute unless score #round_starting ttt_countdowns matches ..1 run schedule function trouble_in_mc_town:main_scripts/start_countdown 1s

# schedule start function
execute if score #round_starting ttt_countdowns matches ..1 as @a[tag=ttt_want_to_participate] run effect give @s minecraft:instant_damage 1 0
execute if score #round_starting ttt_countdowns matches ..1 as @a[tag=ttt_want_to_participate] run effect give @s minecraft:instant_damage 1 1
execute if score #round_starting ttt_countdowns matches ..1 as @a[tag=ttt_want_to_participate] run effect give @s minecraft:blindness 1 2 false
execute if score #round_starting ttt_countdowns matches ..1 run schedule function trouble_in_mc_town:main_scripts/start_round 1s
