# the script that communicates the winning of innocents

# show big title
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating] title ["", {"text":"Innocent","bold":true,"color":"blue"}, {"text":" win!"}]

# show subtitle
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating, tag=ttt_innocent] subtitle ["", {"text":"Round over, you win, ","color":"white"},{"selector":"@s"},{"text":"!"}]
execute as @a[tag=ttt_participating] at @s run title @s[tag=ttt_participating, tag=ttt_traitor] subtitle ["", {"text":"Round over, you loose, ","color":"white"},{"selector":"@s"},{"text":"..."}]

# tell to chat
tellraw @a[tag=ttt_participating] ["", {"text":"> "},{"text":"Innocent","bold":true,"color":"blue"}, {"text":" win!"}]

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
