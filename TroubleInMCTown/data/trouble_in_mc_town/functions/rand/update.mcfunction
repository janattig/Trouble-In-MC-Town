# generate new random number using LCG
scoreboard players operation %LCG_current ttt_math *= %LCG_a ttt_math
scoreboard players operation %LCG_current ttt_math += %LCG_c ttt_math

# extract random number in range from this
scoreboard players set %LCG_range ttt_math 1
scoreboard players operation %LCG_range ttt_math += %LCG_rand_max ttt_math
scoreboard players operation %LCG_range ttt_math -= %LCG_rand_min ttt_math
scoreboard players operation %LCG_rand ttt_math = %LCG_current ttt_math
scoreboard players operation %LCG_rand ttt_math /= %LCG_b ttt_math
scoreboard players operation %LCG_rand ttt_math %= %LCG_range ttt_math
scoreboard players operation %LCG_rand ttt_math += %LCG_rand_min ttt_math
