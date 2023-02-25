# teleport the pearl to "here" where the stone is
tp @s ~ ~0.1 ~

# change motion to be vertically downwards (so that the pearl lands)
data modify entity @s Motion[0] set value 0.0
data modify entity @s Motion[1] set value -0.01
data modify entity @s Motion[2] set value 0.0

# add a tag that it has teleported
tag @s add teleported