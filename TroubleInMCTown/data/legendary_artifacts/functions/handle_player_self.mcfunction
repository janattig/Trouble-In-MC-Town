# check all artifacts individually

# main hand
execute as @s[tag=la_wields_mainhand] at @s run execute as @s[nbt={SelectedItem:{tag:{cane_of_clarity:1b}}}] run function legendary_artifacts:artifacts/cane_of_clarity_main
execute as @s[tag=la_wields_mainhand] at @s run execute as @s[nbt={SelectedItem:{tag:{fireflame:1b}}}] run function legendary_artifacts:artifacts/fireflame

# off hand
execute as @s[tag=la_wields_offhand] at @s run execute as @s[nbt={Inventory:[{Slot:-106b, tag:{cane_of_clarity:1b}}]}] run function legendary_artifacts:artifacts/cane_of_clarity_off
execute as @s[tag=la_wields_offhand] at @s run execute as @s[nbt={Inventory:[{Slot:-106b, tag:{fireflame:1b}}]}] run function legendary_artifacts:artifacts/fireflame



# remove main / offhand tags
tag @s remove la_wields_mainhand
tag @s remove la_wields_offhand