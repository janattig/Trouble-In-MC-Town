# script for loading a backuped gamemode

# player was in survival
execute if score @s ttt_gb_survival matches 1 run gamemode survival @s
execute if score @s ttt_gb_survival matches 1 run scoreboard players reset @s ttt_gb_survival

# player was in creative
execute if score @s ttt_gb_creative matches 1 run gamemode creative @s
execute if score @s ttt_gb_creative matches 1 run scoreboard players reset @s ttt_gb_creative
