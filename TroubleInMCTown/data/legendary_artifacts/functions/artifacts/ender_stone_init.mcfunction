# make indestructible and not able to pickup
data modify entity @s PickupDelay set value 9999999
data modify entity @s Invulnerable set value 1b

# add a tag that it is initialized
tag @s add initialized