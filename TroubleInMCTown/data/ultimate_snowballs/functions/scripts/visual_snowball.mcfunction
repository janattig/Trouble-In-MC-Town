# particle effects for the flying snowball
execute as @s[tag=usb_explosion] at @s run particle crit ~ ~ ~ 0.1 0.1 0.1 1 1
execute as @s[tag=usb_lightning] at @s run particle bubble_pop ~ ~ ~ 1 1 1 1 1

# visual fix for the snowball
function ultimate_snowballs:scripts/visual_fix