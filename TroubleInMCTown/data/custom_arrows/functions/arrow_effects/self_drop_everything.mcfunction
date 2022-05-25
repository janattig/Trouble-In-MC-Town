# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# purge the storage
data remove storage custom_arrows:inventories Inventory
# fill the storage with own inventory
data modify storage custom_arrows:inventories Inventory set from entity @s Inventory


# run the loop to drop all items
execute if data storage custom_arrows:inventories Inventory[0] run function custom_arrows:arrow_effects/self_drop_everything_loop


# clear its own Inventory
clear @s
# purge the storage
data remove storage custom_arrows:inventories Inventory
