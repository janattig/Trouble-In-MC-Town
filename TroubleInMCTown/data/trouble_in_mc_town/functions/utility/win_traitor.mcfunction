# the script that communicates the winning of traitors

# show big title
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating] title ["", {"text":"Traitor","bold":true,"color":"red"}, {"text":" win!"}]

# show subtitle
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating, tag=ttt_innocent] subtitle ["", {"text":"Traitors ","color":"white"},{"selector":"@a[tag=ttt_traitor]","color":"red"}, {"text":" won, you lost!  (+","color":"white"},{"text":"0","color":"blue"},{"text":" points)","color":"white"}]
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating, tag=ttt_traitor] subtitle ["", {"text":"Round over, you win!  (+","color":"white"},{"text":"10","color":"red"},{"text":" points)","color":"white"}]

# tell to chat
tellraw @a[tag=ttt_participating] ["", {"text":"> "},{"text":"Traitor","bold":true,"color":"red"}, {"text":" win!"}]
tellraw @a[tag=ttt_participating, tag=ttt_innocent] ["", {"text":"> + "},{"text":"0","bold":true,"color":"blue"}, {"text":" points"}]
tellraw @a[tag=ttt_participating, tag=ttt_traitor] ["", {"text":"> + "},{"text":"10","bold":true,"color":"red"}, {"text":" points"}]

# give points to winning team
scoreboard players add @a[tag=ttt_participating, tag=ttt_traitor] ttt_score 10

# end the round by setting variable
scoreboard players set #round_starting ttt_booleans 0
scoreboard players set #round_running ttt_booleans 0
scoreboard players set #round_ending ttt_booleans 1

scoreboard players set #c_rl_mins ttt_countdowns 0
scoreboard players set #c_rl_tsecs ttt_countdowns 0
scoreboard players set #c_rl_secs ttt_countdowns 0

# show the roles to the Players
title @a[tag=ttt_traitor, tag=ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Traitor","bold":true,"color":"red"},{"text":" <-       (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]
title @a[tag=ttt_innocent, tag=ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Innocent","bold":true,"color":"blue"},{"text":" <-       (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]

# show roles to dead players
title @a[tag=ttt_traitor, tag=!ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Traitor","bold":true,"color":"red"},{"text":" <- (dead)      (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]
title @a[tag=ttt_innocent, tag=!ttt_alive] actionbar ["",{"text":"             -> ","color":"white"},{"text":"Innocent","bold":true,"color":"blue"},{"text":" <- (dead)      (","color":"white"},{"score":{"name":"#c_rl_mins","objective":"ttt_countdowns"}},{"text":":","color":"white"},{"score":{"name":"#c_rl_tsecs","objective":"ttt_countdowns"}},{"score":{"name":"#c_rl_secs","objective":"ttt_countdowns"}},{"text":")","color":"white"}]


# schedule finish
tellraw @a[tag=ttt_participating] ["", {"text":"> Round is ending ..."}]
schedule function trouble_in_mc_town:main_scripts/end_round 7s
