# summon an ender pearl
summon ender_pearl ~ ~ ~

# copy the entity from the arrow onto the ender pearl so that the correct player is teleported
data modify entity @e[type=ender_pearl, limit=1, sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=ender_pearl, limit=1, sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=ender_pearl, limit=1, sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=ender_pearl, limit=1, sort=nearest] Pos set from entity @s Pos
