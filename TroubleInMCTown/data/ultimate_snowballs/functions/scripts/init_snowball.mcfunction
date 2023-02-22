# initialize snowball by summoning a replacement snowball with a riding aoe cloud
summon snowball ~ ~ ~ {Tags:["ultimate_snowball","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ultimate_snowball_companion"]}]}
data modify entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Item set from entity @s Item

# make snowball move a bit faster
execute store result entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Motion[0] double 0.00012 run data get entity @s Motion[0] 10000
execute store result entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Motion[1] double 0.00012 run data get entity @s Motion[1] 10000
execute store result entity @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1,sort=nearest] Motion[2] double 0.00012 run data get entity @s Motion[2] 10000

# tag the aoe cloud with the effect
execute if entity @s[nbt={Item:{tag:{usb_effect:"explosion"}}}] run tag @e[limit=1,tag=ultimate_snowball_companion,sort=nearest] add usb_explosion
execute if entity @s[nbt={Item:{tag:{usb_effect:"lightning"}}}] run tag @e[limit=1,tag=ultimate_snowball_companion,sort=nearest] add usb_lightning

# tag the snowball from the AoE cloud tag
execute as @e[tag=ultimate_snowball_companion, tag=usb_explosion, limit=1, sort=nearest, distance=..0.01] at @s run tag @e[tag=init] add usb_explosion
execute as @e[tag=ultimate_snowball_companion, tag=usb_lightning, limit=1, sort=nearest, distance=..0.01] at @s run tag @e[tag=init] add usb_lightning

# other effects on init
execute as @e[tag=ultimate_snowball,tag=init, tag=usb_explosion, limit=1, sort=nearest, distance=..0.01] at @s run playsound entity.tnt.primed ambient @a ~ ~ ~ 1


# tag the replacement snowball itself as initialized
tag @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1] add usb_initialized
tag @e[type=snowball,tag=ultimate_snowball,tag=init,limit=1] remove init
# kill the snowball itself
kill @s
