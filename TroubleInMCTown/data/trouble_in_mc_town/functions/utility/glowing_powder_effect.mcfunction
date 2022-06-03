# particle effects
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 2 500 normal
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 2 50 normal
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 1 5 normal

# sound effects
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 2
playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.5
playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 0.5

# give all alive players in glowing
effect give @a[tag=ttt_alive] glowing 10

# kill the splash potion
kill @s
