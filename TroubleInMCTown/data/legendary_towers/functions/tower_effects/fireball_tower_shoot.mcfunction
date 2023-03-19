# initiate shooting
particle crit ~ ~ ~ 0 0 0 1 10

# summon a new arrow
execute if score @s lt_damage matches 1 run summon small_fireball ~ ~ ~ {Tags:["lt_summoned", "lt_fireball", "lt_new", "visual_fix_needed"]}
execute if score @s lt_damage matches 2 run summon fireball ~ ~ ~ {Tags:["lt_summoned", "lt_fireball", "lt_new", "visual_fix_needed"]}

# play a sound
playsound item.firecharge.use ambient @a ~ ~ ~ 1 2

# set explosion related stats related stats
execute as @e[tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s ExplosionPower double 1.0 run scoreboard players get @e[tag=lt_shooting_tower, limit=1, sort=nearest] lt_damage
# aim the fireball at the target
execute as @e[tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run function legendary_towers:tower_effects/aim_projectile_at_target
# make fireball move a bit faster by setting the power
execute as @e[tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s power[0] double 0.00001 run data get entity @s Motion[0] 10000
execute as @e[tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s power[1] double 0.00001 run data get entity @s Motion[1] 10000
execute as @e[tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s power[2] double 0.00001 run data get entity @s Motion[2] 10000
# remove the new tag from the fireball
tag @e[tag=lt_fireball] remove lt_new




# raise cooldown
scoreboard players operation @s lt_cooldowns += @s lt_cooldowns_max