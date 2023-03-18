# initiate shooting
particle crit ~ ~ ~ 0 0 0 1 10

# summon a new arrow
summon fireball ~ ~ ~ {Tags:["lt_summoned", "lt_fireball", "lt_new", "visual_fix_needed"]}

# play a sound
playsound item.firecharge.use ambient @a ~ ~ ~ 1 2

# aim the arrow at the target
execute as @e[type=fireball,tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run function legendary_towers:tower_effects/aim_projectile_at_target
# make arrow move a bit faster
execute as @e[type=fireball,tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute as @e[type=fireball,tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute as @e[type=fireball,tag=lt_fireball,tag=lt_new,limit=1,sort=nearest] at @s run execute store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000
# remove the new tag from the arrow
tag @e[type=fireball, tag=lt_fireball] remove lt_new




# raise cooldown
scoreboard players operation @s lt_cooldowns += @s lt_cooldowns_max