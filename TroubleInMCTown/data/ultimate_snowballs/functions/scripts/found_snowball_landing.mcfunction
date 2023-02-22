# particles and explosion
#particle minecraft:explosion ~ ~ ~ 0.5 1.5 0.5 2 1

# snowball landing effect
execute as @s[tag=usb_explosion] at @s run function ultimate_snowballs:scripts/effects/explosion
execute as @s[tag=usb_lightning] at @s run function ultimate_snowballs:scripts/effects/lightning

# kill the aoe cloud
kill @s