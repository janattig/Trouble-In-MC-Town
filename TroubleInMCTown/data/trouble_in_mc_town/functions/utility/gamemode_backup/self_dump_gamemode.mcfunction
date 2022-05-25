# script for saving the existing gamemode

# player is in survival
execute as @s[gamemode=survival] run scoreboard players set @s ttt_gb_survival 1
execute as @s[gamemode=survival] run scoreboard players reset @s ttt_gb_creative

# player is in creative
execute as @s[gamemode=creative] run scoreboard players set @s ttt_gb_creative 1
execute as @s[gamemode=creative] run scoreboard players reset @s ttt_gb_survival
