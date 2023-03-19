# subtitle to tell which effect
title @a[tag=la_cc_effected] subtitle [{"text":"You are wearing the ", "color":"white"}, {"text":"Armor", "color":"#222222"}, {"text":" of someone else", "color":"white"}]

# everyone chooses a new armor from somebody at random
execute as @a[tag=la_cc_effected] at @s run item replace entity @s armor.head from entity @a[tag=la_cc_effected, limit=1, sort=random] armor.head
execute as @a[tag=la_cc_effected] at @s run item replace entity @s armor.chest from entity @a[tag=la_cc_effected, limit=1, sort=random] armor.chest
execute as @a[tag=la_cc_effected] at @s run item replace entity @s armor.legs from entity @a[tag=la_cc_effected, limit=1, sort=random] armor.legs
execute as @a[tag=la_cc_effected] at @s run item replace entity @s armor.feet from entity @a[tag=la_cc_effected, limit=1, sort=random] armor.feet