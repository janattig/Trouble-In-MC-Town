# summon markers for the different options
kill @e[type=marker, tag=la_tmp_option]
summon marker ~ ~ ~ {Tags:["la_option_1", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_2", "la_tmp_option"]}
summon marker ~ ~ ~ {Tags:["la_option_3", "la_tmp_option"]}

# mark a random option as chosen
tag @e[type=marker, tag=la_tmp_option, limit=1, sort=random] add la_chosen

# option 1: explode
execute as @e[type=marker, tag=la_option_1, tag=la_tmp_option, tag=la_chosen] at @s run summon creeper ~ ~ ~ {Fuse:0, ignited:true, ActiveEffects:[{HiddenEffect:{Id:14}}]}
execute as @e[type=marker, tag=la_option_1, tag=la_tmp_option, tag=la_chosen] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 1 20
execute as @e[type=marker, tag=la_option_1, tag=la_tmp_option, tag=la_chosen] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 5

# option 2: spawn item
execute as @e[type=marker, tag=la_option_2, tag=la_tmp_option, tag=la_chosen] at @s run loot spawn ~ ~ ~ loot legendary_artifacts:legendary_lootbox_content
execute as @e[type=marker, tag=la_option_2, tag=la_tmp_option, tag=la_chosen] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 1 30
execute as @e[type=marker, tag=la_option_2, tag=la_tmp_option, tag=la_chosen] at @s run particle firework ~ ~ ~ 0 0 0 1 1

# option 3: lightning
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run summon lightning_bolt ~ ~1 ~
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run summon lightning_bolt ~ ~-1 ~
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run particle bubble_pop ~ ~ ~ 1 1 1 1 30
execute as @e[type=marker, tag=la_option_3, tag=la_tmp_option, tag=la_chosen] at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 1 1


# remove all markers
kill @e[type=marker, tag=la_tmp_option]

# kill self
kill @s