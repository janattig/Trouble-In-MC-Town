# initialize potion by summoning a companion armor stand
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["sp_companion"], NoBasePlate:1, Small:1, Marker:1b, Invisible:1}

# tag the armor stand with the mob indicated by the potion
execute if entity @s[nbt={Item:{tag:{sp_summons:"wither_skeleton"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_wither_skeleton
execute if entity @s[nbt={Item:{tag:{sp_summons:"creeper"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_creeper
execute if entity @s[nbt={Item:{tag:{sp_summons:"zombie"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_zombie
execute if entity @s[nbt={Item:{tag:{sp_summons:"slime"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_slime
execute if entity @s[nbt={Item:{tag:{sp_summons:"spider"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_spider
execute if entity @s[nbt={Item:{tag:{sp_summons:"blaze"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_blaze
execute if entity @s[nbt={Item:{tag:{sp_summons:"enderman"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_enderman
execute if entity @s[nbt={Item:{tag:{sp_summons:"skeleton"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_skeleton
execute if entity @s[nbt={Item:{tag:{sp_summons:"shulker"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_shulker
execute if entity @s[nbt={Item:{tag:{sp_summons:"silverfish"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_silverfish
execute if entity @s[nbt={Item:{tag:{sp_summons:"phantom"}}}] run tag @e[limit=1,type=armor_stand,sort=nearest] add sp_phantom

# tag the potion itself as initialized
tag @s add sp_initialized
