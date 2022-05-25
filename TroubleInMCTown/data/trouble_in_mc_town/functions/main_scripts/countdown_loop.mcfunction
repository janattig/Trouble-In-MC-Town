# modify countdowns
# remove one from secs
scoreboard players remove #c_rl_secs ttt_countdowns 1
# maybe modify next digit
execute if score #c_rl_secs ttt_countdowns matches ..-1 run scoreboard players remove #c_rl_tsecs ttt_countdowns 1
execute if score #c_rl_secs ttt_countdowns matches ..-1 run scoreboard players add #c_rl_secs ttt_countdowns 10
# maybe modify next digit
execute if score #c_rl_tsecs ttt_countdowns matches ..-1 run scoreboard players remove #c_rl_mins ttt_countdowns 1
execute if score #c_rl_tsecs ttt_countdowns matches ..-1 run scoreboard players add #c_rl_tsecs ttt_countdowns 6

# schedule again
execute if score #round_running ttt_booleans matches 1 unless score #c_rl_mins ttt_countdowns matches ..-1 run schedule function trouble_in_mc_town:main_scripts/countdown_loop 1s

# maybe innocent win
execute if score #round_running ttt_booleans matches 1 if score #c_rl_mins ttt_countdowns matches ..-1 run function trouble_in_mc_town:utility/win_innocent
