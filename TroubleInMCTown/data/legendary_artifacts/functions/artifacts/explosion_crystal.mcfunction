# particle effect
particle minecraft:crit ~ ~1 ~ 0.5 0.9 0.5 0.01 2 force

# find items and xp balls in radius and tag them
execute as @e[type=item, nbt={OnGround:1b}, distance=..50] at @s run tag @s add la_exploding_now
execute as @e[type=experience_orb, nbt={OnGround:1b}, distance=..50] at @s run tag @s add la_exploding_now

# make items explode (by summoning a creeper at their position)
execute as @e[tag=la_exploding_now] at @s run summon creeper ~ ~ ~ {Fuse:0, ignited:true, ActiveEffects:[{HiddenEffect:{Id:14}}]}
execute as @e[tag=la_exploding_now] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 1 20
execute as @e[tag=la_exploding_now] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 2
execute as @e[tag=la_exploding_now] at @s run playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~
execute as @e[tag=la_exploding_now] at @s run kill @s