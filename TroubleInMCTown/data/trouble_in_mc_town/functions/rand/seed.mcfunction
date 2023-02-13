# set the current number depending on the gametime and a random entity
execute store result score %LCG_current ttt_math run time query gametime
execute store result score %LCG_tmp ttt_math run data get entity @e[sort=random, limit=1] UUID[0]
scoreboard players add %LCG_tmp ttt_math 1
scoreboard players operation %LCG_current ttt_math *= %LCG_tmp ttt_math
scoreboard players reset %LCG_tmp ttt_math


# do some updates
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
function trouble_in_mc_town:rand/update
