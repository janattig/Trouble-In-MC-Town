# initialize potion by summoning a replacement potion with a riding aoe cloud
summon potion ~ ~ ~ {Tags:["summoning_potion","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sp_companion"]}]}
data modify entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Item set from entity @s Item

# make potion move a bit faster
execute store result entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute store result entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute store result entity @e[type=potion,tag=summoning_potion,tag=init,limit=1,sort=nearest] Motion[2] double 0.0002 run data get entity @s Motion[2] 10000

# tag the aoe cloud with the mob indicated by the potion
execute if entity @s[nbt={Item:{tag:{sp_summons:"wither_skeleton"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_wither_skeleton
execute if entity @s[nbt={Item:{tag:{sp_summons:"creeper"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_creeper
execute if entity @s[nbt={Item:{tag:{sp_summons:"zombie"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_zombie
execute if entity @s[nbt={Item:{tag:{sp_summons:"slime"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_slime
execute if entity @s[nbt={Item:{tag:{sp_summons:"spider"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_spider
execute if entity @s[nbt={Item:{tag:{sp_summons:"blaze"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_blaze
execute if entity @s[nbt={Item:{tag:{sp_summons:"enderman"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_enderman
execute if entity @s[nbt={Item:{tag:{sp_summons:"skeleton"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_skeleton
execute if entity @s[nbt={Item:{tag:{sp_summons:"shulker"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_shulker
execute if entity @s[nbt={Item:{tag:{sp_summons:"silverfish"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_silverfish
execute if entity @s[nbt={Item:{tag:{sp_summons:"phantom"}}}] run tag @e[limit=1,tag=sp_companion,sort=nearest] add sp_phantom

# tag the replacement potion itself as initialized
tag @e[type=potion,tag=summoning_potion,tag=init,limit=1] add sp_initialized
tag @e[type=potion,tag=summoning_potion,tag=init,limit=1] remove init
# kill the potion itself
kill @s
