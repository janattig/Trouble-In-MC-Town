# find out if there are lightning strikes happening to entities around
tag @e remove lightning_targets
execute as @s[nbt={HurtTime:9s}] run tag @e[distance=0.1..15, limit=2, sort=random, tag=!la_unaffected, type=!player] add lightning_targets
execute as @s[nbt={HurtTime:9s}] run tag @a[distance=0.1..15, limit=2, sort=random, tag=!la_unaffected, gamemode=!spectator] add lightning_targets

# give fire resistance if needed
execute if entity @e[tag=lightning_targets] run effect give @s fire_resistance 1 1
# effect particles
execute if entity @e[tag=lightning_targets] run particle minecraft:explosion ~ ~1 ~ 0.5 1.0 0.5 0.02 10 force

# deal with the targets
execute at @e[tag=lightning_targets, distance=2..] run summon lightning_bolt ~ ~ ~
execute if entity @e[tag=lightning_targets, distance=..2] run execute anchored eyes facing entity @e[tag=lightning_targets, distance=..2, limit=1] eyes run summon lightning_bolt ^ ^ ^3
execute as @e[tag=lightning_targets] at @s run effect give @s glowing 1 1
execute as @e[tag=lightning_targets] at @s run particle minecraft:crit ~ ~1 ~ 0.5 1.0 0.5 0.02 50 force
execute as @e[tag=lightning_targets] at @s run particle minecraft:explosion ~ ~1 ~ 0.5 1.0 0.5 0.02 1 force

# remove target tags
tag @e remove lightning_targets